---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 85628
description: Exact reconstruction of FUN_80085628, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 85628

`FUN_80085628` is a 996-byte runtime gameplay and resource state helper at executable address `0x80085628`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper85628.s](/src/ddr5thmix/RuntimeHelper85628.s)
- Manifest module: `runtime-helper-85628`
- Manifest section: `.text.FUN_80085628`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 996 bytes at file offset `0x6b628`; the reference and built byte streams both hash to `9198f109e48fe27958f458183509f5a7fcf581d03b6d1a5cfdd1745645fc0d44`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
