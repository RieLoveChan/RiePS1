---
type: Reconstructed Module
title: DDR 5th Mix Runtime Six-Record Initialization
description: Exact reconstruction of FUN_800a62c0, which initializes six consecutive runtime records.
tags: [ps1, ddr5thmix, decompilation, module, runtime, records]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-six-record-init` contains `FUN_800a62c0` at `0x800a62c0` (192 bytes).
It initializes six consecutive 8-byte records beginning at the caller-provided
base plus `0x1c`. Each iteration marks the record, clears its word at offset
`8` and byte at offset `4`, evaluates the record state bytes, and either
writes state value `4` or `5` and clears the pointer word or preserves the
current pointer. The decision also consults a six-entry, 72-byte table rooted
at `0x801189d8`, selected by the original `9 * (1 - table_byte)` offset
calculation. The loop advances the record and table pointers for exactly six
iterations.

“Runtime six-record initializer” is a bounded project label based on the
observed record stride, loop count, and fixed table reference. The original
record and table types remain unknown.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x800a62c0`. The source is
`/src/ddr5thmix/RuntimeSixRecordInit.s`; it contains semantic MIPS
instructions, not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_800a62c0
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 192/192 bytes.
Reference and built SHA-256 are both
`d9cda31b6cec3c2e42797396eda53ad5f58080f59cc5782b7907237459dfd3f8`.
The registered `runtime-six-record-init` module independently reports one
function, 192 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the full record layout, or the
semantic meaning of the table's byte values.
