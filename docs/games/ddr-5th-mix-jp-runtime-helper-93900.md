---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 93900
description: Exact reconstruction of FUN_80093900, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 93900

This one-function game-owned module reconstructs `FUN_80093900` at
`0x80093900`. The function occupies 436 bytes and is stored at executable file
offset `0x79900`. Its source is
`/src/ddr5thmix/RuntimeHelper93900.s`; the build manifest registers it in the
`runtime-helper-93900` module and `.text.FUN_80093900` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 436 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`0ef471d1faac8269ebcd67e333e05b74579d0f0434bb53ad188810e129712b85`.
