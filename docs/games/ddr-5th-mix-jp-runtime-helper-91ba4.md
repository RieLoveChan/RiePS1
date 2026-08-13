---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 91ba4
description: Exact reconstruction of FUN_80091ba4, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 91ba4

This one-function game-owned module reconstructs `FUN_80091ba4` at `0x80091ba4`.
The function occupies 636 bytes and is stored at executable file offset
`0x77ba4`. Its source is
`/src/ddr5thmix/RuntimeHelper91ba4.s`; the build manifest registers it in the
`runtime-helper-91ba4` module and `.text.FUN_80091ba4` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 636 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`464f05c99391673da8a2f61c61ec42b5f4eac88fddaf6c8000032b5f93348f56`.
