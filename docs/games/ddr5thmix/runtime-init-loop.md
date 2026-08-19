---
type: Reconstructed Module
title: DDR 5th Mix Runtime Initialization Loop
description: Exact reconstruction of FUN_8007c384, the runtime startup selector loop and completion state machine.
tags: [ps1, ddr5thmix, decompilation, module, runtime, initialization]
timestamp: 2026-08-12T00:00:00-04:00
---

# DDR 5th Mix Runtime Initialization Loop

`FUN_8007c384` starts the runtime state machine, polls the selector returned by `FUN_8007b568`, dispatches six bounded setup/status paths through an indexed jump table, and returns the completion flag after calling the shared finalizer. Selector case 4 invokes the previously reconstructed image-batch, object, and coordinate initializers before polling again. The description is structural and does not assign names to the underlying screen or asset states.

## Reproducible evidence

- Input revision: lawful `SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Analysis: Ghidra 12.1.2 `DumpFunctionDetail.java 0x8007c384`.
- Source: `/src/ddr5thmix/RuntimeInitLoop.s`.
- Verification: `pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007c384` and `pwsh -File tools/build/Invoke-ModuleMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Module runtime-init-loop`.
- Result: 236/236 bytes matched at file offset `0x62384`; reference and built SHA-256 are both `7d2ff85598f2bbb6938fd55bb4521b32f23335ea2f40583e852f8310b567d828`.

The source contains no copyrighted game data or extracted assets; reproduction requires the user's own lawful executable input.
