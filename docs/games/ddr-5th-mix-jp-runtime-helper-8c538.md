---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8c538
description: Exact reconstruction of FUN_8008c538, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8c538

`FUN_8008c538` is a 636-byte runtime resource and state helper at executable address `0x8008c538`.

- Executable file offset: `0x72538`
- Source: [/src/ddr5thmix/RuntimeHelper8c538.s](/src/ddr5thmix/RuntimeHelper8c538.s)
- Manifest module: `runtime-helper-8c538`
- Manifest section: `.text.FUN_8008c538`
- Callers/callees recorded by the symbol map: 1/8

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 636/636 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `b62ac62f46b0b61c5e625fa9f54cd48f670cbfdfc9ed3e462bd02a4173ce3de2`.
