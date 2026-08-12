---
type: Reconstruction Module
title: DDR 5th Mix runtime player initialization module
description: Exact reconstruction of the two player timing/control record initializer.
tags: [ps1, ddr5thmix, reconstruction, byte-match, players]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/RuntimePlayerInit.s` reconstructs `FUN_80097134` at
`0x80097134`. The 176-byte routine initializes two 20-byte player records,
sets their control flags, obtains the per-player timing value, and stores the
scaled result.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_80097134
```

Result: `byte_match: True`, 176/176 bytes, reference/built SHA-256
`1a066ec1cc0c3df5b2054335e03097c765a7fb45979e7a699d0295096cb81b45`.

# Limitations

This proves bounded instruction-byte reproduction only. It does not establish
original source form, PsyQ object boundaries, or whole-executable link
equivalence.
