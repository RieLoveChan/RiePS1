---
type: Screen Flow
title: Dance Dance Revolution 5th Mix (Japan) — Screen/Mode Flow
description: Maps the game's mode dispatcher (FUN_80022cf8) to hypothesized and confirmed screen identities.
tags: [ps1, ddr5thmix, screen-flow, reverse-engineering]
timestamp: 2026-07-14T18:00:00-04:00
---

Schema: [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).

# Dispatcher

`FUN_80022cf8` (`0x80022cf8`), called once per iteration of `main`'s
per-frame loop. Reads a 16-bit "mode" field at `PTR_DAT_800ac8e8+0x28`;
`mode == 2` and the unmatched-mode default both additionally read a 16-bit
"submode" field at `PTR_DAT_800ac8e8+0x2a`. Full structural review:
`/docs/games/ddr-5th-mix-jp-symbol-map.md`, "Manual review: `FUN_80022cf8`".

# Mode-transition primitive

**`FUN_80023210`** (`0x80023210`) is the *only* function, among the 58
that reference `PTR_DAT_800ac8e8`, that ever writes the mode field
(`+0x28`) — confirmed 2026-07-14 via
`tools/ghidra/scripts/DumpFieldXrefs.java`. It's a `SetMode(newMode)`
primitive: writes its argument to `+0x28`, and zeroes `submode` (`+0x2a`)
plus two further, previously-unseen 16-bit fields (`+0x2c`, `+0x2e`). Full
review: symbol map, "Manual review: `FUN_80023210` is the game's `SetMode`
primitive". Every existing call site to it in the table below is therefore
a **confirmed transition**, not just a call-site observation:

| From | Condition | To | Caller |
|---|---|---|---|
| *(any mode)* | `PTR_DAT_800ac8ec[7] != 0` | `0x80` | `FUN_80022cf8`'s shared epilogue |
| `0x20` | bit `0x40` of `+0x54` set | `0x10` | `FUN_800219b8` |
| `0x32` | bit `0x40` of `+0x54` set | `0x10` | `FUN_80021a30` |
| `0x00`/submode `0x02` | countdown (`+0x22`) expires, 4 flags clear | `0x10` | `FUN_80022f04` |
| `0x04`/submode `0x00` | `PTR_DAT_800ac8ec[6] != 0` | `2` | `FUN_8002340c` |
| `0x04`/submode `0x02` | `FUN_800a0ce0() > 0` | `2` | `FUN_80023474` |

No confirmed transition currently lands on anything other than `0x10`,
`2`, or `0x80` — none of the modes reviewed so far transition to `0x00`,
`0x04`, `0x20`, `0x32`, or `0xff` themselves (consistent with those being
either entry points reached some other way, or terminal/rarely-revisited
states).

# Fill-in instructions

Add your hypothesis in **Proposed screen**, set **`confidence`** to
`suspected`, and explain your reasoning (what about DDR/StepMania's typical
flow suggests this) in **Notes** — per
[/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md).
Leave `Evidence` blank; that gets filled in once someone (human or agent)
reads the handler's own code and confirms or refutes the guess. Don't
worry about being wrong — a rejected guess with its reasoning recorded is
still useful; it rules something out.

# Known screen sequence (domain knowledge)

The repository owner is a former StepMania Team developer and, from that
background plus general BEMANI-genre convention, describes the expected
boot-to-attract sequence for a game like this (confidence: `suspected` for
all of it — genre/franchise knowledge, not yet matched to specific mode
values below):

1. **PS BIOS logo** — not game code; happens before `main` is ever reached.
2. **Memory Card Auto Load** — checks whether a memory card is inserted; if
   it holds this game's system data, loads it automatically; if a card is
   inserted but has no system data, prompts the user to create it.
3. **Caution** — a safety warning screen (rough movement on the Dance Pad
   can cause injury), standard for DDR/BEMANI cabinets.
