---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 81f30
description: Exact reconstruction of FUN_80081f30, a runtime cleanup and state classification helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, cleanup]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 81f30

`FUN_80081f30` clears and updates the shared runtime state fields, evaluates the current record flags and counters, and returns the resulting state classification after invoking the associated cleanup helpers. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x80081f30`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeHelper81f30.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_80081f30` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-helper-81f30`.
- Result: 284/284 bytes matched at file offset `0x67f30`; reference and built SHA-256 are both `7e3e7eb792a9a5573171407034ebef7e11d4bf978f0fd7b5a756d0fabc0590cc`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
