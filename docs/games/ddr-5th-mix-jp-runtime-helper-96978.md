---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 96978
description: Exact reconstruction of FUN_80096978, a runtime resource, dispatch, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 96978

This one-function game-owned module reconstructs `FUN_80096978` at
`0x80096978`. The function occupies 1,856 bytes and is stored at executable
file offset `0x7c978`. Its source is
`/src/ddr5thmix/RuntimeHelper96978.s`; the build manifest registers it in the
`runtime-helper-96978` module and `.text.FUN_80096978` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,856 bytes against lawful `SLPM_868.97_1`
with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`f54f616ba9a1826d678155c352565d854f668e10178b1bcc4eec62b49063f1fe`.
