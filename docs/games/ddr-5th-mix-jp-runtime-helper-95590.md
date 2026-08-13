---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 95590
description: Exact reconstruction of FUN_80095590, a runtime resource, dispatch, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 95590

This one-function game-owned module reconstructs `FUN_80095590` at
`0x80095590`. The function occupies 1,616 bytes and is stored at executable
file offset `0x7b590`. Its source is
`/src/ddr5thmix/RuntimeHelper95590.s`; the build manifest registers it in the
`runtime-helper-95590` module and `.text.FUN_80095590` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,616 bytes against lawful `SLPM_868.97_1`
with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`8f831259504536bd6e4c8ce91039c828da5589d77bdd8fc3a94d4729ff625c5e`.
