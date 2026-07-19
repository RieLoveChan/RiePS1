---
type: Reconstructed Module
title: DDR 5th Mix Mode-Control Module
description: Reproducible game-owned module grouping twelve accepted mode/submode and session-control functions.
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
| `FUN_800230cc` | 112 | Mode-4 submode dispatcher and secondary-state byte copy. |
| `FUN_8002313c` | 52 | Session termination-latch setter. |
| `FUN_80023170` | 32 | Session-entry flag reset. |
| `FUN_800231b0` | 32 | Increment submode and clear `unknown_02c`. |
| `FUN_80023210` | 32 | Set mode and reset subordinate state. |
| `FUN_80023230` | 28 | Set submode and reset subordinate state. |
| `FUN_8002340c` | 104 | Mode-4 initialization branch and transition to submode 2 or mode 2. |
| `FUN_80023474` | 88 | Mode-4 readiness completion, settings/audio setup, and transition to mode 2. |
| `FUN_800234cc` | 52 | Conditional mode-`0xff` handler. |
| `FUN_8002356c` | 32 | One-call mode-`0xff` wrapper. |
| `FUN_800236cc` | 8 | Empty mode-4 hook. |

Total: twelve functions and 608 selected bytes.

# Range inventory

The bounded `0x800230cc–0x800236cc` review finds 18 function starts covering
1,168 attributed bytes. Eleven are now accepted members of `mode-control`:
`FUN_800230cc`, `FUN_8002313c`, `FUN_80023170`, `FUN_800231b0`,
`FUN_80023210`, `FUN_80023230`, `FUN_8002340c`, `FUN_80023474`,
`FUN_800234cc`, `FUN_8002356c`, and `FUN_800236cc` (572 bytes). The twelfth
accepted member, `FUN_80022148`, is an external dependency outside the range.

Seven in-range functions remain outside the reconstructed module:

| Function | Bytes | Inventory classification |
|---|---:|---|
| `FUN_800232cc` | 168 | Reviewed mode-`0x10`/default handler; forwards to mode 4. |
| `FUN_80023500` | 68 | Reviewed mode-`0xff` submode-1 handler. |
| `FUN_80023544` | 40 | Reviewed mode-`0xff` submode-2 handler. |
| `FUN_8002358c` | 108 | Reviewed mode-`0xff` submode-4 GPU-reset handler. |
| `FUN_800235f8` | 152 | Reviewed mode-0 submode-0 initialization handler. |
| `FUN_80023690` | 44 | Reviewed mode-0 submode-1 countdown handler. |
| `FUN_800236bc` | 16 | Reviewed byte setter for `DdrSecondaryState+0x00`; no callers identified. |

This is a logical/code-range inventory, not proof of an original PsyQ object
boundary. No linker map or object archive has yet tied all 18 functions to one
source object.

# Shared layout

`/src/ddr5thmix/mode_control.h` replaces five private, inconsistent partial
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
The generated `mode-control.match.json` remains ignored under `/build/`.

This is a reproducible multi-function verification unit, not yet one linked
object. Each function is still compiled and placed independently, so the
result does not establish inter-function layout, original object boundaries,
or whole-executable identity.

# Citations

[1] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
