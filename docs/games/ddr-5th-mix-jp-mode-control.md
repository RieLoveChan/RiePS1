---
type: Reconstructed Module
title: DDR 5th Mix Mode-Control Module
description: Reproducible game-owned module grouping twenty accepted mode/submode and session-control functions.
tags: [ps1, ddr5thmix, decompilation, module, state-machine]
timestamp: 2026-07-19T00:00:00-04:00
---

# Boundary

`mode-control` is the first named game-owned reconstruction unit in
`/config/ddr5thmix/build.json`. It groups state mutation and small dispatcher
handlers that share the globals and partial layouts in the
[global map](/docs/games/ddr-5th-mix-jp-globals.md). It deliberately excludes
large screen implementations and PsyQ library functions.

| Function | Bytes | Role |
|---|---:|---|
| `FUN_80022148` | 36 | Copy an opaque two-word state snapshot; external dependency below the inventoried range. |
| `FUN_80022b30` | 456 | Mode-`0x10`/default submode-`0x01` menu: reads/writes `menu_selection_index`, transitions via a 3-entry mode table, or draws the idle menu. |
| `FUN_800230cc` | 112 | Mode-4 submode dispatcher and secondary-state byte copy. |
| `FUN_8002313c` | 52 | Session termination-latch setter. |
| `FUN_80023170` | 32 | Session-entry flag reset. |
| `FUN_800231b0` | 32 | Increment submode and clear `menu_selection_index`. |
| `FUN_80023210` | 32 | Set mode and reset subordinate state. |
| `FUN_80023230` | 28 | Set submode and reset subordinate state. |
| `FUN_800232cc` | 168 | Mode-`0x10`/default initialization and transition to mode 4. |
| `FUN_8002340c` | 104 | Mode-4 initialization branch and transition to submode 2 or mode 2. |
| `FUN_80023474` | 88 | Mode-4 readiness completion, settings/audio setup, and transition to mode 2. |
| `FUN_800234cc` | 52 | Conditional mode-`0xff` handler. |
| `FUN_80023500` | 68 | Mode-`0xff` submode-1 gated call sequence. |
| `FUN_80023544` | 40 | Mode-`0xff` submode-2 flag clear and advance. |
| `FUN_8002356c` | 32 | One-call mode-`0xff` wrapper. |
| `FUN_8002358c` | 108 | Mode-`0xff` submode-4 GPU reset and state reset. |
| `FUN_800235f8` | 152 | Mode-0 submode-0 initialization. |
| `FUN_80023690` | 44 | Mode-0 submode-1 countdown arming. |
| `FUN_800236bc` | 16 | Secondary-state byte-0 setter. |
| `FUN_800236cc` | 8 | Empty mode-4 hook. |

Total: twenty functions and 1,660 selected bytes.

# Range inventory

The bounded `0x800230cc–0x800236cc` review finds 18 function starts covering
1,168 attributed bytes. All 18 are now accepted members of `mode-control`.
The nineteenth member, `FUN_80022148` (36 bytes), is the external snapshot
dependency called by the in-range mode-`0xff` path. The twentieth member,
`FUN_80022b30` (456 bytes), is mode `0x10`/default submode `0x01`'s menu
handler — added 2026-07-24 while resolving `PTR_DAT_800ac8e8+0x2c` (see
below); it sits directly beside `FUN_800232cc` in mode `0x10`'s own submode
dispatch but outside the contiguous `0x800230cc–0x800236cc` range.

This is a logical/code-range inventory, not proof of an original PsyQ object
boundary. No linker map or object archive has yet tied all 18 functions to one
source object.

# `menu_selection_index` (`PTR_DAT_800ac8e8+0x2c`)

Resolved 2026-07-24. `FUN_80022b30` reads `menu_selection_index` back (not
just clearing it, as `SetMode`/`SetSubmode`/`NextSubmode` already did): it is
the current 0-2 selection for mode `0x10`'s 3-item title/mode-select menu,
incremented/decremented on d-pad input and wrapped `% 3` via a magic-number
division-by-3 sequence, then used both to index the `DAT_800ac8e0` 3-entry
destination-mode table on confirm and to compute the highlighted item's
on-screen vertical draw offset. `unknown_02e` was exhaustively re-checked the
same day across all 62 functions currently referencing `PTR_DAT_800ac8e8`
(re-run of `tools/ghidra/scripts/DumpFieldXrefs.java`) and remains a durable
negative result — only the three mutators above ever touch it, and no reader
exists anywhere in the executable.

# Shared layout

`/src/ddr5thmix/mode_control.h` replaces several private, inconsistent partial
struct declarations. It exposes only observed fields, preserves unknown
padding, and asserts every relied-on offset at compile time. In
`FUN_80023170`, an empty input/output register constraint intentionally removes
GCC's alignment inference: without it, the fuller shared type lets GCC merge
four observed byte stores into two non-matching halfword stores. The constraint
emits no instruction and records a compiler-compatibility boundary rather than
an original-source claim.

# Acceptance and limits

Run the aggregate command in
[/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md).
On 2026-07-19, GCC 14.2.0/binutils 2.43 matched every selected byte against
boot-executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
On 2026-07-24, after adding `FUN_80022b30` as semantic MIPS assembly
(`src/ddr5thmix/FUN_80022b30.s`), GNU binutils 2.43 matched all 1,660 bytes
against the same executable SHA-256; built/reference SHA-256 for the added
function is
`8fcfaea11d4c06cb6a3415a4b7bc3ed2dd9b0b81563f096fbd3a8602d03f1893`.
The generated `mode-control.match.json` remains ignored under `/build/`.

This is a reproducible multi-function verification unit, not yet one linked
object. Each function is still compiled and placed independently, so the
result does not establish inter-function layout, original object boundaries,
or whole-executable identity.

# Citations

[1] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
