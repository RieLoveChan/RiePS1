---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 85254
description: Exact reconstruction of FUN_80085254, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 85254

`FUN_80085254` is a 772-byte runtime gameplay and resource state helper at executable address `0x80085254`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper85254.s](/src/ddr5thmix/RuntimeHelper85254.s)
- Manifest module: `runtime-helper-85254`
- Manifest section: `.text.FUN_80085254`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 772 bytes at file offset `0x6b254`; the reference and built byte streams both hash to `0f8e316b5f785b927d04b5f616c36561908c0f9c0240467ee692a03938286a98`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
