---
type: Data Map
title: DDR 5th Mix — trailing executable data region (0x800ac888–0x8011b000)
description: Structural map of the executable's trailing non-code region — the 445-entry READ_DT.BIN descriptor table, UI/asset data tables, PsyQ and game strings, the crt0 BSS range, and the post-BSS 0xff zone.
resource: /docs/foundations/linked-object-evidence.md
tags: [ps1, ddr5thmix, data-map, descriptors, read_dt, bss, strings]
timestamp: 2026-08-20T00:00:00-04:00
---

# Trailing executable data region

The 452,472 bytes at `0x800ac888`–`0x8011b000` (everything after the last
catalogued function `FUN_800ac764`, which ends at `0x800ac888`) are **data,
not code** — the executable's trailing asset/descriptor region plus its BSS.
This page is the structural map; the falsifiable checks are recorded in
[linked-object evidence §5.1](/docs/foundations/linked-object-evidence.md).

Input: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Reproduction: `python3 tools/build/classify-data-region.py <exe> --load
0x8001a800 --file-base 0x8001a000 --start 0x800ac888 --end 0x8011b000`.

## Whole-region classification

| Metric | Value |
|---|---|
| Size | 452,472 bytes (113,118 32-bit words) |
| Zero bytes | 253,133 (55.9%) — the crt0 BSS run (222,448 B) plus interior and tail zeros |
| Printable-ASCII bytes | 57,320 (12.7%); 1,505 runs >= 4 bytes |
| Shift-JIS double-byte candidates | 5,003 runs (false-positive-prone on binary data; not asserted as text) |
| Aligned words pointing into the image | 1,386 (1.2%) |

**Census caveat**: the raw opcode census of this region (4,949 branch-like +
5,492 jump-like words) is **not** evidence of code. The non-zero portion
contains 16-bit-strided tables whose halfword patterns decode as
branch/jump words by coincidence (verified by disassembly: the dense runs
emit invalid instruction forms such as `lw a3,12($pc)` and `.short`
halfwords, and the byte stream is a regular 16-bit decrement/increment
pattern — a vertex/mesh-style table, not instructions). Real code ranges of
the same file show coherent prologues/epilogues and `jal` targets that
resolve to symbol-map rows; this region's words do neither. The string,
pointer, descriptor, and LZ/TIM negative evidence below is the actual
classification.

## Zone map

| Zone | Range | Content |
|---|---|---|
| Z1 | `0x800ac888`–`0x800ac9f8` (368 B) | UI resource-name table (`MENU`, `GAME`, `RAM`, `TEST` 4-char names) plus sprite-frame coordinate records `(w,h),(x,y)` |
| Z2 | `0x800ac9f8`–`0x800ad7e0` (3,560 B) | **445-entry `(byte_count, LBA)` descriptor table** into `READ_DT.BIN` |
| Z3 | `0x800ad7e0`–`0x800ade00` (1,568 B) | Secondary tables: segment/offset records, the 47-row duplicated-offset music table (`0x800adb20`), small-value tables |
| Z4 | `0x800ade00`–`0x800e2931` (~177 KB) | Embedded data: 16-byte asset-buffer records `(id, flags, size, ram_addr)` whose sizes match descriptor counts (e.g. `0x31380`, `0x320a0`), offset tables, PsyQ library strings, game strings |
| Z5 | `0x800e2931`–`0x80118e28` (222,448 B) | crt0 BSS zero (see [BSS reconciliation](/docs/foundations/linked-object-evidence.md) §5.1) |
| Z6 | `0x80118e28`–`0x8011acb8` (7,824 B) | Post-BSS data: `0xff` fill with small value tables (e.g. `02 00 00 00 28 1e 00 00`) |
| Z7 | `0x8011acb8`–`0x8011b000` (840 B) | All-zero tail |

## Z2 — the READ_DT.BIN descriptor table

- 445 entries, 8-byte strided, `(byte_count, LBA)` little-endian pairs,
  LBAs monotonically increasing `0x4e20`–`0x86ce`, every count non-zero.
- READ_DT.BIN (32,768,000 bytes, SHA-256
  `004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`)
  starts at CD LBA `0x4e20`; byte offset = `(LBA − 0x4e20) × 2048`. All 445
  ranges are in bounds (max end 0x800e2xxx < 32,768,000).
- Corroboration: entry LBA `0x7c51` is the documented `0x00000005` TIM
  archive (103 TIMs, 306,512 bytes), and counts `0x31380`/`0x320a0` reappear
  as the Z4 asset-buffer record sizes.
- **Correction to the 2026-08-14 record**: the earlier bounded scan of file
  range `0x92000`–`0x94000` reported "544 unique, bounds-valid pairs".
  An alignment-checked re-scan (2026-08-20) shows 445 of them form this
  contiguous 8-byte-strided table; the other 99 have **no 8-byte-aligned
  occurrence anywhere in the executable** — they are 4-byte-aligned
  cross-word coincidences (word1 of one record + word0 of the next) in the
  same zone, not table entries. The 99 extracted READ_DT.BIN ranges still
  hash-verify as real disc bytes, but they are not descriptor-table entries.
  The table's true entry count is 445.

## Z4 — embedded data and strings

- **PsyQ library strings**: `Library Programs (c) 1993-1997 Sony Computer
  Entertainment Inc., All Rights Reserved.` (the PsyQ runtime banner),
  `Error: Can't push matrix,stack(max 20) is full!` and `Error: Can't pop
  matrix,stack is empty!` (PsyQ GTE matrix-stack errors), `This function is
  not implemented.` — matching the confirmed GTE/GS object region.
- **Game strings**: `Lesson Mode`, `Arcade Link`, `Information` (main-menu
  items; `0x800d9b70` area), `MENU`/`GAME`/`RAM TEST` (Z1).
- **Asset-buffer records** (`0x800ae334` area): 16-byte records
  `(id, flags, size, ram_addr)`; sizes match descriptor counts, ram_addr is
  a base in this same zone (e.g. `0x800ae2bc`).
- **Negative results** (recorded honestly): the `0x80001094`/`0x800010d4`
  words here do **not** decode with the project's LZ decoder
  (`tools/iso9660/Expand-ResourceLz.ps1` — "Invalid back-reference
  distance"), so they are coincidental values, not compressed streams; the
  `0x00000010` words are asset-record id fields, not TIM magic (the
  following word is not a TIM flag and TIM validation accepts nothing).
- The 0xffffffff words and `0x0000000c`/`0x0000001b` words are small-value
  table data, not descriptor-family headers.

## Status

Classified 2026-08-20 (see [linked-object evidence §5.1](/docs/foundations/linked-object-evidence.md)).
All 452,472 bytes are now accounted: UI tables, the 445-entry descriptor
table, secondary tables, embedded data + strings, the crt0 BSS range, the
post-BSS 0xff zone, and the zero tail. Reproducing these bytes (or splicing
them from the lawful dump at build time) is the remaining work toward
`whole_executable_match`; see
[main-executable-candidate](/docs/tooling/main-executable-candidate.md).
