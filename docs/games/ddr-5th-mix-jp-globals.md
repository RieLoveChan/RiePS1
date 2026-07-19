---
type: Global Map
title: DDR 5th Mix (Japan) Global Map
description: Evidence-qualified fixed-address data symbols and partial pointed-to layouts for the target executable.
resource: /docs/games/ddr-5th-mix-jp-globals.csv
tags: [ps1, ddr5thmix, globals, reverse-engineering]
timestamp: 2026-07-19T00:00:00-04:00
---

# Scope

The initial CSV contains only the three fixed-address globals required by the
first game-logic module. It follows the
[global-map schema](/docs/foundations/global-map-schema.md). Pointer targets
are runtime objects: their observed fields are expressed as offsets below and
are not given fabricated absolute addresses.

# `DdrModeState` partial layout

| Offset | Width | Conservative field | Evidence |
|---:|---:|---|---|
| `0x09` | 1 | `unknown_009` | Reset/test ordering is documented, but the same-frame consumer remains unknown. |
| `0x17` | 1 | `unknown_017` | Written as `0x80` during a confirmed transition to mode `0x10`; it is not the next-mode field. |
| `0x28` | 2 | `mode` | Dispatched by `FUN_80022cf8`; `FUN_80023210` is the only known writer. |
| `0x2a` | 2 | `submode` | Written by `SetMode`, `SetSubmode`, and `NextSubmode`. |
| `0x2c` | 2 | `unknown_02c` | Cleared on mode/submode changes; no other established meaning. |
| `0x2e` | 2 | `unknown_02e` | Cleared by `SetMode` and `SetSubmode`; no other established meaning. |
| `0xf6` | 1 | `unknown_0f6` | Cleared on entry to `PLAY START` and the selector. |
| `0xf7` | 1 | `unknown_0f7` | Cleared on entry to `PLAY START` and the selector. |
| `0xff` | 1 | `termination_latch` | Nonzero forces the game-session terminal/menu route. |
| `0x100` | 1 | `unknown_100` | Cleared on entry to `PLAY START` and the selector. |
| `0x101` | 1 | `unknown_101` | Cleared on entry to `PLAY START` and the selector. |

# `DdrSecondaryState` partial layout

| Offset | Width | Conservative field | Evidence |
|---:|---:|---|---|
| `0x04` | 1 | `unknown_004` | Set to one by the termination-latch helper. |
| `0x52` | 1 | `unknown_052` | Copied to `+0xbb` by the mode-4 dispatcher. |
| `0x66` | 1 | `unknown_066` | Receives the low byte of `DAT_800e2a60`. |
| `0xbb` | 1 | `unknown_0bb` | Receives `+0x52` after mode-4 dispatch. |

The tracked header `/src/ddr5thmix/mode_control.h` encodes exactly these
offsets with compile-time assertions. Padding and unknown fields remain opaque.

# Reproduction

The address and access evidence comes from the Ghidra 12.1.2 field/xref dumps
recorded in the screen-flow and symbol-map concepts. The fixed symbol addresses
are also linker inputs for the accepted functions in
`/config/ddr5thmix/build.json`; run the `mode-control` module comparison from
[/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
to reproduce the byte evidence.

# Citations

[1] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
[2] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
