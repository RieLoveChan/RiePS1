---
type: Reconstructed Module
title: DDR 5th Mix Runtime Image-Region Update
description: Exact reconstruction of FUN_8007ba94, a composite-index image-region updater.
tags: [ps1, ddr5thmix, decompilation, module, runtime, images]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-image-region-update` contains `FUN_8007ba94` at `0x8007ba94` (200
bytes). It builds a composite index from the second and third arguments,
rejects values at or above `0x67`, compares that index with the active halfword
table at `0x800df26c`, and derives an image-region offset using the original
multiply/add/shift sequence. The first argument is sign-normalized as a
halfword, a second coordinate is normalized with `0x8000`, and
`FUN_800223a8` receives mode `0x80`, size `0x280`, and the computed region
pointer. On success the active entry is stored and the function returns `1`;
unchanged or invalid paths return `0`.

“Runtime image-region update” is a bounded project label based on the fixed
table, region call, and observed arguments. The original structure names and
coordinate units remain unknown.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x8007ba94`. The source is
`/src/ddr5thmix/RuntimeImageRegionUpdate.s`; it contains semantic MIPS
instructions, not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007ba94
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 200/200 bytes.
Reference and built SHA-256 are both
`013172bc4e4887dde99119a4b60c0818535acf2efab6db5f8e20ac819e68e00c`.
The registered `runtime-image-region-update` module independently reports one
function, 200 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete region layout, or
the semantic units of the normalized coordinates.
