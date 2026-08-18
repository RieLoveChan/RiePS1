---
type: Reconstruction Module
title: DDR 5th Mix runtime record-field propagation module
description: Exact reconstruction and bounded semantic interpretation of the mode-gated strided record-field propagator.
tags: [ps1, ddr5thmix, reconstruction, byte-match, runtime, records]
timestamp: 2026-08-18T00:00:00-04:00
---

# Scope

`src/ddr5thmix/LibrarySignatureBatch9.s` reconstructs `FUN_800980c4` at
`0x800980c4`. The 264-byte routine is called by `FUN_80098050` and conditionally
propagates two supplied halfwords through a strided record run.

# Observed semantic behavior

- The second argument is shifted right arithmetically by 26. If its resulting
  bit zero is clear, the routine returns without modifying the destination.
  The shifted value's low three bits select one of eight stride words at
  `0x8001ea48`; the observed table values are `0x14, 0x20, 0x18, 0x28,
  0x1c, 0x28, 0x24, 0x34`.
- The third argument is doubled and used as the loop bound. A non-positive
  doubled count returns without writes. The fourth argument is one supplied
  halfword, the fifth argument is the other, and the sixth argument's bits
  `0` and `1` independently enable their writes.
- If shifted mode bit `2` is clear, each iteration starts at the incoming base
  plus `0x0e`, writes the fourth argument at relative offset `0x0c` when mask
  bit `0` is set, and writes the fifth argument at relative offset `0` when
  mask bit `1` is set. The pointer then advances by the selected stride.
- If shifted mode bit `2` is set, the same loop writes the fourth argument at
  relative offset `0x08` instead; the fifth argument remains at relative
  offset `0`. The loop still advances by the selected stride.

The safe semantic name is therefore **mode-gated strided record-field
propagator**. The record type, the original mode names, the meaning of the
two halfwords, and the units of the stride table remain unresolved.

# Caller contract

The only direct caller identified by Ghidra is `FUN_80098050` at call site
`0x8009809c`. That wrapper derives the second argument from the high byte of
the source record's first word, passes its second word as the count, and
forwards the caller's two halfwords and mask. This establishes the data flow
but does not establish an original structure name.

# Verification

Against the lawful executable with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, GCC
14.2.0/binutils 2.43 targeting `mipsel-none-elf` produced:

```powershell
pwsh -File tools/build/Invoke-FunctionMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Function FUN_800980c4
```

Result: `byte_match: True`, 264/264 bytes at file offset `0x7e0c4`,
reference/built SHA-256
`6b9abb2bcbb19642fa6c61a403b8ce4008c16d1516ed60b4b4dd180900221211`.

# Limitations

This proves bounded instruction-byte reproduction and the observed static
contract only. It does not identify the original record layout, field names,
mode names, or whole-executable link equivalence.
