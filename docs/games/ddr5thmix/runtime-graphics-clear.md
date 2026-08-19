---
type: Reconstruction Module
title: DDR 5th Mix runtime graphics clear module
description: Exact reconstruction of the conditional display-area clearing helper.
tags: [ps1, ddr5thmix, reconstruction, byte-match, graphics]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/RuntimeGraphicsClear.s` reconstructs `FUN_800a0c04` at
`0x800a0c04`. The 172-byte helper builds and submits one display-area
rectangle, then submits a second 0x140-by-0x20 rectangle when the observed
display offset exceeds `0x140`.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_800a0c04
```

Result: `byte_match: True`, 172/172 bytes, reference/built SHA-256
`9e61db38aaee3dc94cccdf2899f0f1735234b0c79e15b584a9d9582f37da12ae`.

# Limitations

This proves bounded instruction-byte reproduction only. It does not establish
original source form, PsyQ object boundaries, or whole-executable link
equivalence.
