#!/usr/bin/env python3
"""
chirp.py - Debug helper to preview the "chirp" audio method on a single file.

Takes audio.ogg (next to this script), applies the chirp transform (low sample
rate + low bitrate, the same effect ./build.py uses) and writes
output.ogg beside it. Channels are never changed.

Usage:
    python chirp.py                       # 8000 Hz / 16 kbps (max chirp)
    python chirp.py --sample-rate 11025   # sample rate
    python chirp.py --bitrate 24          # bitrate
    python chirp.py -i in.ogg -o out.ogg

Requires ffmpeg on the PATH.
"""

import argparse
import os
import shutil
import subprocess
import sys

# The debug audio lives next to this script (this file is inside audio/).
AUDIO_DIR = os.path.dirname(os.path.abspath(__file__))


def chirp_encode(src, dst, bitrate_k, sample_rate):
    """Re-encodes src into dst as Vorbis at the given bitrate and sample rate.

    Channels are left untouched (stereo stays stereo). Raises on failure.
    """
    cmd = [
        "ffmpeg", "-y", "-loglevel", "error",
        "-i", src,
        "-c:a", "libvorbis", "-b:a", f"{bitrate_k}k",
        "-ar", str(sample_rate),
        dst,
    ]
    subprocess.run(cmd, check=True)


def main():
    parser = argparse.ArgumentParser(
        description="Apply the chirp (80s-style) audio effect to a single .ogg.")
    parser.add_argument("-i", "--input",
                        default=os.path.join(AUDIO_DIR, "audio.ogg"),
                        help="Input .ogg (default: audio/audio.ogg).")
    parser.add_argument("-o", "--output",
                        default=os.path.join(AUDIO_DIR, "output.ogg"),
                        help="Output .ogg (default: audio/output.ogg).")
    parser.add_argument("--bitrate", type=int, default=16,
                        help="Target bitrate in kbps (default: 16).")
    parser.add_argument("--sample-rate", type=int, default=8000,
                        help="Target sample rate in Hz (default: 8000).")
    args = parser.parse_args()

    if shutil.which("ffmpeg") is None:
        sys.exit("[ERROR] ffmpeg is not on the PATH.")
    if not os.path.isfile(args.input):
        sys.exit(f"[ERROR] Input file not found: {args.input}")

    try:
        chirp_encode(args.input, args.output, args.bitrate, args.sample_rate)
    except subprocess.CalledProcessError:
        sys.exit(f"[ERROR] ffmpeg failed to encode {args.input}")

    src_kb = os.path.getsize(args.input) / 1024
    dst_kb = os.path.getsize(args.output) / 1024
    print(f"chirp: {args.sample_rate} Hz / {args.bitrate} kbps")
    print(f"  in : {args.input} ({src_kb:.1f} KB)")
    print(f"  out: {args.output} ({dst_kb:.1f} KB)")


if __name__ == "__main__":
    main()
