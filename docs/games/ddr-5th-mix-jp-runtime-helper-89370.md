---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 89370
description: Exact reconstruction of FUN_80089370, a runtime state, resource, and dispatch helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 89370

`FUN_80089370` is a 1,348-byte runtime state, resource, and dispatch helper at executable address `0x80089370`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper89370.s](/src/ddr5thmix/RuntimeHelper89370.s)
- Manifest module: `runtime-helper-89370`
- Manifest section: `.text.FUN_80089370`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 1,348 bytes at file offset `0x6f370`; the reference and built byte streams both hash to `eb4156de7f8a19153183e6171266d20de050f415a752c474644eaebd0d4ca9a9`.

The function and one-function module each match all 1,348 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
