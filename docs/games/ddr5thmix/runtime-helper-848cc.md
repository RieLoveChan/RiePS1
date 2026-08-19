---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 848cc
description: Exact reconstruction of FUN_800848cc, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 848cc

`FUN_800848cc` is a 436-byte runtime gameplay and resource state helper at executable address `0x800848cc`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper848cc.s](/src/ddr5thmix/RuntimeHelper848cc.s)
- Manifest module: `runtime-helper-848cc`
- Manifest section: `.text.FUN_800848cc`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 436 bytes at file offset `0x6a8cc`; the reference and built byte streams both hash to `2f78bed75279ab0c796ef072de2288919b6dcd514f466fc9ab55b01de38585d7`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
