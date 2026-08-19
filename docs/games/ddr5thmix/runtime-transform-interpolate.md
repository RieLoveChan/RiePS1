---
type: Reconstructed Module
title: DDR 5th Mix Runtime Transform Interpolation
description: Exact reconstruction of FUN_8007d8a8, a runtime transform interpolator and GTE matrix synthesis helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, transform, interpolation, gte]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Transform Interpolation

`FUN_8007d8a8` interpolates the translation and rotation channels of two runtime transform records, handles the observed angular wrap adjustment, normalizes the resulting vector, and synthesizes the destination matrix through the GTE rotation-state save/restore and vector-operation sequence. The description remains structural and does not assign semantic names to object assets or animation states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007d8a8`; COP2 sequences cross-checked with GNU objdump 2.43 at executable load base `0x8001a000`.
- Source: `/src/ddr5thmix/RuntimeTransformInterpolate.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007d8a8` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-transform-interpolate`.
- Result: 1,156/1,156 bytes matched at file offset `0x638a8`; reference and built SHA-256 are both `68dff3eb85e32e9363112c51f866f25fae10a0345dadb9849a40dceb2ad62593`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
