---
type: Reconstruction Module
title: DDR 5th Mix runtime timing quantizer module
description: Exact reconstruction and bounded semantic interpretation of the global timing quantizer.
tags: [ps1, ddr5thmix, reconstruction, byte-match, timing]
timestamp: 2026-08-18T00:00:00-04:00
---

# Scope

`src/ddr5thmix/LibrarySignatureBatch9.s` reconstructs `FUN_80099314` at
`0x80099314`. The 312-byte routine has no observed input dependency: it reads
the global timing state at `0x800f3ac0` and a table rooted at `0x800f3bac`.

# Observed semantic behavior

- If the global value at `0x800f3ac0` is negative, the routine returns zero.
- Otherwise it scans table records in 16-byte steps. The records contain
  threshold words and halfword fields; a halfword at offset `+6` selects a
  related record while the scan advances.
- It derives a difference between selected record values, scales it by 60,
  divides by a second difference after a fixed-point reciprocal multiply,
  and rounds negative results by adding `0x3ff` before shifting by 10.
- The returned signed halfword is clamped to a minimum of 20 and a maximum
  of 300. The observed fixed-point form is therefore a bounded quantized
  timing value, but its original unit is not established.
- The companion `FUN_800991f4` reads the same table for an interpolated
  halfword value, but it is called from a separate state transition and is
  not assumed to initialize or mutate this quantizer's table.
- Direct static callers are `FUN_80096978` at `0x80097000` and
  `FUN_800971e4` at `0x80097204`. The caller-visible ABI is a no-argument
  provider returning a signed `short` in `v0`; any value placed in `a0` by a
  caller is not read by this routine.

The safe semantic name is therefore **global timing quantizer**. The original
names of the table fields, the unit of the value, and the meaning of the
global control word remain unresolved.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_80099314
```

Result: `byte_match: True`, 312/312 bytes, reference/built SHA-256
`0663d6fffc9970ae6eab89327a91f23405f820dd29a7ca0a8745a7aa82187c13`.

# Limitations

This proves bounded instruction-byte reproduction and the observed static
contract only. It does not identify the timing unit, recover original source
names, or establish whole-executable link equivalence.
