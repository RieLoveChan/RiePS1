---
type: Reconstructed Module
title: DDR 5th Mix Runtime Player Gate
description: Exact reconstruction of FUN_80085dc4, a per-player runtime counter/flag gate and update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, player]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Player Gate

`FUN_80085dc4` is a 200-byte per-player runtime gate. It derives a player-record address from the table base `0x800f2908`, accepts the record only when its field at offset `0x20` is below `0x15`, and calls `FUN_800497bc`. For a nonzero player index it additionally tests the signed flag at offset `0x24`; a positive flag reaches `FUN_80097cd4(s0)`. The label describes the recovered control boundary, not an asserted high-level game-state name.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail` at `0x80085dc4`.
- Source: `/src/ddr5thmix/RuntimePlayerGate.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_80085dc4`.
- Result: 200/200 bytes matched at file offset `0x6bdc4`; reference and built SHA-256 are both `cc31119468a16b70dbf6b8618190790b40f43eac5d027aa0cfacd8c165375489`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
