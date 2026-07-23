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
| `0x801e6b6c`–`0x801e6b83` | 24 B | Unresolved Data | All-zero run; no reference found (reconfirmed byte-granular after full Ghidra auto-analysis) |
| `0x801e6b84`–`0x801e6ba3` | 32 B | Unresolved Data | Small-byte-value table (two repeating short cycles); one new byte-level reference found (base address only) but the full structure is not yet characterized |
| `0x801e6ba4`–`0x801e6c4b` | 168 B | Data Table | 14-entry array of 3×int32 (12-byte-stride) timing/threshold records, consumed by two overlay functions reached from the Init/Update entry points |
| `0x801e6c4c`–`0x801e6c63` | 24 B | Unresolved Data | All-zero run; no reference found (reconfirmed byte-granular after full Ghidra auto-analysis) |
| `0x801e6c64`–`0x801e6c8b` | 40 B | Data Table | Two adjacent 20-byte 0/1 draw-enable flag arrays, consumed by two overlay functions reached from the Init/Update entry points |
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

**Still unresolved after the first pass: 0x801e6b6c–0x801e6c8b, 288 bytes.** Exhaustive per-address `DumpDataXrefs.java` queries (every 4-byte-aligned address in the range) and a full-overlay raw-byte scan for any 32-bit little-endian literal pointing into this span both returned zero hits. No overlay function computes an address here (no `lui`/`addiu` pair, no load/store) and no stored pointer anywhere in the 11,864-byte overlay targets it. The raw bytes show clear internal structure — a 24-byte all-zero run, a 32-byte table of small byte values in two repeating short cycles, a 168-byte array of 42 signed 32-bit values in a narrow numeric range mostly following a repeating 3-value cycle, another 24-byte all-zero run, and a 40-byte array of 0/1 flag-like bytes — but per this project's evidentiary standard, structure without a consumer is not a resolved classification, so these five sub-ranges stayed `data_unresolved`. This first pass's raw-pointer scan and `DumpDataXrefs.java` queries could only find references Ghidra's project database already contained; see the next section for what full auto-analysis added.

## Second resolution pass: full Ghidra auto-analysis (2026-07-23)

