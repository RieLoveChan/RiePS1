---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 7f9b8
description: Exact reconstruction of FUN_8007f9b8, a runtime table helper for indexed state publication.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, table]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 7f9b8

`FUN_8007f9b8` reads the runtime table pointer, selects an indexed record, applies a mask derived from the supplied index, and returns the resulting table state. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007f9b8`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeHelper7f9b8.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007f9b8` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-helper-7f9b8`.
- Result: 248/248 bytes matched at file offset `0x659b8`; reference and built SHA-256 are both `ac9049686849dd389e3f92d349c6adaeb374f950f9d8d19c0428082ab6cbc620`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
