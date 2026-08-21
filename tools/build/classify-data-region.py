#!/usr/bin/env python3
"""Classify a range of a PS-X EXE text image as data vs code.

Reproduces the structural classification used for the DDR 5th Mix
executable's two non-code regions (leading rodata block and trailing
asset-data-plus-BSS region) in docs/foundations/linked-object-evidence.md §5.

The lawful executable must be supplied locally; nothing is written and no
game bytes are embedded. Usage:

    python3 tools/build/classify-data-region.py work/.../SLPM_868.97_1 \
        --load 0x8001a800 --start 0x8001a800 --end 0x800206f8 \
        [--symbol-map docs/games/ddr5thmix/symbol-map.csv] [--zone 256]

Output:
  - per-zone class histogram (ascii / sjis / zero / ptr / data)
  - printable ASCII and Shift-JIS string runs (>= 4 bytes)
  - aligned 32-bit LE words that point into the image (0x8001a000..0x80120000),
    optionally resolved to symbol-map row names
  - control-flow density (branch / jump words) vs a reference code range
    (--code-start/--code-end) for comparison
"""
import argparse
import struct
import sys


def load(path):
    with open(path, "rb") as f:
        return f.read()


def file_offset(addr, loadaddr):
    return int(addr, 16) - loadaddr


