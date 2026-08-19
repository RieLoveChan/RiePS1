---
type: Reconstruction Module
title: DDR 5th Mix graphics primitive builder module
description: Exact reconstruction of four game-owned GPU ordering-table primitive builders.
tags: [ps1, ddr5thmix, reconstruction, byte-match, graphics, gpu]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/GraphicsPrimitiveBuilder.s` reconstructs four bounded
functions at `0x80023c00`, `0x80023dbc`, `0x80023e9c`, and `0x80023f68`.
Together they cover 988 selected code bytes and write the observed GPU
primitive records and ordering-table links. The builder description is a
behavioral classification from the instruction-level accesses, not a claim
about the original source names.

# Verification

Using the lawful boot executable with revision SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` matched all four functions:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module graphics-primitive-builder
```

Result: `byte_match: True`, 4/4 functions and 988/988 bytes. The generated
report remains under ignored `build/` output and no executable bytes are
tracked.

# Reproduction inputs

- Manifest module: `/config/ddr5thmix/build.json` (`graphics-primitive-builder`).
- Assembly source: `/src/ddr5thmix/GraphicsPrimitiveBuilder.s`.
- Verifiers: `/tools/build/Invoke-ModuleMatch.ps1` and
  `/tools/build/Invoke-FunctionMatch.ps1`.
- Reference input: a lawful executable matching the recorded revision hash.

# Limitations

This proves bounded instruction-byte reproduction only. Original C source
form, PsyQ object boundaries, and whole-executable link equivalence remain
separate workflow gates.
