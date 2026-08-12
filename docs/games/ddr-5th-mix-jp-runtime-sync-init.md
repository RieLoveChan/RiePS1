---
type: Reconstructed Module
title: DDR 5th Mix Runtime Synchronization Initialization
description: Exact reconstruction of FUN_800a8b0c, a synchronization loop followed by initialization of three runtime structures.
tags: [ps1, ddr5thmix, decompilation, module, runtime, synchronization]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-sync-init` contains `FUN_800a8b0c` at `0x800a8b0c` (176 bytes). It
sets the byte at `0x80116c25` to `1`, then repeatedly calls the existing state
helper at `0x800a7938`. While that helper returns zero, it calls the existing
runtime helpers at `0x80028034` and `0x8002d630`, polls `VSync(0)` through
`0x800358f8`, and returns to the loop. On completion it calls the existing
helpers at `0x800aba64` and `0x800a9300`, then initializes the structures at
`0x80118a60`, `0x80118a70`, and `0x80118a78` through three calls at
`0x8003bac8`. The final delay slot supplies the observed length `0x10` and
the function restores its return state.

“Runtime synchronization initializer” is a bounded project label based on the
control flow and fixed-address writes. It does not assign undocumented names
to the structures or helper functions.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x800a8b0c`. The source is
`/src/ddr5thmix/RuntimeSyncInit.s`; it contains semantic MIPS instructions,
not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_800a8b0c
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 176/176 bytes.
Reference and built SHA-256 are both
`4a41dfc6703fa5d7a74e73cf2c8a891ebeac6c5d610dec68f6f6cbd186f68234`.
The registered `runtime-sync-init` module independently reports one
function, 176 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete layouts of the
three initialized structures, or the higher-level meaning of the state
helper's completion result.
