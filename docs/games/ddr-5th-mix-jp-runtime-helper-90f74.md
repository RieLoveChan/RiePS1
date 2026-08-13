---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 90f74
description: Exact reconstruction of FUN_80090f74, a runtime resource, timing, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix runtime helper 90f74

`FUN_80090f74` is a 2,672-byte runtime resource, timing, and state helper at executable address `0x80090f74`.

- Executable file offset: `0x76f74`
- Source: [/src/ddr5thmix/RuntimeHelper90f74.s](/src/ddr5thmix/RuntimeHelper90f74.s)
- Manifest module: `runtime-helper-90f74`
- Manifest section: `.text.FUN_80090f74`
- Callers/callees recorded by the symbol map: 1/7

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 2,672/2,672 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `634b4eae49abb2a78145b964d2836c039fe7bf580c5f76cbb57910c4e6018d25`.
