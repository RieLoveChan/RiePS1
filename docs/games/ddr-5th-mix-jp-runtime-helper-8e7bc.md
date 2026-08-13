---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8e7bc
description: Exact reconstruction of FUN_8008e7bc, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8e7bc

`FUN_8008e7bc` is a 908-byte runtime resource and state helper at executable address `0x8008e7bc`.

- Executable file offset: `0x747bc`
- Source: [/src/ddr5thmix/RuntimeHelper8e7bc.s](/src/ddr5thmix/RuntimeHelper8e7bc.s)
- Manifest module: `runtime-helper-8e7bc`
- Manifest section: `.text.FUN_8008e7bc`
- Callers/callees recorded by the symbol map: 0/2

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 908/908 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `304f1b173fff50af6c61bf648f719f9cca32142632d6fec49a3f32cced7338d6`.
