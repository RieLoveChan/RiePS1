---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 82dd0
description: Exact reconstruction of FUN_80082dd0, a runtime gameplay, resource, and dispatch helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 82dd0

`FUN_80082dd0` is a 2,980-byte runtime gameplay, resource, and dispatch helper at executable address `0x80082dd0`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper82dd0.s](/src/ddr5thmix/RuntimeHelper82dd0.s)
- Manifest module: `runtime-helper-82dd0`
- Manifest section: `.text.FUN_80082dd0`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 2,980 bytes at file offset `0x68dd0`; the reference and built byte streams both hash to `71020316ba272e2e302663a7d5fd123a23cb10d0ac2ee422c6fd4c5add900971`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
