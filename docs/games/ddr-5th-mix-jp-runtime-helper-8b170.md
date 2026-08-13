---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8b170
description: Exact reconstruction of FUN_8008b170, a runtime resource, timing, and state coordinator.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8b170

`FUN_8008b170` is a 4,284-byte runtime resource, timing, and state coordinator at executable address `0x8008b170`.

- Executable file offset: `0x71170`
- Source: [/src/ddr5thmix/RuntimeHelper8b170.s](/src/ddr5thmix/RuntimeHelper8b170.s)
- Manifest module: `runtime-helper-8b170`
- Manifest section: `.text.FUN_8008b170`
- Callers/callees recorded by the symbol map: 1/18

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 4,284/4,284 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `2c7d8dde28dfcf9d06a09a5d985d39ca446e9d7e05f5f193acdb53818b4b6985`.
