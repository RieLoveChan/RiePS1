---
type: Reconstructed Module
title: DDR 5th Mix Resource-name-to-index lookup 985c8
description: Exact reconstruction of FUN_800985c8, a wildcard-tolerant resource-name-to-index lookup over a 147-entry pointer table of real original resource names.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, resource]
timestamp: 2026-08-18T00:00:00-04:00
---

# DDR 5th Mix Resource-name-to-index lookup 985c8

This one-function game-owned module reconstructs `FUN_800985c8` at
`0x800985c8`. The function occupies 696 bytes and is stored at executable
file offset `0x7e5c8`. Its source is `/src/ddr5thmix/RuntimeHelper985c8.s`;
the build manifest registers it in the `runtime-helper-985c8` module and
`.text.FUN_800985c8` section. Unlike most recent batches, this source was
produced by disassembling the reference bytes with
`mipsel-none-elf-objdump -M no-aliases -EL` and mechanically transcribing the
result (a small local `dis2asm.py` helper, not tracked, automated the
per-instruction label/`$`-register formatting already used throughout this
project's `.s` sources) rather than by writing semantic C or hand assembly.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 696 bytes on the first attempt against lawful
`SLPM_868.97_1` with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. The
reference and built function bytes both have SHA-256
`e9c24b0f0ce61ec28a27ea42857f6ed976e34e1c91bfb0ec1df46d6fe0cf9143`.

# Observed semantic behavior

`FUN_800985c8` converts an input name (`char *`) to its zero-based index in a
fixed 147-entry resource-name table.

It copies up to 8 input bytes into a local buffer, uppercasing any lowercase
ASCII letter and counting how many `?` wildcard characters it sees, then
null-pads the remainder to 8 bytes. It linearly scans the pointer table at
`PTR_DAT_800e0804` (147 entries, each pointing to an 8-byte name), comparing
byte-by-byte with `?` in the input treated as a wildcard that matches any
table byte, and returns the zero-based index of the first full match.

If no match is found, it retries up to twice more: first appending a forced
`_16` suffix to the name (overwriting its last two significant characters),
then a forced `_25` suffix, both common resolution/bit-depth markers that
recur throughout the table (see the [globals concept](/docs/games/ddr5thmix/globals.md)'s
"Resource-name table" section for the full dumped table and what these
markers likely mean). If none of the three scans matches and the input
contained no `?`, it calls `printf("unknow name (%s)\n")` -- this exact
typo (`unknow`, not `unknown`) is in the executable, and the `printf` call is
missing its second varargs argument even though the format string expects
one -- and returns `0` rather than `-1`.

This supports the bounded semantic name **resource-name-to-index lookup**.
The full name table it scans is itself documented in
[globals](/docs/games/ddr5thmix/globals.md), dumped with the new
`tools/ghidra/scripts/DumpPointerStringTable.java`, and contains real
original PsyQ-era resource names (not tool-assigned labels).

All ten direct call sites (`DumpFunctionCallers.java 0x800985c8`) were read
2026-08-18. Two names attach to already-established screen identities with a
caveat each: `caut_25` is drawn during the gameplay session's `PLAY START`
transition (`FUN_8006ede8`), not the attract loop's separately-confirmed
WARNING/"Caution" screen -- see
[game-session-opening](/docs/games/ddr5thmix/game-session-opening.md).
`hlink_25` is drawn by the attract loop's state-1 (a second `RANKING`
screen index write, `FUN_80054114`), but the name itself more literally
matches the game's own debug string `LETS LINK` than `RANKING`, which is
recorded as an open question in
[screen-flow](/docs/games/ddr5thmix/screen-flow.md) rather than
resolved. `title_25`/`hbota_25` (TITLE/PUSH START) were already documented
independently before this pass. `hbota_25` also turned out to be a shared
digit/glyph sprite sheet used by an on-screen counter renderer
(`FUN_80085254`/`FUN_80085ff8`), not itself a screen -- so its presence in
the name table doesn't mean every table entry is a screen background;
several are UI/font assets (see the character-set groups in
[globals](/docs/games/ddr5thmix/globals.md)). `arrow_16` is drawn by a
music-select-adjacent cursor/comparison routine (`FUN_80093f20`, which reads
the documented `DAT_800f2908` screen-index global directly) but was not
traced further here.

# Evidence boundaries

The byte-match proves the instruction sequence for the recorded executable
and toolchain. The name-table contents come from a direct memory dump of
initialized data in the same executable, not from inference. The malformed
`printf` call, the `unknow`/`unknown` typo, and the `_16`/`_25` fallback
suffixes are all read directly from the reconstructed instruction sequence.
The caller-based attributions above cover this function's ten direct call
sites, not the full transitive reachability of every one of the 147 table
entries; entries not reached from a read caller are not claimed to be
screens, textures, or any other specific asset type.
