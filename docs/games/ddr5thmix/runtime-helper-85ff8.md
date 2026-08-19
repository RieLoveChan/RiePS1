---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 85ff8
description: Exact reconstruction of FUN_80085ff8, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 85ff8

`FUN_80085ff8` is a 256-byte runtime gameplay and resource state helper at executable address `0x80085ff8`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper85ff8.s](/src/ddr5thmix/RuntimeHelper85ff8.s)
- Manifest module: `runtime-helper-85ff8`
- Manifest section: `.text.FUN_80085ff8`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 256 bytes at file offset `0x6bff8`; the reference and built byte streams both hash to `00cad24e2a56c3e9dbe32bff7c87430ca89393b4e1c6a615c7bce84e8ac2ad42`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
