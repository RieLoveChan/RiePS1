---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 843dc
description: Exact reconstruction of FUN_800843dc, a runtime gameplay, resource, and dispatch helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 843dc

`FUN_800843dc` is a 1,100-byte runtime gameplay, resource, and dispatch helper at executable address `0x800843dc`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper843dc.s](/src/ddr5thmix/RuntimeHelper843dc.s)
- Manifest module: `runtime-helper-843dc`
- Manifest section: `.text.FUN_800843dc`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 1,100 bytes at file offset `0x6a3dc`; the reference and built byte streams both hash to `2d5ad06c0042857213e6f3253128522a9c294f169ac86ac6b8f4f06da9e78017`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
