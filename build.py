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
    --png-method METHOD     How to compress the textures (see below).
                            Default: 'oxipng'.
    --zopfli                Recompress the final zip with zopfli: lossless and
                            Minecraft-readable, ~2-3% smaller. Slow (single
                            final pass). Needs 'pip install zopflipy'.
    --keep-temp             Do not delete the temporary work folder (debug).

Audio methods (--audio-method):
    decode   Lowers the bitrate while keeping the original sample rate
             (96 -> 64 -> 48 -> 32 kbps). Keeps the style, just lowers quality.
    chirp    Maximum space savings with an "80s" timbre: lowers the sample rate
             and the bitrate together (22050/48k -> 16000/32k -> 11025/24k ->
             8000/16k). Stereo is always preserved.
    none     Leaves the audio untouched.

Texture methods (--png-method):
    oxipng    Lossless oxipng: textures look identical in-game, just smaller
              (default). Needs 'pyoxipng'.
    quantize  Lossless oxipng first, then, only if still over target, lossy
              palette reduction (256 -> 128 -> 64 colours). Needs 'pillow'.
    none      Leaves the textures untouched.

Reduction strategy (from least to most aggressive / noticeable):
    1. Base zip with max deflate. If it already fits, stop.
    2. Minify the model JSON (strips spaces/tabs/newlines). Lossless.
    3. oxipng the textures (--png-method). Lossless.
    4. Round the model float precision (4 -> 3 -> 2 decimals). Lossy, but
       practically imperceptible in-game.
    5. Compress the .ogg sounds according to --audio-method (requires ffmpeg).
    6. As a last resort, quantize textures (only if --png-method quantize).

Everything runs on a temporary copy: the source folder is NEVER modified, the
compression only ends up inside the output zip. Audio always keeps its channels
(it is never downmixed to mono).

Examples:
    python build.py 2000 --audio-method chirp
    python build.py 1200 --audio-method chirp --png-method quantize --zopfli
    python build.py 4000 --audio-method none --png-method none
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


def has_oxipng():
    try:
        import oxipng  # noqa: F401
        return True
    except ImportError:
        return False


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

def make_zip(src_dir, zip_path, use_zopfli=False):
    """Compresses src_dir into zip_path with max deflate. Returns size in bytes.

    Files land at the zip root (pack.mcmeta on top), the standard resource pack
    layout.

    use_zopfli   Compress with zopfli instead of zlib. Zopfli produces a
                 smaller (but standard, Minecraft-readable) deflate stream at
                 the cost of being MUCH slower, so it is meant for a single
                 final pass, not the reduction loop. Requires the 'zopflipy'
                 package.
    """
    if os.path.exists(zip_path):
        os.remove(zip_path)
    if use_zopfli:
        try:
            import zopfli
        except ImportError:
            sys.exit("[ERROR] --zopfli needs the 'zopflipy' package: "
                     "pip install zopflipy")
        opener = lambda: zopfli.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED)
    else:
        opener = lambda: zipfile.ZipFile(
            zip_path, "w", zipfile.ZIP_DEFLATED, compresslevel=9)
    with opener() as zf:
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
# Texture reduction (.png)
# ---------------------------------------------------------------------------
# These run on the temporary staged copy, so the source textures on disk are
# never modified: the compression only ever ends up inside the output zip.

def optimize_pngs_lossless(work_dir, level=6):
    """oxipng every .png in place (lossless). Textures stay byte-identical
    in-game; they just weigh less. Returns the number of files that shrank
    (0 if pyoxipng is not installed)."""
    try:
        import oxipng
    except ImportError:
        return 0
    strip = oxipng.StripChunks.safe()
    changed = 0
    for path in iter_files(work_dir, ".png"):
        before = os.path.getsize(path)
        try:
            oxipng.optimize(path, level=level, strip=strip)
        except Exception:  # noqa: BLE001 - a bad png shouldn't abort the build
            continue
        if os.path.getsize(path) < before:
            changed += 1
    return changed


def quantize_pngs(work_dir, colors):
    """Quantise every .png to <= `colors` palette entries (lossy), then oxipng
    it. Keeps alpha. Returns the number of files that shrank (0 if Pillow or
    pyoxipng is missing)."""
    try:
        import oxipng
        from PIL import Image
    except ImportError:
        return 0
    strip = oxipng.StripChunks.safe()
    changed = 0
    for path in iter_files(work_dir, ".png"):
        before = os.path.getsize(path)
        try:
            img = Image.open(path).convert("RGBA")
            # FASTOCTREE is the Pillow method that quantises RGBA (keeps alpha).
            img.quantize(colors=colors, method=Image.Quantize.FASTOCTREE).save(
                path, format="PNG", optimize=True)
            oxipng.optimize(path, level=6, strip=strip)
        except Exception:  # noqa: BLE001
            continue
        if os.path.getsize(path) < before:
            changed += 1
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


