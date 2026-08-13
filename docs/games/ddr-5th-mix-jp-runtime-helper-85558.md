---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 85558
description: Exact reconstruction of FUN_80085558, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 85558

`FUN_80085558` is a 208-byte runtime gameplay and resource state helper at executable address `0x80085558`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper85558.s](/src/ddr5thmix/RuntimeHelper85558.s)
- Manifest module: `runtime-helper-85558`
- Manifest section: `.text.FUN_80085558`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 208 bytes at file offset `0x6b558`; the reference and built byte streams both hash to `37c21af000c272734cbd5029d3b952f11fe0b619be144eb9bad76778135054b3`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
