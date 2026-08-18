---
type: Reconstructed Module
title: DDR 5th Mix Runtime resource/state bootstrap 972a4
description: Exact reconstruction of FUN_800972a4, which resets a 32-entry runtime area, selects the initial resource pair, and initializes the active display state.
tags: [ps1, ddr5thmix, decompilation, module, runtime, helper, gameplay]
timestamp: 2026-08-13T00:00:00-04:00
---

# DDR 5th Mix Runtime Helper 972a4

This one-function game-owned module reconstructs `FUN_800972a4` at
`0x800972a4`. The function occupies 324 bytes and is stored at executable file
offset `0x7d2a4`. Its source is
`/src/ddr5thmix/RuntimeHelper972a4.s`; the build manifest registers it in the
`runtime-helper-972a4` module and `.text.FUN_800972a4` section.

`Invoke-FunctionMatch.ps1` and `Invoke-ModuleMatch.ps1`, using GCC 14.2.0 and
GNU binutils 2.43, matched all 324 bytes against lawful `SLPM_868.97_1` with
SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
The reference and built function bytes both have SHA-256
`b4141437662e747d5833f24b56cf69217680ea43bcf1f2a79ec166046eb8144f`.

# Observed semantic behavior

`FUN_800972a4` is an initialization/bootstrap routine for the runtime resource state, not a per-frame update helper.

It sets `0x800e2a60` to zero, writes that index to `PTR_DAT_800ac8e8 + 0x08`, marks the base record at `0x80116aa0` active, clears its observed state fields, and clears the halfword at `+0x08` in 32 records spaced eight bytes apart. A parallel 32-entry area beginning at `+0x104` is also cleared.

Using the reset index, it selects one pointer from the table beginning at `0x800e2ae0` and a second pointer from the table beginning at `0x800ac8f8`. It stores these as the active pair at offsets `+0x9c` and `+0xa0`, stores the second pointer's word at `+0xa4`, publishes the selected pointer and word through `0x800e2ad4`, `0x800e2ad8`, and `FUN_80097c28`, then runs the observed graphics-clear path, configures `0x800e3b40` through `FUN_8002a80c`, and requests `640` through `FUN_80097974`.

This supports the bounded semantic name **runtime resource/state bootstrap with initial active-pair selection**. It does not establish the original source name, the domain identity of either pointer table, or whether the selected pair represents a song, model, image, or another resource class.

# Evidence boundaries

The byte-match proves the instruction sequence for the recorded executable and toolchain. The interpretation above comes from fixed addresses, access widths, loop bounds, the direct caller in `RuntimeCore.s`, and the observed callees. The index is provably reset to zero before the table lookups. Table extents and the meaning of the 32 runtime records remain unresolved and are intentionally not renamed here.
