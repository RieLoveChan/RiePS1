---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8f54c
description: Exact reconstruction of FUN_8008f54c, a runtime resource, timing, and state coordinator.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8f54c

`FUN_8008f54c` is a 2,484-byte runtime resource, timing, and state coordinator at executable address `0x8008f54c`.

- Executable file offset: `0x7554c`
- Source: [/src/ddr5thmix/RuntimeHelper8f54c.s](/src/ddr5thmix/RuntimeHelper8f54c.s)
- Manifest module: `runtime-helper-8f54c`
- Manifest section: `.text.FUN_8008f54c`
- Callers/callees recorded by the symbol map: 1/12

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 2,484/2,484 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `cbf3d4ea609bea1ef1691f6bd670cdcfa0756ae8d62023258782e6e885e18aa6`.
