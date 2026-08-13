---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 90860
description: Exact reconstruction of FUN_80090860, a runtime resource, timing, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix runtime helper 90860

`FUN_80090860` is a 1,812-byte runtime resource, timing, and state helper at executable address `0x80090860`.

- Executable file offset: `0x76860`
- Source: [/src/ddr5thmix/RuntimeHelper90860.s](/src/ddr5thmix/RuntimeHelper90860.s)
- Manifest module: `runtime-helper-90860`
- Manifest section: `.text.FUN_80090860`
- Callers/callees recorded by the symbol map: 1/6

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 1,812/1,812 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `1dbf3b16542de526aedf9a1f09e3647351ab7b6335a2a4f8fc725977729ffcb2`.
