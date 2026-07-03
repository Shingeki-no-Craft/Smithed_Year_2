#!/usr/bin/env python3
"""
find_orphan_functions.py

Report ORPHAN functions in a Minecraft datapack: .mcfunction files that are
never referenced by any other function or by any function tag.

Unlike a naive scan, this locates the datapack's `data/` folder and reads
EVERY namespace under it, so the namespaces in the ids it builds always match
the namespaces you write in `function ...` calls. That means you can point it
at any of these and get the same, correct result:

    python find_orphan_functions.py path/to/datapack           # pack root
    python find_orphan_functions.py path/to/datapack/data      # the data dir
    python find_orphan_functions.py path/to/data/snc           # a namespace
    python find_orphan_functions.py path/to/data/snc/function  # the function dir
    python find_orphan_functions.py .                          # from inside any of those

A function like `snc:constants` counts as USED when either:
  * some other .mcfunction contains a `function snc:constants` call
    (also covers `execute ... run function ...`, `schedule function ...`,
    and `return run function ...` -- they all use the `function` keyword), or
  * it is listed in a function tag JSON (minecraft:tick, minecraft:load, or
    any custom tag).

Useful flags:
    -n, --namespace NS   only REPORT orphans in these namespaces (still scans
                         every file for callers). Repeatable.
    --why ID             show exactly where a function id is referenced, then exit
    --include-comments   count calls found inside `# ...` comment lines
    --count-self         a function calling only itself is NOT an orphan
    --no-tags            ignore tag membership (only real calls count as usage)
    --ignore ID ...      always treat these ids as used
"""

import argparse
import json
import re
import sys
from pathlib import Path

# Captures the id after a `function` keyword. It may start with '#' (a tag).
CALL_RE = re.compile(r"\bfunction\s+(#?[A-Za-z0-9_.\-]+:[A-Za-z0-9_./\-]+)")


def find_data_dir(start: Path):
    """Locate the datapack's `data` directory from any point in/around it."""
    chain = [start, *start.parents]
    for p in chain:                       # are we already at (or below) `data`?
        if p.name == "data" and p.is_dir():
            return p
    for p in chain:                       # is there a `data` child nearby?
        d = p / "data"
        if d.is_dir():
            return d
    return None


def function_root(ns_dir: Path):
    """Return the function folder for a namespace (1.21 'function' or legacy 'functions')."""
    for sub in ("function", "functions"):
        d = ns_dir / sub
        if d.is_dir():
            return d
    return None


def collect_functions(data_dir: Path):
    """{function_id: path} across all namespaces, with correct namespaced ids."""
    functions = {}
    for ns_dir in sorted(p for p in data_dir.iterdir() if p.is_dir()):
        froot = function_root(ns_dir)
        if not froot:
            continue
        for path in sorted(froot.rglob("*.mcfunction")):
            fid = f"{ns_dir.name}:{path.relative_to(froot).with_suffix('').as_posix()}"
            functions[fid] = path
    return functions


def collect_tag_files(data_dir: Path):
    files = set()
    for ns_dir in (p for p in data_dir.iterdir() if p.is_dir()):
        for sub in ("function", "functions"):
            tdir = ns_dir / "tags" / sub
            if tdir.is_dir():
                files.update(tdir.rglob("*.json"))
    return sorted(files)


def build_references(functions, tag_files, data_dir, include_comments):
    """
    refs[fid] = list of reference records.
    Each record: (kind, source, lineno, text)  kind in {'call', 'tag'}.
    """
    refs = {fid: [] for fid in functions}

    # --- calls inside .mcfunction files ---
    for caller_id, path in functions.items():
        try:
            text = path.read_text(encoding="utf-8-sig", errors="replace")
        except OSError as e:
            print(f"warning: cannot read {path}: {e}", file=sys.stderr)
            continue
        for lineno, raw in enumerate(text.splitlines(), 1):
            line = raw.strip()
            if not line:
                continue
            if line.startswith("#") and not include_comments:
                continue
            for ref in CALL_RE.findall(line):
                if ref.startswith("#"):
                    continue                       # tag call; resolved via tag files
                if ref in refs:
                    refs[ref].append(("call", caller_id, lineno, line))

    # --- membership in function tags ---
    tag_count = 0
    for tf in tag_files:
        rel = tf.relative_to(data_dir)             # <ns>/tags/<function|functions>/<...>.json
        tag_id = f"{rel.parts[0]}:{Path(*rel.parts[3:]).with_suffix('').as_posix()}"
        try:
            data = json.loads(tf.read_text(encoding="utf-8-sig", errors="replace"))
        except (OSError, json.JSONDecodeError) as e:
            print(f"warning: cannot parse tag {tf}: {e}", file=sys.stderr)
            continue
        tag_count += 1
        for value in data.get("values", []):
            vid = value.get("id") if isinstance(value, dict) else value
            if isinstance(vid, str) and not vid.startswith("#") and vid in refs:
                refs[vid].append(("tag", tag_id, None, None))
    return refs, tag_count


