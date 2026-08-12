---
type: Reconstruction Module
title: DDR 5th Mix runtime resource initialization module
description: Exact reconstruction of the resource-table initializer and per-entry setup loop.
tags: [ps1, ddr5thmix, reconstruction, byte-match, resources]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/RuntimeResourceInit.s` reconstructs `FUN_8007e9a8` at
`0x8007e9a8`. The 180-byte routine clears the 20-word output table, records a
base-relative resource pointer, and initializes 17 resource entries through
`FUN_8007e064` when their source offsets are nonzero.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_8007e9a8
```

Result: `byte_match: True`, 180/180 bytes, reference/built SHA-256
`86aeac5f453c8f123f5bba1a76f349ef6942a14c661404c243caaefbd81ea500`.

# Limitations

This proves bounded instruction-byte reproduction only. It does not establish
original source form, PsyQ object boundaries, or whole-executable link
equivalence.
