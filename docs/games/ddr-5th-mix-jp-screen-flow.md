---
type: Screen Flow
title: Dance Dance Revolution 5th Mix (Japan) — Screen/Mode Flow
description: Maps the game's mode dispatcher (FUN_80022cf8) to hypothesized and confirmed screen identities.
tags: [ps1, ddr5thmix, screen-flow, reverse-engineering]
timestamp: 2026-07-15T06:00:00-04:00
---

Schema: [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).

# Dispatcher

`FUN_80022cf8` (`0x80022cf8`), called once per iteration of `main`'s
per-frame loop. Reads a 16-bit "mode" field at `PTR_DAT_800ac8e8+0x28`;
`mode == 2` and the unmatched-mode default both additionally read a 16-bit
"submode" field at `PTR_DAT_800ac8e8+0x2a`. Full structural review:
`/docs/games/ddr-5th-mix-jp-symbol-map.md`, "Manual review: `FUN_80022cf8`".

# The real screen enum: `DAT_80105120`

**Discovered 2026-07-14, likely the single highest-value finding in this
document.** While reviewing `FUN_80049dec` (mode `0x02`/submode `0x02`)
and its `"TEST_MODE"` string, reading the raw bytes around the data table
it copies from (`tools/ghidra/scripts/DumpBytes.java`) turned up a
**complete, ordered table of 42 null-terminated screen-name strings** at
`0x8001bb10`, each pointed to by a 42-entry pointer array at `0x8001bcd4`:

`BOOT`, `PREPARE`, `INTRO`, `HOW TO`, `DANCING`, `STAGE END`, `RESULT`,
`NON STOP I`, `NON STOP C`, `STYLE SEL`, `MODE SEL`, `CHARA SEL`,
`MUSIC SEL`, `SEQKIND SEL`, `LINK SEL`, `COURSE SEL`, `INRAN SEL`,
`EDSEQ_SEL`, `SELECT END`, `NAME ENTRY`, `PRE_END`, `ENDING`,
`URL&PASS`, `LINK START`, `LINK END`, `GAME_OVER`, `PLAY START`,
`GAME ??`, `PUSH START`, `WARNING`, `KONAMI`, `BEMANI`, `TOSHIBA`,
`TMOVIE`, `TITLE`, `CATCH DEMO`, `PLAY DEMO`, `RANKING`, `LETS LINK`,
`DEMO ??`, `TEST_MODE`, `OTHER`.

This is almost certainly the game's **real, top-level screen/state enum**
— indexed by `DAT_80105120` through three parallel function-pointer
tables (update/exit/enter), a textbook state machine. Full evidence and
addresses: symbol map, "Data discovery: a 42-entry screen-name string
table."

**Directly confirms the repository owner's domain-knowledge account**
(see "Known screen sequence" below), with a literal string reference —
the schema's own bar for `confidence: manual`/`verified`, not a guess:

| String | Matches |
|---|---|
| `WARNING` | "Caution" |
| `KONAMI`, `BEMANI`, `TOSHIBA` | "Company" — turns out to be **three** separate logo screens, not one |
| `HOW TO` | "How To Play" |
| `PLAY DEMO` | "Gameplay Demonstration" |
| `RANKING` | "Ranking" |
| `MODE SEL`, `MUSIC SEL` | "Mode Select" / "Music Select" |
| `TITLE` | Title screen |

Many more names go beyond what genre knowledge alone predicted:
`DANCING` (actual gameplay), `STAGE END`, `RESULT`, `NON STOP I`/
`NON STOP C` (a marathon mode), `CHARA SEL`, `LINK SEL`/`LINK START`/
`LINK END`/`LETS LINK` (a cabinet-link/versus feature), `COURSE SEL`,
`EDSEQ_SEL`, `NAME ENTRY`, `URL&PASS`, `ENDING`, `GAME_OVER`, `CATCH
DEMO`, and placeholder-looking `GAME ??`/`DEMO ??`.

