---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 87188
description: Exact reconstruction of FUN_80087188, a runtime record and counter update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 87188

`FUN_80087188` is a 776-byte runtime record and counter update helper at executable address `0x80087188`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper87188.s](/src/ddr5thmix/RuntimeHelper87188.s)
- Manifest module: `runtime-helper-87188`
- Manifest section: `.text.FUN_80087188`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 776 bytes at file offset `0x6d188`; the reference and built byte streams both hash to `2a8a5f02e0bb24689efb0ab7aa4b2da8dde2890267ecc0f8ad025b2240fce26d`.

The function and one-function module each match all 776 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
