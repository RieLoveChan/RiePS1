---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 96558
description: Exact reconstruction of FUN_80096558, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 96558

This one-function game-owned module reconstructs `FUN_80096558` at
`0x80096558`. The function occupies 200 bytes and is stored at executable file
offset `0x7c558`. Its source is
`/src/ddr5thmix/RuntimeHelper96558.s`; the build manifest registers it in the
`runtime-helper-96558` module and `.text.FUN_80096558` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 200 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`abbc709e674f8d19aea8b113cf483b14731b5391ee6a6456b7241681e75cf341`.
