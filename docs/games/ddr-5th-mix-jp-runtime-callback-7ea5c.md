---
type: Reconstructed Module
title: DDR 5th Mix Runtime Callback 7ea5c
description: Exact reconstruction of FUN_8007ea5c, a runtime callback helper that scans records and publishes per-entry flags.
tags: [ps1, ddr5thmix, decompilation, module, runtime, callback, table]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Callback 7ea5c

`FUN_8007ea5c` scans the fixed record area for a nonzero byte, selects a record pointer, checks a status byte and bit flag, calls `FUN_80085fcc` for one conditional path, and publishes a byte flag for 160 consecutive entries. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007ea5c`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeCallback7ea5c.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007ea5c` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-callback-7ea5c`.
- Result: 276/276 bytes matched at file offset `0x64a5c`; reference and built SHA-256 are both `d48f6cac19dfcb3619cd9733e34580a7e38f51ad157efc5c7397a2a686856145`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
