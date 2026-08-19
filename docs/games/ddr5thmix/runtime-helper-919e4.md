---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 919e4
description: Exact reconstruction of FUN_800919e4, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix runtime helper 919e4

`FUN_800919e4` is a 448-byte runtime resource and state helper at executable address `0x800919e4`.

- Executable file offset: `0x779e4`
- Source: [/src/ddr5thmix/RuntimeHelper919e4.s](/src/ddr5thmix/RuntimeHelper919e4.s)
- Manifest module: `runtime-helper-919e4`
- Manifest section: `.text.FUN_800919e4`
- Callers/callees recorded by the symbol map: 0/3

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 448/448 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `979f33726ebf07d1948c840cc0e9b1ac69afc6387e0e415085bb362b627c4887`.
