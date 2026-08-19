---
type: Reconstructed Module
title: DDR 5th Mix Runtime Table Interpolation
description: Exact reconstruction of FUN_8007ce50, an indexed breakpoint-table lookup and signed interpolation helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, interpolation, table]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Table Interpolation

`FUN_8007ce50` selects a breakpoint segment from a compact table using the high byte of its input, scans forward while the segment key is below the requested value, and returns the corresponding signed endpoint or linearly interpolated value. The shift count is read from the table header; the description remains structural and does not assign semantic names to the table or its callers.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007ce50`.
- Source: `/src/ddr5thmix/RuntimeTableInterpolate.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007ce50` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-table-interpolate`.
- Result: 232/232 bytes matched at file offset `0x62e50`; reference and built SHA-256 are both `eeee0f35604a3e64154a417b5fe4bcce301687d657d2d6e5e096ca4d26f49cc8`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
