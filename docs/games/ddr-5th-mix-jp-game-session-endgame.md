---
type: Reconstructed Module
title: DDR 5th Mix Game-Session Endgame Module
description: Exact reconstruction of the state 8-13 callback triples for RESULT, GAME_OVER, ENDING, PRE_END, LINK END, and NAME ENTRY, closing the 15-state gameplay session.
tags: [ps1, ddr5thmix, decompilation, module, gameplay-session, state-machine]
timestamp: 2026-07-23T00:00:00-04:00
---

# Boundary

`game-session-endgame` contains all eighteen enter/update/exit callbacks for
states 8-13 of the 15-state gameplay session. It complements the exact
[lifecycle router](/docs/games/ddr-5th-mix-jp-game-session-router.md) (states
14 and the outer wrappers), the state 0-3
[opening module](/docs/games/ddr-5th-mix-jp-game-session-opening.md), and the
state 4-7 [gameplay module](/docs/games/ddr-5th-mix-jp-game-session-gameplay.md).
Together these four modules complete the entire 15-state child graph (states
0-14), matching all 45 enter/update/exit callback-table entries the router's
table inventory reproduced.

Boundaries and disassembly came from `DumpFunctionDetail.java` against the
shared Ghidra 12.1.2 project's `SLPM_868.97_1` program, reconfirming (with no
drift) the same-day static-review boundaries already recorded in
[the screen-flow document](/docs/games/ddr-5th-mix-jp-screen-flow.md#result-and-end-of-session-branches)
back on 2026-07-15.

| State | Screen/role | Enter | Update | Exit | Bytes |
|---:|---|---|---|---|---:|
| 8 | `RESULT` | `FUN_80070bf8` | `FUN_80070c70` | `FUN_80070d04` | 324 |
| 9 | `GAME_OVER` | `FUN_80070d3c` | `FUN_8006fba4` | `FUN_80070d6c` | 448 |
| 10 | `ENDING` | `FUN_80070d9c` | `FUN_80070e2c` | `FUN_80070ebc` | 360 |
| 11 | `PRE_END` | `FUN_80070f04` | `FUN_80070f54` | `FUN_80071004` | 296 |
| 12 | `LINK END` | `FUN_8007102c` | `FUN_80071084` | `FUN_800710f8` | 236 |
| 13 | `NAME ENTRY` | `FUN_80071118` | `FUN_80071168` | `FUN_80071214` | 296 |

Total: eighteen functions and 1,960 selected bytes.

Destinations (as evidenced by prior static review, unchanged by this
reconstruction): RESULT returns selector-owner state 1 or advances to PRE_END
(11); GAME_OVER always advances to terminal state 14; ENDING remains in state
10 or advances to terminal state 14; PRE_END returns state 1 or advances to
LINK END (12); LINK END branches to GAME_OVER (9), the ENDING wait state
(10), or NAME ENTRY (13); NAME ENTRY always advances to ENDING (10).

# Exact evidence

| Function | Bytes | Built/reference SHA-256 |
|---|---:|---|
| `FUN_80070bf8` | 120 | `3b640586ac82467904687aa7df1407e9f29e39a9cfb2c5823aeeaa249a8b1432` |
| `FUN_80070c70` | 148 | `106848467c7098c6db3c689843022c260957d332753c56e34270d2a347b36fe9` |
| `FUN_80070d04` | 56 | `4f35676915ee9b5a1304afa092df286762798fa5d831f40f96db37f843e0787a` |
| `FUN_80070d3c` | 48 | `fc4fb88cbe7086459b109aa1d0ebcaf90d2f3e760b4f37c88fb70e4666fa8cab` |
| `FUN_8006fba4` | 352 | `273c1ededaaced0746aef74becd50c96230781b4b3cd4bac5087cefa01d1e598` |
| `FUN_80070d6c` | 48 | `4b4c5985921c479bef4e46de6093a322df388d79318de932cbd5586269dac26c` |
| `FUN_80070d9c` | 144 | `825ba72ecbc852bb3e54210f493079d871c7152847c4f92dd8e5636727e44825` |
| `FUN_80070e2c` | 144 | `199f81d1a6313e41314ef5d2bf5d1f734d92ac2e27dd34ba96df08a623a9e6a6` |
| `FUN_80070ebc` | 72 | `2aa29b989209023689ab362cd4aa192f29fa64b1eb55a1ccde7b3a0b6305ca56` |
| `FUN_80070f04` | 80 | `3e929df2cbfcc7aec12c75c930944a1ef3d5a5c71a11b5a37bccb3508faed958` |
| `FUN_80070f54` | 176 | `d4b314dd3c10671cdc37e69ecda8192a55a6493d8d6012611ae37c60afb052a8` |
| `FUN_80071004` | 40 | `0004e40e9b19dce28e39de1a1e3b3d52e1a1e717c609d6b9c2cd7245fe78d073` |
| `FUN_8007102c` | 88 | `0d47208d4583af8dc66eae57c752261867738c7b0387d130cb4b5b0b0cea6e76` |
| `FUN_80071084` | 116 | `43c97ea6332284f457bd4f5c452e64259679d3c2e61e9fb1bb8d914ead6e451c` |
| `FUN_800710f8` | 32 | `0070a16e33bd2e8ffc6ff986dd1bd03a2a9a0897613a526891d2d16987aef3b7` |
| `FUN_80071118` | 80 | `8a3d567b1f0d95957a71fb3830a919531b7eb789c939fd711a9c7300b0135846` |
| `FUN_80071168` | 172 | `dcfb9db2257042ab1d691f7db93d93802369f1b6adde17412634438a319539db` |
| `FUN_80071214` | 44 | `de285634ab48fe9522c17bed52e84df7187ad4edd8e6d61587a39e45c844c989` |

`/src/ddr5thmix/GameSessionEndgame.s` uses semantic MIPS instructions,
symbolic external calls, explicit registers, and preserved delay slots,
following the same convention as `GameSessionOpening.s`,
`GameSessionGameplay.s`, and `GameSessionRouter.s`. It contains no reference
byte blobs. Every function matched GCC 14.2.0/binutils 2.43 on its first
reconstruction attempt; no compiler-compatibility shim or bounded
semantic-inline workaround was needed because this module, like its
siblings, is written directly as assembly rather than compiled from C.

# Notable structural findings

Reconstructing these eighteen functions confirmed several already-suspected
structural patterns purely from matching the exact instruction sequences (not
from any new analysis pass):

- Every enter callback in this module (all six) clears the shared frame
  counter `DAT_800f28fc` and writes its state's fixed screen index into
  `DAT_800f2908`, the same pair of writes already matched in
  `game-session-opening` and `game-session-gameplay`'s enter callbacks. This
  is now confirmed across all fifteen child states' enter paths.
- Five of the six enter callbacks (`FUN_80070bf8`, `FUN_80070d9c`,
  `FUN_8007102c`, `FUN_80071118`, and implicitly `FUN_80070f04`/
  `FUN_80070d3c` through the shared bit pattern) also clear-then-set the same
  bit (`& 0xffffff0f | 0x20`) of a fixed word at `0x80116c28`, reached
  through direct `lui $reg,0x8011; addiu $reg,$reg,0x6aa0` address
  arithmetic (0x80116aa0+0x188) rather than the `PTR_DAT_800ac8e8`-relative
  pointer idiom seen elsewhere. This is a shared display/transition-flags
  word distinct from the two already-documented linked-pointer structures.
- `FUN_80070d04` (RESULT exit) and `FUN_80070ebc` (ENDING exit, which also
  calls the already-matched termination-latch setter `FUN_8002313c`) confirm
  `DAT_80111ea4` and `DAT_80111ea8` are simple single-word per-subsystem
  readiness/mode flags (RESULT and ENDING each own one), set by the
  corresponding enter callback and read by the matching update/exit pair; no
  wider structure or additional consumer was found in this module.
- `FUN_8006fba4` (GAME_OVER update) is this module's only function with
  nontrivial arithmetic: two `mult`/`mfhi`/`sra` reciprocal-division
  sequences by 60 (`0x3c`) and 30 (`0x1e`) compute a percentage-style fade
  value from `DAT_800f28fc`, selected by `DAT_800f291f`, matching the timed
  fade already described by prior static review without requiring any new
  global.
- `FUN_80071084` (LINK END update) and `FUN_80071168` (NAME ENTRY update)
  both reuse the `0x800f2888`-based alternate addressing of `DAT_800f28fc`
  first seen structurally in prior review (`addiu $reg,$reg,0x2888` then a
  `0x74` offset lands on the same address as the direct `0x28fc` offset from
  `0x800f0000`); this reconstruction confirms it is a genuine alternate
  compiler-chosen base, not a distinct field.

No new field *semantics* are asserted beyond what the existing screen-flow
review and global map already establish; these are structural confirmations
that the same address-construction idioms recur across the opening,
gameplay, and endgame modules.

# Reproduction and limits

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/exe/SLPM_868.97_1 `
  -Module game-session-endgame
```

GCC 14.2.0/binutils 2.43 matches all 1,960 bytes against executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
This is a selected-function match, not proof of callback-table bytes, original
object layout, original source spelling, or a whole-executable match.

With this module complete, all four gameplay-session modules together match
45 functions (all 15 states' enter/update/exit triples) and 8,736 selected
bytes: `game-session-opening` (12/1,736), `game-session-gameplay`
(12/3,356), `game-session-endgame` (18/1,960), and the terminal-state-14
callbacks inside `game-session-router` (3/24, part of that module's
9/1,684). This closes the entire 15-state gameplay-session child graph;
no gameplay-session callback remains unreconstructed.

# Citations

[1] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[2] [/docs/games/ddr-5th-mix-jp-game-session-router.md](/docs/games/ddr-5th-mix-jp-game-session-router.md)
[3] [/docs/games/ddr-5th-mix-jp-game-session-gameplay.md](/docs/games/ddr-5th-mix-jp-game-session-gameplay.md)
[4] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
