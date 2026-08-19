---
type: Reconstructed Module
title: DDR 5th Mix Runtime Object Frame Initialization
description: Exact reconstruction of FUN_8007e7b8, which initializes frame records and publishes sixteen sampled channels.
tags: [ps1, ddr5thmix, decompilation, module, runtime, object, frame]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Object Frame Initialization

`FUN_8007e7b8` initializes two 0x50-spaced frame records, selects a source record using the runtime threshold fields, clears the destination state words, and publishes sixteen byte-sized channel results. One path samples each channel with `FUN_8007cf38`; the alternate path calls `FUN_8007dd2c` with the two source records and interpolation fields. These observations are structural and do not assign semantic names to object assets or animation states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007e7b8`.
- Source: `/src/ddr5thmix/RuntimeObjectFrameInit.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007e7b8` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-object-frame-init`.
- Result: 332/332 bytes matched at file offset `0x647b8`; reference and built SHA-256 are both `d0d2e751caace65221caf0ec56855e830a64bb29b7aaab92c50b29ef9d47c0c4`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
