---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 95ebc
description: Exact reconstruction of FUN_80095ebc, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 95ebc

This one-function game-owned module reconstructs `FUN_80095ebc` at
`0x80095ebc`. The function occupies 324 bytes and is stored at executable file
offset `0x7bebc`. Its source is
`/src/ddr5thmix/RuntimeHelper95ebc.s`; the build manifest registers it in the
`runtime-helper-95ebc` module and `.text.FUN_80095ebc` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 324 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`82664274955766dc9d1ed68fdffb326a38e8f749117d462c5003ee39792c4724`.
