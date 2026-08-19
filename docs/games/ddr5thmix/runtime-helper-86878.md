---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 86878
description: Exact reconstruction of FUN_80086878, a runtime state, resource, and status helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 86878

`FUN_80086878` is a 2,008-byte runtime state, resource, and status helper at executable address `0x80086878`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper86878.s](/src/ddr5thmix/RuntimeHelper86878.s)
- Manifest module: `runtime-helper-86878`
- Manifest section: `.text.FUN_80086878`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 2,008 bytes at file offset `0x6c878`; the reference and built byte streams both hash to `f2208ec248d23bdfff402621436f59227369b6a5dbb96a9233167864a1c0f106`.

The function and one-function module each match all 2,008 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
