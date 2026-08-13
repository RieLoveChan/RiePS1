---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 92538
description: Exact reconstruction of FUN_80092538, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 92538

This one-function game-owned module reconstructs `FUN_80092538` at
`0x80092538`. The function occupies 540 bytes and is stored at executable file
offset `0x78538`. Its source is
`/src/ddr5thmix/RuntimeHelper92538.s`; the build manifest registers it in the
`runtime-helper-92538` module and `.text.FUN_80092538` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 540 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`f6f4caaaeba7d69f35335b249fe063556f23301276e6fbd218c5e84fa1befecb`.
