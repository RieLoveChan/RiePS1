---
type: Reconstructed Module
title: DDR 5th Mix Runtime event eligibility predicate 966f8
description: Exact reconstruction of FUN_800966f8, which selects input snapshots and tests event-specific masks for an indexed entity.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-18T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 966f8

This one-function game-owned module reconstructs `FUN_800966f8` at
`0x800966f8`. The function occupies 640 bytes and is stored at executable file
offset `0x7c6f8`. Its source is
`/src/ddr5thmix/RuntimeHelper966f8.s`; the build manifest registers it in the
`runtime-helper-966f8` module and `.text.FUN_800966f8` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 640 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`c5b3f7b555239f518b7b0ce23bf3c1a955a1f293fff47a93148a7aeb8ff0fdcb`.

# Observed semantic behavior

`FUN_800966f8` is a boolean event-eligibility predicate used by
`FUN_80096978`. Argument `a0` is an event code and `a1` selects an indexed
entity. The function returns `1` when the corresponding input condition is
present and `0` otherwise; codes outside `2`–`5` return `0`.

The predicate first reads the entity status byte at offset `+0x92` in the
large indexed record family rooted at `0x800f2908` (stride `0x9284`). For
each supported event code it chooses between a shared input snapshot and an
indexed snapshot, then tests the following observed masks:

| Event code | Shared masks | Indexed masks |
|---|---|---|
| `2` | `0x1010` | `0x10` or `0x1000` |
| `3` | `0x4040` | `0x40` or `0x4000` |
| `4` | `0x8080` | `0x80` or `0x8000` |
| `5` | `0x2020` | `0x20` or `0x2000` |

The shared words are read from the input snapshot range beginning at
`0x800e3c18`; the indexed path uses the corresponding `16`-byte-spaced
input record. The status byte determines whether the shared or indexed path
is used, while the final result remains a pure `0`/`1` predicate.

This supports the bounded semantic name **event eligibility predicate over
shared/indexed input snapshots**. It does not identify the controller button
names represented by the masks, and it does not prove the original names or
allocation model of the large indexed records.

# Evidence boundaries

The 640-byte match proves the instruction sequence for the recorded
executable and toolchain. The interpretation above comes from the explicit
event-code branches, status-byte offset, fixed strides, input addresses, and
mask constants. It is the predicate boundary consumed by `FUN_80096978`, not
a claim that the event codes are original source-level enum names.
