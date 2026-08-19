---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 902cc
description: Exact reconstruction of FUN_800902cc, a runtime resource and state coordinator.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix runtime helper 902cc

`FUN_800902cc` is a 1,364-byte runtime resource and state coordinator at executable address `0x800902cc`.

- Executable file offset: `0x762cc`
- Source: [/src/ddr5thmix/RuntimeHelper902cc.s](/src/ddr5thmix/RuntimeHelper902cc.s)
- Manifest module: `runtime-helper-902cc`
- Manifest section: `.text.FUN_800902cc`
- Callers/callees recorded by the symbol map: 0/14

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 1,364/1,364 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `ab01840f2190c73fdbf6be2c8ab06b04586dfe9a67965b2147291ed36d0b7fd4`.
