---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8c7b4
description: Exact reconstruction of FUN_8008c7b4, a runtime resource and dispatch helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8c7b4

`FUN_8008c7b4` is a 432-byte runtime resource and dispatch helper at executable address `0x8008c7b4`.

- Executable file offset: `0x727b4`
- Source: [/src/ddr5thmix/RuntimeHelper8c7b4.s](/src/ddr5thmix/RuntimeHelper8c7b4.s)
- Manifest module: `runtime-helper-8c7b4`
- Manifest section: `.text.FUN_8008c7b4`
- Callers/callees recorded by the symbol map: 2/1

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 432/432 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `a968df5d7381f0cd3a532b43fdf250f07bf21fcb4f95b42b1b40559970772a07`.
