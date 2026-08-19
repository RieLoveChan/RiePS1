---
type: Reconstructed Module
title: DDR 5th Mix Runtime graphics/resource initializer 973e8
description: Exact reconstruction of FUN_800973e8, which synchronizes resource records, selects the graphics mode, initializes display descriptors, and republishes the active resource pair.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, graphics]
timestamp: 2026-08-18T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 973e8

This one-function game-owned module reconstructs `FUN_800973e8` at
`0x800973e8`. The function occupies 1,420 bytes and is stored at executable
file offset `0x7d3e8`. Its source is
`/src/ddr5thmix/RuntimeHelper973e8.s`; the build manifest registers it in the
`runtime-helper-973e8` module and `.text.FUN_800973e8` section.

The source preserves the complete recovered instruction words, including the
runtime resource-table loop, image upload calls, display setup, active-buffer
selection, and final state publication. The opcode-faithful representation is
used because semantic naming of several global records and call targets remains
conservative; it does not claim that the original source used `.word` directives.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,420 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`94120382d17273977584411701e8910d94b6468e1a8c523c8a414aff8c12a38d`.

# Observed semantic behavior

`FUN_800973e8` is a startup/reconfiguration coordinator joining the runtime
resource state prepared by `FUN_800972a4` to the PlayStation graphics setup.
Its bounded sequence is:

1. It inspects the control bytes at `0x80116c25` and `0x80116c26`, invoking
   the resource setup paths for the fixed record at `0x800e3b40` when the
   corresponding stage is not ready.
2. It walks the 32 eight-byte records rooted at `0x80116aa0`. For entries
   whose observed halfword fields are eligible, it combines the record state
   with the resource table at `0x800e2ae8`, updates the destination word at
   offset `+0x3fc`, and conditionally calls `LoadImage` (`0x80038810`). This
   is a resource-record synchronization loop; the resource class is not
   identified by the loop alone.
3. It selects the graphics configuration from the low nibble of the control
   word at `0x80116c28`. One branch initializes `GsInitGraph2` with
   `320x240`, depth `4`, and the observed display parameters; the other uses
   `640x480`, depth `4`. Both branches configure the same display-state
   record at `0x800bc8e8`, clear/synchronize the image state, and establish
   the ordering-table/display-buffer state.
4. It initializes two fixed display descriptors beginning at `0x800e3bfc`,
   swaps the display buffer, applies the observed display offset, and clears
   the ordering table through the imported graphics routines. The descriptor
   fields encode the observed dimensions and depth, but their original
   structure name is not established.
5. It tests the active runtime record, updates the shared active-buffer and
   display fields, and repeats the index-zero active-pair publication pattern
   from `FUN_800972a4`: the selected pointers are written to the runtime
   record at `+0x9c`/`+0xa0`, the second pointer's word to `+0xa4`, and the
   shared pointer slots at `0x800e2ad4`/`0x800e2ae8`.

This supports the bounded semantic name **runtime graphics/resource
initializer with display-mode selection and active-pair publication**. It
does not prove that the 32 records are songs, models, or images, nor that the
two graphics branches correspond to named game screens. Those claims require
call-site or runtime evidence beyond this function.

# Evidence boundaries

The 1,420-byte match proves the instruction sequence for the recorded
executable and toolchain. The interpretation above is based on the direct
caller in `RuntimeCore.s`, fixed addresses, loop bounds, imported graphics
call targets, and the observed field reads/writes. The table extents,
resource identity, and original names of the display descriptors remain
unresolved.
