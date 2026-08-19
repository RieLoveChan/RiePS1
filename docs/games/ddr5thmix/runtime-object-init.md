---
type: Reconstructed Module
title: DDR 5th Mix Runtime Object Initialization
description: Exact reconstruction of FUN_8007c074, a model/object mapping, linking, coordinate, and texture-page initialization helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, object, graphics]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Object Initialization

`FUN_8007c074` maps the model data referenced through the `0x80190000` resource globals, initializes the per-category minimum counters, and processes the model count byte. For each object it calls the observed link/preset helpers, assigns a coordinate record based on the object’s category byte, and updates the category minimum index. `FUN_80097f18` supplies texture information; valid texture data is converted with `GetTPage(0, 0, 0x240, 0)` and `GetClut(0x270, uVar2 + 0xc0)`, then applied through `FUN_80097eb8`. The description is limited to observed object and texture setup and does not name model assets.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007c074`.
- Source: `/src/ddr5thmix/RuntimeObjectInit.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007c074`.
- Result: 424/424 bytes matched at file offset `0x62074`; reference and built SHA-256 are both `3846b2e50efc841e3649dfb2a2e53d6ca4fc415cbe1b5abdfe1279ecc3591f8b`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
