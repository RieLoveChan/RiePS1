---
type: Reconstructed Module
title: DDR 5th Mix Runtime Flag Selector
description: Exact reconstruction of FUN_80086634, which selects a related record offset and publishes a normalized flag event.
tags: [ps1, ddr5thmix, decompilation, module, runtime, flags]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-flag-selector` contains `FUN_80086634` at `0x80086634` (188 bytes).
It reads the state byte at `0x800f292c`, checks the related structure at the
`+0x8000` offset, and selects an offset of `0`, `0x9284`, or
`0xffff6d7c` according to the observed state tests. It reads the selected
record's byte at offset `0x92`, XORs it with `2`, converts the equality result
to a boolean, doubles it in the final call delay slot, and publishes it through
`FUN_8002a8b0`.

“Runtime flag selector” is a bounded project label based on the fixed-address
reads and final event call. It does not assign an original name to either
related record.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x80086634`. The source is
`/src/ddr5thmix/RuntimeFlagSelector.s`; it contains semantic MIPS instructions,
not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_80086634
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 188/188 bytes.
Reference and built SHA-256 are both
`9bff3d0d0a956b9cced5350534c601b3358635def105df910e8366226ddc6b3b`.
The registered `runtime-flag-selector` module independently reports one
function, 188 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete layouts of the
related records, or the semantic meaning of event value `2` beyond the
observed normalization sequence.
