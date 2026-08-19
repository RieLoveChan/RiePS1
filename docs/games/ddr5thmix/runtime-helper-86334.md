---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 86334
description: Exact reconstruction of FUN_80086334, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 86334

`FUN_80086334` is a 324-byte runtime gameplay and resource state helper at executable address `0x80086334`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper86334.s](/src/ddr5thmix/RuntimeHelper86334.s)
- Manifest module: `runtime-helper-86334`
- Manifest section: `.text.FUN_80086334`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 324 bytes at file offset `0x6c334`; the reference and built byte streams both hash to `15844f06315a110c0d2d2f1372ca5c92fa083d48a83f46e2fe70e9cee973c944`.

The function and one-function module each match all 324 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
