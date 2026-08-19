---
type: Reconstructed Module
title: DDR 5th Mix Runtime Helper 7fab0
description: Exact reconstruction of FUN_8007fab0, a runtime timeline and state update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, timeline]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 7fab0

`FUN_8007fab0` initializes and updates the indexed runtime timeline records, applies the sampled table values, and publishes the resulting state through the associated record fields. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007fab0`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeHelper7fab0.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007fab0` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-helper-7fab0`.
- Result: 476/476 bytes matched at file offset `0x65ab0`; reference and built SHA-256 are both `56a01e674e059f01b6675d9280b138f3089772a9b54d05d4aa30e6aec0cdf4b5`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
