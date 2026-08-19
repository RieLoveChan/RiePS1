---
type: Reconstructed Module
title: DDR 5th Mix Runtime Coordinate Initialization
description: Exact reconstruction of FUN_8007c21c, a coordinate hierarchy, object-state, and control-record initializer.
tags: [ps1, ddr5thmix, decompilation, module, runtime, coordinate, object]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Coordinate Initialization

`FUN_8007c21c` resolves the runtime model base, stores the derived resource pointers, initializes the root coordinate with `FUN_80036e48`, and initializes 16 object coordinate records using an indexed table at `0x800df28c`. It copies three halfwords into the first five object-state records, clears the corresponding state bytes for all 16 entries, resets two five-word control records, and sets the final control word to `0x1000`. The description remains structural: it does not assign semantic names to the coordinate groups or model resources.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007c21c`.
- Source: `/src/ddr5thmix/RuntimeCoordinateInit.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007c21c`.
- Result: 360/360 bytes matched at file offset `0x6221c`; reference and built SHA-256 are both `fc539dfef9a5ecf4ae85bdd0bce75989f7efeaae719ee2704515471a0f03186a`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
