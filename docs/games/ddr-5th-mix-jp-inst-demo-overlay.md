---
type: Concept
title: Dance Dance Revolution 5th Mix (Japan) — HOW TO PLAY Overlay Module
description: Structural inventory, range map, command script trace verification, toolchain versioning, and per-function byte-matching evidence for the inst-demo executable overlay.
tags: [ps1, ddr5thmix, decompilation, overlay, state-machine, inst-demo]
timestamp: 2026-07-23T00:00:00-04:00
---

# Overview

The `inst-demo-overlay` module implements the executable overlay for the `DDR 5th Mix` **HOW TO PLAY** demonstration.
Extracted from `READ_DT.BIN` at file offset `0x1630000` (length `0x2e58` / 11,864 bytes), the overlay is loaded dynamically into PS1 RAM at runtime base address `0x801e4000`.

Unlike static video streams, the overlay executes real MIPS assembly instructions, animation command lists, and 3D graphics/lighting calculations to render the interactive tutorial sequence.

# Range Map (11,864 Bytes Total)

The complete `0x2e58`-byte range (`0x801e4000`–`0x801e6e57`) is fully accounted for without gaps or overlaps:

| Address Range | Length | Classification | Description |
|---|---:|---|---|
| `0x801e4000`–`0x801e4047` | 72 B | Header | ASCII Title Header (`"inst demo \0 btile \0..."`) |
| `0x801e4048`–`0x801e64e3` | 9,372 B | Code | 70 MIPS functions (`FUN_801e4048` to `FUN_801e64dc`) |
| `0x801e64e4`–`0x801e65eb` | 264 B | Data Table | Scripted tick and interpolation parameter tables |
| `0x801e65ec`–`0x801e664b` | 96 B | Data Table | Scripted parameter pointer arrays |
| `0x801e664c`–`0x801e66c3` | 120 B | Data Table | Callback command structure parameter arrays |
| `0x801e66c4`–`0x801e6b6b` | 1,192 B | Command List | 97-step command script (96 callbacks, 1 jump, 1,910 total ticks); its tail (after the null terminator) also holds a 13-entry pointer/default-value table for the draw-record array below |
| `0x801e6b6c`–`0x801e6b83` | 24 B | Unresolved Data | All-zero run; no reference found |
| `0x801e6b84`–`0x801e6ba3` | 32 B | Unresolved Data | Small-byte-value table (two repeating short cycles); no reference found |
| `0x801e6ba4`–`0x801e6c4b` | 168 B | Unresolved Data | 42-entry signed 32-bit array, narrow numeric range; no reference found |
| `0x801e6c4c`–`0x801e6c63` | 24 B | Unresolved Data | All-zero run; no reference found |
| `0x801e6c64`–`0x801e6c8b` | 40 B | Unresolved Data | 40-byte 0/1 flag-like byte array; no reference found |
| `0x801e6c8c`–`0x801e6e2b` | 416 B | Data Table | 13×32-byte GPU FT4 (textured-quad) sprite/tile draw-parameter records |
| `0x801e6e2c`–`0x801e6e4b` | 32 B | Data Table | 14th draw-parameter record, populated via `FUN_801e601c` instead of the pointer table |
| `0x801e6e4c`–`0x801e6e57` | 12 B | Data Table | 3-field preset/selector record driving record-index-9's animated position |

# 748-Byte Tail Range Resolution (0x801e6b6c–0x801e6e57)

The final data range was reimported into the shared headless Ghidra project (`runtime/ghidra/projects/ddr5thmix`, program `/inst-demo.bin`) and traced with `DumpDataXrefs.java`/`DumpFunctionDetail.java` plus a direct raw-byte scan of the whole overlay for literal little-endian pointer values. 584 of the 748 bytes now resolve with code-level evidence; 288 bytes remain genuinely unresolved (no static reference found anywhere in the overlay).

