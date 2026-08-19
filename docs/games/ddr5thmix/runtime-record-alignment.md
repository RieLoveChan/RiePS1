---
type: Reconstruction Module
title: DDR 5th Mix runtime record alignment module
description: Exact reconstruction and bounded semantic interpretation of the mode-specific runtime record normalizer.
tags: [ps1, ddr5thmix, reconstruction, byte-match, runtime, records]
timestamp: 2026-08-18T00:00:00-04:00
---

# Scope

`src/ddr5thmix/LibrarySignatureBatch9.s` reconstructs `FUN_800994dc` at
`0x800994dc`. The 332-byte routine normalizes one indexed shared record table
and then invokes `FUN_80083974`.

# Observed semantic behavior

- The routine first checks the halfword at `0x800f299e`; all record work is
  skipped unless that value is `-1`.
- The caller-supplied index selects a table base using a `0x4d8`-byte stride.
  The selected table begins at `0x800f3bac` and contains up to `0x800` records
  with a `0x10`-byte stride. Each record's word at `+0` is compared against a
  working cursor beginning at `0x2000`; the halfword at `+0` is a terminator
  when it is `-2`.
- Mode `0` tests low-bit alignment with `0x7ff`; mode `1` tests with `0x3ff`.
  Misaligned values within the observed signed difference threshold, or
  records whose halfword `+2` is not `-1`, receive the unresolved sentinel
  `-4` at record halfword `+0`.
- Otherwise the cursor and record word advance by `0x800`, and the record
  halfword at `+4` receives `-1` or the observed related value. Other mode
  values only advance through the bounded scan and do not apply either
  normalization branch.
- After the scan, `FUN_80083974` is called with no consumed return value.

The safe semantic name is therefore **runtime record alignment normalizer**.
The record payload's original domain, the meaning of modes `0` and `1`, and
the `-1`/`-2`/`-4` sentinel names remain unresolved.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_800994dc
```

Result: `byte_match: True`, 332/332 bytes at file offset `0x7f4dc`,
reference/built SHA-256
`d2d52b531341ba367249b263492354ff4878e717c598d765b7d886844c00fc98`.

# Limitations

This proves bounded instruction-byte reproduction and the observed static
contract only. It does not identify the original record field names, mode
names, sentinel names, or whole-executable link equivalence.