**Not yet established**: exactly how `DAT_80105120`'s state machine
relates to `PTR_DAT_800ac8e8`'s `mode`/`submode` fields this document's
"Mode table" is built around. One concrete link is confirmed: mode
`0x04`'s `FUN_80049d3c` zeroes `DAT_80105120` and enters state `0`
(`"BOOT"`) as part of the boot chain, and `FUN_80049dec` (mode
`0x02`/submode `0x02`) is the per-frame *update* pump for whichever
`DAT_80105120` state is current. Best-supported picture right now:
`PTR_DAT_800ac8e8`'s system is boot/infrastructure control, and once it
settles into mode `0x02`/submode `0x02`, `DAT_80105120`'s named state
machine becomes the actual, ongoing screen flow — but this isn't
confirmed by reading the three function-pointer tables themselves yet,
nor has it been confirmed that mode `0x02` is never left again during
normal play. A `DAT_80105120`-keyed table, structured like this
document's "Mode table" below, is the natural next artifact once those
function-pointer tables are read — worth deciding with the repository
owner before building it out, since it may partly supersede the
speculative "Proposed screen" guesses already recorded below rather than
extend them.

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
| `0x10`/submode `0x00` | *(always, unconditional)* | `4` | `FUN_800232cc` |
| `0x10`/submode `0x01` | confirm button, item 0 selected | `4` | `FUN_80022b30` (via `DAT_800ac8e0[0]`) |
| `0x10`/submode `0x01` | confirm button, item 1 selected | `0x32` | `FUN_80022b30` (via `DAT_800ac8e0[1]`) |
| `0x10`/submode `0x01` | confirm button, item 2 selected | `0x20` | `FUN_80022b30` (via `DAT_800ac8e0[2]`) |

**Mode `0x10` and modes `0x20`/`0x32` form a loop**: mode `0x10`'s menu
(submode `0x01`, `FUN_80022b30`) can send the player to `0x20` or `0x32`,
and those modes' own handlers transition straight back to `0x10` (subject
to a button-bit condition). Mode `0x10`/submode `0x00` always forwards
immediately to mode `4`, which itself flows onward to mode `2` — so the
"item 0" menu choice and the automatic submode-`0x00` forward reach the
same destination. No confirmed transition currently lands on `0x00` or `0x04` themselves
(consistent with `0x00` being a boot-only entry point; `0x04` still has no
confirmed source). `0xff` *is* now confirmed reachable — see below.

## Submode-transition primitives

`FUN_80023210` (`SetMode`) has two siblings, found 2026-07-14 the same way
(`tools/ghidra/scripts/DumpFieldXrefs.java` against `PTR_DAT_800ac8e8`,
this time grepped for `+0x2a` instead of `+0x28`):

- **`FUN_800231b0`** = `NextSubmode()`: `{ +0x2c = 0; +0x2a = +0x2a + 1;
  }`. Called from nearly every handler reviewed so far — it's the generic
  "advance to the next step within this screen" primitive, not
  screen-specific logic as it first appeared.
- **`FUN_80023230`** = `SetSubmode(value)`: `{ +0x2a = value; +0x2c = 0;
  +0x2e = 0; }`. Its only confirmed caller (`FUN_800235f8`, mode
  `0x00`/submode `0x00`, argument `1`) belongs to mode `0x00`'s own local
  sequence.

**Also confirmed**: `FUN_80021374` (`0x80021374`, previously an
unexplained second `+0x28` reader) is a **service/reset-combo watcher** —
gated on two flags and `mode != 0xff`, it checks a controller-button combo
across up to 2 ports and, on match, calls `FUN_80023210(0xff)`: a
**confirmed transition to mode `0xff`**. This explains mode `0xff`'s
elaborate 5-way dispatch (a GPU reset and a main-loop-restart flag write)
as a genuine reset/service state, not a sentinel that happens to have
submodes.

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

