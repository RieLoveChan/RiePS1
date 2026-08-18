---
type: Reconstruction Module
title: DDR 5th Mix runtime timing post-processor module
description: Exact reconstruction and bounded semantic interpretation of the per-player timing post-processor.
tags: [ps1, ddr5thmix, reconstruction, byte-match, timing, players]
timestamp: 2026-08-18T00:00:00-04:00
---

# Scope

`src/ddr5thmix/LibrarySignatureBatch9.s` reconstructs `FUN_800971e4` at
`0x800971e4`. The 156-byte routine derives an indexed player record from
`0x80115e70 + 20·a0`, calls `FUN_80099314` with that record address, and
post-processes the returned value together with the global bytes
`0x800efc8d` and `0x800efc95`.

# Observed semantic behavior

- The argument `a0` selects one 20-byte record; the callee receives the
  record address, not the player index.
- The return from `FUN_80099314` is shifted and sign-extended as a halfword
  before the arithmetic continues. This establishes an observed ABI shape,
  not the original source type or unit.
- The byte at `0x800efc8d` participates in a signed multiply path whose
  reciprocal-multiply constant implements division by 10.
- The byte at `0x800efc95` participates in an unsigned multiply path whose
  reciprocal-multiply constant implements division by 1000.
- The final value is returned in `v0` after the quotient corrections visible
  in the matched instruction sequence.

The safe semantic name is therefore **per-player timing post-processor**.
The provider `FUN_80099314`, the units of its result, and the meanings of the
two global bytes remain unresolved. The related initializer
`FUN_80097134` obtains a per-player timing value, but this routine's exact
relationship to that initializer is not assumed from naming alone.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_800971e4
```

Result: `byte_match: True`, 156/156 bytes, reference/built SHA-256
`0f7fd64bcf3e66a0cff51d241d27ca46c8528f16d934d6c47244b3a6c6796906`.

# Limitations

The byte match proves bounded instruction-byte reproduction only. It does not
verify `FUN_80099314`, identify the timing unit, recover original names, or
establish whole-executable link equivalence.