def classify(readfn, loadaddr, start, end, symrows=None):
    data = readfn()
    s = file_offset(start, loadaddr)
    e = file_offset(end, loadaddr)
    seg = data[s:e]
    n = len(seg)
    base = int(start, 16)

    # byte-kind: A ascii, Z zero, O other
    kind = ["O"] * n
    for i in range(n):
        b = seg[i]
        if 32 <= b < 127:
            kind[i] = "A"
        elif b == 0:
            kind[i] = "Z"
    # aligned 32-bit LE words pointing into the image are 'P'
    ptrs = []
    for i in range(0, n - 3, 4):
        w = struct.unpack_from("<I", seg, i)[0]
        if 0x8001A000 <= w < 0x80120000:
            kind[i] = kind[i + 1] = kind[i + 2] = kind[i + 3] = "P"
            ptrs.append((base + i, w))

    # per-zone histogram
    def zone_class(blk):
        asc = sum(1 for b in blk if 32 <= b < 127)
        i = 0
        sj = 0
        while i < len(blk):
            b = blk[i]
            if 0x81 <= b <= 0x9F or 0xE0 <= b <= 0xEF:
                sj += 1
                i += 2
            else:
                i += 1
        zeros = blk.count(0)
        ptrc = 0
        for i in range(0, len(blk) - 3, 4):
            w = struct.unpack_from("<I", blk, i)[0]
            if 0x8001A000 <= w < 0x80120000:
                ptrc += 1
        if asc > int(len(blk) * 0.66):
            return "ascii"
        if sj > int(len(blk) * 0.4):
            return "sjis"
        if zeros > int(len(blk) * 0.9):
            return "zero"
        if ptrc > len(blk) // 16:
            return "ptr"
        return "data"

    # strings
    ascii_strs = []
    sjis_strs = []
    i = 0
    while i < n:
        if kind[i] != "A":
            i += 1
            continue
        j = i
        while j < n and kind[j] == "A":
            j += 1
        if j - i >= 4:
            ascii_strs.append((base + i, j - i, seg[i:j]))
        i = j
    i = 0
    while i < n:
        b = seg[i]
        if not (0x81 <= b <= 0x9F or 0xE0 <= b <= 0xEF):
            i += 1
            continue
        j = i
        while j < n:
            b = seg[j]
            if b == 0:
                break
            if 0x81 <= b <= 0x9F or 0xE0 <= b <= 0xEF:
                j += 2
            elif 32 <= b < 127 or 0xA1 <= b <= 0xDF:
                j += 1
            else:
                break
        if j - i >= 4:
            try:
                sjis_strs.append((base + i, j - i, seg[i:j].decode("shift_jis")))
            except Exception:
                sjis_strs.append((base + i, j - i, "<undecodable>"))
        i = j

    # control-flow density (whole range)
    def flow(seg_):
        nw = len(seg_) // 4
        branches = jumps = jr = 0
        for i in range(nw):
            w = struct.unpack_from("<I", seg_, i * 4)[0]
            op = w >> 26
            if op in (0x04, 0x05, 0x06, 0x07):
                branches += 1
            elif op in (0x02, 0x03):
                jumps += 1
            elif op == 0 and (w & 0x3F) == 0x08:
                jr += 1
        return nw, branches, jumps, jr

    nw, br, jm, jrs = flow(seg)

    rows = {
        "region": {"start": start, "end": end, "size": n},
        "zone_size": 256,
        "word_classification": {
            "ptr_into_image_words": sum(1 for i in range(n) if kind[i] == "P") // 4,
            "zero_bytes": sum(1 for i in range(n) if kind[i] == "Z"),
            "ascii_bytes": sum(1 for i in range(n) if kind[i] == "A"),
            "other_bytes": sum(1 for i in range(n) if kind[i] == "O"),
        },
        "strings": {"ascii": len(ascii_strs), "sjis": len(sjis_strs)},
        "pointers_into_image": len(ptrs),
        "control_flow": {"words": nw, "branches": br, "jumps": jm, "jr": jrs},
    }
    return rows, kind, ascii_strs, sjis_strs, ptrs


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("exe")
    ap.add_argument("--load", required=True, help="PS-X EXE text load address")
    ap.add_argument("--file-base", default="0x8001a000",
                    help="runtime address mapped to file offset 0 (text load minus PS-X EXE header; default 0x8001a000)")
    ap.add_argument("--start", required=True)
    ap.add_argument("--end", required=True)
    ap.add_argument("--symbol-map")
    ap.add_argument("--code-start", help="reference code range start (density comparison)")
    ap.add_argument("--code-end", help="reference code range end")
    ap.add_argument("--show-strings", action="store_true")
    ap.add_argument("--show-pointers", action="store_true")
    args = ap.parse_args()

    sym = {}
    loadaddr = int(args.load, 16)
    if args.symbol_map:
        import csv

        for r in csv.DictReader(open(args.symbol_map, encoding="utf-8-sig")):
            if r.get("address") and r.get("proposed_name"):
                sym[int(r["address"], 16)] = r["proposed_name"]

    file_base = int(args.file_base, 16)
    rows, kind, astrs, sstrs, ptrs = classify(
        lambda: open(args.exe, "rb").read(), file_base, args.start, args.end
    )
    import json

    print(json.dumps(rows, indent=1))
    print(f"ptr targets resolved to symbol-map rows: "
          f"{sum(1 for _, t in ptrs if t in sym)}/{len(ptrs)}")

    if args.code_start and args.code_end:
        data = open(args.exe, "rb").read()
        cs = file_offset(args.code_start, file_base)
        ce = file_offset(args.code_end, file_base)
        seg = data[cs:ce]
        nw = len(seg) // 4
        br = jm = jrs = 0
        for i in range(nw):
            w = struct.unpack_from("<I", seg, i * 4)[0]
            op = w >> 26
            if op in (0x04, 0x05, 0x06, 0x07):
                br += 1
            elif op in (0x02, 0x03):
                jm += 1
            elif op == 0 and (w & 0x3F) == 0x08:
                jrs += 1
        print(f"reference code {args.code_start}-{args.code_end}: words={nw} "
              f"branches={br} jumps={jm} jr={jrs}")

    if args.show_strings:
        for a, ln, s in astrs:
            txt = "".join(chr(c) if 32 <= c < 127 else "." for c in s)
            print(f"ASCII  0x{a:08x} +{ln:4d}  {txt}")
        for a, ln, s in sstrs:
            print(f"SJIS   0x{a:08x} +{ln:4d}  {s}")

    if args.show_pointers:
        for a, t in ptrs:
            name = sym.get(t, "")
            print(f"PTR    0x{a:08x} -> 0x{t:08x}  {name}")


if __name__ == "__main__":
    main()
