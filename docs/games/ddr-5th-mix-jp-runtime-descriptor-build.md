---
type: Reconstructed Module
title: DDR 5th Mix Runtime Descriptor Build
description: Exact reconstruction of FUN_8007bb5c, an indexed descriptor constructor and image-submission helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, descriptors]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-descriptor-build` contains `FUN_8007bb5c` at `0x8007bb5c` (192
bytes). It accepts an index, rejects values at or above `0x32`, compares the
requested index with the active halfword at `0x800df268`, and selects one of
50 descriptor pointers from the runtime table rooted at `0x80174000`. The
descriptor fields at offsets `2`, `4`, `0xa`, `0xe`, and `0x10` are loaded;
the first field is shifted and combined with `0x8000`, then the complete
argument set is submitted to `FUN_800223a8` with `0x100` in the delay slot.
On success the active index is stored and the function returns `1`; unchanged
or invalid paths return `0`.

“Runtime descriptor build” is a bounded project label based on the indexed
pointer table and image-submission call. The original descriptor type and
field names remain unknown.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x8007bb5c`. The source is
`/src/ddr5thmix/RuntimeDescriptorBuild.s`; it contains semantic MIPS
instructions, not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007bb5c
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 192/192 bytes.
Reference and built SHA-256 are both
`3445e225c6fb6e6bb9cf9abc18c30e3f4428efd5be1a2b40c13256f6f217c586`.
The registered `runtime-descriptor-build` module independently reports one
function, 192 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete descriptor layout,
or the semantic units of its five extracted halfwords.
