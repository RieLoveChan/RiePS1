---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 89da4
description: Exact reconstruction of FUN_80089da4, a runtime resource, state, and dispatch helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 89da4

`FUN_80089da4` is a 2,856-byte runtime resource, state, and dispatch helper at executable address `0x80089da4`.

- Executable file offset: `0x6fda4`
- Source: [/src/ddr5thmix/RuntimeHelper89da4.s](/src/ddr5thmix/RuntimeHelper89da4.s)
- Manifest module: `runtime-helper-89da4`
- Manifest section: `.text.FUN_80089da4`
- Callers/callees recorded by the symbol map: 1/9

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 2,856/2,856 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `e74da07b3b9ae236359b76bc6366d9053021c8a81b8a56353c667eb7e9806718`.
