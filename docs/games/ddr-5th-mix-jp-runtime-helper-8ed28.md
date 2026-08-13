---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8ed28
description: Exact reconstruction of FUN_8008ed28, a runtime resource, timing, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8ed28

`FUN_8008ed28` is a 1,324-byte runtime resource, timing, and state helper at executable address `0x8008ed28`.

- Executable file offset: `0x74d28`
- Source: [/src/ddr5thmix/RuntimeHelper8ed28.s](/src/ddr5thmix/RuntimeHelper8ed28.s)
- Manifest module: `runtime-helper-8ed28`
- Manifest section: `.text.FUN_8008ed28`
- Callers/callees recorded by the symbol map: 1/8

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 1,324/1,324 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `522d35187bd84510eaef1dacc3800dac604e4673838219861d9008e696c04710`.
