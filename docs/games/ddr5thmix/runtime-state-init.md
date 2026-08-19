---
type: Reconstructed Module
title: DDR 5th Mix Runtime State Initialization
description: Exact reconstruction of FUN_800a6210, which initializes a selected runtime record and a mode-dependent per-player flag.
tags: [ps1, ddr5thmix, decompilation, module, runtime, state]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`runtime-state-init` contains `FUN_800a6210` at `0x800a6210` (176 bytes).
The function loads the shared record base from `0x800e0b18`, selects its
`0x1310`-byte record offset, invokes the existing helper at `0x800a6380` with
mode value `4`, and stores the returned halfword at record offset `2`. It then
checks the low two bits of `0x800f2900`; the value `3` selects a write of `5`
to `0x800f2920`. A separate byte at `0x801189a0` selects whether the flag at
the selected record's `+0x10000+0x277e` location is written as `4` or cleared.
Finally it calls the existing helper at `0x8009944c` and writes `1` to
`0x800f291f`.

“Runtime state initializer” is a bounded project label derived from these
fixed-address writes and call arguments. It does not assign an undocumented
name to the record or to the called helpers.

# Exact evidence

Reference executable: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Instruction evidence came from Ghidra 12.1.2 and
`DumpFunctionDetail.java 0x800a6210`. The source is
`/src/ddr5thmix/RuntimeStateInit.s`; it contains semantic MIPS instructions,
not reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_800a6210
```

With GCC 14.2.0 and GNU binutils 2.43, the verifier matched 176/176 bytes.
Reference and built SHA-256 are both
`a82b5b9756b6858f74c001ce9e1b35b93632abd6929765f33e36532d4913af55`.
The registered `runtime-state-init` module independently reports one
function, 176 expected bytes, and `byte_match: True`.

# Limitations

The reconstruction proves instruction identity for the recorded executable
revision. It does not prove the original C identifiers, the complete layout
of the selected record, or the higher-level meaning of the mode and flag
values beyond the observed operations.
