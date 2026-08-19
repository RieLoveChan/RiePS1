---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 900f4
description: Exact reconstruction of FUN_800900f4, a runtime resource and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 900f4

`FUN_800900f4` is a 472-byte runtime resource and state helper at executable address `0x800900f4`.

- Executable file offset: `0x760f4`
- Source: [/src/ddr5thmix/RuntimeHelper900f4.s](/src/ddr5thmix/RuntimeHelper900f4.s)
- Manifest module: `runtime-helper-900f4`
- Manifest section: `.text.FUN_800900f4`
- Callers/callees recorded by the symbol map: 1/9

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 472/472 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `94c7ca17dfd358bafff3d966f29eca7b67120fd173e621a6439d49d41ae618dc`.
