---
type: Reconstructed Module
title: DDR 5th Mix Index-to-record-address lookup 98880
description: Exact reconstruction of FUN_80098880, an index-to-address lookup over a 146-entry non-uniform-stride table, likely a companion to the resource-name table.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, resource]
timestamp: 2026-08-18T00:00:00-04:00
---

# DDR 5th Mix Index-to-record-address lookup 98880

This one-function game-owned module reconstructs `FUN_80098880` at
`0x80098880`, immediately following `FUN_800985c8`. The function occupies
1,804 bytes and is stored at executable file offset `0x7e880`. Its source is
`/src/ddr5thmix/RuntimeHelper98880.s`; the build manifest registers it in the
`runtime-helper-98880` module and `.text.FUN_80098880` section, produced the
same way as `FUN_800985c8` (disassembly transcription, not semantic C/asm --
see the [985c8 module concept](/docs/games/ddr-5th-mix-jp-runtime-helper-985c8.md)).

Unlike every other `.s` source in this project as of this reconstruction,
this function's manifest entry required an explicit `"symbols": {}` property
to make `Invoke-FunctionMatch.ps1` link the assembled object at its real
runtime address before extracting bytes. Without it, the object stays
unlinked at address `0`, which is harmless for PC-relative branches (`beq`,
`bne`, ...) but produces the wrong encoding for this function's several
absolute `j` instructions to a local shared-tail label, since MIPS `j`
encodes its target using the current program counter's own top four bits.
The first attempt without `"symbols": {}` reproduced the exact same
instruction sequence in every other respect but failed the byte comparison
on precisely those `j` instructions; adding the empty `"symbols": {}`
(triggering linker placement with no extra external symbols needed) matched
all 1,804 bytes on the next attempt.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,804 bytes against lawful `SLPM_868.97_1`
with SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`6abf581933494b48fecb4d42a9346a4ba45fe52333e85c7b7a8c8177c0c8b3b5`.

# Observed semantic behavior

`FUN_80098880` takes a single integer argument and returns an address.

For an in-range argument (`1`-`146`; checked as `(a0 - 1) < 146` unsigned),
it jumps through an external table of 146 code addresses at `0x8001f108`
into one of 146 near-identical inline blocks, each of which materializes one
fixed address into the return register (`v0`) via `lui`/`addiu` and jumps to
a shared one-instruction tail. Out-of-range input instead reaches that same
tail directly with the return register still at its initial value (`0`).

The 146 materialized addresses are not one flat, evenly spaced array: they
span `0x800dfd64`-`0x800e0774` with non-uniform gaps between consecutive
entries (20, 40, 60, 100, 140, 420, and 1,160 bytes are all observed),
consistent with several differently sized record groups concatenated rather
than a single struct array. This function does not read or write through
the returned address itself -- it only computes and returns it, so nothing
here establishes what the target region holds.

The entry count (146) is one less than `FUN_800985c8`'s resource-name table
(147, including its `NONE` sentinel at index 0) -- and this is now
**confirmed**, not just suggestive: reading `FUN_800985c8`'s callers finds
several chained directly as `FUN_80098880(FUN_800985c8("name_NN"))`. Full
detail, including five 16-bit fields the chained callers read from this
function's return value, is in the [globals concept](/docs/games/ddr-5th-mix-jp-globals.md)'s
"Resource-name table" section. The struct layout at `0x800dfd64`+ is still
not analyzed field-by-field beyond those five fields.

# Evidence boundaries

The byte-match proves the instruction sequence for the recorded executable
and toolchain, including the exact 146 target addresses (read directly from
the reconstructed `lui`/`addiu` pairs, not inferred). The relationship to
`FUN_800985c8`'s name table is confirmed via that function's callers (see
above); this function's own 77 direct callers have not been swept, so this
is not a claim about every use site, only the ones found by reading
`FUN_800985c8`'s callers. The full layout of the addressed records beyond
the five fields noted above remains unanalyzed.
