---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8f254
description: Exact reconstruction of FUN_8008f254, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8f254

`FUN_8008f254` is a 760-byte runtime resource and state helper at executable address `0x8008f254`.

- Executable file offset: `0x75254`
- Source: [/src/ddr5thmix/RuntimeHelper8f254.s](/src/ddr5thmix/RuntimeHelper8f254.s)
- Manifest module: `runtime-helper-8f254`
- Manifest section: `.text.FUN_8008f254`
- Callers/callees recorded by the symbol map: 1/7

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 760/760 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `db75d2ceca1754ea1c1091594802511229927d251e49f7a0a721d09aa0385ce4`.
