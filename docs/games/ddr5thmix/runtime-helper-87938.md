---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 87938
description: Exact reconstruction of FUN_80087938, a runtime resource, record, and state update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 87938

`FUN_80087938` is a 2,172-byte runtime resource, record, and state update helper at executable address `0x80087938`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper87938.s](/src/ddr5thmix/RuntimeHelper87938.s)
- Manifest module: `runtime-helper-87938`
- Manifest section: `.text.FUN_80087938`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 2,172 bytes at file offset `0x6d938`; the reference and built byte streams both hash to `9e4e58c9dd2335e36a703e4514b82f3875cf2a46b13f969ed0a93534637a5d46`.

The function and one-function module each match all 2,172 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