def main():
    ap = argparse.ArgumentParser(
        description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter
    )
    ap.add_argument("dir", nargs="?", default=".",
                    help="anywhere in the datapack (pack root, data/, a namespace, or function/)")
    ap.add_argument("-n", "--namespace", action="append", default=[],
                    help="only report orphans in this namespace (repeatable)")
    ap.add_argument("--why", metavar="ID",
                    help="show where a function id is referenced, then exit")
    ap.add_argument("--include-comments", action="store_true")
    ap.add_argument("--count-self", action="store_true")
    ap.add_argument("--no-tags", action="store_true")
    ap.add_argument("--ignore", nargs="*", default=[])
    args = ap.parse_args()

    start = Path(args.dir).resolve()
    if not start.is_dir():
        sys.exit(f"error: {start} is not a directory")

    data_dir = find_data_dir(start)

    # Fallback: no datapack `data/` folder found -> treat `start` as a bare
    # function folder and infer the namespace from its parent.
    fallback_ns = None
    if data_dir is None:
        fallback_ns = start.parent.name
        functions = {
            f"{fallback_ns}:{p.relative_to(start).with_suffix('').as_posix()}": p
            for p in sorted(start.rglob("*.mcfunction"))
        }
        tag_files = []
        print(f"note: no 'data/' folder found; assuming namespace '{fallback_ns}'.",
              file=sys.stderr)
    else:
        functions = collect_functions(data_dir)
        tag_files = [] if args.no_tags else collect_tag_files(data_dir)

    if not functions:
        sys.exit("error: no .mcfunction files found")

    refs, tag_count = build_references(
        functions, tag_files, data_dir, args.include_comments
    )

    # --why: explain a single id and stop.
    if args.why:
        fid = args.why
        if fid not in functions:
            print(f"'{fid}' is not one of the {len(functions)} functions found.")
            near = [f for f in functions if fid.split(":")[-1] in f]
            if near:
                print("did you mean:", ", ".join(sorted(near)[:8]))
            return
        records = refs[fid]
        if not records:
            print(f"{fid}: NOT referenced anywhere -> orphan")
            return
        print(f"{fid} is referenced {len(records)} time(s):")
        for kind, src, lineno, text in records:
            if kind == "tag":
                print(f"  [tag]  listed in tag {src}")
            else:
                where = f"{src}" + (f":{lineno}" if lineno else "")
                print(f"  [call] {where}   ->  {text}")
        return

    ignore_set = set(args.ignore)
    want_ns = set(args.namespace)

    orphans = []
    for fid in functions:
        external = [
            r for r in refs[fid]
            if not (r[0] == "call" and r[1] == fid and not args.count_self)
        ]
        used = bool(external) or fid in ignore_set
        if used:
            continue
        if want_ns and fid.split(":", 1)[0] not in want_ns:
            continue
        orphans.append(fid)

    # ---- report ----------------------------------------------------------
    root_label = data_dir if data_dir else start
    namespaces = sorted({fid.split(":", 1)[0] for fid in functions})
    print(f"data dir   : {root_label}")
    print(f"namespaces : {', '.join(namespaces)}")
    print(f"functions  : {len(functions)}   |   function tags read: {tag_count}")
    if want_ns:
        print(f"reporting  : only {', '.join(sorted(want_ns))}")
    print("-" * 64)

    if not orphans:
        print("No orphan functions. Every function is called or tagged.")
        return

    print(f"ORPHAN FUNCTIONS ({len(orphans)}):\n")
    for fid in sorted(orphans):
        rel = functions[fid].relative_to(root_label).as_posix()
        print(f"  {fid:<44}  ({rel})")
    print(f"\nTip: run  --why {sorted(orphans)[0]}  to confirm, "
          f"or --include-comments if you reference functions only in comments.")
    sys.exit(1)


if __name__ == "__main__":
    main()