---
type: Global Map
title: DDR 5th Mix (Japan) Global Map
description: Evidence-qualified fixed-address data symbols and partial pointed-to layouts for the target executable.
resource: /docs/games/ddr-5th-mix-jp-globals.csv
tags: [ps1, ddr5thmix, globals, reverse-engineering]
timestamp: 2026-07-19T00:00:00-04:00
---

# Scope

The CSV contains sixteen fixed-address globals currently required by the
first two game-logic modules. It follows the
[global-map schema](/docs/foundations/global-map-schema.md). Pointer targets
are runtime objects: their observed fields are expressed as offsets below and
are not given fabricated absolute addresses.

# `DdrModeState` partial layout

| Offset | Width | Conservative field | Evidence |
|---:|---:|---|---|
| `0x06` | 1 | `unknown_006` | Cleared by mode-`0x10`/default initialization. |
| `0x09` | 1 | `unknown_009` | Reset/test ordering is documented, but the same-frame consumer remains unknown. |
| `0x0b` | 1 | `unknown_00b` | Cleared by the mode-`0xff` GPU-reset handler. |
| `0x0c`–`0x12` | 4 × 2 | `unknown_00c`…`unknown_012` | Set to 320, 240, 4, and 1 before GPU initialization. |
| `0x17` | 1 | `unknown_017` | Written as `0x80` during a confirmed transition to mode `0x10`; it is not the next-mode field. |
| `0x1c`–`0x1f` | 4 × 1 | `counter_01c`, `counter_01d`, `direction_01e`, `direction_01f` | `FUN_80023744` advances two wrapping counters by 2/4 and flips their direction flags at the observed signed/unsigned thresholds. |
| `0x20` | 2 | `unknown_020` | Its low nibble and bit `0x10` produce the signed two-bit-derived value at `+0xc1`; broader meaning remains unknown. |
| `0x22` | 2 | `countdown_022` | Armed to 2/4 by mode-0 handlers and decremented by the following phase. |
| `0x28` | 2 | `mode` | Dispatched by `FUN_80022cf8`; `FUN_80023210` is the only known writer. |
| `0x2a` | 2 | `submode` | Written by `SetMode`, `SetSubmode`, and `NextSubmode`. |
| `0x2c` | 2 | `unknown_02c` | Cleared on mode/submode changes; no other established meaning. |
| `0x2e` | 2 | `unknown_02e` | Cleared by `SetMode` and `SetSubmode`; no other established meaning. |
| `0x3f`–`0x42` | 4 × 1 | `unknown_03f`…`unknown_042` | Set to one by the runtime state-reset routine after its 0x140-byte clear. |
| `0x45` | 1 | `pad_valid_mask` | Cleared each frame, then ORed with one table byte for each accepted PAD packet. |
| `0x4c`–`0x68` | 8 × 4 | `pad1_*`, `pad2_*` | Previous held, current held, newly pressed, and newly released words for two PsyQ PAD receive buffers. |
| `0x6c`–`0x88` | 8 × 4 | `aux1_*`, `aux2_*` | Equivalent edge-state words for two current values supplied by `FUN_8009c5f4`; source subsystem remains unknown. |
| `0x90`–`0x91` | 2 × 1 | `counter_090`, `direction_091` | A third wrapping counter/direction pair advanced by four with thresholds observed in `FUN_80023744`. |
| `0xac` | 2 | `unknown_0ac` | Cleared during mode-0 initialization. |
| `0xc1` | 1 | `derived_0c1` | Signed value derived from `+0x20`'s low nibble/bit `0x10`, then arithmetically divided by four. |
| `0xf4` | 1 | `screen_range_flag` | One when signed `DAT_800f2908` is 4 or in inclusive range `0x2a..0x2c`; zero otherwise. |
| `0xf6` | 1 | `unknown_0f6` | Cleared on entry to `PLAY START` and the selector. |
| `0xf7` | 1 | `unknown_0f7` | Cleared on entry to `PLAY START` and the selector. |
| `0xff` | 1 | `termination_latch` | Nonzero forces the game-session terminal/menu route. |
| `0x100` | 1 | `unknown_100` | Cleared on entry to `PLAY START` and the selector. |
| `0x101` | 1 | `unknown_101` | Cleared on entry to `PLAY START` and the selector. |

# `DdrSecondaryState` partial layout

| Offset | Width | Conservative field | Evidence |
|---:|---:|---|---|
| `0x00` | 1 | `unknown_000` | Written by `FUN_800236bc`; no caller is currently identified. |
| `0x04` | 1 | `unknown_004` | Set to one by the termination-latch helper. |
| `0x06` | 1 | `unknown_006` | Selects the two mode-4 initialization branches; set when the readiness path completes. |
| `0x52` | 1 | `unknown_052` | Copied to `+0xbb` by the mode-4 dispatcher. |
| `0x64` | 1 | `unknown_064` | Set to one by the mode-`0xff` GPU-reset handler. |
| `0x66` | 1 | `unknown_066` | Receives the low byte of `DAT_800e2a60`. |
| `0x9c`–`0x9f` | 4 × 1 | `unknown_09c`…`unknown_09f` | Cleared during mode-0 initialization. |
| `0xac`–`0xaf` | 4 × 1 | `unknown_0ac`…`unknown_0af` | Cleared during mode-0 initialization. |
| `0xbb` | 1 | `unknown_0bb` | Receives `+0x52` after mode-4 dispatch. |

The tracked header `/src/ddr5thmix/mode_control.h` encodes exactly these
offsets with compile-time assertions. Its `0x140` size represents the prefix
cleared by `FUN_8002216c`, not proof that the runtime allocation ends there.
Padding and unknown fields remain opaque.

# Opaque two-word snapshot

`FUN_80022148` copies two consecutive words from fixed range
`0x800ac8f0–0x800ac8f7` to `0x800e2ae0–0x800e2ae7`. The operation is verified,
but neither range has a supported semantic name. In particular, the
tool-assigned `PTR_DAT_800ac8f0` prefix is not treated as evidence that either
word is a pointer.

# Other bounded globals

`DAT_800ac890` is a distinct 32-bit flag cleared by the mode-`0xff`
submode-2 handler. `FUN_8002358c` verifies only byte `DAT_800f2900+1`; the
surrounding object's extent remains unknown. `FUN_800232cc` verifies that
`DAT_80118e48` and `DAT_8011acb8` are passed by address to `FUN_8002a9dc`, but
does not establish their types or contents.

# Runtime input and screen-index globals

`FUN_8002112c` verifies a two-byte table at `DAT_800ac90c`, two consecutive
`0x34`-byte PAD receive buffers at `DAT_800e2a68`, and two 32-byte snapshots at
`DAT_800e3b58` and `DAT_800e3c18`. The first snapshot has confirmed standard
PAD semantics for ports 1 and 2. The second has the same edge-state shape, but
its two current words come from `FUN_8009c5f4`, so their device/subsystem
identity remains unknown.

`DAT_800e2ad0` is independently verified only as a 32-bit value cleared by the
runtime reset. `DAT_800f2908` is read as a signed halfword by `FUN_8009971c`;
the wider screen-flow review establishes that callbacks write screen-name
indices there, while the reconstructed leaf verifies only its range test and
the resulting `screen_range_flag`.

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
