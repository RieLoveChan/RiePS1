---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 89b44
description: Exact reconstruction of FUN_80089b44, a runtime state and resource helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 89b44

`FUN_80089b44` is a 608-byte runtime state and resource helper at executable address `0x80089b44`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper89b44.s](/src/ddr5thmix/RuntimeHelper89b44.s)
- Manifest module: `runtime-helper-89b44`
- Manifest section: `.text.FUN_80089b44`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 608 bytes at file offset `0x6fb44`; the reference and built byte streams both hash to `30c3c8780b973a9efa6e721f0cb33fe15ce7f5848ec1de2cb035418e05c5b9a9`.

The function and one-function module each match all 608 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
