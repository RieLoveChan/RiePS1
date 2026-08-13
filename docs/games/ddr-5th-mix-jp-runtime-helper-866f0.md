---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 866f0
description: Exact reconstruction of FUN_800866f0, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 866f0

`FUN_800866f0` is a 392-byte runtime gameplay and resource state helper at executable address `0x800866f0`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper866f0.s](/src/ddr5thmix/RuntimeHelper866f0.s)
- Manifest module: `runtime-helper-866f0`
- Manifest section: `.text.FUN_800866f0`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 392 bytes at file offset `0x6c6f0`; the reference and built byte streams both hash to `d7cd8eba67a8b7821b0687739488a7ea2b782d3478b075dddc6c694532e6a2a6`.

The function and one-function module each match all 392 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
