---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 881b4
description: Exact reconstruction of FUN_800881b4, a runtime image and record update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix runtime helper 881b4

`FUN_800881b4` is a 704-byte runtime image and record update helper at executable address `0x800881b4`.

## Reconstructed source

- Source: [/src/ddr5thmix/RuntimeHelper881b4.s](/src/ddr5thmix/RuntimeHelper881b4.s)
- Manifest module: `runtime-helper-881b4`
- Manifest section: `.text.FUN_800881b4`

## Evidence

On 2026-08-12, `tools/build/Invoke-FunctionMatch.ps1` and `tools/build/Invoke-ModuleMatch.ps1` were run against the lawful `SLPM_868.97_1` revision with executable SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. GCC 14.2.0 and GNU binutils 2.43 assembled 704 bytes at file offset `0x6e1b4`; the reference and built byte streams both hash to `8cc54405beae76370cc4a6cebc0d732ae48282895ca77728521471664aa17040`.

The function and one-function module each match all 704 bytes. This establishes byte identity under the recorded executable and toolchain inputs; it does not by itself establish the semantic names of all fields or callers.
