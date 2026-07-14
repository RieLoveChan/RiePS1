---
type: Screen Flow
title: Dance Dance Revolution 5th Mix (Japan) — Screen/Mode Flow
description: Maps the game's mode dispatcher (FUN_80022cf8) to hypothesized and confirmed screen identities.
tags: [ps1, ddr5thmix, screen-flow, reverse-engineering]
timestamp: 2026-07-14T14:00:00-04:00
---

Schema: [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).

# Dispatcher

`FUN_80022cf8` (`0x80022cf8`), called once per iteration of `main`'s
per-frame loop. Reads a 16-bit "mode" field at `PTR_DAT_800ac8e8+0x28`;
`mode == 2` and the unmatched-mode default both additionally read a 16-bit
"submode" field at `PTR_DAT_800ac8e8+0x2a`. Full structural review:
`/docs/games/ddr-5th-mix-jp-symbol-map.md`, "Manual review: `FUN_80022cf8`".

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
values is still open — mode numbers are not guaranteed to run in
chronological/sequence order, so no other row below has a proposed screen
yet. The two most promising ways to close this gap: read the still-
unreviewed handlers for string/asset references (a loaded texture or song
ID would pin a screen immediately), or enumerate every write site of
`PTR_DAT_800ac8e8+0x28` (already an open question below) to recover the
actual mode transition graph and compare its shape against this known
6-step loop.

# Mode table

| Mode | Submode | Handler(s) | Structural facts | Proposed screen | `confidence` | Evidence | Notes |
|---|---|---|---|---|---|---|---|
| `0x00` | `0x00` | `FUN_800235f8` | **Corrected 2026-07-14** (was "single call, no args observed" before `FUN_80023048`'s body was read): mode `0x00`'s handler (`FUN_80023048`, 132 B) is itself a 3-way dispatcher on the same `+0x2a` field mode `0x02`/default/`0xff` use — see symbol-map's `FUN_80023048` review. | Memory Card Auto Load | `suspected` | | Mode `0x00` is guaranteed to be the first mode value the dispatcher ever sees, since `FUN_8002216c`'s boot-time state reset zeroes the mode field itself (see "Known screen sequence" above) — matches this screen being first in the boot sequence. Submode `0x00` unconfirmed as any particular sub-step (e.g. "detect card") — `FUN_800235f8` itself not yet read. |
| `0x00` | `0x01` | `FUN_80023690` | Same `FUN_80023048` dispatcher as above. | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. Possible sub-step: "load system data" or "prompt to create data" per the user's description — not yet distinguished, `FUN_80023690` unread. |
| `0x00` | `0x02` | `FUN_80022f04` | Same `FUN_80023048` dispatcher as above. | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. Possible sub-step: transition out to **Caution** (the next screen in the known sequence) — not yet distinguished, `FUN_80022f04` unread. |
| `0x02` | `0x00` | `FUN_8009f820(0x280, 0x1e0)` then `FUN_800231b0` (32 B) | Args `0x280`/`0x1e0` = 640/480 — screen-dimension-shaped; likely a full-screen clear, then a second call. | | `unverified` | | |
| `0x02` | `0x01` | `FUN_8009f390` (100 B), conditionally `FUN_800231b0` (32 B) if result `> 0` | `FUN_800231b0` is shared with submode `0x00` above — possibly a common "commit/present" step. | | `unverified` | | |
| `0x02` | `0x02` | `FUN_80049dec` (280 B) | Single call, no args observed. | | `unverified` | | |
| `0x04` | `0x00` | `FUN_8002340c` | **Corrected 2026-07-14** (was "single call, no args observed"): mode `0x04`'s handler (`FUN_800230cc`, 112 B) also dispatches on `+0x2a`. | | `unverified` | | |
| `0x04` | `0x02` | `FUN_80023474` | Same `FUN_800230cc` dispatcher as above; submode `0x01` calls neither branch. | | `unverified` | | |
| `0x04` | *(any)* | *(shared tail)* | Every call to `FUN_800230cc`, regardless of submode, also copies `PTR_DAT_800ac8ec[0xbb] = PTR_DAT_800ac8ec[0x52]` unconditionally. | | `unverified` | | |
| `0x10` | `0x00` (default-branch) | `FUN_800232cc` (168 B) | Mode `0x10` skips straight to the same default-branch submode check every unmatched mode uses (see "Default" row). | | `unverified` | | |
| `0x10` | `0x01` (default-branch) | `FUN_80022b30` (456 B) | Largest handler seen so far. | | `unverified` | | |
| `0x20` | — | `FUN_800219b8` (60 B) | Checks bit `0x40` of a 32-bit field at `+0x54`; if set, calls `FUN_80023210(0x10)`. **Byte-for-byte identical body to mode `0x32`'s handler** (`FUN_80021a30`) — same field, same bit, same call. | | `unverified` | | |
| `0x32` | — | `FUN_80021a30` (60 B) | Byte-for-byte identical to mode `0x20`'s handler (`FUN_800219b8`) above — see that row. | | `unverified` | | |
| `0x80` | — | *(none)* | No handler call at all — just sets `PTR_DAT_800ac8ec[0] = 0` then falls to the shared epilogue. Possibly a "clear/idle" mode rather than a screen. | | `unverified` | | |
| `0xff` | `0x00`–`0x04` | `FUN_800234cc` / `FUN_80023500` / `FUN_80023544` / `FUN_8002356c` / `FUN_8002358c` | `FUN_80022fb0` (152 B) also reads `+0x2a` and, if `< 5`, dispatches through a jump table at `0x8001a840` — **confirmed 2026-07-14** by reading its raw bytes (`tools/ghidra/scripts/DumpJumpTable.java`): submode 0-4 map to these 5 functions in order, exactly. `0xff` is a common sentinel ("uninitialized"/"none") value in many codebases — worth keeping in mind as an alternative to "it's a real screen," especially now that it turns out to have 5 real sub-branches like a genuine screen would. | | `unverified` | | |
| *(default)* | `0x00` | `FUN_800232cc` (168 B) | Reached when `mode` matches none of the above (or `mode == 0x10` explicitly). Same handler as `0x10`/submode `0x00` above. | | `unverified` | | |
| *(default)* | `0x01` | `FUN_80022b30` (456 B) | Same handler as `0x10`/submode `0x01` above. | | `unverified` | | |

Every row also runs the shared per-frame epilogue after its handler:
`FUN_80023744` (476 B), `FUN_8009971c` (84 B), and conditionally
`FUN_80023210(0x80)` (32 B) if `PTR_DAT_800ac8ec[7] != 0`. Not included as
separate rows since it isn't mode-specific.

# Open structural questions

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
