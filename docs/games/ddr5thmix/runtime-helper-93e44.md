---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 93e44
description: Exact reconstruction of FUN_80093e44, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 93e44

This one-function game-owned module reconstructs `FUN_80093e44` at
`0x80093e44`. The function occupies 220 bytes and is stored at executable file
offset `0x79e44`. Its source is
`/src/ddr5thmix/RuntimeHelper93e44.s`; the build manifest registers it in the
`runtime-helper-93e44` module and `.text.FUN_80093e44` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 220 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`564822907cbeac7bbd3ff617a4c3e6ea61bdc0ce3d5620cc699728a54e9a4a7f`.
