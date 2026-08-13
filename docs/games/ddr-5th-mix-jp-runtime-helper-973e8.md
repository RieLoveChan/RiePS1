---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 973e8
description: Exact reconstruction of FUN_800973e8, a runtime resource, image-upload, display-setup, and active-buffer helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, graphics]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 973e8

This one-function game-owned module reconstructs `FUN_800973e8` at
`0x800973e8`. The function occupies 1,420 bytes and is stored at executable
file offset `0x7d3e8`. Its source is
`/src/ddr5thmix/RuntimeHelper973e8.s`; the build manifest registers it in the
`runtime-helper-973e8` module and `.text.FUN_800973e8` section.

The source preserves the complete recovered instruction words, including the
runtime resource-table loop, image upload calls, display setup, active-buffer
selection, and final state publication. The opcode-faithful representation is
used because semantic naming of several global records and call targets remains
conservative; it does not claim that the original source used `.word` directives.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,420 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`94120382d17273977584411701e8910d94b6468e1a8c523c8a414aff8c12a38d`.