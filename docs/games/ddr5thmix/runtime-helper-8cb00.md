---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8cb00
description: Exact reconstruction of FUN_8008cb00, a runtime resource, timing, and state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8cb00

`FUN_8008cb00` is a 572-byte runtime resource, timing, and state helper at executable address `0x8008cb00`.

- Executable file offset: `0x72b00`
- Source: [/src/ddr5thmix/RuntimeHelper8cb00.s](/src/ddr5thmix/RuntimeHelper8cb00.s)
- Manifest module: `runtime-helper-8cb00`
- Manifest section: `.text.FUN_8008cb00`
- Callers/callees recorded by the symbol map: 1/15

## Reproducible match

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1` matched 572/572 bytes using GCC 14.2.0/binutils 2.43 against the lawful `SLPM_868.97_1` executable with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.

The extracted reference slice and assembled output both have SHA-256 `cac3fbe1b59e1d9877f3d39e79a936e62ae90f420db8e2bbeb73bb0a3c272e3d`.