**Update 2026-07-14 — directly confirmed, not just genre-informed
anymore**: see "The real screen enum: `DAT_80105120`" above. The game's
own debug strings include `WARNING` (Caution), `KONAMI`/`BEMANI`/
`TOSHIBA` (Company — three separate logo screens), `HOW TO`, `PLAY DEMO`
(Gameplay Demonstration), and `RANKING`, matching this account closely.
This is string-reference evidence, the schema's own bar for
`manual`/`verified` confidence — but it confirms the *names exist in the
game*, not yet their exact ordering/transitions or that they're reached
by `PTR_DAT_800ac8e8`'s mode dispatcher at all (they index a different
state variable, `DAT_80105120` — see above for what's still open).

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
values is still open. An earlier version of this section proposed
**mode `0x10` = Company**, reasoning from the transition graph alone (it's
reached by 3 independent transitions plus the unmatched-mode default).
**Reading `FUN_800232cc`/`FUN_80022b30` (mode `0x10`'s own two submode
handlers) on 2026-07-14 refutes that guess directly**: `FUN_80022b30` is a
genuine d-pad-driven, confirm-button menu with a 3-item lookup table of
destination modes (`{4, 0x32, 0x20}`) — not passive splash-screen code. A
non-interactive attract-loop screen like Company wouldn't need selection
logic across up to 2 controller ports. Mode `0x10` reads much more like a
**title/mode-select hub** — recorded below at `confidence: suspected`,
this time backed by the handler's own control-flow shape rather than the
transition graph alone. Superseded, not deleted; see mode `0x10`'s rows
below and the symbol map's `FUN_80022b30` review for the full evidence.
None of Caution/Company/How To Play/Gameplay Demonstration/Ranking have a
proposed pairing yet — the natural next step is reading the still-
unreviewed `FUN_80021470` (the draw call `FUN_80022b30` uses for its idle
menu, called 5 times with coordinate-shaped arguments) for string/texture
references that might name the 3 menu items directly.

**Update 2026-07-14, after reviewing mode `0x04`'s full call tree**: the
whole `0x00 → 0x10 → 0x04` chain increasingly reads as **boot/loading
infrastructure, not a sequence of visible screens** — Memory Card Auto
Load (`0x00`) → GPU reset + asset load (`0x10`/submode `0x00`) →
settings validation + **music database load** (a literal
`"data/mdb/mdb.bin"` file open, this project's first found filename
string) + SPU/reverb setup (`0x04`) → mode `2`. This pushes the search
for the *first genuinely visible* screen further down the chain than
previously assumed.

**Update 2026-07-14, after reviewing mode `2`'s own submodes**: they
don't supply that screen identity either. Submodes `0x00`/`0x01` are a
confirmed, generic **resolution-switch utility** (display off → resize
to `640×480` → delay → display on) — independently corroborated by the
repository owner's own recollection of DDR 5th Mix changing resolution in
BizHawk. Submode `0x02` drives an apparently unrelated state machine that
touches a `"TEST_MODE"` string (see "Open structural questions" below).
Every mode reviewed in this chain so far — `0x00`, `0x10`, `0x04`, `0x02`
— has turned out to be infrastructure (memory card I/O, GPU reset, asset/
database loading, resolution switching) rather than a screen with a
visible identity of its own. The first genuinely visible attract-loop
screen has not been located yet; it's reached from somewhere later in the
chain not yet mapped.

# Mode table