4. **Attract Loop** — standard across BEMANI titles: **Company** (splash/
   logo images) → **How To Play** → **Gameplay Demonstration** (always the
   *same* song on the console's first boot; varies on later loop
   iterations) → **Ranking** → back to **Company**.

**One concrete pairing already has structural support**: `FUN_8002216c`
(reviewed in the symbol map) unconditionally zeroes
`PTR_DAT_800ac8e8+0x28` — the mode field itself — as part of the state
reset `main` calls once before its per-frame loop starts. That makes
`mode == 0x00` the value the dispatcher is guaranteed to see on the very
first frame after boot, which lines up with **Memory Card Auto Load** being
first in the sequence above. This is still `suspected`, not `manual`: it's
consistent with mode `0x00` running first, not proof of what mode `0x00`
*represents* — that requires reading `FUN_80023048`'s three submode
targets (`FUN_800235f8`, `FUN_80023690`, `FUN_80022f04`, all still
unreviewed) for card-I/O calls or related evidence.

Pairing the remaining five screens (**Caution**, **Company**, **How To
Play**, **Gameplay Demonstration**, **Ranking**) to specific mode/submode
values is still mostly open, but the mode-transition graph is no longer a
total blank: see "Mode-transition primitive" above, which resolves what was
this section's suggested next step (enumerating every write site of
`PTR_DAT_800ac8e8+0x28`). One new hypothesis falls directly out of that
graph: **mode `0x10` is reached by three independent transitions**
(from `0x00`, `0x20`, and `0x32`) *and* is also what the dispatcher's
unmatched-mode default falls back to — a screen that's both a common
landing state and the fallback is a structural match for **Company**,
the attract loop's anchor screen that the loop returns to. Recorded below
at `confidence: suspected` — still a genre-informed guess, now backed by a
stronger structural coincidence than before, not proof. The remaining
screens (Caution, How To Play, Gameplay Demonstration, Ranking) still have
no proposed pairing; reading `FUN_800232cc`/`FUN_80022b30` (mode `0x10`'s
own two submode handlers, not yet reviewed) for string/asset references
would be the natural next step to confirm or refute the Company guess.

# Mode table

