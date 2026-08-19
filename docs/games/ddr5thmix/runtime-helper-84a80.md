---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 84a80
description: Exact reconstruction of FUN_80084a80, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 84a80

`FUN_80084a80` is a 1,384-byte runtime gameplay and resource state helper at executable address `0x80084a80`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper84a80.s](/src/ddr5thmix/RuntimeHelper84a80.s)
- Manifest module: `runtime-helper-84a80`
- Manifest section: `.text.FUN_80084a80`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 1,384 bytes at file offset `0x6aa80`; the reference and built byte streams both hash to `17ff7aff17241f248ff5b2faab8d6bd16423af0e0de88b3fdb552976636cfe5f`.

The match establishes byte identity for this function under the recorded executable and toolchain inputs. It does not by itself establish the semantic names of all fields or callers.
