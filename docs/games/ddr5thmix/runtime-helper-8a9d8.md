---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8a9d8
description: Exact reconstruction of FUN_8008a9d8, a runtime timing and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8a9d8

`FUN_8008a9d8` is a 612-byte runtime timing and resource state helper at executable address `0x8008a9d8`.

- Executable file offset: `0x709d8`
- Source: [/src/ddr5thmix/RuntimeHelper8a9d8.s](/src/ddr5thmix/RuntimeHelper8a9d8.s)
- Manifest module: `runtime-helper-8a9d8`
- Manifest section: `.text.FUN_8008a9d8`
- Callers/callees recorded by the symbol map: 1/6

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 612/612 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `6f7a61115ef22c6975208dbb557bbdc57ed1eef29876819467626cc7f7e254f3`.
