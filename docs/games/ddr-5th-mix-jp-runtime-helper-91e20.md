---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 91e20
description: Exact reconstruction of FUN_80091e20, a runtime resource, dispatch, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 91e20

This one-function game-owned module reconstructs `FUN_80091e20` at
`0x80091e20`. The function occupies 1,684 bytes and is stored at executable
file offset `0x77e20`. Its source is
`/src/ddr5thmix/RuntimeHelper91e20.s`; the build manifest registers it in the
`runtime-helper-91e20` module and `.text.FUN_80091e20` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,684 bytes against lawful `SLPM_868.97_1`
with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`f8f2b44ed8ca701abd5503951f5d556f8c13c1e1a156bbf70c89aeae053e723b`.
