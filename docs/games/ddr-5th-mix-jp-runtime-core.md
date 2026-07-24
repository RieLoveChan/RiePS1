---
type: Reconstructed Module
title: DDR 5th Mix Runtime-Core Module
description: Reproducible game-owned module for per-frame input, state reset, mode dispatch, and shared frame-state updates.
tags: [ps1, ddr5thmix, decompilation, module, input, state-machine]
timestamp: 2026-07-19T00:00:00-04:00
---

# Boundary

`runtime-core` connects `main`'s own loop to the completed
[mode-control module](/docs/games/ddr-5th-mix-jp-mode-control.md). It contains
`main` itself, the per-frame input adapter, runtime-state reset, top-level
mode dispatcher, and both functions in the dispatcher's unconditional shared
epilogue.

| Function | Bytes | Role | Built/reference SHA-256 |
|---|---:|---|---|
| `FUN_8002112c` | 584 | Read two PsyQ PAD buffers and two auxiliary input words; calculate and snapshot held/pressed/released edges. | `ec71afe8e5431d30698f04fd7a96f5961253072e99572749f9b40ba50512c1ba` |
| `FUN_8002216c` | 156 | Clear the 0x140-byte runtime-state prefix, call two subsystem resets, and establish fixed flag bytes. | `83a471a336ab3136da9cfc59b654b8e4065339abcc288cac11b72a552358e202` |
| `FUN_80022cf8` | 524 | Dispatch the mode/submode handlers and run the shared per-frame epilogue. | `4057cd0604a3d2ef794d691ab19859e5a41507bcde9705c9eef3944d85fc5dae` |
| `FUN_80023744` | 476 | Advance three wrapping counter/direction pairs and derive state byte `+0xc1`. | `1b640a8f4f92bedb9f77b8187577a3555ac4f1d5257a43b070c4b5c80db88aa9` |
| `FUN_8009971c` | 84 | Derive state byte `+0xf4` from screen index 4 or inclusive range `0x2a..0x2c`. | `9b97a71eb74d113a9897b4374f924b4f81698830977427ba462d31f989481ce6` |
| `main` | 408 | The crt0-to-game-code boundary: one-time subsystem init, RCNT2 vsync/timer IRQ install, then the outer reset / inner per-frame loop pair. | `275cc516d5a5aca266a3d7789aadf4e22815bfc6775003b54bb9ec8fd7321303` |

Total: six functions and 2,232 selected bytes.

# Reconstruction

The existing manual reviews established the functions' semantics, but direct C
was not used as an acceptance claim for this unit. The tracked
`/src/ddr5thmix/RuntimeCore.s` preserves the observed MIPS R3000A control
flow, load/branch delay slots, repeated global-pointer loads, register choices,
and absolute jump encodings as semantic assembly instructions. External calls
remain symbol relocations defined by the build manifest; no reference byte
arrays are embedded.

The first aggregate attempt exposed two verifier constraints rather than
instruction mismatches:

1. Internal MIPS `j` instructions assembled against local section-relative
   labels produced section-relative jump indices. Expressing their documented
   runtime targets directly restored the original absolute J-format indices.
2. Assembly entries previously bypassed the linker, so external `jal`
   relocations remained zero. `Invoke-FunctionMatch.ps1` now links assembly
   entries that declare symbols and discards unrelated sections from a shared
   source object. Existing unlinked GTE and BIOS assembly paths are unchanged.

After those harness corrections, all five functions matched without changing
an instruction's semantics.

# `main` and `loop_restart_flag` (`PTR_DAT_800ac8e8+0x09`)

Added 2026-07-24. A fresh `DumpFieldXrefs.java` pass against
`PTR_DAT_800ac8e8` (62 referencing functions, up from 58) surfaces `main`
itself, because its own two nested `do`/`while` conditions read byte `9`
directly through bracket indexing (`PTR_DAT_800ac8e8[9]`) rather than the
pointer-arithmetic form (`+ 0x9)`) every prior textual search looked for.
This resolves the open question recorded in the globals and screen-flow
docs: `main` is its own same-frame consumer of `loop_restart_flag`.
`FUN_8002216c` unconditionally zeroes it (among the rest of its 0x140-byte
reset) at the top of every outer-loop pass, so the outer reset loop normally
executes exactly once per pass. `FUN_8002358c` (mode `0xff`/submode `4`, the
GPU-reset/service-state handler) is the only writer that ever sets it to `1`;
doing so makes the inner per-frame loop's condition false at the end of the
current frame, forcing an early return to the outer loop and a full
state/GPU reset before normal per-frame dispatch resumes.

`main` is reconstructed as semantic MIPS assembly for the same reason as
`FUN_80022cf8` — absolute `j`/`jal` targets, not local-label section-relative
jumps, and no attempt to express the two-level loop in C. All 408 bytes match
under GNU binutils 2.43.

# Shared layouts and globals

The [global map](/docs/games/ddr-5th-mix-jp-globals.md) now covers sixteen
fixed symbols/ranges. `DdrModeState` records the verified input-edge blocks,
counter/direction bytes, screen-range flag, and the 0x140-byte prefix cleared
by `FUN_8002216c`. That cleared prefix is not evidence that the allocation
ends at offset 0x140.

The eight 32-bit input-state values are represented by four-byte,
two-byte-aligned `DdrInputWord` fields. Modeling them as native `u32`
raised the whole partial struct's inferred alignment to four, causing GCC to
merge the two observed halfword clears at `+0x2c/+0x2e` in the previously
accepted `SetMode`. The aggregate mode-control regression exposed this.
Keeping their verified width without asserting unproven four-byte alignment
restores the original stores; compile-time size/alignment/offset assertions
and all three module verifiers pass.

# Reproduction and limits

Run:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module runtime-core
```

On 2026-07-19, GNU binutils 2.43 matched all 1,824 bytes against executable
SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
On 2026-07-24, after adding `main` (`src/ddr5thmix/RuntimeCore.s`), the same
command matched all 2,232 bytes against the same executable SHA-256.
The aggregate report remains ignored under `/build/`.

This proves six independently placed function bodies. It does not prove an
original PsyQ object boundary, inter-function layout, original source spelling,
or a whole-executable match.

# Citations

[1] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
[2] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[3] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
