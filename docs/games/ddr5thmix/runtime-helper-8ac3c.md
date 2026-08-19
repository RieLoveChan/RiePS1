---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8ac3c
description: Exact reconstruction of FUN_8008ac3c, a runtime resource and state dispatch helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8ac3c

`FUN_8008ac3c` is a 456-byte runtime resource and state dispatch helper at executable address `0x8008ac3c`.

- Executable file offset: `0x70c3c`
- Source: [/src/ddr5thmix/RuntimeHelper8ac3c.s](/src/ddr5thmix/RuntimeHelper8ac3c.s)
- Manifest module: `runtime-helper-8ac3c`
- Manifest section: `.text.FUN_8008ac3c`
- Callers/callees recorded by the symbol map: 2/3

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 456/456 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `9dfb1191f651b540fbb7c3a701f8d70fc62a4761bccdbc87fb227d6354030af6`.
