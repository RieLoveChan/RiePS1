---
type: Reconstructed Module
title: DDR 5th Mix Runtime Object Transform
description: Exact reconstruction of FUN_8007cf38, a runtime object animation sampler, matrix synthesizer, and frame transform helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, object, matrix, gte]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Object Transform

`FUN_8007cf38` selects an object record from the runtime table, samples its compact animation curves through `FUN_8007ce50`, handles the observed record variants, and builds the corresponding rotation/transform state. The variant path includes the observed GTE rotation-matrix save/restore and vector-operation sequence; the description remains structural and does not assign semantic names to object assets or animation channels.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007cf38`; COP2 expansion cross-checked with GNU objdump 2.43 at the executable load base `0x8001a000`.
- Source: `/src/ddr5thmix/RuntimeObjectTransform.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007cf38` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-object-transform`.
- Result: 1,308/1,308 bytes matched at file offset `0x62f38`; reference and built SHA-256 are both `ad61160f828bec5c433e0b01c15a2650c8851f0631b922e5f6aec4e2a9ce6a98`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
