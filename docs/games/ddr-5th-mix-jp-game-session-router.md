---
type: Reconstructed Module
title: DDR 5th Mix Game-Session Router Module
description: Exact reconstruction of the outer session wrappers, 15-state child lifecycle router, and terminal callbacks.
tags: [ps1, ddr5thmix, decompilation, module, gameplay-session, state-machine]
timestamp: 2026-07-19T00:00:00-04:00
---

# Boundary

`game-session-router` is the lifecycle shell around the 15-state gameplay
session documented in the [screen-flow concept](/docs/games/ddr-5th-mix-jp-screen-flow.md).
It contains the three outer-state-2 wrappers, the child initializer/tick/cleanup
triple, and all three callbacks for terminal child state 14.

| Function | Bytes | Role | Built/reference SHA-256 |
|---|---:|---|---|
| `FUN_8004b800` | 564 | Outer update: player housekeeping, child tick, and outer destination selection. | `16030dec45a8632301e141a0a7e1bc072a038e6ee6a3d3e1bdf61e9fc472c2e3` |
| `FUN_8004bdec` | 68 | Outer enter wrapper for the child initializer. | `3b9b6bf94b16a860200af56ab6bd1fa4b4ade70c72d6a400eaaf727509f4cc96` |
| `FUN_8004be30` | 32 | Outer exit wrapper for child cleanup. | `ac8555e6c977691f0c6597531f295092734a549ffcd84b068ea6e2c389526d0f` |
| `FUN_8006fe7c` | 348 | Initialize shared session fields, select state 0, and invoke its enter callback. | `5984cfcf820f9675641af79357c3de65610f403ce12628ab7b13170babfd524b` |
| `FUN_8006ffd8` | 380 | Normalize join state, dispatch update/exit/enter, and report state 14. | `14a560a5f6591c7d9619707be32789f2b57829e73ed052c5643f4404befa1935` |
| `FUN_80070154` | 268 | Invoke the current exit callback and restore session/audio/UI state. | `8fc3a761443889ebbbc15755765c19bb9f28256ec7170d78d939b6c9582abd23` |
| `FUN_80071240` | 8 | Terminal enter no-op. | `6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1` |
| `FUN_80071248` | 8 | Terminal update returning state 14. | `c0c716dc16b1443947b5a3911a258b4e21a722160d514950c05b48e25baf0185` |
| `FUN_80071250` | 8 | Terminal exit no-op. | `6d64edf91449c1b17746c1ef18afa2eb25c70bdf1322ab3df5a2630993b7e2f1` |

Total: nine functions and 1,684 selected bytes.

# Table inventory

The executable's PS-X EXE header gives load address `0x8001a800` and header
size `0x800`. Reading 15 little-endian words from each mapped table reproduces
45 distinct callback targets:

| Role | Runtime table | States |
|---|---|---:|
| Enter | `0x800def08` | 0–14 |
| Update | `0x800def44` | 0–14 |
| Exit | `0x800def80` | 0–14 |

The reference executable SHA-256 is
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
For a runtime address `A`, the read offset is
`0x800 + A - 0x8001a800`. This direct read was used because a concurrent
overlay analysis held the shared Ghidra project lock; the lock was not removed
or bypassed. The resulting pointers agree with the previously documented
Ghidra `DumpJumpTable.java` inventory.

Only state 14's three callbacks belong to this lifecycle module. The other 42
callbacks remain tracked targets for later phase-oriented modules; they are not
implicitly claimed by the router match.

# Reconstruction

`/src/ddr5thmix/GameSessionRouter.s` expresses the observed R3000A operations,
control flow, registers, and delay slots as semantic assembly. External calls
remain linker symbols. It contains no copied byte arrays, raw `.word` function
bodies, or lawful-input slices.

The first aggregate attempt exposed two mechanical issues:

1. GNU `objdump` prints original `addu dst,src,zero` instructions as the
   `move` alias, while GNU `as` chose `or` for that alias. Writing `addu`
   explicitly restored the original function encoding.
2. `FUN_8006ffd8` has internal J-format jumps but no external direct calls.
   An empty manifest symbol map deliberately activates the existing link step,
   placing its section at the runtime address before comparison.

No semantic behavior was changed to resolve either mismatch.

# Reproduction and limits

Run:

```powershell
pwsh -File tools/build/Invoke-ModuleMatch.ps1 `
  -ExePath work/ddr5thmix-extract/validation-SLPM_868.97 `
  -Module game-session-router
```

On 2026-07-19, GCC 14.2.0/binutils 2.43 matched all nine functions and all
1,684 selected bytes. The report is generated under `/build/` and remains
ignored.

This proves independently placed function bodies, not the callback tables,
an original PsyQ object boundary, inter-function layout, or a whole-executable
match. Screen names and state meanings remain grounded in the separate static
flow evidence.

# Citations

[1] [/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
[2] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
[3] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
