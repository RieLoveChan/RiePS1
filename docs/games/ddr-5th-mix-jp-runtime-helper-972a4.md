---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 972a4
description: Exact reconstruction of FUN_800972a4, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 972a4

This one-function game-owned module reconstructs `FUN_800972a4` at
`0x800972a4`. The function occupies 324 bytes and is stored at executable file
offset `0x7d2a4`. Its source is
`/src/ddr5thmix/RuntimeHelper972a4.s`; the build manifest registers it in the
`runtime-helper-972a4` module and `.text.FUN_800972a4` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 324 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`b4141437662e747d5833f24b56cf69217680ea43bcf1f2a79ec166046eb8144f`.
