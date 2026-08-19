---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 87050
description: Exact reconstruction of FUN_80087050, a runtime record reorder and counter update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 87050

`FUN_80087050` is a 312-byte runtime record reorder and counter update helper at executable address `0x80087050`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper87050.s](/src/ddr5thmix/RuntimeHelper87050.s)
- Manifest module: `runtime-helper-87050`
- Manifest section: `.text.FUN_80087050`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 312 bytes at file offset `0x6d050`; the reference and built byte streams both hash to `abb595e8ac146b4242b1c66ba286e1f8befe88303237d7d4ac603f8f471b4892`.

The function and one-function module each match all 312 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
