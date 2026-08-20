---
type: Reconstructed Module
title: DDR 5th Mix Runtime record-header wrapper 98050
description: Exact reconstruction of FUN_80098050, which reads a 12-byte runtime record header, computes a tagged mode word, and forwards the header fields to the record-field propagator FUN_800980c4.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, record]
timestamp: 2026-08-19T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 98050

This one-function game-owned module reconstructs `FUN_80098050` at
`0x80098050`. The function occupies 116 bytes and is stored at executable file
offset `0x7e050`. Its source is
`/src/ddr5thmix/RuntimeHelper98050.s`; the build manifest registers it in the
`runtime-helper-98050` module and `.text.FUN_80098050` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 116 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`af111c12ccd8f15ff0e654064bb1c262ea59eed2c82a4995c3f174a36e53f2d4`.

# Observed semantic behavior

`FUN_80098050` is a thin record-header wrapper whose only callee is the
record-field propagator `FUN_800980c4` (documented in the symbol map and log,
2026-08-18), and whose only caller is `FUN_80097eb8`. Argument `a0` points at a
12-byte runtime record header: a mode word at `+0x0` and a count at `+0x4`.

The routine:

1. Computes a **tagged mode word**: `(*header & 0xffffff) | 0x80000000` —
   the low 24 bits of the mode word with bit 31 forced on (preserved in `s1`).
2. Forwards the header fields to the propagator:
   - `a0` = record base = `header + 8` (just past the header),
   - `a1` = `*header & 0xff000000` (the high byte of the mode word),
   - `a2` = `header[1]` (the count, held in `t0`),
   - plus the caller's two halfword values (`a1`/`a2` masked to 16 bits,
     passed via the stack) and the write mask (`a3`).
3. Returns the tagged mode word, or `0` when the low 24 bits were zero (i.e.
   `uVar2 == 0x80000000`).

The propagator's own contract — gating on original bit 26 of the mode word,
selecting one of eight observed strides from `0x8001ea48`, and writing the
selected fields at base-relative offsets `+0x0e` plus `+0x16` or `+0x1a` — is
documented in its own module; this wrapper supplies exactly the inputs that
contract describes (base, high-bit mode word, count, two halfwords, mask).

# Citations

[1] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
[2] [/config/ddr5thmix/build.json](/config/ddr5thmix/build.json)
[3] [RuntimeHelper98050.s](/src/ddr5thmix/RuntimeHelper98050.s)
