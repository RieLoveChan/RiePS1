---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 92854
description: Exact reconstruction of FUN_80092854, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 92854

This one-function game-owned module reconstructs `FUN_80092854` at
`0x80092854`. The function occupies 276 bytes and is stored at executable file
offset `0x78854`. Its source is
`/src/ddr5thmix/RuntimeHelper92854.s`; the build manifest registers it in the
`runtime-helper-92854` module and `.text.FUN_80092854` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 276 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`1562b0ab059f85cc9058fc51543261cb961635b8d73eecec052b28a9d2962fbf`.
