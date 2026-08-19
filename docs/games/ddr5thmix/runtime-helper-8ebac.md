---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8ebac
description: Exact reconstruction of FUN_8008ebac, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8ebac

`FUN_8008ebac` is a 380-byte runtime resource and state helper at executable address `0x8008ebac`.

- Executable file offset: `0x74bac`
- Source: [/src/ddr5thmix/RuntimeHelper8ebac.s](/src/ddr5thmix/RuntimeHelper8ebac.s)
- Manifest module: `runtime-helper-8ebac`
- Manifest section: `.text.FUN_8008ebac`
- Callers/callees recorded by the symbol map: 1/6

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 380/380 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `ed7012d4d230a9ea85b91c6b89afcf09b965e887f315ed621dcfe6190714bf78`.
