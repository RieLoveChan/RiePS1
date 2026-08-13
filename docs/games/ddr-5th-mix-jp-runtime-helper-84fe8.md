---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 84fe8
description: Exact reconstruction of FUN_80084fe8, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 84fe8

`FUN_80084fe8` is a 620-byte runtime gameplay and resource state helper at executable address `0x80084fe8`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper84fe8.s](/src/ddr5thmix/RuntimeHelper84fe8.s)
- Manifest module: `runtime-helper-84fe8`
- Manifest section: `.text.FUN_80084fe8`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 620 bytes at file offset `0x6afe8`; the reference and built byte streams both hash to `082fab44ab79a3b4e5881ce21a069160c439d2240756972baa578a8e05c4c4cd`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
