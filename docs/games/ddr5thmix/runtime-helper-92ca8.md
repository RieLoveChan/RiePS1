---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 92ca8
description: Exact reconstruction of FUN_80092ca8, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 92ca8

This one-function game-owned module reconstructs `FUN_80092ca8` at
`0x80092ca8`. The function occupies 200 bytes and is stored at executable file
offset `0x78ca8`. Its source is
`/src/ddr5thmix/RuntimeHelper92ca8.s`; the build manifest registers it in the
`runtime-helper-92ca8` module and `.text.FUN_80092ca8` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 200 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`5104e67f17dd7daf2e8af9ea00232a1c4c7bba255dbc21ba53ec30e6378e05ae`.
