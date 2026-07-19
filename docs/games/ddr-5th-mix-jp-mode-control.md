---
type: Reconstructed Module
title: DDR 5th Mix Mode-Control Module
description: First reproducible game-owned module, grouping nine accepted mode/submode and session-control functions.
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
| `FUN_800230cc` | 112 | Mode-4 submode dispatcher and secondary-state byte copy. |
| `FUN_8002313c` | 52 | Session termination-latch setter. |
| `FUN_80023170` | 32 | Session-entry flag reset. |
| `FUN_800231b0` | 32 | Increment submode and clear `unknown_02c`. |
| `FUN_80023210` | 32 | Set mode and reset subordinate state. |
| `FUN_80023230` | 28 | Set submode and reset subordinate state. |
| `FUN_800234cc` | 52 | Conditional mode-`0xff` handler. |
| `FUN_8002356c` | 32 | One-call mode-`0xff` wrapper. |
| `FUN_800236cc` | 8 | Empty mode-4 hook. |

Total: nine functions and 380 selected bytes.

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
