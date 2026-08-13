---
type: Reconstructed Module
title: DDR 5th Mix Runtime Callback 7f334
description: Exact reconstruction of FUN_8007f334, a runtime callback helper and subordinate state update.
tags: [ps1, ddr5thmix, decompilation, module, runtime, callback, state]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Callback 7f334

`FUN_8007f334` dispatches the current subordinate state through the seven-entry update, exit, and enter tables, invokes the selected transition callbacks when the state changes, and calls `FUN_8007f218` during the update cycle. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007f334`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeCallback7f334.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007f334` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-callback-7f334`.
- Result: 416/416 bytes matched at file offset `0x65334`; reference and built SHA-256 are both `c26254f3dcdf1d4b334938f05805cdb5b1be4057cfd26887687b44dd1ff1f82e`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
