---
type: Reconstruction Module
title: DDR 5th Mix runtime screen initialization module
description: Exact reconstruction of the screen-image record initializer and its sixteen-entry sentinel table setup.
tags: [ps1, ddr5thmix, reconstruction, byte-match, screen]
timestamp: 2026-08-12T00:00:00-04:00
---

# Scope

`src/ddr5thmix/RuntimeScreenInit.s` reconstructs `FUN_8009851c` at
`0x8009851c`. The 172-byte routine initializes two image-related records,
clears the 16-entry table at the referenced base, fills it with `0xffff`, and
calls the linked `LoadImage` routine.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_8009851c
```

Result: `byte_match: True`, 172/172 bytes, reference/built SHA-256
`0693fdb62727bbbb9eaebe66f0018116bc1f29f8dcd7eb95580019bf523e4dca`.

# Evidence notes

The reconstruction preserves the observed loop's branch target and delay
slot: the branch returns to the table-load instruction while its delay slot
computes the next entry offset. The `LoadImage` J-format relocation is bound
to `0x80038810` through the manifest symbol map; no reference bytes are
embedded in the source.

# Limitations

This proves bounded instruction-byte reproduction only. It does not establish
original source form, PsyQ object boundaries, or whole-executable link
equivalence.
