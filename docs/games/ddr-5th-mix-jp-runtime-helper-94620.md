---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 94620
description: Exact reconstruction of FUN_80094620, a runtime resource, dispatch, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 94620

This one-function game-owned module reconstructs `FUN_80094620` at
`0x80094620`. The function occupies 3,952 bytes and is stored at executable
file offset `0x7a620`. Its source is
`/src/ddr5thmix/RuntimeHelper94620.s`; the build manifest registers it in the
`runtime-helper-94620` module and `.text.FUN_80094620` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 3,952 bytes against lawful `SLPM_868.97_1`
with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`7f7cfdabba34d7bf19cd2c34d059c69f77677b80d340d76d9257bc989ca0d37d`.
