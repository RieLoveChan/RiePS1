---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 88d20
description: Exact reconstruction of FUN_80088d20, a runtime resource and record processing helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 88d20

`FUN_80088d20` is a 1,012-byte runtime resource and record processing helper at executable address `0x80088d20`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper88d20.s](/src/ddr5thmix/RuntimeHelper88d20.s)
- Manifest module: `runtime-helper-88d20`
- Manifest section: `.text.FUN_80088d20`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 1,012 bytes at file offset `0x6ed20`; the reference and built byte streams both hash to `8b2f196d452404990c19aea5d3ff5af06dda985bccb008cb25ab0740912b54ac`.

The function and one-function module each match all 1,012 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
