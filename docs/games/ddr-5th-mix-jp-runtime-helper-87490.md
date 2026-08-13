---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 87490
description: Exact reconstruction of FUN_80087490, a runtime state and resource update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 87490

`FUN_80087490` is a 532-byte runtime state and resource update helper at executable address `0x80087490`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper87490.s](/src/ddr5thmix/RuntimeHelper87490.s)
- Manifest module: `runtime-helper-87490`
- Manifest section: `.text.FUN_80087490`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 532 bytes at file offset `0x6d490`; the reference and built byte streams both hash to `61cb18e584c6c1d7d0d715005b1831aaef56ae6638e954e85f8298d7b987ad2c`.

The function and one-function module each match all 532 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
