---
type: Reconstructed Module
title: DDR 5th Mix Runtime Transform Coordinator
description: Exact reconstruction of FUN_8007dd2c, a runtime transform-state coordinator and terminal-result selector.
tags: [ps1, ddr5thmix, decompilation, module, runtime, transform, coordinator]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Transform Coordinator

`FUN_8007dd2c` clamps the interpolation factor, normalizes the two source time indices against their curve-table lengths, samples both transform records with `FUN_8007d454`, selects the relevant terminal channel with `FUN_8007ce50`, and delegates the blended matrix publication to `FUN_8007d8a8`. It resets the destination rotation when either source is out of range. The description remains structural and does not assign semantic names to object assets or animation states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007dd2c`.
- Source: `/src/ddr5thmix/RuntimeTransformCoordinator.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007dd2c` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-transform-coordinator`.
- Result: 656/656 bytes matched at file offset `0x63d2c`; reference and built SHA-256 are both `04aac27fb9933025cb560d104ae4fd9ebd3c27ac2b71d1c850ed7c86f0823799`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
