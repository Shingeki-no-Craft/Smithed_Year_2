#!/usr/bin/env python3
"""
build.py - Packages and compresses the SnC_Smithed_RP resource pack into a .zip,
progressively lowering quality until it fits within a target size.

Usage:
    python build.py <file_size_kb> [options]

    <file_size_kb>   Target size of the resulting zip, in KB (minimum 500).

Options:
    -o, --output PATH       Output zip path (default: SnC_Smithed_RP.zip).
    --source PATH           Resource pack folder (default: SnC_Smithed_RP).
    --audio-method METHOD   How to compress the audio (see below). Alias:
                            --audio-compressor. Default: 'decode'.
    --keep-temp             Do not delete the temporary work folder (debug).

Audio methods (--audio-method):
    decode   Lowers the bitrate while keeping the original sample rate
             (96 -> 64 -> 48 -> 32 kbps). Keeps the style, just lowers quality.
    chirp    Maximum space savings with an "80s" timbre: lowers the sample rate
             and the bitrate together (22050/48k -> 16000/32k -> 11025/24k ->
             8000/16k). Stereo is always preserved.
    none     Leaves the audio untouched.

Reduction strategy (from least to most aggressive / noticeable):
    1. Base zip with max deflate. If it already fits, stop.
    2. Minify the model JSON (strips spaces/tabs/newlines). Lossless.
    3. Round the model float precision (4 -> 3 -> 2 decimals). Lossy, but
       practically imperceptible in-game.
    4. Compress the .ogg sounds according to --audio-method (requires ffmpeg).

Textures (.png) are never touched. Audio always keeps its channels
(it is never downmixed to mono).

Examples:
    python build.py 2000 --audio-method chirp
    python build.py 4000 --audio-compressor decode   # equivalent alias
    python build.py 4000 --audio-method none
"""

import argparse
import json
import os
import shutil
import subprocess
import sys
import tempfile
import zipfile

# ---------------------------------------------------------------------------
# Utilities
# ---------------------------------------------------------------------------

def human(nbytes):
    """Formats a byte count into a readable string."""
    for unit in ("B", "KB", "MB", "GB"):
        if nbytes < 1024 or unit == "GB":
            return f"{nbytes:.1f} {unit}"
        nbytes /= 1024


def has_ffmpeg():
    return shutil.which("ffmpeg") is not None


def iter_files(root, extension):
    """Yields absolute paths of files with the given extension (dot included)."""
    for base, _dirs, files in os.walk(root):
        for name in files:
            if name.lower().endswith(extension):
                yield os.path.join(base, name)


def is_model_json(path):
    """True if the json looks like a model (lives under a 'models' folder)."""
    norm = path.replace("\\", "/").lower()
    return "/models/" in norm


# ---------------------------------------------------------------------------
# Packaging
# ---------------------------------------------------------------------------

def make_zip(src_dir, zip_path):
    """Compresses src_dir into zip_path with max deflate. Returns size in bytes.

    Files land at the zip root (pack.mcmeta on top), the standard resource pack
    layout.
    """
    if os.path.exists(zip_path):
        os.remove(zip_path)
    with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED, compresslevel=9) as zf:
        for base, _dirs, files in os.walk(src_dir):
            for name in files:
                full = os.path.join(base, name)
                arc = os.path.relpath(full, src_dir)
                zf.write(full, arc)
    return os.path.getsize(zip_path)


# ---------------------------------------------------------------------------
# JSON reductions (models)
# ---------------------------------------------------------------------------

def minify_json_models(work_dir):
    """Rewrites every model .json with no whitespace. Lossless.

    Returns the number of modified files.
    """
    changed = 0
    for path in iter_files(work_dir, ".json"):
        if not is_model_json(path):
            continue
        try:
            with open(path, "r", encoding="utf-8") as f:
                data = json.load(f)
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue  # not valid json; leave it as-is
        minified = json.dumps(data, separators=(",", ":"), ensure_ascii=False)
        with open(path, "w", encoding="utf-8") as f:
            f.write(minified)
        changed += 1
    return changed


