---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 93f20
description: Exact reconstruction of FUN_80093f20, a runtime resource, dispatch, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 93f20

This one-function game-owned module reconstructs `FUN_80093f20` at
`0x80093f20`. The function occupies 1,792 bytes and is stored at executable
file offset `0x79f20`. Its source is
`/src/ddr5thmix/RuntimeHelper93f20.s`; the build manifest registers it in the
`runtime-helper-93f20` module and `.text.FUN_80093f20` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,792 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`262f2da86c3ca5b89ed8f6b6ef75ac2b283cb489e3bfddc6cf16272a630518df`.
