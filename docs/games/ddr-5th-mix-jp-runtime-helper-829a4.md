---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 829a4
description: Exact reconstruction of FUN_800829a4, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 829a4

`FUN_800829a4` is a 1,068-byte runtime gameplay and resource state helper at executable address `0x800829a4`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper829a4.s](/src/ddr5thmix/RuntimeHelper829a4.s)
- Manifest module: `runtime-helper-829a4`
- Manifest section: `.text.FUN_800829a4`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 1,068 bytes at file offset `0x689a4`; the reference and built byte streams both hash to `6a41e47e567d47ef621511083f0c17b4c2bfd96c7504223f2c4080aef3899f63`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
