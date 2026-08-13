---
type: Reconstructed Module
title: DDR 5th Mix Runtime Callback 7eb70
description: Exact reconstruction of FUN_8007eb70, an indexed record and flag maintenance helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, callback, table]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Callback 7eb70

`FUN_8007eb70` iterates 47 indexed records, tests their halfword and flag fields, invokes two runtime helpers for eligible entries, and performs two additional threshold-gated helper pairs. The description is structural and does not assign semantic names to game assets or states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007eb70`; raw instruction cross-check with GNU objdump 2.43.
- Source: `/src/ddr5thmix/RuntimeCallback7eb70.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007eb70` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-callback-7eb70`.
- Result: 316/316 bytes matched at file offset `0x64b70`; reference and built SHA-256 are both `a1f4e30f0cad5e2909d1c54b9f6ca281ef24042cc8346fa420719b9a919e84e5`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
