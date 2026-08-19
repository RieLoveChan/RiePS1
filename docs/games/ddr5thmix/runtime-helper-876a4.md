---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 876a4
description: Exact reconstruction of FUN_800876a4, a runtime record table initialization helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 876a4

`FUN_800876a4` is a 332-byte runtime record table initialization helper at executable address `0x800876a4`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper876a4.s](/src/ddr5thmix/RuntimeHelper876a4.s)
- Manifest module: `runtime-helper-876a4`
- Manifest section: `.text.FUN_800876a4`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 332 bytes at file offset `0x6d6a4`; the reference and built byte streams both hash to `63e648a9e2ed832ceb6613622c3565847ecc16c2d6bc4d4431e406222332826b`.

The function and one-function module each match all 332 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
