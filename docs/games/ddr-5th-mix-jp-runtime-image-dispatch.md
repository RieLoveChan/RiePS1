---
type: Reconstructed Module
title: DDR 5th Mix Runtime Image Dispatch
description: Exact reconstruction of FUN_8007bc1c, an indexed resource-table dispatch and image-submission helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, image, dispatch]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Image Dispatch

`FUN_8007bc1c` initializes the descriptor returned by `FUN_80098880`, storing the scaled index and three halfword parameters. It accepts resource codes `0x87` through `0x92`, dispatches through the table at `0x8001d7bc`, and selects one of twelve resource pointers in the `0x800dxxxx` ranges. The selected resource is resolved by `FUN_8002a8b8` into the shared image buffer at `0x801f4000`, then submitted through `FUN_800223a8` with the normalized descriptor coordinates and the fifth stack argument. The description is limited to observed dispatch and submission behavior; it does not assign screen or asset names to the resource pointers.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007bc1c`.
- Source: `/src/ddr5thmix/RuntimeImageDispatch.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007bc1c`.
- Result: 356/356 bytes matched at file offset `0x61c1c`; reference and built SHA-256 are both `f0737521123ac346b52fe8947fb28c65e2ef84ad4929c2fafe039a6427df5470`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
