---
type: Reconstructed Module
title: DDR 5th Mix Runtime Image Selection and Update
description: Exact reconstruction of FUN_8007b260, an indexed image-selection, coordinate-calculation, and update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, image]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Image Selection and Update

`FUN_8007b260` compares the requested image index against the current halfword in the `0x800df280` table. When the index changes, it resolves the indexed pointer through the `0x800bab40` table, submits the selected resource through `FUN_8002a8b8`, reads descriptor fields from `FUN_80098880(0x61)`, and calls `FUN_800223a8` with the derived image coordinates and a stack-passed field. It then synchronizes with `FUN_80038564(0)` and records the new index. An unchanged index returns zero; an update returns one. These names describe observed call boundaries and data flow, not an original-source-form claim.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007b260`.
- Source: `/src/ddr5thmix/RuntimeImageSelectUpdate.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007b260`.
- Result: 252/252 bytes matched at file offset `0x61260`; reference and built SHA-256 are both `eed14d6d3fefe288f0fc4b6529016b0b78f24d753afe9882275855c7fcf4e77a`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