# PNG steps for the chosen method, split into a lossless part (safe, runs
# early) and a lossy part (palette quantization, runs late / most aggressive).
def _png_lossless_steps(staged, method):
    if method == "none":
        return []
    # Both 'oxipng' and 'quantize' start with the lossless oxipng pass.
    return [("Optimize textures with oxipng (lossless)",
             lambda: optimize_pngs_lossless(staged))]


def _png_lossy_steps(staged, method):
    if method != "quantize":
        return []
    # Progressively fewer colours: only reached if still over target.
    return [
        (f"Quantize textures to {c} colors (lossy)",
         (lambda n=c: quantize_pngs(staged, n)))
        for c in (256, 128, 64)
    ]


def build(source, output, target_bytes, audio_method="decode", keep_temp=False,
          use_zopfli=False, png_method="oxipng"):
    if not os.path.isdir(source):
        sys.exit(f"[ERROR] Resource pack folder not found: {source}")

    work_dir = tempfile.mkdtemp(prefix="snc_build_")
    staged = os.path.join(work_dir, os.path.basename(source.rstrip("/\\")))
    shutil.copytree(source, staged)

    # Each step: (description, function applying the reduction to 'staged').
    # They run in order only while the zip still doesn't fit the target, from
    # least to most destructive: lossless first (minify JSON, oxipng textures),
    # then mildly-lossy model rounding, then lossy audio, and finally the lossy
    # texture quantization as a last resort.
    steps = [
        ("Minify model JSON (lossless)",
         lambda: minify_json_models(staged)),
    ] + _png_lossless_steps(staged, png_method) + [
        ("Reduce model precision to 4 decimals",
         lambda: reduce_model_precision(staged, 4)),
        ("Reduce model precision to 3 decimals",
         lambda: reduce_model_precision(staged, 3)),
        ("Reduce model precision to 2 decimals",
         lambda: reduce_model_precision(staged, 2)),
    ] + _audio_steps(staged, audio_method) \
      + _png_lossy_steps(staged, png_method)

    # A single, final zopfli pass (slow) once the search with fast zlib is done.
    def finalize(size):
        if not use_zopfli:
            return size
        zsize = make_zip(staged, output, use_zopfli=True)
        print(f"[zopfli] recompressed losslessly: {human(size)} -> {human(zsize)}")
        return zsize

    try:
        size = make_zip(staged, output)
        print(f"[base]  initial zip: {human(size)} "
              f"(target: {human(target_bytes)})")

        if size <= target_bytes:
            print("[ok]    Already fits the target without reducing quality.")
            return finalize(size)

        if audio_method != "none" and not has_ffmpeg():
            print("[warn]  ffmpeg is not on the PATH: sound quality (.ogg) "
                  "cannot be reduced. Install ffmpeg if you need to shrink "
                  "the size further.")
        if png_method != "none" and not has_oxipng():
            print("[warn]  pyoxipng is not installed: textures (.png) cannot "
                  "be compressed. Run 'pip install pyoxipng' (and 'pillow' for "
                  "--png-method quantize) to shrink the size further.")

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
                return finalize(size)

        print(f"[end]   Target not reached. Best result: "
              f"{human(size)} (target: {human(target_bytes)}).")
        print("        Ran out of available reduction steps.")
        return finalize(size)
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
    parser.add_argument("--png-method",
                        dest="png_method", default="oxipng",
                        type=str.lower, choices=["oxipng", "quantize", "none"],
                        help="How to compress the textures (in the zip only; "
                             "the source folder is never touched): 'oxipng' "
                             "(lossless, default), 'quantize' (lossless then "
                             "lossy palette reduction 256/128/64 colours if "
                             "still over target) or 'none'. Needs 'pyoxipng' "
                             "(and 'pillow' for quantize).")
    parser.add_argument("--keep-temp", action="store_true",
                        help="Keep the temporary work folder.")
    parser.add_argument("--zopfli", action="store_true",
                        help="Recompress the final zip with zopfli (lossless, "
                             "Minecraft-compatible, ~2-3%% smaller). Slow; runs "
                             "once at the end. Needs 'pip install zopflipy'.")
    args = parser.parse_args()

    if args.file_size < 500:
        sys.exit("[ERROR] file_size must be at least 500 KB.")

    target_bytes = args.file_size * 1024
    final = build(args.source, args.output, target_bytes,
                  args.audio_method, args.keep_temp, args.zopfli,
                  args.png_method)
    print(f"\nDone -> {args.output} ({human(final)})")


if __name__ == "__main__":
    main()
