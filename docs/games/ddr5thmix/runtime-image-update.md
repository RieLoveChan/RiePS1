---
type: Reconstructed Module
title: DDR 5th Mix Runtime Image Update
description: Exact reconstruction of FUN_8007b9d4, an indexed runtime-image update helper with signed coordinate normalization.
tags: [ps1, ddr5thmix, decompilation, module, runtime, images]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-image-update` contains `FUN_8007b9d4` at `0x8007b9d4` (192 bytes).
The function rejects an index at or above `0x29`, compares the requested value
with the indexed halfword table at `0x800df270`, and, when it changes, derives
the image/record offset with the original multiply-and-shift sequence. It
sign-normalizes two coordinate values, invokes `FUN_800223a8` with argument
`0x100`, stores the requested halfword into the selected table entry, and
returns `1`; unchanged or out-of-range paths return `0`.

“Runtime image update” is a bounded project label based on the observed image
call and coordinate arithmetic. The original record and image structure names
remain unknown.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x8007b9d4`. The source is
`/src/ddr5thmix/RuntimeImageUpdate.s`; it contains semantic MIPS instructions,
not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007b9d4
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 192/192 bytes.
Reference and built SHA-256 are both
`2309aba917cb274c03a8e57c4bea3570a60097fc68dddcc68e4347db36adc818`.
The registered `runtime-image-update` module independently reports one
function, 192 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete image structure
layout, or the unit of the normalized coordinate values.
