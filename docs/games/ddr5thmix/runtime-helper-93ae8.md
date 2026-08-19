---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 93ae8
description: Exact reconstruction of FUN_80093ae8, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 93ae8

This one-function game-owned module reconstructs `FUN_80093ae8` at
`0x80093ae8`. The function occupies 488 bytes and is stored at executable file
offset `0x79ae8`. Its source is
`/src/ddr5thmix/RuntimeHelper93ae8.s`; the build manifest registers it in the
`runtime-helper-93ae8` module and `.text.FUN_80093ae8` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 488 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`ac61c792f4658dcc30fd1036eb1fbf53e2dc5b7adea6aea39a33a4e9aacdef2a`.
