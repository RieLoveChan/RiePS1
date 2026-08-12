---
type: Reconstructed Module
title: DDR 5th Mix Runtime Timing Table
description: Exact reconstruction of FUN_8007f840, which resets and updates a 50-entry runtime timing table.
tags: [ps1, ddr5thmix, decompilation, module, runtime, timing]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-timing-table` contains `FUN_8007f840` at `0x8007f840` (184 bytes).
It reads the active table state from the record at `0x800e0b18`, preserves the
caller-provided index, and, when the table is uninitialized, clears the active
entry and the field at offset `4` for 50 entries. It then copies the active
index into the companion field. For an index below `0x32`, it selects the
corresponding entry, adds the entry's current halfword to the second argument,
and writes either that sum or the observed `0xc350` threshold according to the
original comparison sequence. The function returns zero in its final delay
slot.

“Runtime timing table” is a bounded project label based on the fixed offsets,
50-entry loop, and threshold constant. The table's original C type and higher-
level timing semantics remain unassigned.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x8007f840`. The source is
`/src/ddr5thmix/RuntimeTimingTable.s`; it contains semantic MIPS instructions,
not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007f840
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 184/184 bytes.
Reference and built SHA-256 are both
`4f2c42c873ef6fe27d7b4f977d8655d0237908dcf713fe9539f20b06e5472893`.
The registered `runtime-timing-table` module independently reports one
function, 184 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete table layout, or
whether `0xc350` represents a duration, a cap, or another timing-domain unit.
