---
type: Reconstructed Module
title: DDR 5th Mix Secondary Runtime Table Dispatch
description: Exact reconstruction of FUN_80079968, a secondary table-driven runtime dispatcher with sixteen-entry counter maintenance.
tags: [ps1, ddr5thmix, decompilation, module, runtime, dispatcher, table]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Secondary Runtime Table Dispatch

`FUN_80079968` increments the runtime table counter, dispatches through the table selected by the current signed-halfword entry, and services the secondary callback paths. Those paths update the current entry, clear remaining halfword fields in the sixteen-entry table, and publish a terminal result; one path initializes a fixed image submission descriptor before invoking the runtime image dispatcher. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x80079968`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeDispatcher79968.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_80079968` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-table-dispatch-secondary`.
- Result: 1,340/1,340 bytes matched at file offset `0x5f968`; reference and built SHA-256 are both `be9079687f3baaa7f250f79b7a6b11b04ba8b3eb54bf1d4e50f481da645c5ce3`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