def _round_floats(obj, ndigits):
    """Recursively rounds every float. Integers are kept as-is.

    A float that lands on an integer value is turned into an int to save chars.
    """
    if isinstance(obj, float):
        rounded = round(obj, ndigits)
        if rounded == int(rounded):
            return int(rounded)
        return rounded
    if isinstance(obj, list):
        return [_round_floats(v, ndigits) for v in obj]
    if isinstance(obj, dict):
        return {k: _round_floats(v, ndigits) for k, v in obj.items()}
    return obj


def reduce_model_precision(work_dir, ndigits):
    """Rounds the model floats to ndigits decimals. Subtly lossy.

    Returns the number of modified files.
    """
    changed = 0
    for path in iter_files(work_dir, ".json"):
        if not is_model_json(path):
            continue
        try:
            with open(path, "r", encoding="utf-8") as f:
                data = json.load(f)
        except (json.JSONDecodeError, UnicodeDecodeError):
            continue
        data = _round_floats(data, ndigits)
        minified = json.dumps(data, separators=(",", ":"), ensure_ascii=False)
        with open(path, "w", encoding="utf-8") as f:
            f.write(minified)
        changed += 1
    return changed


# ---------------------------------------------------------------------------
# Sound reduction (.ogg)
# ---------------------------------------------------------------------------

