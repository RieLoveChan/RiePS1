---
type: Reconstructed Module
title: DDR 5th Mix Runtime Record Initialization
description: Exact reconstruction of FUN_8009ddcc, an indexed runtime-record initializer and region-registration helper.
tags: [ps1, ddr5thmix, decompilation, module, runtime, records]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-record-init` contains `FUN_8009ddcc` at `0x8009ddcc` (180 bytes).
The function accepts one byte, calls the existing helper at `0x8009d54c` with
zero, then masks the byte to eight bits and computes an indexed offset using
the observed multiply/add/shift sequence. It registers that indexed region
through `0x8003bac8` with length `0x9b0`, registers two additional regions
with lengths `0x0c` and `0x90`, clears the selected record's field at offset
`0x84`, stores the input byte at offset `0x0c`, stores state value `5` at
offset `0x0d`, and sets the companion record's byte at offset `2` to `1`.

“Runtime record initializer” is a bounded project label based on these
operations. The original names and complete layouts of the records remain
unknown.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x8009ddcc`. The source is
`/src/ddr5thmix/RuntimeRecordInit.s`; it contains semantic MIPS instructions,
not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8009ddcc
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 180/180 bytes.
Reference and built SHA-256 are both
`2757697ba5a5416e8923dd6bddb7525486f2a6c3b75b168033ff7592fc01c693`.
The registered `runtime-record-init` module independently reports one
function, 180 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for this executable revision.
It does not prove the original C identifiers, the complete record layouts, or
the semantic meaning of the registered region lengths.
