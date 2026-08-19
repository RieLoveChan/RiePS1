---
type: Reconstructed Module
title: Dance Dance Revolution 5th Mix (Japan) — Screen Selector Module
description: Technical reconstruction and byte-matching evidence for the nested six-state screen selector hierarchy and next-state router.
tags: [ps1, ddr5thmix, decompilation, screen-selector, state-machine]
timestamp: 2026-07-29T00:00:00-04:00
---

# Overview

The `screen-selector` module implements the nested six-state screen selector used by the `DDR 5th Mix` gameplay session (outer state 2, substate 1).
It is governed by three flat six-entry callback arrays:

- **Enter table**: `0x800defe8`
- **Update table**: `0x800df000`
- **Exit table**: `0x800df018`

Together with three substate 3 helper routines and the central next-state router (`FUN_80075af8`), the module comprises **22 functions** and **2,348 bytes**, all verified byte-for-byte against the lawfully supplied `SLPM_868.97` executable. The router's final `li $v0, 5` is the return delay-slot instruction at `0x80075b80`; omitting it produces a misleading 136-byte prefix match rather than the complete 140-byte function.

# Table Inventory & Callback Structure

| Substate | Screen Name | Enter Callback | Update Callback | Exit Callback | Target Screen Index |
|---:|---|---|---|---|---:|
| 0 | `STYLE SEL` | `FUN_800756f0` | `FUN_80075738` | `FUN_80075258` | `9` |
| 1 | `MODE SEL` | `FUN_800757e0` | `FUN_80075818` | `FUN_80075838` | `10` |
| 2 | `CHARA SEL` | `FUN_80075840` | `FUN_80075894` | `FUN_8007593c` | `11` |
| 3 | `MUSIC SEL` | `FUN_800754b4` | `FUN_8007596c` | `FUN_80075a04` | `12` |
| 4 | `LINK START` | `FUN_80075a40` | `FUN_80075a90` | `FUN_80075ab8` | `23` |
| 5 | `terminal` | `FUN_80075ae0` | `FUN_80075ae8` | `FUN_80075af0` | — |

Substate 3 (`MUSIC SEL`) additionally owns three helper subroutines: `FUN_80075580` (substate 1 initializer), `FUN_80075604` (tick helper), and `FUN_800756ac` (exit cleanup).

# Central Next-State Router (`FUN_80075af8`)

`FUN_80075af8` maps transition targets based on the current substate:
- `STYLE SEL (0) -> LINK START (4)`
- `CHARA SEL (2) -> MUSIC SEL (3)`
- `MUSIC SEL (3) -> terminal (5)`
- `LINK START (4)`: Reads config byte `PTR_DAT_800e0b18[0x98]`. If set to `1`, transitions to `CHARA SEL (2)`; otherwise sets default character/player parameters and skips directly to `MUSIC SEL (3)`.

# Verification Record

- **Executable SHA-256**: `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`
- **Toolchain**: GCC 14.2.0 / GNU Binutils 2.43 (`mipsel-none-elf`)
- **Source file**: `/src/ddr5thmix/ScreenSelector.s` and `/src/ddr5thmix/screen_selector.h`
- **Module Match Result**: `byte_match: true` (22 functions, 2,348 compared bytes)
- **Reproduction Command**:
  ```powershell
  pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module screen-selector
  ```

# Citations

[1] [/docs/games/ddr5thmix/screen-flow.md](/docs/games/ddr5thmix/screen-flow.md)
[2] [/docs/games/ddr5thmix/symbol-map.md](/docs/games/ddr5thmix/symbol-map.md)
[3] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
