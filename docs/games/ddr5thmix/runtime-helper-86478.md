---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 86478
description: Exact reconstruction of FUN_80086478, a runtime gameplay and resource state helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 86478

`FUN_80086478` is a 444-byte runtime gameplay and resource state helper at executable address `0x80086478`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper86478.s](/src/ddr5thmix/RuntimeHelper86478.s)
- Manifest module: `runtime-helper-86478`
- Manifest section: `.text.FUN_80086478`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 444 bytes at file offset `0x6c478`; the reference and built byte streams both hash to `ccd63ed45940447349f4d3be63d477e9b0195296a6aa6895273b5b1c3f471a84`.

The function and one-function module each match all 444 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