**Resolved (verified): 0x801e6c8c–0x801e6e57, 460 bytes.** This entire span reads as literal zero in the static ROM image — it is not compiled-in data, it is a runtime-populated scratch/record area. The command-list block's tail (inside the already-verified `0x801e66c4`–`0x801e6b6b` command-list range, after its null terminator at `0x801e69cc`) holds a literal 13-entry pointer table, 28 bytes apart starting at `0x801e69fc`, whose 13 stored addresses are exactly `0x801e6c8c + i*0x20` for `i` in `0..12` — i.e. 13 evenly-spaced 32-byte record slots. `FUN_801e5040` walks this table at init time and copies default field values into each slot from an adjacent template embedded in the same command-list tail. Eight overlay functions then populate or read specific record fields and pass the record's address as the third argument to `FUN_801e4978`:
- `FUN_801e6270` (record 0, `0x801e6c8c`), `FUN_801e6320` (record 1, `0x801e6cac`), `FUN_801e634c` (record 2, `0x801e6ccc`) — one record apiece, animating y/h fields off a per-instance frame counter.
- `FUN_801e4e70` (records 3 and 4, `0x801e6cec`/`0x801e6d0c`) and `FUN_801e4f68` (records 5 and 6, `0x801e6d2c`/`0x801e6d4c`) — two records apiece.
- `FUN_801e6408` (records 7, 8, and 10, `0x801e6d6c`/`0x801e6d8c`/`0x801e6dcc`) — three records, one of which (10) has its y field driven by a toggling counter (`DAT_801e69d4`) that produces a small oscillating vertical offset.
- `FUN_801e5040` itself (record 11, `0x801e6dec`, plus records 13 at `0x801e6e2c`/`0x801e6e3c` via two calls to `FUN_801e601c`, a distinct sprite-metadata rect-builder that writes only the record's 4 numeric fields, not its ordering-table index or flags).
- `FUN_801e6188`/`FUN_801e61b4`/`FUN_801e61e0` (record 9, `0x801e6dac`) — three near-identical "preset" functions, each writing one of three constants (record 9's x field, plus a separate 12-byte selector record at `0x801e6e4c`–`0x801e6e57`: a zero flag, a matching value field, and a fixed negative constant). `FUN_801e4e70` reads that selector record back to drive record 9's animated x/y position, cycling on a `0x1400` modulus.

`FUN_801e4978` itself decompiles cleanly as a PSX GPU FT4 (textured-quad / sprite tile) primitive constructor: it looks up sprite/CLUT metadata for an item ID (`func_0x80098880`), reads exactly 4 signed 32-bit fields from its third argument as `x`, `y`, a width delta, and a height delta (offsets `+0x00`/`+0x04`/`+0x08`/`+0x0c`), a 5th field as an ordering-table (draw-priority) index (`+0x10`), and 2 flag bytes (`+0x14` semi-transparency, `+0x15` a mirror/orientation flag) — a ~0x16-byte payload padded to the observed 0x20-byte record stride. This is the "HOW TO PLAY" tutorial's on-screen text/graphic tile system (`btile`, per the overlay's own header string), not 3D lighting or model-transform matrices — **the original "3D lighting/model transform parameter tables" hypothesis for this range is retracted** for the 460 resolved bytes. The five external callees the earlier draft flagged as plausibly involved (`0x800548e8`, `0x80054968`, `0x80056148`, `0x80056a08`, `0x80056af0`) were checked directly: none of the functions that touch this range call them, and the overlay functions that do call them (`FUN_801e5420`, `FUN_801e58dc`, `FUN_801e5d74`, `FUN_801e4048`, `FUN_801e41e8`) operate on a caller-supplied animation-state struct with no reference to any address in `0x801e6b6c`–`0x801e6e57` — those five callees are unrelated to this range.

**Still unresolved: 0x801e6b6c–0x801e6c8b, 288 bytes.** Exhaustive per-address `DumpDataXrefs.java` queries (every 4-byte-aligned address in the range) and a full-overlay raw-byte scan for any 32-bit little-endian literal pointing into this span both returned zero hits. No overlay function computes an address here (no `lui`/`addiu` pair, no load/store) and no stored pointer anywhere in the 11,864-byte overlay targets it. The raw bytes show clear internal structure — a 24-byte all-zero run, a 32-byte table of small byte values in two repeating short cycles, a 168-byte array of 42 signed 32-bit values in a narrow numeric range mostly following a repeating 3-value cycle, another 24-byte all-zero run, and a 40-byte array of 0/1 flag-like bytes — but per this project's evidentiary standard, structure without a consumer is not a resolved classification, so these five sub-ranges stay `data_unresolved`. No literal byte content from this span is recorded in any tracked file; see the range map CSV for exact boundaries.

**Checker**: `tools/build/Test-InstDemoRecordArray.ps1` reproduces the SHA-256 gate, the two all-zero-run assertions, the 460-byte zero-at-rest assertion for the resolved tail, and the 13-entry pointer-table-to-record-address arithmetic against the hash-gated overlay bytes.

# Entry Points

The main executable interacts with the overlay via three primary entry points:

1. **Init Entry** (`FUN_801e413c` @ `0x801e413c`, 172 bytes): Initializes overlay state, registers sound/graphic resources, and bootstraps the command list script runner at `0x801e66c4`.
2. **Update Entry** (`FUN_801e41e8` @ `0x801e41e8`, 156 bytes): Called once per frame by the attract state machine. Advances the command list script, updates camera/3D transformation matrices, and returns `1` when the sequence completes.
3. **Exit Entry** (`FUN_801e4284` @ `0x801e4284`, 68 bytes): Cleans up allocated resources upon transition out of HOW TO PLAY.

# Command Script & 1,910-Tick Dynamic Trace

The overlay's animation is driven by a command script runner (`FUN_801e42ec` @ `0x801e42ec`, 180 bytes) interpreting 8-byte steps `[func_ptr, arg1_ptr]` starting at `0x801e66c4`.

Dynamically derived script trace verification (`tools/build/Test-InstDemoScriptTrace.ps1`) confirms:
- **Total Script Steps**: 97 steps (96 non-jump callbacks + 1 explicit jump at step 38 from `0x801e67f4` to `0x801e67fc`).
- **Null Terminator**: `0x801e69cc` (step 97).
- **24 Waits of 60 Ticks**: 1,440 ticks total.
- **5 Waits of 80 Ticks**: 400 ticks total.
- **2 Interpolations of 20 Ticks**: 40 ticks total.
- **6 Interpolations of 5 Ticks**: 30 ticks total.
- **Total Calculated Script Ticks**: **1,910 ticks** before reaching the null callback.

# Code Surface & Verification Evidence

- **Full Structural Inventory**: 11,864 bytes (`0x801e4000`–`0x801e6e57`)
- **Code Surface Reconstructed**: 70 functions / 9,372 bytes (100% byte match on code surface)
- **Data Structurally Resolved (this session)**: 460 bytes (`0x801e6c8c`–`0x801e6e57`) — a runtime-populated 13(+1)-record GPU sprite/tile draw-parameter array plus a 12-byte selector record; see "748-Byte Tail Range Resolution" below.
- **Unresolved Data Remaining**: 288 bytes (`0x801e6b6c`–`0x801e6c8b`) — no static consumer found.
- **Whole-Overlay Byte Match**: Not claimed; whole-overlay match requires semantic reconstruction of all data tables, including the remaining 288 unresolved bytes.
- **Executable SHA-256**: `3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb`
- **Toolchain Required & Verified**:
  - `mipsel-none-elf-as` (GNU binutils 2.43)
  - `mipsel-none-elf-ld` (GNU binutils 2.43)
  - `mipsel-none-elf-objcopy` (GNU binutils 2.43)
- **Source Files**: `/src/ddr5thmix/overlays/inst_demo/InstDemoOverlay.s` and `/src/ddr5thmix/overlays/inst_demo/inst_demo_overlay.h`
- **Manifest**: `/config/ddr5thmix/inst-demo-overlay.json`
- **Range Map CSV**: [/docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv](/docs/games/ddr-5th-mix-jp-inst-demo-overlay-map.csv)

## Reproduction Commands

1. **Per-Function SHA-256 and Code Surface Match**:
   ```powershell
   pwsh -File tools/build/Invoke-OverlayMatch.ps1 -OverlayPath work/ddr5thmix-overlays/inst-demo.bin
   ```
2. **11,864-Byte Range Map Structural Audit**:
   ```powershell
   pwsh -File tools/build/Invoke-OverlayRangeMapCheck.ps1
   ```
3. **97-Step / 1,910-Tick Script Trace Verification**:
   ```powershell
   pwsh -File tools/build/Test-InstDemoScriptTrace.ps1 -OverlayPath work/ddr5thmix-overlays/inst-demo.bin
   ```
4. **748-Byte Tail Range Structural Verification** (pointer-table arithmetic, zero-run assertions):
   ```powershell
   pwsh -File tools/build/Test-InstDemoRecordArray.ps1 -OverlayPath work/ddr5thmix-overlays/inst-demo.bin
   ```

# External Callees

Out-of-overlay calls from `InstDemoOverlay.s` target standard main executable logic:
- `0x80037988`: Audio / SPU helper
- `0x800548e8`, `0x80054968`: Graphics pipeline & 3D matrix math (called by `FUN_801e4048`/`FUN_801e41e8`, unrelated to the `0x801e6b6c`–`0x801e6e57` data range)
- `0x80056148`, `0x80056a08`, `0x80056af0`: GTE matrix transformation & rendering helpers (called by `FUN_801e5d74`/`FUN_801e58dc`/`FUN_801e5420` respectively, on a caller-supplied animation-state struct; also unrelated to the `0x801e6b6c`–`0x801e6e57` data range — see "748-Byte Tail Range Resolution")

# Citations

[1] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[2] [/docs/tooling/ghidra-setup.md](/docs/tooling/ghidra-setup.md)
[3] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
