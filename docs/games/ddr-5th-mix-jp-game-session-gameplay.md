---
type: Reconstructed Module
title: DDR 5th Mix Game-Session Gameplay Module
description: Exact reconstruction of the state 4-7 callback triples for PREPARE, INTRO, DANCING, and STAGE END.
tags: [ps1, ddr5thmix, decompilation, module, gameplay-session, state-machine]
timestamp: 2026-07-23T00:00:00-04:00
---

# Boundary

`game-session-gameplay` contains all twelve enter/update/exit callbacks for
states 4–7 of the 15-state gameplay session. It complements the exact
[lifecycle router](/docs/games/ddr-5th-mix-jp-game-session-router.md) and the
state 0–3 [opening module](/docs/games/ddr-5th-mix-jp-game-session-opening.md).
Boundaries and disassembly came from `DumpFunctionDetail.java` against the
shared Ghidra 12.1.2 project's `SLPM_868.97_1` program, first confirmed by the
same-day structural inventory in
[the screen-flow document](/docs/games/ddr-5th-mix-jp-screen-flow.md#structural-inventory-prepareintrodancingstage-end-callbacks-2026-07-23).

| State | Screen/role | Enter | Update | Exit | Bytes |
|---:|---|---|---|---|---:|
| 5 | `PREPARE` | `FUN_8006efd4` | `FUN_80070ab4` | `FUN_8006f0a0` | 824 |
| 4 | `INTRO` | `FUN_8006f1fc` | `FUN_8006f380` | `FUN_80070aac` | 680 |
| 6 | `DANCING` | `FUN_80070bc4` | `FUN_8006f49c` | `FUN_8006f6cc` | 796 |
| 7 | `STAGE END` | `FUN_8006f784` | `FUN_8006f888` | `FUN_8006fa30` | 1,056 |

The module also contains `FUN_8007f598`, a shared gameplay timing wait helper
called by the state-7 update path. It takes an iteration count and an offset,
captures `VSync(1)`, posts event `1` three times, then polls `VSync(1)` until
the requested interval expires; every eighth iteration posts event `1` again.

Total: thirteen functions and 3,536 selected bytes.

# Exact evidence

| Function | Bytes | Built/reference SHA-256 |
|---|---:|---|
| `FUN_8006efd4` | 204 | `d8a28271cb8ed00c6e17e7c687579937da4f8a5c1c18744d74af6bb20cf3ded2` |
| `FUN_80070ab4` | 272 | `9f538e4f32ff34d001dbf8d5ad41869f151c249b691683d4bddaff49af85fe68` |
| `FUN_8006f0a0` | 348 | `b5250f7c9baef32bce746bb1d5c9a97fcc7ceb57072f8dad398b3284b9550d94` |
| `FUN_8006f1fc` | 388 | `597f262e63d48d82f6e9ededa74d2c543d5b8a864e431e13b144778b0660d1a0` |
| `FUN_8006f380` | 284 | `49d6e681f062d709c120d1887e4b170b0016b51f009b9ca238c7f7b728cf2e29` |
| `FUN_80070aac` | 8 | `6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1` |
| `FUN_80070bc4` | 52 | `012083c498feca3e867feb3c0571ef573538a4e08a77aebce5f687804d1dff25` |
| `FUN_8006f49c` | 560 | `fa40dc7162d757807a1cd2c13b10be47b98f0ac11f175d86842393871e63196e` |
| `FUN_8006f6cc` | 184 | `93700f0864ba6b56d3b40a577b75407bad122b40531371e12c1efb7454a23a19` |
| `FUN_8006f784` | 260 | `92fb6d207a2de6f46a9884c45b308b417bf80a817e5b17f0c206ba2775ae5486` |
| `FUN_8006f888` | 424 | `4c01782ed81a4afb7945594531b38d8e6f0a3d731cf04ffd1f24d49b7f2069d2` |
| `FUN_8006fa30` | 372 | `5b596a98d8a6a87276f38a9c8940a5951a8b6b4867fd2eab04135a92e8cec52f` |
| `FUN_8007f598` | 180 | `152f0a4179866c0b39a8a069c5c30a0ba08b9f60c2da70681416c3aa2a1d05de` |

`/src/ddr5thmix/GameSessionGameplay.s` uses semantic MIPS instructions,
symbolic external calls, explicit registers, and preserved delay slots,
following the same convention as `GameSessionOpening.s` and
`GameSessionRouter.s`. It contains no reference byte blobs. Every function
matched GCC 14.2.0/binutils 2.43 on its first reconstruction attempt; no
compiler-compatibility shim or bounded semantic-inline workaround was needed
because this module, like its siblings, is written directly as assembly
rather than compiled from C.

# Notable structural findings

Reconstructing these twelve functions confirmed several of the fixed-address
globals the same-day structural inventory left uncatalogued, purely from
matching the exact instruction sequences (not from any new analysis pass):

- `DAT_800f28f8` (`FUN_8006f49c`, `FUN_8006f888`) is the dividend for a `%3`
  (`FUN_8006f49c`) or `%6` (`FUN_8006f888`) selector, computed with the same
  unsigned reciprocal-multiplication-by-3 constant (`0xaaaaaaab`) used
  elsewhere in the reconstructed codebase. In `FUN_8006f49c` the remainder
  selects one of three fixed words at `0x8001cac0`/`0x8001cac4`/`0x8001cac8`
  (the same three-word table and `lui 0x8002`/`addiu -13632` load sequence
  already matched in `game-session-opening`'s `FUN_80070850`); the selected
  halfword becomes a resource-load argument to `FUN_80028358`.
- `DAT_80104e30` is a byte array indexed by `DAT_800f2924`, written through
  the identical `lh`/`addu`/`addu`(`+0x10000`) address-construction sequence
  already matched in `game-session-opening`'s `FUN_80070958` — this
  reconstruction reuses that exact instruction pattern twice more
  (`FUN_8006efd4` state stamp `3`, `FUN_8006f6cc` state stamp `4`).
- `DAT_80105083`/`DAT_80105086` are single-byte per-timeline flag/bitmask
  reads at `PLAYER_BASE+0x10000+0x277b`/`+0x277e`, reached through the same
  `s0+0x10000` displacement idiom as `PTR_DAT_800ac8e8+0xf1`/`+0xf8` writes
  (themselves confirmed by literal address arithmetic: `lui $a0,0x800b;
  lw $v0,-14104($a0)` resolves to exactly `0x800ac8e8`).
- `DAT_80104ed0` (`FUN_8006fa30`) is written through
  `DAT_800f290c`-relative pointer arithmetic combined with `DAT_800f2914`
  scaled by `<<16>>15` (i.e. `*2`), landing at a fixed base identical to the
  `0x800f2908+0x10000+0x25c8` computation already confirmed for
  `DAT_80104e30`'s sibling table region.

No new field *semantics* are asserted beyond what the existing globals
already documented establish; these are structural confirmations that the
same three address-construction idioms (linked-pointer struct base,
`s0+0x10000` displacement, and the reciprocal-multiply remainder) recur
across the gameplay-session, opening, and router modules.

# Reproduction and limits

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module game-session-gameplay
```

GCC 14.2.0/binutils 2.43 matches all 3,356 bytes against executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
This is a selected-function match, not proof of callback-table bytes, original
object layout, original source spelling, or a whole-executable match.

# Citations

[1] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[2] [/docs/games/ddr-5th-mix-jp-game-session-opening.md](/docs/games/ddr-5th-mix-jp-game-session-opening.md)
[3] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
