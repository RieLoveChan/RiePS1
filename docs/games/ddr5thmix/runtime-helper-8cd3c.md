---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8cd3c
description: Exact reconstruction of FUN_8008cd3c, a runtime resource, timing, and state coordinator.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8cd3c

`FUN_8008cd3c` is a 6,784-byte runtime resource, timing, and state coordinator at executable address `0x8008cd3c`.

- Executable file offset: `0x72d3c`
- Source: [/src/ddr5thmix/RuntimeHelper8cd3c.s](/src/ddr5thmix/RuntimeHelper8cd3c.s)
- Manifest module: `runtime-helper-8cd3c`
- Manifest section: `.text.FUN_8008cd3c`
- Callers/callees recorded by the symbol map: 0/38

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 6,784/6,784 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `f568327d95af19e6c686c78e9a7cb43e6d492e396b836c3af2583c8f0c782e6d`.
