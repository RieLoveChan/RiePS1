---
type: Reconstruction Module
title: DDR 5th Mix runtime timing-table interpolator module
description: Exact reconstruction and bounded semantic interpretation of the timing-table interpolator.
tags: [ps1, ddr5thmix, reconstruction, byte-match, timing]
timestamp: 2026-08-18T00:00:00-04:00
---

# Scope

`src/ddr5thmix/LibrarySignatureBatch9.s` reconstructs `FUN_800991f4` at
`0x800991f4`. The 288-byte routine consumes a scalar input and reads records
rooted at `0x800f3bac`.

# Observed semantic behavior

- The only direct caller found is `FUN_80098f8c` at `0x80098fb4`; it loads
  `DAT_800f3b98` into `a0` immediately before the call.
- The routine walks 16-byte records using each record's word at offset zero
  as a threshold. A halfword at offset `+6` selects a related record when the
  current scan index changes.
- It chooses a lower/upper record pair and linearly interpolates their
  halfword values at offset `+8` using the input and the records' word-zero
  thresholds.
- For inputs below `0x3c000`, it uses the direct differences. For larger
  inputs, it halves both the input difference and threshold difference before
  the unsigned division; this is an observed overflow-avoidance path.
- The result is sign-preserved through the return delay slot as a `short`.

The safe semantic name is therefore **timing-table interpolator**. The input
unit, the meaning of the table's threshold/value fields, and the relationship
to the later `FUN_80099314` quantizer remain unresolved.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_800991f4
```

Result: `byte_match: True`, 288/288 bytes at file offset `0x7f1f4`,
reference/built SHA-256
`5997c273b5d46ea799bf74dc597115e6776d8ccdaea63af0ed4a254d14da242f`.

# Limitations

This proves bounded instruction-byte reproduction and the observed static
contract only. It does not identify the table's original field names or units,
or establish whole-executable link equivalence.