| Mode | Submode | Handler(s) | Structural facts | Proposed screen | `confidence` | Evidence | Notes |
|---|---|---|---|---|---|---|---|
| `0x00` | `0x00` | `FUN_800235f8` | **Reviewed 2026-07-14**: zeroes 8 byte flags (`PTR_DAT_800ac8ec+0x9c..0x9f`, `+0xac..0xaf`), zeroes `PTR_DAT_800ac8e8+0x17`, sets a 16-bit countdown at `+0x22` to `2`, calls `FUN_80023230(1)`. Reads as the "init" step of a 3-step countdown state machine spanning all three submodes of this mode. | Memory Card Auto Load | `suspected` | | Mode `0x00` is guaranteed to be the first mode value the dispatcher ever sees, since `FUN_8002216c`'s boot-time state reset zeroes the mode field itself (see "Known screen sequence" above) — matches this screen being first in the boot sequence. Submode `0x00` reads as an init/reset step generically; nothing card-I/O-specific observed yet — `FUN_80023230` (its one callee) unread. |
| `0x00` | `0x01` | `FUN_80023690` | **Reviewed 2026-07-14**: resets the same `+0x22` countdown to `4`, then calls the widely-shared `FUN_800231b0` "commit/present" routine. Arms the countdown submode `0x02` decrements. | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. Possible sub-step: "load system data" or "prompt to create data" per the user's description — not yet distinguished; nothing in this body is card-specific either. |
| `0x00` | `0x02` | `FUN_80022f04` | **Reviewed 2026-07-14**: decrements the `+0x22` countdown every call; when it underflows to `-1` and the 4 flags submode `0x00` zeroed are still zero, writes `PTR_DAT_800ac8e8+0x17 = 0x80`, then resets `+0x22` to `0x10` and calls `FUN_80023210(0x10)` — a **confirmed transition to mode `0x10`** (see "Mode-transition primitive" above). | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. **Correction 2026-07-14**: an earlier version of this note treated the `+0x17 = 0x80` write as a candidate queued-next-mode, hypothesizing a transition to mode `0x80`. `FUN_80023210` is now confirmed as the only function that writes the real mode field, and this handler calls it with `0x10`, not `0x80` — so the actual transition target is `0x10`, confirmed, not `0x80`. `+0x17`'s purpose is still unexplained. Superseded, not deleted. |
| `0x02` | `0x00` | `FUN_8009f820(0x280, 0x1e0)` then `FUN_800231b0` (32 B) | Args `0x280`/`0x1e0` = 640/480 — screen-dimension-shaped; likely a full-screen clear, then a second call. | | `unverified` | | |
| `0x02` | `0x01` | `FUN_8009f390` (100 B), conditionally `FUN_800231b0` (32 B) if result `> 0` | `FUN_800231b0` is shared with submode `0x00` above — possibly a common "commit/present" step. | | `unverified` | | |
| `0x02` | `0x02` | `FUN_80049dec` (280 B) | Single call, no args observed. | | `unverified` | | |
| `0x04` | `0x00` | `FUN_8002340c` | **Reviewed 2026-07-14** (corrects "single call, no args observed"): mode `0x04`'s handler (`FUN_800230cc`, 112 B) also dispatches on `+0x2a`. This branch, if global `DAT_800ac88c == 0`, checks byte flag `PTR_DAT_800ac8ec[6]`: zero → `FUN_800a0cb0()` + `FUN_80023230(2)`; nonzero → `FUN_80049d3c()` + `FUN_80023210(2)` — a **confirmed transition to mode `2`**. `PTR_DAT_800ac8ec[6]` is set by submode `0x02` below — the two submodes coordinate across calls. | | `unverified` | | |
| `0x04` | `0x02` | `FUN_80023474` | Same `FUN_800230cc` dispatcher as above; submode `0x01` calls neither branch. **Reviewed 2026-07-14**: if `FUN_800a0ce0() > 0`, sets `PTR_DAT_800ac8ec[6] = 1` (read by submode `0x00` above), then calls `FUN_8002a7a4()`, `FUN_8009b0a8()`, `FUN_800236cc()`, `FUN_80049d3c()`, `FUN_80023210(2)` — also a **confirmed transition to mode `2`**. | | `unverified` | | |
| `0x04` | *(any)* | *(shared tail)* | Every call to `FUN_800230cc`, regardless of submode, also copies `PTR_DAT_800ac8ec[0xbb] = PTR_DAT_800ac8ec[0x52]` unconditionally. | | `unverified` | | |
| `0x10` | `0x00` (default-branch) | `FUN_800232cc` (168 B) | Mode `0x10` skips straight to the same default-branch submode check every unmatched mode uses (see "Default" row). **Confirmed transition target** of mode `0x00`/submode `0x02`, `0x20`, and `0x32` (see "Mode-transition primitive" above), plus the unmatched-mode fallback. | Company | `suspected` | | Reached by 3 independent transitions *and* is the default fallback — a screen that's both a common landing state and the safe default is a structural match for **Company**, the attract loop's anchor. `FUN_800232cc` itself not yet read; no card/logo-specific evidence yet, this is purely from the transition-graph shape. |
| `0x10` | `0x01` (default-branch) | `FUN_80022b30` (456 B) | Largest handler seen so far. | Company | `suspected` | | Same reasoning as submode `0x00` row above. |
| `0x20` | — | `FUN_800219b8` (60 B) | Checks bit `0x40` of a 32-bit field at `+0x54`; if set, calls `FUN_80023210(0x10)` — a **confirmed transition to mode `0x10`**. **Byte-for-byte identical body to mode `0x32`'s handler** (`FUN_80021a30`) — same field, same bit, same call, same target. | | `unverified` | | |
| `0x32` | — | `FUN_80021a30` (60 B) | Byte-for-byte identical to mode `0x20`'s handler (`FUN_800219b8`) above, including its confirmed transition to mode `0x10` — see that row. | | `unverified` | | |
| `0x80` | — | *(none)* | No handler call at all — just sets `PTR_DAT_800ac8ec[0] = 0` then falls to the shared epilogue. Possibly a "clear/idle" mode rather than a screen. **Confirmed transition target** of `FUN_80022cf8`'s own shared epilogue, from *any* mode, whenever `PTR_DAT_800ac8ec[7] != 0` (see "Mode-transition primitive" above). | | `unverified` | | **Correction 2026-07-14**: an earlier version of this row proposed **Caution** here, reasoning from mode `0x00`'s `+0x17 = 0x80` write. That write turned out not to be the real transition mechanism (see mode `0x00`/submode `0x02`'s note) — the actual confirmed way to reach `0x80` is a global flag check in the dispatcher's own epilogue, reachable from any mode, which reads more like a service/reset/interrupt state than a step in a fixed attract sequence. Reset to `unverified` rather than keep an unsupported guess; superseded, not deleted. |
| `0xff` | `0x00`–`0x04` | `FUN_800234cc` / `FUN_80023500` / `FUN_80023544` / `FUN_8002356c` / `FUN_8002358c` | `FUN_80022fb0` (152 B) also reads `+0x2a` and, if `< 5`, dispatches through a jump table at `0x8001a840` — **confirmed 2026-07-14** by reading its raw bytes (`tools/ghidra/scripts/DumpJumpTable.java`): submode 0-4 map to these 5 functions in order, exactly. All five now **reviewed 2026-07-14**: submode `0x04` (`FUN_8002358c`) calls the real PsyQ kernel function `ResetGraph(1)` and writes `PTR_DAT_800ac8e8[9] = 1` (see symbol-map's review for why this can't affect `main`'s own do-while, and what it might affect instead). Submodes `0x00`/`0x01`/`0x02` each gate a short call sequence behind a distinct global flag (`DAT_800e2a60`, `DAT_800ac88c`, `DAT_800ac890`); submode `0x03` is a bare call to the shared `FUN_800231b0`. `0xff` is a common sentinel ("uninitialized"/"none") value in many codebases — worth keeping in mind as an alternative to "it's a real screen," especially now that it turns out to have 5 real sub-branches, a GPU reset, and a loop-flag write like a genuine screen transition would. | | `unverified` | | |
| *(default)* | `0x00` | `FUN_800232cc` (168 B) | Reached when `mode` matches none of the above (or `mode == 0x10` explicitly). Same handler as `0x10`/submode `0x00` above. | | `unverified` | | |
| *(default)* | `0x01` | `FUN_80022b30` (456 B) | Same handler as `0x10`/submode `0x01` above. | | `unverified` | | |

Every row also runs the shared per-frame epilogue after its handler:
`FUN_80023744` (476 B), `FUN_8009971c` (84 B), and conditionally
`FUN_80023210(0x80)` (32 B) if `PTR_DAT_800ac8ec[7] != 0`. Not included as
separate rows since it isn't mode-specific.

# Resolved structural questions

- ~~Is `PTR_DAT_800ac8e8+0x28` ever written anywhere other than by
  `FUN_8002216c`'s zero-reset?~~ **Resolved 2026-07-14**: yes, by exactly
  one function, `FUN_80023210` — a `SetMode(newMode)` primitive. See
  "Mode-transition primitive" above for the full confirmed transition
  table. This was the single highest-value open question on record; closing
  it turned every already-reviewed call to `FUN_80023210` into a confirmed
  transition instead of just a call-site fact.
- ~~`PTR_DAT_800ac8e8+0x17` may be a queued/pending next-mode field~~
  **Refuted 2026-07-14**: `FUN_80022f04` (mode `0x00`/submode `0x02`)
  writes `+0x17 = 0x80` and separately calls `FUN_80023210(0x10)` in the
  same function body. Since `FUN_80023210` is now confirmed as the only
  writer of the real mode field, the actual transition this handler
  performs is to `0x10`, not `0x80` — `+0x17` is not the transition
  mechanism. Its actual purpose is still unknown.

# Open structural questions

- **What are `PTR_DAT_800ac8e8+0x2c` and `+0x2e`?** `FUN_80023210`
  (`SetMode`) zeroes both of them alongside `submode` (`+0x2a`) on every
  mode transition, but nothing reviewed so far reads or writes either field
  outside of that. Possibly a second/third dispatch layer below submode
  (a "sub-submode"), not yet exercised by any handler reviewed to date.
- **What does `FUN_80021374` (`0x80021374`, 252 bytes) do?** Discovered as
  a second read site of `+0x28` (checks `mode != 0xff`) while resolving the
  question above, via `tools/ghidra/scripts/DumpFieldXrefs.java`'s
  cross-reference dump. It also reads bits in the `PTR_DAT_800ac8e8+0x54`/
  `+0x58` region already seen gating mode `0x20`/`0x32` — shaped like a
  controller-input check — but isn't called from anywhere in the
  `FUN_80022cf8` dispatcher tree mapped so far, so it's reached some other
  way. Not yet reviewed.
- **What is `PTR_DAT_800ac8e8+0x17`?** Written to `0x80` by mode
  `0x00`/submode `0x02` (`FUN_80022f04`) alongside a confirmed transition to
  mode `0x10` (see "Resolved structural questions" above) — so it isn't the
  mode-transition mechanism, but it's still being deliberately set to a
  value matching a real mode constant. Unclear what reads it.
- **`PTR_DAT_800ac8e8[9]` is written from deep inside the mode-0xff/
  submode-4 handler** (`FUN_8002358c`), even though `main`'s own per-outer-
  loop-pass reset (`FUN_8002216c`) unconditionally zeroes that same byte
  right before the one place it's actually tested. The write can't be dead
  code — something else must read offset `9` within the same frame, before
  the next outer pass's reset runs. The prime suspects are `main`'s four
  still-unreviewed post-dispatcher per-frame calls: `FUN_800973e8`,
  `FUN_8002112c`, `FUN_8002d630`, `FUN_80028034`.
- **`+0x2a` ("submode") is read by at least 4 different modes' handlers**
  (`0x00`, `0x02`, `0xff`, and the unmatched-mode default — see the table
  above), not just `mode == 2` as first thought. This suggests `+0x2a` is a
  general per-screen phase/sub-state counter (e.g. init/active/exit) reused
  across most or all screens, rather than a parameter specific to whichever
  screen `mode == 2` is. Finding every write site of `+0x2a` (same idea as
  the `+0x28` bullet below) would settle this.
- Modes `0x20` and `0x32` (`FUN_800219b8`/`FUN_80021a30`) have byte-for-byte
  identical handler bodies, and mode `0x10` and the unmatched-mode default
  reach the exact same submode dispatch (see bullet below) — two independent
  instances of different mode values converging on identical behavior. Worth
  checking whether the source defined these as literal aliases (e.g. a
  `case 0x20: case 0x32:` fallthrough, which Ghidra could show as two
  separate functions if the compiler didn't dedupe them) once more of the
  mode enum is understood.
- Is `PTR_DAT_800ac8e8+0x28` ever written anywhere other than by
  `FUN_8002216c`'s zero-reset (which sets the whole struct, including this
  field, to `0`)? Finding every write site would recover valid mode values
  and the transitions between them directly, independent of guessing from
  genre knowledge.
- Why do `0x10` (explicit) and "no match" reach the exact same
  submode-`0x2a` dispatch? Possibilities: `0x10` is not really a distinct
  mode but an alias/placeholder, or the default branch is intentionally
  shared infrastructure that `0x10` also happens to want.

# Citations

[1] [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
