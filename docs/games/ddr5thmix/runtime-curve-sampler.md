---
type: Reconstructed Module
title: DDR 5th Mix Runtime Curve Sampler
description: Exact reconstruction of FUN_8007d454, a two-format runtime curve sampler and frame-channel publisher.
tags: [ps1, ddr5thmix, decompilation, module, runtime, curve, animation]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Curve Sampler

`FUN_8007d454` selects the indexed object record, samples the two observed curve-record formats through `FUN_8007ce50`, publishes the resulting signed frame channels, and returns the terminal-channel value for the selected record variant. The description remains structural and does not assign semantic names to object assets or animation tracks.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007d454`; delay-slot gaps cross-checked with GNU objdump 2.43 at executable load base `0x8001a000`.
- Source: `/src/ddr5thmix/RuntimeCurveSampler.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007d454` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-curve-sampler`.
- Result: 1,108/1,108 bytes matched at file offset `0x63454`; reference and built SHA-256 are both `a6507fd62be3f0f173dca20f6cd8bb8b1bd92454bb33eee43f0803b6aea42557`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
