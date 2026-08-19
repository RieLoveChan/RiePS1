---
type: Reconstructed Module
title: DDR 5th Mix Game-Session Opening Module
description: Exact reconstruction of the state 0-3 callback triples for PLAY START, selector ownership, NON STOP I, and NON STOP C.
tags: [ps1, ddr5thmix, decompilation, module, gameplay-session, state-machine]
timestamp: 2026-07-19T00:00:00-04:00
---

# Boundary

`game-session-opening` contains all twelve enter/update/exit callbacks for
states 0–3 of the 15-state gameplay session. It complements the exact
[lifecycle router](/docs/games/ddr-5th-mix-jp-game-session-router.md).

| State | Screen/role | Enter | Update | Exit | Bytes |
|---:|---|---|---|---|---:|
| 0 | `PLAY START` | `FUN_80070664` | `FUN_8006ede8` | `FUN_800706dc` | 480 |
| 1 | six-state selector owner | `FUN_80070730` | `FUN_80070788` | `FUN_8006eefc` | 504 |
| 2 | `NON STOP I` | `FUN_80070260` | `FUN_80070850` | `FUN_80070958` | 452 |
| 3 | `NON STOP C` | `FUN_80070980` | `FUN_800709e0` | `FUN_80070a84` | 300 |

Total: twelve functions and 1,736 selected bytes.

# `PLAY START` update: caution-resource draw

Added 2026-08-18. `FUN_8006ede8` (state 0's `PLAY START` update, above)
conditionally calls `FUN_8004d0a0`, which loads and draws resource `caut_25`
through the resource-name-to-index/index-to-address pair
`FUN_800985c8`/`FUN_80098880` (see [globals](/docs/games/ddr-5th-mix-jp-globals.md)'s
"Resource-name table"). The call is gated on a value derived from this
callback's own elapsed-frame counter at offset `+0x74` (the same field the
existing `slti ...,0xde`/`0xdf` "permits Start/Circle to skip ahead" checks
read), so the caution draw is a timed early-transition element of the
`PLAY START` sequence, not a persistent overlay for its whole duration.

This is unrelated to the attract loop's own WARNING/"Caution" screen (see
[screen-flow](/docs/games/ddr-5th-mix-jp-screen-flow.md) state 0), which
loads its six-resource presentation through a different, numbered-ID path
(`FUN_8004c27c`) and never touches `FUN_800985c8`. `caut_25` names a
resource the game itself calls "caution", used specifically during the
gameplay-session `PLAY START` transition — plausibly a brief safety/caution
banner shown as a song is about to start, distinct from the attract loop's
disclaimer screen.

# Exact evidence

| Function | Bytes | Built/reference SHA-256 |
|---|---:|---|
| `FUN_80070664` | 120 | `98bfb741e8f75788b07aea3472c24a627ad484ac5a4c049590c4be353ddb384d` |
| `FUN_8006ede8` | 276 | `2a522cfa0587f30a4258fa814c629fadb63843ba2a640d7740170958a846a9ac` |
| `FUN_800706dc` | 84 | `fbe90684c340b6770214b01d7924198c65928087dc32ef64fe7be84bf3ae5950` |
| `FUN_80070730` | 88 | `aad7bffed348f16aef67e4fcc22f308dda1da0090434b00b650b2c837e5e2acc` |
| `FUN_80070788` | 200 | `c84f14f0490d1657f714a3d20948775c2052c772b1f674454029ebf0d6cfa12e` |
| `FUN_8006eefc` | 216 | `600ecf476c7a0d284a916b2a3e9afb600a7fe0bca9e87d228719d01a5649a814` |
| `FUN_80070260` | 148 | `12c129add5bcc124d39cb16dbc08d33b4905f00c0d91f3f197d2f59dcc258321` |
| `FUN_80070850` | 264 | `a25ab8d045f0fea99f96b0a8fbc8377acdae6e0b3a9eb5971b351937c8723c8a` |
| `FUN_80070958` | 40 | `2c1231f37e3c9a3a05054a5cd6fb1fa0036ac094becb815017aa55c9395d4341` |
| `FUN_80070980` | 96 | `b03a30037ad46ba261b57fc891d806de86b89dc02f597f8944d3c341236e27c1` |
| `FUN_800709e0` | 164 | `0f30040caa412ae24e92ffe0d0b89326ea0fbb4432a6108939a05ffa78d07197` |
| `FUN_80070a84` | 40 | `a283639a56cf19a472ed43dbd2a7cf5340a3d8201c40d3915c6bf69816570fbf` |

`/src/ddr5thmix/GameSessionOpening.s` uses semantic MIPS instructions,
symbolic external calls, explicit registers, and preserved delay slots. It
contains no reference byte blobs. The screen identities come from fixed index
writes already established in the screen-flow evidence, not from the match
alone.

# Reproduction and limits

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/validation-SLPM_868.97 `
  -Module game-session-opening
```

GCC 14.2.0/binutils 2.43 matches all 1,736 bytes against executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
This is a selected-function match, not proof of callback-table bytes, original
object layout, original source spelling, or a whole-executable match.

# Citations

[1] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[2] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
