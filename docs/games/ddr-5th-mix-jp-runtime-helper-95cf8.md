---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 95cf8
description: Exact reconstruction of FUN_80095cf8, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 95cf8

This one-function game-owned module reconstructs `FUN_80095cf8` at
`0x80095cf8`. The function occupies 452 bytes and is stored at executable file
offset `0x7bcf8`. Its source is
`/src/ddr5thmix/RuntimeHelper95cf8.s`; the build manifest registers it in the
`runtime-helper-95cf8` module and `.text.FUN_80095cf8` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 452 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`a13df9ef71004efd049d06b1c9816baca2170f3cb5dc7c737ef7bb2ef8a2ba39`.