The first 288-byte investigation ran entirely under `-noanalysis`: `Import-RawOverlay.ps1`'s entry-point dump step passes it explicitly, and while the script's own `-import` step passes neither `-noanalysis` nor `-analyze`, a check of the shared project (`DumpProgramInfoOptions.java`, a new small diagnostic script) found the `inst-demo.bin` program's "Analyzed" option was already `true` with a recorded analysis time — Ghidra's headless default when neither flag is given is to run full analysis after import, so **full analysis had, in fact, already run** at initial import, before the first 288-byte pass. This contradicts that pass's working assumption. Explicitly re-running analysis (`-process inst-demo.bin` with neither `-noanalysis` nor `-analyze` — the 12.1.2 headless analyzer has no `-analyze` flag; omitting `-noanalysis` is how a full pass is forced or reconfirmed) ran the standard analyzer suite including **Basic Constant Reference Analyzer** (the `lui`/`addiu` constant-propagation pass this investigation specifically needed) and ghidra_psx_ldr's **PsyQ Signatures** analyzer (detected PsyQ Version `470`, an informational program property only — it does not affect this overlay's independently hash- and byte-matched function bodies). Function count rose from 182 to 198 and defined symbols from 576 to 690. No ghidra_psx_ldr PSX-EXE-specific analyzer (e.g. header-driven relocation/import resolution) engaged beyond PsyQ Signatures — expected and confirmed rather than assumed, since this program was imported with raw `BinaryLoader` and has no PS-X EXE header for such an analyzer to key off.

Re-running `DumpDataXrefs.java` byte-granular (every address, not just 4-byte-aligned, since the smaller sub-ranges are byte tables) across the full 288-byte range found genuine new references at four addresses that returned zero before: `0x801e6ba4`/`0x801e6ba8`/`0x801e6bac` (three words, from `FUN_801e5758` and `FUN_801e5d74`) and `0x801e6c64` (from `FUN_801e5f08` and `FUN_801e58dc`), plus one byte-level hit at `0x801e6b84` (from `FUN_801e5178`). Decompiling all five functions and tracing their callers through the tracked assembly source (`InstDemoOverlay.s`) resolved two sub-ranges fully and one partially:

- **`0x801e6ba4`–`0x801e6c4b` (168 bytes) resolves as a 14-entry array of 3×`int32` (12-byte-stride) records.** `FUN_801e5758` (`jal FUN_801e5758` at the already-verified Init Entry `FUN_801e413c`'s own body, `a0 = $s1+1280`) computes `&DAT_801e6ba4 + index*0xc` from a `sll`/`addu`-scaled index argument and copies record field `+0x00` verbatim and field `+0x08` verbatim into its caller struct, while adding field `+0x04` to a base value selected by another argument (`-10000` or `-2000`). `FUN_801e5d74` (`jal FUN_801e5d74` at the already-verified Update Entry `FUN_801e41e8`'s own body, same `+1280` offset) re-reads field `+0x04` with the identical indexing arithmetic to seed a per-frame counter that feeds the already-documented external GTE helper `0x80056148`. A sibling struct instance at caller-struct offset `+1320` (populated by `FUN_801e5f08`/`FUN_801e58dc`, see next) sets the identical two struct fields (`+0xdc`/`+0xe4` in the caller struct) to fixed literals `400`/`0x334` instead of reading the table — direct cross-validation that those two fields form a fixed 3-field group regardless of data source.
- **`0x801e6c64`–`0x801e6c8b` (40 bytes) resolves as two adjacent 20-byte 0/1 draw-enable flag arrays** (`0x801e6c64`–`0x801e6c77` and `0x801e6c78`–`0x801e6c8b`). `FUN_801e5f08` (`jal FUN_801e5f08` at Init Entry `FUN_801e413c`, `a0 = $s1+1320`) unconditionally byte-copies the first 20-byte half into its caller struct. `FUN_801e58dc` (`jal FUN_801e58dc` at Update Entry `FUN_801e41e8`, same `+1320` offset) copies per-index from either half — selected by a bit test (`param_1[1] & 0x10`) on a caller-struct flag — into the same struct offsets, then reads the copied bytes back as a 0/1 gate on up to ~19 per-slot calls to the already-documented external GPU helper `0x80056a08`. This **retracts** this document's earlier claim (in the External Callees section) that `FUN_801e58dc` has "no reference to any address" in `0x801e6b6c`–`0x801e6e57`; `FUN_801e5d74` is retracted the same way. The external callees `0x80056148`/`0x80056a08` themselves still never receive an address literally inside this range — only pointers into the separate caller-supplied struct — so that part of the original claim stands.
- **`0x801e6b84`–`0x801e6ba3` (32 bytes) gets one new partial reference, not a full resolution.** `FUN_801e5178` (a callee of `FUN_801e5308`, itself a callee of Init Entry `FUN_801e413c` via a runtime mode-select byte at caller-struct offset `+1372`) reads a single byte at `0x801e6b84 + row + plane*0x10` (`row` 0..16, `plane` a runtime-variable function argument) and AND-tests it against 8 fixed bitmask constants, expanding it into 8 boolean outputs that feed an external main-executable table (`DAT_800f3bac`) alongside PS1-SPU-pitch-shaped constants (`0x1000`, `32000`, a `<<12` scale) — structurally suggestive of an audio/note table, but that specific semantic is not independently corroborated in this pass and is **not asserted**. The `plane=1` case's last row would read one byte past this sub-range's end, into the adjacent (now-resolved) record table's first byte; whether that plane is ever exercised at runtime is not determined by static analysis alone. Per this project's evidentiary standard, a reference without a fully characterized record shape does not warrant upgrading the classification, so this sub-range stays `data_unresolved` — but it is no longer a "zero references found by any method" range either.
- **The two 24-byte all-zero runs (`0x801e6b6c`–`0x801e6b83`, `0x801e6c4c`–`0x801e6c63`) remain genuinely unreferenced.** A byte-granular `DumpDataXrefs.java` sweep of both ranges after full auto-analysis still returned zero hits at every address. This is a durable negative result, not an artifact of under-analysis.

**Now unresolved: 0x801e6b84–0x801e6ba3 (32 B, partial reference) plus two 24-byte all-zero runs, 80 bytes total** (down from 288). No literal byte content from any of these spans is recorded in any tracked file; see the range map CSV for exact boundaries.

**Checker**: `tools/build/Test-InstDemoRecordArray.ps1` reproduces the SHA-256 gate, the two all-zero-run assertions, the 460-byte zero-at-rest assertion for the resolved GPU record tail, not-all-zero assertions for the two newly-resolved data tables (structural presence only, no literal content), and the 13-entry pointer-table-to-record-address arithmetic against the hash-gated overlay bytes.

## Third pass: dynamic verification attempt (BizHawk, 2026-07-23)

Static analysis for the remaining 80 bytes was credibly exhausted after the
second pass, so this pass tried **dynamic** evidence: running the actual
game in BizHawk 2.11 (PSX core "Nymashock", a Waterbox/Nyma-wrapped
Mednafen-derived core per this build's `config.ini`) with no controller
input through the documented attract loop, to observe real memory reads/
writes to the three still-unresolved sub-ranges while HOW TO PLAY plays.
Full method, tooling, and the lag-frame/input-hold finding are in
[/docs/tooling/bizhawk-harness.md](/docs/tooling/bizhawk-harness.md); this
section records the result against this overlay's classification only.

**Reaching HOW TO PLAY required one narrow, documented exception to
zero input.** A fresh BizHawk session mounts an empty virtual memory card,
which this game detects as "card present, no system data" and blocks on a
real YES/NO dialog pair (the same "Memory Card Auto Load" boot step this
project's screen-flow doc already describes) — not a synthetic skip of the
attract loop. Dismissing both dialogs (one Circle press each) drops into
the title/PUSH START main menu; its own documented 900-frame inactivity
timeout returns to the attract loop's `WARNING` state, since the inherited
screen index is `0x1c`. From there the run is genuinely zero-input through
`WARNING` → `TITLE` → HOW TO PLAY, matching this document's own tick
accounting. The active window was confirmed both by polling the documented
screen-index global `DAT_800f2908` (`docs/games/ddr-5th-mix-jp-globals.md`)
for its `PLAY DEMO` value (`0x24`) and, independently, by a mid-window
screenshot literally showing the "HOW TO PLAY" tutorial screen. The
measured active window (screen index entry to exit) was 1,989 frames,
close to but not exactly the 1,910-tick script trace this document already
verifies statically — consistent with an approximately 1:1 tick/frame
relationship plus a few frames of detection-boundary slack, not an exact
proof of 1:1 timing.

**BizHawk's `event.on_bus_read`/`on_bus_write`/`on_bus_exec` bus-hook API
was found non-functional for this specific core/session** and could not be
used: `event.availableScopes()` returned zero scopes, and a control hook on
the overlay's own Update Entry point (`FUN_801e41e8`, documented above as
called unconditionally every active frame) never fired once across a full
HOW TO PLAY window. This is recorded as a tooling limitation of this
BizHawk build/core combination, not a claim about the game; see
`docs/tooling/bizhawk-harness.md` for the diagnostic.

**Fallback method and result**: per-frame byte-level polling
(`memory.read_u8`, confirmed working throughout via the screen-index poll)
of all three unresolved sub-ranges, plus a known-active control range
(the first 4 bytes of the adjacent, already-resolved 14-entry timing
table), across the entire visually-confirmed HOW TO PLAY window
(frame 4170–6159). **Zero byte-value changes were observed in all three
target ranges and the control range for the full 1,989-frame window.**
This is a genuine negative result for *writes* specifically — it does not
and cannot detect reads with no observable side effect, so it neither
confirms nor refutes whether `FUN_801e5178`'s single ambiguous byte read
into `0x801e6b84`–`0x801e6ba3` (documented above) actually executes at
runtime; the control range is itself a read-only consumer per statics, so
its own zero-change result was expected, not a validity check on the
polling mechanism (which the working screen-index poll already validates
independently).

**No classification changes as a result of this pass.** All three
sub-ranges remain `data_unresolved`/`unverified` in the range map CSV: a
write-side dynamic negative, on top of two independent static
zero-reference sweeps, still is not a consumer, and per this project's
evidentiary standard a negative result records evidence without asserting
resolution. This pass's value is a third, independent, dynamic line of
evidence agreeing with the two static passes for the two all-zero runs,
and an honest scope limit (write-only) for the partially-referenced
32-byte table.

**Reproduction**: `tools/bizhawk/probe-inst-demo-watch.lua`, run via
`tools/bizhawk/run-probe.ps1 -Frames 13000 -LuaPath tools/bizhawk/probe-inst-demo-watch.lua`.
Requires a local BizHawk 2.11 install and a lawful CHD in `input/chd/`
(neither is committed to this repository); see
`docs/tooling/bizhawk-harness.md` for full setup, the boot-dialog input
sequence, the bus-hook non-functionality diagnostic, and a documented
run-to-run timing-fragility caveat in the fixed-frame boot sequence.

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
- **Data Structurally Resolved**: 668 bytes (`0x801e6ba4`–`0x801e6e57`) — a runtime-populated 13(+1)-record GPU sprite/tile draw-parameter array plus a 12-byte selector record (460 bytes, first pass), a 14-entry 3×int32 timing/threshold record table (168 bytes), and two 20-byte draw-enable flag arrays (40 bytes) (208 bytes, second pass); see "748-Byte Tail Range Resolution" and "Second resolution pass" below.
- **Unresolved Data Remaining**: 80 bytes (`0x801e6b6c`–`0x801e6ba3`) — two 24-byte all-zero runs with no static consumer found by any method, plus a 32-byte small-byte-value table with one partial reference found but not yet fully characterized.
- **Whole-Overlay Byte Match**: Not claimed; whole-overlay match requires semantic reconstruction of all data tables, including the remaining 80 unresolved bytes.
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
- `0x80056148`, `0x80056a08`, `0x80056af0`: GTE matrix transformation & rendering helpers (called by `FUN_801e5d74`/`FUN_801e58dc`/`FUN_801e5420` respectively, on a caller-supplied animation-state struct). `FUN_801e5d74` and `FUN_801e58dc` themselves *do* reference the `0x801e6b6c`–`0x801e6e57` data range as of the 2026-07-23 full-auto-analysis pass — see "Second resolution pass" below, which retracts that specific "no reference" claim from the earlier 460-byte write-up. The external callees `0x80056148`/`0x80056a08`/`0x80056af0` still never receive an address literally inside this range, only pointers into the separate caller-supplied struct, so they remain otherwise unrelated to it.

# Citations

[1] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[2] [/docs/tooling/ghidra-setup.md](/docs/tooling/ghidra-setup.md)
[3] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
