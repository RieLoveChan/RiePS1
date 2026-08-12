---
type: Reconstructed Module
title: DDR 5th Mix Music and Resource State Dispatcher
description: Exact reconstruction of FUN_8007a8f4, a 16-entry state-table dispatcher with resource, image, and timing-gate paths.
tags: [ps1, ddr5thmix, decompilation, module, music, resources, state-machine]
timestamp: 2026-08-12T00:00:00-04:00
---

# Boundary

`music-state` contains `FUN_8007a8f4` at `0x8007a8f4`, a 2,412-byte
game-owned dispatcher. The function increments the shared frame counter,
selects a 16-entry state record from `0x800e3b78`, and dispatches the state
value stored at record offset `0x10`. Reviewed paths cover state values 0–10;
the default path exits without assigning a semantic name to any unreviewed
state. The function also clears subsequent state slots on transitions,
initializes resource/image state through existing helpers, applies timing
gates, and returns the loop's completion flag.

The name “music/resource state” is a bounded project label derived from the
observed helper calls and global data references. It is not a claim that every
state is a song-selection state.

# Exact evidence

The lawful reference executable is `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Ghidra 12.1.2 with `DumpFunctionDetail.java 0x8007a8f4` supplied the
instruction and control-flow evidence. The semantic assembly source is
`/src/ddr5thmix/MusicState.s`; it contains mnemonics and symbolic labels, not
reference byte data.

Reproduction command:

```text
pwsh -File tools/build/Invoke-FunctionMatch.ps1 -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 -Function FUN_8007a8f4
```

Using GCC 14.2.0 and GNU binutils 2.43, the command matched 2,412/2,412
bytes. The reference and built SHA-256 are both
`670f60f9cf229288a0d5194d8a0f4a2283f443de048752a17ad75980b94646cc`.
The registered `music-state` module independently reports one function,
2,412 expected bytes, and `byte_match: True`.

# Control-flow notes

- The dispatch table is selected by a halfword state field at
  `0x800e3b78 + frame_index * 2 + 0x10`; the indirect jump table begins at
  `0x8001d78c`.
- Transition paths increment the current state, clear later offset-`0x10`
  entries, and clear offset-`0x30` entries when the 16-entry ring wraps.
- The state-4 path submits display rectangles and resource/image operations;
  the state-5 and state-6 paths gate transitions on timing and helper return
  values; states 8–10 finalize image/state work and set the completion flag.
- Absolute `j` targets are retained as absolute addresses in the source so
  GNU assembler emits the original MIPS R3000A J-format fields. Branch delay
  slots are explicit.

# Limitations

This is an exact instruction reconstruction, not a recovered original source
file. It does not resolve the semantic names of every indirect table entry or
prove the identity of helper functions whose own rows remain unverified.
