---
type: Reconstructed Module
title: DDR 5th Mix Runtime input-state transition 96978
description: Exact reconstruction of FUN_80096978, which updates one indexed 20-byte input/event record, derives a bounded transition code, and returns a table-scaled value.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-18T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 96978

This one-function game-owned module reconstructs `FUN_80096978` at
`0x80096978`. The function occupies 1,856 bytes and is stored at executable
file offset `0x7c978`. Its source is
`/src/ddr5thmix/RuntimeHelper96978.s`; the build manifest registers it in the
`runtime-helper-96978` module and `.text.FUN_80096978` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 1,856 bytes against lawful `SLPM_868.97_1`
with SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`f54f616ba9a1826d678155c352565d854f668e10178b1bcc4eec62b49063f1fe`.

# Observed semantic behavior

`FUN_80096978` is an indexed input/event state-transition routine. Its
argument selects a 20-byte record at
`0x80115e70 + argument * 20`; the function does not identify that record as
a song, chart, or visual resource.

The observed sequence is:

1. It validates the record's byte at `+0x04` through `FUN_800966f8`, then
   updates the record's state bytes at `+0x04`, `+0x06`, and `+0x08`. The
   counter at `+0x08` is incremented with an explicit 16-step threshold; on
   expiry the state returns to the observed base state.
2. It reads two four-word input snapshots from the global range beginning at
   `0x800e3c18`. The masks `0x1010`, `0x4040`, `0x8080`, and `0x2020` are
   tested as paired input conditions. These are proven bit tests on the
   snapshots; their controller/button names are not assigned here.
3. Depending on those conditions and the record's previous/current bytes, it
   advances a small event code in the record at `+0x0a`/`+0x0c`. The observed
   event codes are `1` through `5`, with separate handling for paired and
   mismatched values. The function also maintains the neighboring flags at
   `+0x06`, `+0x07`, `+0x09`, and `+0x0f`.
4. When the record is active, it copies the current event bytes into the
   record's comparison fields, resolves the transition result through the
   byte tables at `0x800dfc84`, `0x800dfc8c`, and `0x800dfc94`, and calls
   `FUN_80099314`. That callee is still only `unverified` in the symbol map.
   The returned value is multiplied by the selected table byte and reduced
   through the observed reciprocal-multiply sequence before being returned.
5. On the reset/no-event path it clears the transient bytes at `+0x06`,
   `+0x07`, `+0x08`, `+0x09`, `+0x0c`, and `+0x0d`, while preserving the
   record's stable fields.

This supports the bounded semantic name **indexed input/event state
transition with table-scaled output**. It does not yet establish whether the
indexed records represent players, lanes, or another game-owned entity, and
the returned value's domain remains unresolved because `FUN_80099314` is not
byte-verified.

# Evidence boundaries

The 1,856-byte match proves the instruction sequence for the recorded
executable and toolchain. The interpretation above is based on the fixed
20-byte stride, direct input snapshot range, explicit masks, state-byte
updates, lookup-table addresses, and the call to `FUN_80099314`. It is a
stronger structural interpretation than the previous generic helper label,
but not a claim about original source names or controller semantics.
