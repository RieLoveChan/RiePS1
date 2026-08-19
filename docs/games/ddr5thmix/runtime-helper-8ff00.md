---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8ff00
description: Exact reconstruction of FUN_8008ff00, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8ff00

`FUN_8008ff00` is a 500-byte runtime resource and state helper at executable address `0x8008ff00`.

- Executable file offset: `0x75f00`
- Source: [/src/ddr5thmix/RuntimeHelper8ff00.s](/src/ddr5thmix/RuntimeHelper8ff00.s)
- Manifest module: `runtime-helper-8ff00`
- Manifest section: `.text.FUN_8008ff00`
- Callers/callees recorded by the symbol map: 0/4

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 500/500 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `419a5c8c7f9600b2a354401407e4192dff24eb6eca42245e752c931ba89f7e62`.