| Mode | Submode | Handler(s) | Structural facts | Proposed screen | `confidence` | Evidence | Notes |
|---|---|---|---|---|---|---|---|
| `0x00` | `0x00` | `FUN_800235f8` | **Reviewed 2026-07-14**: zeroes 8 byte flags (`PTR_DAT_800ac8ec+0x9c..0x9f`, `+0xac..0xaf`), zeroes `PTR_DAT_800ac8e8+0x17`, sets a 16-bit countdown at `+0x22` to `2`, calls `FUN_80023230(1)`. Reads as the "init" step of a 3-step countdown state machine spanning all three submodes of this mode. | Memory Card Auto Load | `suspected` | | Mode `0x00` is guaranteed to be the first mode value the dispatcher ever sees, since `FUN_8002216c`'s boot-time state reset zeroes the mode field itself (see "Known screen sequence" above) — matches this screen being first in the boot sequence. Submode `0x00` reads as an init/reset step generically; nothing card-I/O-specific observed yet — `FUN_80023230` (its one callee) unread. |
| `0x00` | `0x01` | `FUN_80023690` | **Reviewed 2026-07-14**: resets the same `+0x22` countdown to `4`, then calls the widely-shared `FUN_800231b0` "commit/present" routine. Arms the countdown submode `0x02` decrements. | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. Possible sub-step: "load system data" or "prompt to create data" per the user's description — not yet distinguished; nothing in this body is card-specific either. |
| `0x00` | `0x02` | `FUN_80022f04` | **Reviewed 2026-07-14**: decrements the `+0x22` countdown every call; when it underflows to `-1` and the 4 flags submode `0x00` zeroed are still zero, writes `PTR_DAT_800ac8e8+0x17 = 0x80`, then resets `+0x22` to `0x10` and calls `FUN_80023210(0x10)` — a **confirmed transition to mode `0x10`** (see "Mode-transition primitive" above). | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. **Correction 2026-07-14**: an earlier version of this note treated the `+0x17 = 0x80` write as a candidate queued-next-mode, hypothesizing a transition to mode `0x80`. `FUN_80023210` is now confirmed as the only function that writes the real mode field, and this handler calls it with `0x10`, not `0x80` — so the actual transition target is `0x10`, confirmed, not `0x80`. `+0x17`'s purpose is still unexplained. Superseded, not deleted. |
| `0x02` | `0x00` | `FUN_8009f820(0x280, 0x1e0)` then `FUN_800231b0` (32 B) | **Reviewed 2026-07-14**: `bzero`s an 8-byte state block and stores the target width/height (`640`/`480`) for submode `0x01`'s sequence below. | | `unverified` | | |
| `0x02` | `0x01` | `FUN_8009f390` (100 B), conditionally `FUN_800231b0` (32 B) if result `> 0` | **Reviewed 2026-07-14, confirmed by the repository owner's own BizHawk observation**: a 7-step state machine that calls `SetDispMask(0)` (display OFF), clears the screen to black at `640×480` (`ClearImage2`+`DrawSync`+`FUN_8009f0a8`), waits a few frames, then `SetDispMask(1)` (display ON) — **a display-off/resize/delay/display-on resolution-change sequence**, exactly matching what the owner recalled seeing in BizHawk. Returns `1` ("done") only after all 7 steps complete, `0` otherwise — explaining why `FUN_80022cf8`'s dispatcher only advances submode (via the shared `FUN_800231b0`/`NextSubmode`) when this returns `> 0`. | | `unverified` | | Confirmed as generic infrastructure (a resolution switcher to `640×480`), not a screen with its own visible identity. |
| `0x02` | `0x02` | `FUN_80049dec` (280 B) | **Reviewed 2026-07-14**: unrelated to the resolution switch above — drives a separate enter/exit/update state machine keyed on `DAT_80105120` (shared with `FUN_80049d3c`, mode `0x04`'s music-database loader) through three function-pointer tables, then copies a table of records ending at one containing **`PTR_s_TEST_MODE_8001bd74`** — a pointer to the literal string `"TEST_MODE"` — before calling `FUN_80042e1c()`. | | `unverified` | | **First human-readable string found in this project.** Concrete evidence of a debug/service test-mode feature, though its relationship to the main `PTR_DAT_800ac8e8` mode/screen system mapped throughout this document is not yet clear — `DAT_80105120` looks like an independent state variable. See "Open structural questions" below. |
| `0x04` | `0x00` | `FUN_8002340c` | **Reviewed 2026-07-14** (corrects "single call, no args observed"): mode `0x04`'s handler (`FUN_800230cc`, 112 B) also dispatches on `+0x2a`. This branch, if global `DAT_800ac88c == 0`, checks byte flag `PTR_DAT_800ac8ec[6]`: **zero** → `FUN_800a0cb0()` (reviewed: small flag reset) then `FUN_80023230(2)` — this is `SetSubmode(2)`, **staying in mode `0x04`**, advancing to submode `0x02` below, *not* a mode transition; **nonzero** → `FUN_80049d3c()` (reviewed: loads `"data/mdb/mdb.bin"`, the music database — see submode `0x02`'s row) then `FUN_80023210(2)` — this *is* `SetMode(2)`, a **confirmed transition to mode `2`**. `PTR_DAT_800ac8ec[6]` is set by submode `0x02` below — first visit takes the "zero" path (wait via submode `0x02`), later visits take the "nonzero" path directly (fast-path, flag already set). | | `unverified` | | **Correction 2026-07-14**: an earlier version of this row's prose attached "confirmed transition to mode 2" ambiguously to both branches; only the "nonzero" branch actually transitions mode — the "zero" branch only changes submode. Clarified, not a factual reversal (the mode-table's transition-primitive listing was already correct). |
| `0x04` | `0x02` | `FUN_80023474` | Same `FUN_800230cc` dispatcher as above; submode `0x01` calls neither branch. **Reviewed 2026-07-14**: if `FUN_800a0ce0() > 0` (wraps the unreviewed `FUN_800a00d4` — the real "ready" check), sets `PTR_DAT_800ac8ec[6] = 1` (read by submode `0x00` above, enabling its fast-path on the *next* visit to mode `0x04`), then calls `FUN_8002a7a4()` (reviewed: real PsyQ SPU/reverb setup — `SsUtSetReverbType`, `SpuClearReverbWorkArea`, `SsSetReservedVoice`, etc.), `FUN_8009b0a8()` (reviewed: clamps ~25 option/settings bytes of a third struct, `PTR_DAT_800e0b18`, to valid ranges — reads like sanitizing memory-card-loaded settings), `FUN_800236cc()` (reviewed: bare no-op stub), `FUN_80049d3c()` (reviewed: **loads `"data/mdb/mdb.bin"`** — this project's first literal filename string, almost certainly the song/chart metadata database), `FUN_80023210(2)` — a **confirmed transition to mode `2`**. | | `unverified` | | This handler is the closest thing to hard domain evidence found so far: it validates settings, loads the music database, and configures SPU reverb, all before entering mode `2`. Whatever mode `2` turns out to be, it needs music-database access and audio ready — consistent with (but not proof of) something music-playing, like the user's described **Gameplay Demonstration**, though this could equally just be shared infrastructure every music-playing screen needs (including real gameplay), not evidence for one specific named screen over another. |
| `0x04` | *(any)* | *(shared tail)* | Every call to `FUN_800230cc`, regardless of submode, also copies `PTR_DAT_800ac8ec[0xbb] = PTR_DAT_800ac8ec[0x52]` unconditionally. | | `unverified` | | |
| `0x10` | `0x00` (default-branch) | `FUN_800232cc` (168 B) | **Reviewed 2026-07-14**: sets 4 fields to `320`/`240`/`4`/`1` (display dimensions), calls `SetDispMask(1)`, its callee `FUN_800222fc` (also reviewed) does a full GPU reset (`ResetGraph`/`GsInitGraph2`/`GsInit3D`/`InitGeom`/`ClearImage2`/`DrawSync` — all real PsyQ calls), conditionally calls `FUN_8002a9dc(&DAT_80118e48, &DAT_8011acb8)` (also reviewed: a generic, 22-call-site asset loader that draws primitives then uploads images to VRAM), then **unconditionally transitions to mode `4`**. Since `SetMode` always resets submode to `0`, this runs first after *any* transition into mode `0x10` and immediately forwards onward every time. | | `unverified` | | **Correction 2026-07-14**: previously proposed **Company** here from the transition graph alone; refuted by reading this handler's actual body and its sibling submode's menu logic (see submode `0x01` row) — reset to `unverified`. Having now also read both of its callees, this submode reads less like a screen at all and more like **generic screen-entry boilerplate**: reset the GPU, conditionally load assets, hand off to mode `4`. This nudges the "title/mode-select" guess (see "Known screen sequence" above) toward mode `4` rather than mode `0x10` itself — mode `0x10`/submode `0x00` looks like a loading gateway *to* whatever mode `4` is, not a screen in its own right. |
| `0x10` | `0x01` (default-branch) | `FUN_80022b30` (456 B) | **Reviewed 2026-07-14**: a real menu — cycles a 3-item selection (`+0x2c`, wrapped `% 3`) via d-pad bits on up to 2 controller ports, confirms with a button-bit, and transitions via a 3-entry destination-mode table `DAT_800ac8e0 = {4, 0x32, 0x20}` (read directly with `tools/ghidra/scripts/DumpShorts.java`). Draws the idle menu (5 calls to `FUN_80021470`) if nothing confirms. | Title / Mode Select | `suspected` | | This is the strongest evidence yet for *any* screen identity in this table: real d-pad-cycle-and-confirm menu logic, not passive display code — see symbol map's `FUN_80022b30` review. Naming it specifically "Title/Mode Select" (vs. just "a menu") is still a genre-informed guess; reading `FUN_80021470`'s draw calls for string/texture references would confirm or refine it. **Open question**: since `FUN_80023210` (`SetMode`) always resets submode to `0`, and only `FUN_800232cc` (submode `0x00`) runs immediately after any transition *into* mode `0x10`, it's not yet clear how submode ever advances to `1` to reach this menu at all — see "Open structural questions" below. **Update 2026-07-14**: having now read submode `0x00`'s two callees (pure GPU reset + a generic, 22-call-site asset loader — see symbol map), submode `0x00` looks like generic loading boilerplate rather than a screen, which nudges this "Title/Mode Select" guess toward being a property of mode `0x10` overall (or specifically its menu submode) rather than something submode `0x00` itself displays. |
| `0x20` | — | `FUN_800219b8` (60 B) | Checks bit `0x40` of a 32-bit field at `+0x54`; if set, calls `FUN_80023210(0x10)` — a **confirmed transition to mode `0x10`**. **Byte-for-byte identical body to mode `0x32`'s handler** (`FUN_80021a30`) — same field, same bit, same call, same target. Reachable *from* mode `0x10`'s own menu (item 2 — see `0x10`/submode `0x01` row), forming a menu↔here loop. | | `unverified` | | |
| `0x32` | — | `FUN_80021a30` (60 B) | Byte-for-byte identical to mode `0x20`'s handler (`FUN_800219b8`) above, including its confirmed transition to mode `0x10` — see that row. Reachable *from* mode `0x10`'s own menu (item 1). | | `unverified` | | |
| `0x80` | — | *(none)* | No handler call at all — just sets `PTR_DAT_800ac8ec[0] = 0` then falls to the shared epilogue. Possibly a "clear/idle" mode rather than a screen. **Confirmed transition target** of `FUN_80022cf8`'s own shared epilogue, from *any* mode, whenever `PTR_DAT_800ac8ec[7] != 0` (see "Mode-transition primitive" above). | | `unverified` | | **Correction 2026-07-14**: an earlier version of this row proposed **Caution** here, reasoning from mode `0x00`'s `+0x17 = 0x80` write. That write turned out not to be the real transition mechanism (see mode `0x00`/submode `0x02`'s note) — the actual confirmed way to reach `0x80` is a global flag check in the dispatcher's own epilogue, reachable from any mode, which reads more like a service/reset/interrupt state than a step in a fixed attract sequence. Reset to `unverified` rather than keep an unsupported guess; superseded, not deleted. |
| `0xff` | `0x00`–`0x04` | `FUN_800234cc` / `FUN_80023500` / `FUN_80023544` / `FUN_8002356c` / `FUN_8002358c` | `FUN_80022fb0` (152 B) also reads `+0x2a` and, if `< 5`, dispatches through a jump table at `0x8001a840` — **confirmed 2026-07-14** by reading its raw bytes (`tools/ghidra/scripts/DumpJumpTable.java`): submode 0-4 map to these 5 functions in order, exactly. All five now **reviewed 2026-07-14**: submode `0x04` (`FUN_8002358c`) calls the real PsyQ kernel function `ResetGraph(1)` and writes `PTR_DAT_800ac8e8[9] = 1` (see symbol-map's review for why this can't affect `main`'s own do-while, and what it might affect instead). Submodes `0x00`/`0x01`/`0x02` each gate a short call sequence behind a distinct global flag (`DAT_800e2a60`, `DAT_800ac88c`, `DAT_800ac890`); submode `0x03` is a bare call to the shared `FUN_800231b0` (now confirmed as `NextSubmode`). **Confirmed 2026-07-14**: reachable via `FUN_80021374`, a service/reset-combo watcher outside the dispatcher tree that transitions here on a specific controller-button combo (see "Submode-transition primitives" above) — `0xff` is a genuine reset/service state, not a sentinel value. | | `unverified` | | |
| *(default)* | `0x00` | `FUN_800232cc` (168 B) | Reached when `mode` matches none of the above (or `mode == 0x10` explicitly). Same handler as `0x10`/submode `0x00` above — unconditionally forwards to mode `4`. | | `unverified` | | |
| *(default)* | `0x01` | `FUN_80022b30` (456 B) | Same handler as `0x10`/submode `0x01` above — the menu. | Title / Mode Select | `suspected` | | Same reasoning as `0x10`/submode `0x01` row. |

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

- **Exactly how does `DAT_80105120`'s 42-state screen machine relate to
  `PTR_DAT_800ac8e8`'s mode/submode system?** See "The real screen enum:
  `DAT_80105120`" above for the full string table (`BOOT`, `PREPARE`,
  `WARNING`, `KONAMI`, `PLAY DEMO`, `TEST_MODE`, etc.) and what's already
  confirmed (mode `0x04` initializes it to state `0`/`BOOT`; mode
  `0x02`/submode `0x02` pumps it every frame). Reading the three
  function-pointer tables' actual contents (`PTR_LAB_800d9ac0` = update,
  `PTR_LAB_800d9ac4` = exit, `PTR_FUN_800d9abc` = enter) would confirm
  which function implements each named screen and whether mode `0x02` is
  ever left again during normal play, or whether the entire rest of the
  game runs inside it.
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
- Why do `0x10` (explicit) and "no match" reach the exact same
  submode-`0x2a` dispatch? Possibilities: `0x10` is not really a distinct
  mode but an alias/placeholder, or the default branch is intentionally
  shared infrastructure that `0x10` also happens to want.
- **How does mode `0x10`'s submode (`+0x2a`) ever reach `1`, to run the
  menu (`FUN_80022b30`) at all?** Investigated 2026-07-14, prompted by the
  repository owner's hypothesis that the menu might be armed during
  Memory Card Auto Load (mode `0x00`), which would explain it being ready
  the instant the player presses Start. **Not confirmed**: enumerating
  every write to `+0x2a` across all 58 functions referencing
  `PTR_DAT_800ac8e8` (see "Submode-transition primitives" above) found
  exactly three writers — `SetMode`'s reset-to-`0`, `NextSubmode`'s
  increment, and `SetSubmode`'s direct set — and mode `0x00`'s own
  `SetSubmode(1)` call advances *its own* local sequence, unrelated to
  mode `0x10`. Tracing every confirmed call site of all three still shows
  no path that leaves submode `== 1` while mode remains `0x10` across a
  frame boundary: `FUN_800232cc` calls `NextSubmode()` then
  unconditionally `SetMode(4)` in the same execution, so any momentary
  submode `1` is overwritten back to `0` before the dispatcher's next
  read. This is now a well-supported puzzle rather than a review gap —
  the search was exhaustive over every function touching this specific
  global. Remaining candidates: a write reachable through some other
  global/pointer that aliases the same struct (not yet identified), or
  the menu genuinely being unreachable through normal play (vestigial /
  debug-only code).

# Citations

[1] [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
