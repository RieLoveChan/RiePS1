---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8a8cc
description: Exact reconstruction of FUN_8008a8cc, a runtime timing and resource index helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8a8cc

`FUN_8008a8cc` is a 268-byte runtime timing and resource index helper at executable address `0x8008a8cc`.

- Executable file offset: `0x708cc`
- Source: [/src/ddr5thmix/RuntimeHelper8a8cc.s](/src/ddr5thmix/RuntimeHelper8a8cc.s)
- Manifest module: `runtime-helper-8a8cc`
- Manifest section: `.text.FUN_8008a8cc`
- Callers/callees recorded by the symbol map: 1/2

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 268/268 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `c40b3d0f84106359c09bea9ad11a6042bfdc127ec0d1c0537d799fc348843457`.
