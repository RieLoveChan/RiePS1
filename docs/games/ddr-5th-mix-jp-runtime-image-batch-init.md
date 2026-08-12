---
type: Reconstructed Module
title: DDR 5th Mix Runtime Image Batch Initialization
description: Exact reconstruction of FUN_8007bee4, a twelve-image TIM, CLUT, and VRAM upload initializer.
tags: [ps1, ddr5thmix, decompilation, module, runtime, image, tim]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Image Batch Initialization

`FUN_8007bee4` prepares a batch of twelve images. It resolves the runtime resource buffers through `FUN_8002a9dc` and `FUN_8002a8b8`, obtains each TIM descriptor with `FUN_80038028`, and computes the image rectangle positions from the loop index. For each 16-entry CLUT it clears entries whose low 15 bits equal `0x7c1f`, changes zero entries to `0x4000`, uploads the pixel and CLUT rectangles through `LoadImage`, and calls `DrawSync(0)`. The routine advances each descriptor by `0x840` bytes and returns one after all twelve images; this description does not assign asset names to the resource buffers.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007bee4`.
- Source: `/src/ddr5thmix/RuntimeImageBatchInit.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007bee4`.
- Result: 400/400 bytes matched at file offset `0x61ee4`; reference and built SHA-256 are both `ecad835d91f6d1ab73bcefa386021365578be504972135c4185843d0cf911448`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