def reduce_sounds(work_dir, bitrate_k, sample_rate=None):
    """Re-encodes every .ogg with ffmpeg. Lossy.

    bitrate_k    Target bitrate in kbps.
    sample_rate  If given, resamples to that frequency (Hz). Lowering the sample
                 rate is what produces the "chirp" 80s timbre and, combined with
                 a low bitrate, is what shrinks the size the most.

    The channel count is NEVER changed: stereo is always preserved (it has
    in-game implications). Requires ffmpeg on the PATH. Returns the number of
    modified files (0 if ffmpeg is unavailable).
    """
    if not has_ffmpeg():
        return 0
    changed = 0
    for path in iter_files(work_dir, ".ogg"):
        tmp = path + ".tmp.ogg"
        cmd = [
            "ffmpeg", "-y", "-loglevel", "error",
            "-i", path,
            "-c:a", "libvorbis", "-b:a", f"{bitrate_k}k",
        ]
        if sample_rate is not None:
            cmd += ["-ar", str(sample_rate)]
        cmd.append(tmp)
        try:
            # Silence ffmpeg's output: success/failure is detected below by
            # checking the resulting file. Some .ogg files are ~0-duration
            # placeholders that ffmpeg cannot re-encode, and that is benign.
            subprocess.run(cmd, check=True,
                           stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        except (subprocess.CalledProcessError, OSError):
            if os.path.exists(tmp):
                os.remove(tmp)
            continue
        # Only replace if it actually came out smaller.
        if os.path.exists(tmp) and os.path.getsize(tmp) < os.path.getsize(path):
            os.replace(tmp, path)
            changed += 1
        elif os.path.exists(tmp):
            os.remove(tmp)
    return changed


# ---------------------------------------------------------------------------
# Orchestration
# ---------------------------------------------------------------------------

# Audio steps for the chosen method. Each entry is applied to 'staged'.
# Stereo is always preserved (never downmixed to mono).
def _audio_steps(staged, method):
    if method == "none":
        return []
    if method == "chirp":
        # Maximum savings, 80s timbre: lower sample rate + bitrate together.
        # (bitrate_k, sample_rate_hz)
        stages = [(48, 22050), (32, 16000), (24, 11025), (16, 8000)]
        return [
            (f"Chirp (retro): sounds at {br} kbps / {sr} Hz",
             (lambda b=br, s=sr: reduce_sounds(staged, b, s)))
            for br, sr in stages
        ]
    # "decode": keeps the style, only lowers the bitrate at the original rate.
    return [
        (f"Re-encode sounds at {br} kbps",
         (lambda b=br: reduce_sounds(staged, b)))
        for br in (96, 64, 48, 32)
    ]


def build(source, output, target_bytes, audio_method="decode", keep_temp=False):
    if not os.path.isdir(source):
        sys.exit(f"[ERROR] Resource pack folder not found: {source}")

    work_dir = tempfile.mkdtemp(prefix="snc_build_")
    staged = os.path.join(work_dir, os.path.basename(source.rstrip("/\\")))
    shutil.copytree(source, staged)

    # Each step: (description, function applying the reduction to 'staged').
    # They run in order only while the zip still doesn't fit the target: models
    # first (lossless / barely lossy) and then audio according to the method.
    steps = [
        ("Minify model JSON (lossless)",
         lambda: minify_json_models(staged)),
        ("Reduce model precision to 4 decimals",
         lambda: reduce_model_precision(staged, 4)),
        ("Reduce model precision to 3 decimals",
         lambda: reduce_model_precision(staged, 3)),
        ("Reduce model precision to 2 decimals",
         lambda: reduce_model_precision(staged, 2)),
    ] + _audio_steps(staged, audio_method)

    try:
        size = make_zip(staged, output)
        print(f"[base]  initial zip: {human(size)} "
              f"(target: {human(target_bytes)})")

        if size <= target_bytes:
            print("[ok]    Already fits the target without reducing quality.")
            return size

        if audio_method != "none" and not has_ffmpeg():
            print("[warn]  ffmpeg is not on the PATH: sound quality (.ogg) "
                  "cannot be reduced. Install ffmpeg if you need to shrink "
                  "the size further.")

        for desc, action in steps:
            n = action()
            if n == 0:
                print(f"[skip]  {desc}: no changes.")
                continue
            size = make_zip(staged, output)
            print(f"[step]  {desc} ({n} files) -> {human(size)}")
            if size <= target_bytes:
                print(f"[ok]    Target reached: {human(size)} "
                      f"<= {human(target_bytes)}")
                return size

        print(f"[end]   Target not reached. Best result: "
              f"{human(size)} (target: {human(target_bytes)}).")
        print("        Ran out of available reduction steps.")
        return size
    finally:
        if keep_temp:
            print(f"[temp]  Work folder kept at: {work_dir}")
        else:
            shutil.rmtree(work_dir, ignore_errors=True)


def main():
    parser = argparse.ArgumentParser(
        description="Compresses SnC_Smithed_RP into a zip within a target size, "
                    "progressively reducing quality if needed.")
    parser.add_argument("file_size", type=float,
                        help="Target zip size in KB (minimum 500).")
    parser.add_argument("-o", "--output", default="SnC_Smithed_RP.zip",
                        help="Output zip path.")
    parser.add_argument("--source", default="SnC_Smithed_RP",
                        help="Resource pack folder to compress.")
    parser.add_argument("--audio-method", "--audio-compressor",
                        dest="audio_method", default="decode",
                        type=str.lower, choices=["chirp", "decode", "none"],
                        help="How to compress the audio: 'decode' (lowers "
                             "bitrate, keeps the style; default), 'chirp' "
                             "(maximum savings, 80s timbre via low sample rate) "
                             "or 'none' (leaves audio untouched). Stereo is "
                             "always preserved.")
    parser.add_argument("--keep-temp", action="store_true",
                        help="Keep the temporary work folder.")
    args = parser.parse_args()

    if args.file_size < 500:
        sys.exit("[ERROR] file_size must be at least 500 KB.")

    target_bytes = args.file_size * 1024
    final = build(args.source, args.output, target_bytes,
                  args.audio_method, args.keep_temp)
    print(f"\nDone -> {args.output} ({human(final)})")


if __name__ == "__main__":
    main()
