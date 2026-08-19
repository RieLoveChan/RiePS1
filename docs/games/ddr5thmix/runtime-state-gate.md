---
type: Reconstructed Module
title: DDR 5th Mix Runtime State Gate
description: Exact reconstruction of FUN_8007b778, a runtime record reset, state-flag, and optional VSync/update gate.
tags: [ps1, ddr5thmix, decompilation, module, runtime, state]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime State Gate

`FUN_8007b778` accepts a state/index value and flags. Unless the fast path is selected by bit `0x10` and the cached byte at `0x800e3bc9` already matches, it marks the state transition, clears the relevant halfword fields across the 16-entry record area rooted at `0x800e3b78`, updates the state bytes at offsets `0x50`, `0x51`, and `0x53`, and calls `FUN_8007638c`. With flag bit `0x1` clear it repeats that call around `FUN_800358f8(0)` until the update reports completion; with the bit set it performs one update call. The semantic label is bounded by these observed operations and does not assert a higher-level screen identity.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007b778`.
- Source: `/src/ddr5thmix/RuntimeStateGate.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007b778`.
- Result: 264/264 bytes matched at file offset `0x61778`; reference and built SHA-256 are both `1a68ba525bede3235a95715cf24eed8e4fef920bbba4f72f71153a5d2f3e5760`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
