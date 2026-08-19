---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8c22c
description: Exact reconstruction of FUN_8008c22c, a runtime resource and state coordinator.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8c22c

`FUN_8008c22c` is a 780-byte runtime resource and state coordinator at executable address `0x8008c22c`.

- Executable file offset: `0x7222c`
- Source: [/src/ddr5thmix/RuntimeHelper8c22c.s](/src/ddr5thmix/RuntimeHelper8c22c.s)
- Manifest module: `runtime-helper-8c22c`
- Manifest section: `.text.FUN_8008c22c`
- Callers/callees recorded by the symbol map: 1/6

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 780/780 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `dd34d92e4a74897689e3d4b7a92a2620b79907feb88c143ff44e2c897b0a9005`.
