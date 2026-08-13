---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 89114
description: Exact reconstruction of FUN_80089114, a runtime resource and timing update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 89114

`FUN_80089114` is a 604-byte runtime resource and timing update helper at executable address `0x80089114`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper89114.s](/src/ddr5thmix/RuntimeHelper89114.s)
- Manifest module: `runtime-helper-89114`
- Manifest section: `.text.FUN_80089114`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 604 bytes at file offset `0x6f114`; the reference and built byte streams both hash to `8c432639da3f5c30214f92d55bc2c9e1717da481e09cb0336bfed8066bda4b92`.

The function and one-function module each match all 604 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
