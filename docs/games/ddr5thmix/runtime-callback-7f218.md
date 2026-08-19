---
type: Reconstructed Module
title: DDR 5th Mix Runtime Callback 7f218
description: Exact reconstruction of FUN_8007f218, a runtime callback and indexed record update helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, callback, table]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Callback 7f218

`FUN_8007f218` reads an indexed runtime record, checks its active entry and bit mask, invokes the corresponding runtime helper when eligible, and writes the resulting flag to the selected record field. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007f218`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeCallback7f218.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007f218` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-callback-7f218`.
- Result: 204/204 bytes matched at file offset `0x65218`; reference and built SHA-256 are both `6248e3e7180cf94b782e835936e58192d89d8b3626ac4792b9bddd6aed7b2182`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
