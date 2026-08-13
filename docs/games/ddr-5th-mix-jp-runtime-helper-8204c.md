---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 8204c
description: Exact reconstruction of FUN_8008204c, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 8204c

`FUN_8008204c` is a 1,228-byte runtime gameplay and resource state helper at executable address `0x8008204c`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper8204c.s](/src/ddr5thmix/RuntimeHelper8204c.s)
- Manifest module: `runtime-helper-8204c`
- Manifest section: `.text.FUN_8008204c`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 1,228 bytes at file offset `0x6804c`; the reference and built byte streams both hash to `49e21835c3dfd67a8cc01132ee8f809783fb7596ed322862354114a72b882666`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
