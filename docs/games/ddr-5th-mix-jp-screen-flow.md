---
type: Screen Flow
title: Dance Dance Revolution 5th Mix (Japan) — Screen/Mode Flow
description: Maps the game's mode dispatcher (FUN_80022cf8) to hypothesized and confirmed screen identities.
tags: [ps1, ddr5thmix, screen-flow, reverse-engineering]
timestamp: 2026-07-16T00:00:00-04:00
---

Schema: [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).

# Dispatcher

`FUN_80022cf8` (`0x80022cf8`), called once per iteration of `main`'s
per-frame loop. Reads a 16-bit "mode" field at `PTR_DAT_800ac8e8+0x28`;
`mode == 2` and the unmatched-mode default both additionally read a 16-bit
"submode" field at `PTR_DAT_800ac8e8+0x2a`. Full structural review:
`/docs/games/ddr-5th-mix-jp-symbol-map.md`, "Manual review: `FUN_80022cf8`".

# A 42-entry screen-name string table

**Discovered 2026-07-14, likely still one of the highest-value findings
in this document** (see the correction below for what it turned out not
to be linked to). While reviewing `FUN_80049dec` (mode `0x02`/submode
`0x02`)
and its `"TEST_MODE"` string, reading the raw bytes around the data table
it copies from (`tools/ghidra/scripts/DumpBytes.java`) turned up a
**complete, ordered table of 42 null-terminated screen-name strings** at
`0x8001bb24`, each pointed to by a 42-entry pointer array at `0x8001bcd4`:

`BOOT`, `PREPARE`, `INTRO`, `HOW TO`, `DANCING`, `STAGE END`, `RESULT`,
`NON STOP I`, `NON STOP C`, `STYLE SEL`, `MODE SEL`, `CHARA SEL`,
`MUSIC SEL`, `SEQKIND SEL`, `LINK SEL`, `COURSE SEL`, `INRAN SEL`,
`EDSEQ_SEL`, `SELECT END`, `NAME ENTRY`, `PRE_END`, `ENDING`,
`URL&PASS`, `LINK START`, `LINK END`, `GAME_OVER`, `PLAY START`,
`GAME ??`, `PUSH START`, `WARNING`, `KONAMI`, `BEMANI`, `TOSHIBA`,
`TMOVIE`, `TITLE`, `CATCH DEMO`, `PLAY DEMO`, `RANKING`, `LETS LINK`,
`DEMO ??`, `TEST_MODE`, `OTHER`.

**Corrected 2026-07-15**: this table was first described here as
"indexed by `DAT_80105120`," inferred from both being touched by the
same function (`FUN_80049dec`). Reading `DAT_80105120`'s actual
function-pointer tables (`tools/ghidra/scripts/DumpJumpTable.java`
against `0x800d9abc`) refutes that: the table holds exactly 45 valid
code-address entries (`45 = 15 × 3`, an enter/update/exit triple for 15
states), terminated by `0xFFFFFFFF` — not 42. Since 15 ≠ 42,
`DAT_80105120` almost certainly does **not** directly index this
42-name table. The two are more likely separate structures. See the
symbol map's corrected write-up for the full reasoning; superseded, not
deleted.

**The string table itself is unaffected by this correction** — these are
still real, literal strings naming real screens; what's withdrawn is
only the claim about which variable indexes them. A more conservative
reading, given the table is scanned specifically up to its
`"TEST_MODE"`-labeled entry: it's a **debug/test-mode menu listing**
(jump-to-screen targets for a service menu) rather than the engine's own
live state variable — itself still a hypothesis, not confirmed.

**Correction 2026-07-24**: `FUN_80049dec` does not actually scan or search
for `"TEST_MODE"` at all — re-reading its full disassembly shows an
unconditional, unrolled copy of the *complete* 42-entry array to a local
stack buffer, whose loop bound merely happens to fall exactly at the
`TEST_MODE` slot's compile-time address (entries 0-39 copied four at a time,
then entries 40-41 handled directly afterward — `40 = 4 × 10`). The
"debug/test-mode menu" hypothesis above was reasoned from a scan that
does not exist in the code; it remains unconfirmed and now has weaker
support than previously stated. See "Open/Resolved structural questions"
below for the full exhaustive-search result: no function other than
`FUN_80049dec` references any entry of the array, and the copy it makes is
never used again.

**Directly confirms the repository owner's domain-knowledge account**
(see "Known screen sequence" below) regardless, with a literal string
reference — the schema's own bar for `confidence: manual`/`verified`,
not a guess:

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

**Status at discovery time (resolved by the later updates below)**: what
`DAT_80105120`'s state machine actually
governs, how it relates to `PTR_DAT_800ac8e8`'s `mode`/`submode` fields
this document's "Mode table" is built around, and — now that the
direct-index link to the 42-name table is refuted — what (if anything)
actually indexes into that table. One concrete link still holds: mode
`0x04`'s `FUN_80049d3c` zeroes `DAT_80105120` and enters its state `0` as
part of the boot chain, and `FUN_80049dec` (mode `0x02`/submode `0x02`)
is the per-frame update pump for it. So `PTR_DAT_800ac8e8`'s system
(boot/infrastructure) does hand off to *some* other state machine once it
settles into mode `0x02`/submode `0x02` — just not necessarily the
42-name one.

**Update 2026-07-15**: read state `0`'s enter/update/exit triple
(`FUN_80049c24`/`FUN_80049f7c`/`FUN_80049fa4` — the latter two didn't
even have Ghidra-recognized function boundaries until now; see the
symbol map's tooling note), then one level deeper still
(`FUN_8004ba34`/`FUN_8004bbb4`/`FUN_8004bc54`). This second level revealed
something that **corrects the "15 states" count from the same day**:
`FUN_8004ba34` doesn't hold "state 0's real logic" so much as bootstrap a
*second, independent, nested state machine* on a different global
(`DAT_80105120+4`), and `FUN_8004bbb4`/`FUN_8004bc54` turn out to be a
**generic, reusable version of `FUN_80049dec`'s own tick logic**,
parameterized by whichever state pointer is passed in. Reading that
nested machine's own tables directly confirmed its exact shape: **14
states**, as 3 flat 14-entry arrays (not 15, not interleaved triples).
So the earlier "45 raw entries = 15 states for `DAT_80105120`" reading
was wrong in its specifics: those 45 entries are actually
`DAT_80105120`'s own tiny 1-state table (3 words) immediately followed by
this *separate* child machine's 14-state table (42 words).
`DAT_80105120` itself, as far as every call site found so far shows, only
ever holds state `0` — all the real branching happens one level down.
Neither `15` nor `14` matches `42`, so this section's main conclusion (not
the same enum as the string table) is unaffected; only the specific state
count was corrected, twice now, as deeper reads kept refining a claim
that started as an inference from raw byte counts alone. A `globals.csv`
tracking `DAT_80105120`, its real nested-child structure, and the
separate 42-name table is likely the right artifact once more is known,
rather than assuming in advance they collapse into one screen-flow
document the way `PTR_DAT_800ac8e8` did.

**Update 2026-07-15**: reviewing `DAT_80105124` state 0's full callback
triple (`FUN_8004bcc8` enter, newly delimited `FUN_8004b554` update, and
newly delimited `FUN_8004bd0c` exit) found no third instance of that same
14-state structure. Instead, state 0 owns a different subordinate
**7-state** enter/update/exit dispatcher embedded at `param_1+4`, with
tables at `0x800ddc68`, `0x800ddc84`, and `0x800ddca0`. Its normal initial
state is 6; state 0 is selected only when `DAT_800f2908` is `0x1c` or
`0x1d`. The outer state-0 update returns state `1` when Start
(`0x800`) or Circle (`0x20`) is newly pressed on either controller;
otherwise it ticks the
7-state child and stays in state 0. This establishes one real transition
in the 14-state machine (`0 -> 1` under that input condition), though no
screen identity is claimed yet. The bit identities and newly-pressed
semantics were confirmed later the same day by tracing the sole writers of
`DAT_800e3b60`/`DAT_800e3b70`; see the symbol map's PAD review.

**Update 2026-07-15 — state 1 identified**: the repository owner's runtime
screenshot, subsequently renamed locally to `MainMenu.png`, after pressing
Circle or Start shows the main menu with 11 entries.
That observation matches the state-1 implementation exactly: enter callback
`FUN_8004bd2c` selects screen-name index `0x1c` (`PUSH START`), loads
`title_25`/`hbota_25`, and initializes an 11-entry selector;
`FUN_80050e5c` handles Up/Down and Start/Circle confirmation; update callback
`FUN_8004b654` maps its result to the next outer state. The screenshot itself
is intentionally not tracked because it is copyrighted game output.

| Main-menu row | Selector result | Next `DAT_80105124` state |
|---|---:|---:|
| `GAME MODE` | 1 | 2 |
| `EVENT MODE` | 2 | 2 (different setup flags -- **confirmed 2026-08-19**, see below) |
| `LESSON MODE` | 3 | 3 |
| `TRAINING` | 4 | 4 |
| `EDIT` | 5 | 5 |
| `DATA BANK` | 6 | 12 |
| `ARCADE LINK` | 7 | 6 |
| `RECORDS` | 9 | 7 |
| `OPTION` | 10 | 8 |
| `GALLERY MODE` | 12 | 13 |
| `INFORMATION` | 11 | 9 |
| 900-frame inactivity timeout | 13 | 0 (Attract Loop; runtime-confirmed by repository owner) |

This identifies state 1 as the **main menu on the title/PUSH START screen**
at `confidence: verified`: literal resource/string evidence, exact agreement
with all 11 visible rows, and the owner's runtime observation agree. It also
turns states 2–9, 12, and 13 into semantically constrained next targets even
before their callback bodies are reviewed.

**GAME MODE vs EVENT MODE flag, confirmed 2026-08-19**: `FUN_8004b654`'s
`switch(uVar4)` (`uVar4` is `FUN_80050e5c`'s selector result) sets
`DAT_80105083 = 0` for `case 1` (`GAME MODE`) and `DAT_80105083 = 1` for
`case 2` (`EVENT MODE`), both before transitioning to the same outer state 2.
Found by a raw disassembly search for the field's `s0+0x10000+0x277b`
addressing idiom (its two write sites, `sb zero,10107(v0)` and
`sb v0,10107(v1)`, don't show up in a same-address Ghidra reference sweep
because the base is computed through that split arithmetic, not a single
`lui`/`addiu` pair). This resolves `DAT_80105083`'s role, previously
described only as "a per-timeline flag/bitmask" in
[game-session-gameplay](/docs/games/ddr-5th-mix-jp-game-session-gameplay.md):
it is the `GAME MODE`(`0`)/`EVENT MODE`(`1`) selector, read throughout the
reconstructed `0x80099edc`-`0x800ac764` block (Batch-353) to gate simplified
end-of-play processing (`FUN_800a1724`) and a calendar/day-graph results
screen (`runtime-block-800a9210`) that runs instead of the normal per-song
results display whenever `EVENT MODE` is active. `GAME MODE`'s branch also
sets `DAT_800f291f` conditionally from `FUN_800a0008()`
(`PTR_DAT_800e0b18[0x86] == 1`), while `EVENT MODE` always sets it to `1`;
the meaning of that second flag is not yet investigated. This does not
resolve the separate per-player play-mode/step-input-format selector found
at `DAT_800f2908`'s array offset `+0x49` (see the `runtime-block-800a1724`
symbol-map notes) -- that field's own setter is still untraced.

**Additional runtime captures, 2026-07-15**: the owner followed five of those
rows and supplied screenshots whose visible headings are `ARCADE LINK`,
`RECORDS`, `OPTION`, `GALLERY MODE`, and `INFORMATION`. Combined with the exact
selector mapping above, this confirms the destination identities of outer
states 6, 7, 8, 13, and 9 respectively. The images remain untracked as
copyrighted game output. A `RECORDS` capture showing `NO MUSIC` also confirms
that this destination can render its empty/no-records state; it does not yet
identify the record-data structure.

# Outer state 2: confirmed game-session selector hierarchy

**Reviewed 2026-07-15** with Ghidra 12.1.2,
`DumpJumpTable.java`, and `DumpFunctionDetail.java`. The outer
`DAT_80105124` tables identify state 2's callback triple exactly:

| Role | Table entry | Function | Result |
|---|---|---|---|
| Enter | `0x800d9ad0` | `FUN_8004bdec` | Initializes a 15-state child at `param_1+4` through `FUN_8006fe7c` |
| Update | `0x800d9b08` | `FUN_8004b800` | Ticks that child through `FUN_8006ffd8`; remains in outer state 2 until child state 14 |
| Exit | `0x800d9b40` | `FUN_8004be30` | Cleans up the child through `FUN_80070154` |

The three wrappers, child init/tick/cleanup functions, and terminal-state
callbacks are now exact in the
[game-session-router module](/docs/games/ddr-5th-mix-jp-game-session-router.md):
nine functions and 1,684 selected bytes. This does not yet claim the other 42
distinct callbacks in the three child tables.

The child uses three flat 15-entry arrays: enter `0x800def08`, update
`0x800def44`, and exit `0x800def80`. Its state 0 is a `PLAY START`
transition (`FUN_80070664` sets screen-name index `0x1a`); its state 1
(`FUN_80070730`/`FUN_80070788`/`FUN_8006eefc`) owns another, six-state
selector. That selector's arrays are enter `0x800defe8`, update
`0x800df000`, and exit `0x800df018`.

The visible screen identities are now direct code evidence: each enter
callback writes the corresponding index into `DAT_800f2908`, and those
indices resolve against the already-dumped 42-name table.

| Selector substate | Screen index/name | Enter | Update | Confirmed next state |
|---:|---|---|---|---|
| 0 | `9` / `STYLE SEL` | `FUN_800756f0` | `FUN_80075738` | 4 / `LINK START` |
| 1 | `10` / `MODE SEL` | `FUN_800757e0` | `FUN_80075818` | Remains 1; no normal incoming route found in the reviewed router |
| 2 | `11` / `CHARA SEL` | `FUN_80075840` | `FUN_80075894` | 3 / `MUSIC SEL` |
| 3 | `12` / `MUSIC SEL` | `FUN_800754b4` | `FUN_8007596c` | 5 / terminal |
| 4 | `23` / `LINK START` | `FUN_80075a40` | `FUN_80075a90` | 2 / `CHARA SEL`, or 3 / `MUSIC SEL` |
| 5 | terminal | `FUN_80075ae0` (no-op) | `FUN_80075ae8` (unreviewed) | — |

`FUN_80075af8` is the central next-substate router. It maps
`STYLE SEL (0) → LINK START (4)`, `CHARA SEL (2) → MUSIC SEL (3)`, and
`MUSIC SEL (3) → terminal (5)`. At `LINK START`, config byte
`PTR_DAT_800e0b18[0x98] == 1` selects `CHARA SEL`; otherwise the routine
initializes default character/player fields and skips directly to
`MUSIC SEL`. Thus the screenshot-observed route is statically confirmed as:

`PLAY START → STYLE SEL → LINK START → CHARA SEL → MUSIC SEL`

with the alternate route `LINK START → MUSIC SEL` when character selection
is disabled/skipped. `MODE SEL` exists in the shared selector but is not on
this normal transition graph as currently reviewed. Once the selector reaches
terminal substate 5, the 15-state parent advances to its state 5 for a short
post-selection transition; outer state 2 itself continues owning later
session phases rather than ending at music selection.

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
| *(any mode, in the game loop)* | Start held + Select newly pressed (confirmed bit/layout match) | `0xff` | `FUN_80021374` |

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

**Identified 2026-07-15**: the repository owner describes a real Consumer-
build feature matching this structurally — pressing **Start+Select**
during the game loop (outside the Caution screen) immediately returns to
the `KONAMI`/`BEMANI`/`TOSHIBA` attract-loop screens. `FUN_80021374`'s
button-combo-triggered transition to mode `0xff` (a reset/service state
that performs a GPU reset and re-arms `main`'s loop-restart flag) is a
strong structural match for exactly this behavior. **Confirmed statically
2026-07-15** by tracing the input producer: `FUN_80021374` checks Start
held (`current & 0x800`) plus Select newly pressed
(`newly_pressed & 0x100`) on either port. This also **withdraws
`FUN_80021374` as evidence** for
the "arcade-only leftover" quirk entry — it's better explained as a real,
intentional Consumer-build feature; see the quirks doc's correction.

# Fill-in instructions

Add your hypothesis in **Proposed screen**, set **`confidence`** to
`suspected`, and explain your reasoning (what about DDR/StepMania's typical
flow suggests this) in **Notes** — per
[/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md).
Leave `Evidence` blank; that gets filled in once someone (human or agent)
reads the handler's own code and confirms or refutes the guess. Don't
worry about being wrong — a rejected guess with its reasoning recorded is
still useful; it rules something out.

# Observed boot and attract sequence

The repository owner is a former StepMania Team developer. The first two
items below remain domain knowledge; the game-owned visible sequence is now
runtime evidence rather than a genre-based hypothesis:

1. **PS BIOS logo** — not game code; happens before `main` is ever reached.
2. **Memory Card Auto Load** — checks whether a memory card is inserted; if
   it holds this game's system data, loads it automatically; if a card is
   inserted but has no system data, prompts the user to create it.
3. **Attract Loop** — begins at **WARNING**, not at Company or Ranking.
   The exact visible order is recorded below and returns from BEST RANKING
   to WARNING.

**Runtime confirmation 2026-07-15 — authoritative visible order**: the
owner supplied 11 consecutively named captures, `AttractLoop_01.png` through
`AttractLoop_10.png` plus `AttractLoop_11_Repeat.png`. They are successive
visible changes, not a claim that every capture is a distinct internal
screen. The files remain untracked because they are copyrighted game output.

| Capture | Visible content |
|---|---|
| `01` | `WARNING` |
| `02` | KONAMI logo |
| `03` | BEMANI card |
| `04` | Dancemania / intercord japan / TOSHIBA EMI sponsor card |
| `05` | Dancemania series montage; continuation of the promotional block |
| `06` | DDR 5thMIX logo transition |
| `07` | DDR 5thMIX title presentation |
| `08` | `HOW TO PLAY` |
| `09` | `DEMONSTRATION` automated gameplay |
| `10` | `BEST RANKING` |
| `11 Repeat` | `WARNING`, proving the loop boundary |

Therefore the observed cycle is:

```text
WARNING
→ KONAMI
→ BEMANI
→ Dancemania / intercord japan / TOSHIBA EMI promotional presentation
→ DDR 5thMIX title presentation
→ HOW TO PLAY
→ DEMONSTRATION
→ BEST RANKING
→ WARNING
```

Captures `04`/`05` and `06`/`07` deliberately preserve intermediate visible
changes inside two presentations. The string table contains `TOSHIBA`,
`TMOVIE`, `TITLE`, `CATCH DEMO`, `PLAY DEMO`, and `RANKING`, but resemblance
alone is insufficient to assign every captured frame boundary to one of
those internal names. In particular, this evidence fixes temporal order
without pretending that 11 captured changes equal 11 dispatcher states.

**2026-07-15 — the actual gameplay session flow** (distinct from the
attract loop above; starts once a player presses Start), per the same
domain-knowledge source, specific to Consumer (home) BEMANI releases:
**Caution** → **Style Select** → **Select Character** → **Select
Music** → **Gameplay** → **Result screen**, which then branches
depending on settings: back to **Select Music**, to a **Summary
screen**, or to **Game Over**.

This maps directly onto more of the 42-name string table, independently
of the attract-loop matches already found: `WARNING` (Caution — same
screen the attract loop also uses), `STYLE SEL` (Style Select),
`CHARA SEL` (Select Character), `MUSIC SEL` (Select Music), `DANCING`
(Gameplay), `RESULT` (Result screen), `GAME_OVER` (Game Over). No string
in the table obviously matches "Summary" yet — `ENDING`, `PRE_END`, or
`SELECT END` are candidates but none confirmed; worth keeping in mind
once more of the table's owning code is read.

**Runtime confirmation 2026-07-15**: three additional owner-supplied captures
show the beginning of the actual `GAME MODE` route in order: `SELECT STYLE`,
then `SELECT CHARACTER`, then `SELECT MUSIC`. This independently confirms the
`STYLE SEL → CHARA SEL → MUSIC SEL` visible ordering described above and shows
that outer state 2 enters this game-setup flow. The subsequent static review
in "Outer state 2" now identifies their numeric selector substates and exact
callbacks, including the intervening `LINK START` router. The static reviews
below now confirm the later `DANCING`, `STAGE END`, `RESULT`, selector-return,
`PRE_END`, `LINK END`, `NAME ENTRY`, and `GAME_OVER` branches as well.

# Static route from MUSIC SEL into gameplay

Reviewed 2026-07-15 with Ghidra 12.1.2 by continuing through the 15-state
game-session child's tables at `0x800def08`/`0x800def44`/`0x800def80`.
After selector substate 5 terminates, child state 1 returns child state 5.
That path is now:

`MUSIC SEL -> state 5 / PREPARE -> state 4 / INTRO -> state 6 / DANCING -> state 7 / STAGE END`

The identities come from direct writes to `DAT_800f2908` and the ordered
screen-name table, not from screenshot resemblance:

| Child state | Enter / update / exit | Screen evidence |
|---|---|---|
| 5 | `FUN_8006efd4` / `FUN_80070ab4` / `FUN_8006f0a0` | entry writes index 1 = `PREPARE`; update returns state 4 after 28 frames |
| 4 | `FUN_8006f1fc` / `FUN_8006f380` / `FUN_80070aac` | entry writes index 2 = `INTRO`; exit is a no-op |
| 6 | `FUN_80070bc4` / `FUN_8006f49c` / `FUN_8006f6cc` | entry writes index 4 = `DANCING`; exit computes/stores per-player result data |
| 7 | `FUN_8006f784` / `FUN_8006f888` / `FUN_8006fa30` | entry writes index 5 = `STAGE END`; exit accumulates player/session result counters |

`FUN_8006f380` can leave `INTRO` for state 6 when `FUN_8007fdec()` is
not `-1`; its timeout and ordinary completion paths return state 7 instead.
During `DANCING`, `FUN_8006f49c` normally remains in state 6 and returns
state 7 on reviewed completion branches. The reviewed classifier's operational
returns are `-1` prestart/not ready, `0` timeline active, `1`/`2` normal
terminal conditions, and `-2` a special terminal condition; interpreting
`-2` specifically as failure remains an inference.

# Structural inventory: PREPARE/INTRO/DANCING/STAGE END callbacks (2026-07-23)

Investigation-only pass mirroring the HOW TO PLAY overlay's structural
inventory[3]: confirms function boundaries and enumerates direct callees for
the twelve callback-table entries listed above, before any reconstruction is
attempted. No `.s` source was written and no byte match is claimed for this
section. Boundaries and disassembly came from
`DumpFunctionDetail.java` against the shared Ghidra 12.1.2 project's
`SLPM_868.97_1` program (`runtime/ghidra/projects/ddr5thmix`); no full
re-analysis was run and no other program in the project was touched.

## Confirmed boundaries

Ghidra's existing auto-analysis boundaries for all twelve functions are
unchanged since the 2026-07-15 manual review that first populated the symbol
map — sizes and per-function unique-callee counts match
[the symbol map](/docs/games/ddr-5th-mix-jp-symbol-map.md) exactly, so no
`CreateFunctionCmd` boundary fixes were needed this pass.

| State | Role | Enter (bytes) | Update (bytes) | Exit (bytes) |
|---:|---|---|---|---|
| 5 | `PREPARE` | `FUN_8006efd4` (204) | `FUN_80070ab4` (272) | `FUN_8006f0a0` (348) |
| 4 | `INTRO` | `FUN_8006f1fc` (388) | `FUN_8006f380` (284) | `FUN_80070aac` (8) |
| 6 | `DANCING` | `FUN_80070bc4` (52) | `FUN_8006f49c` (560) | `FUN_8006f6cc` (184) |
| 7 | `STAGE END` | `FUN_8006f784` (260) | `FUN_8006f888` (424) | `FUN_8006fa30` (372) |

Total: twelve functions, 3,356 attributed bytes (sum of the auto-analysis
function bodies above; not a claim about original object layout or gaps
between them).

## Direct callees

27 distinct callee addresses are reached across the twelve functions (a few
addresses are called from more than one of the twelve, and `FUN_8006f784`
and `FUN_8006f888` each call one target twice within the same body). None of
the 27 fall inside the address ranges already owned by the exact-matched
`mode-control`, `runtime-core`, `screen-selector`, `game-session-router`, or
`game-session-opening` modules. Three are already `manual`/
`disassembly_reviewed` in the symbol map from the 2026-07-15 review; one
carries a PsyQ library-signature name; the remaining 23 are unreviewed
(`unverified`/`decompiler_output_only`).

| Address | Symbol-map name | Bytes | Symbol-map status | Called from |
|---|---|---:|---|---|
| `0x8007fdec` | `FUN_8007fdec` | 8,356 | `manual` — per-player timeline classifier, reviewed 2026-07-15 | `FUN_8006f380`, `FUN_8006f49c`, `FUN_8006f888` |
| `0x8007fc8c` | `FUN_8007fc8c` | 352 | `manual` — shared player/timeline init with attract `CATCH DEMO`, reviewed 2026-07-15 | `FUN_8006f1fc` |
| `0x80081e90` | `FUN_80081e90` | 160 | `manual` — shared gameplay/demo cleanup, reviewed 2026-07-15 | `FUN_8006fa30` |
| `0x800358f8` | `VSync` | 164 | `library_signature` — PsyQ-signature name, not independently reviewed | `FUN_8006f0a0`, `FUN_8006f888` |
| `0x8002a8b0` | `FUN_8002a8b0` | 8 | `unverified` | `FUN_80070ab4`, `FUN_80070bc4`, `FUN_8006f49c`, `FUN_8006f6cc` |
| `0x80027ed4` | `FUN_80027ed4` | 168 | `unverified` | `FUN_8006f888` |
| `0x80028358` | `FUN_80028358` | 32 | `unverified` | `FUN_80070ab4`, `FUN_8006f1fc`, `FUN_8006f380`, `FUN_8006f49c`, `FUN_8006f784` (×2) |
| `0x8005e6a8` | `FUN_8005e6a8` | 704 | `unverified` | `FUN_80070ab4` |
| `0x8006e5d4` | `FUN_8006e5d4` | 196 | `unverified` | `FUN_8006f380`, `FUN_8006f49c` |
| `0x8006e750` | `FUN_8006e750` | 668 | `unverified` | `FUN_8006fa30` |
| `0x8006e9ec` | `FUN_8006e9ec` | 1,020 | `unverified` | `FUN_8006fa30` |
| `0x8007638c` | `FUN_8007638c` | 156 | `unverified` | `FUN_80070ab4`, `FUN_8006f0a0`, `FUN_8006f888` (×2) |
| `0x800705a4` | `FUN_800705a4` | 192 | `unverified` | `FUN_8006f49c` |
| `0x8007f06c` | `FUN_8007f06c` | 16 | `unverified` | `FUN_80070ab4` |
| `0x8007f07c` | `FUN_8007f07c` | 32 | `unverified` | `FUN_8006f49c` |
| `0x8007f598` | `FUN_8007f598` | 180 | `unverified` | `FUN_80070ab4` |
| `0x8007f64c` | `FUN_8007f64c` | 16 | `unverified` | `FUN_80070ab4` |
| `0x8007f66c` | `FUN_8007f66c` | 16 | `unverified` | `FUN_80070ab4` |
| `0x8007b778` | `FUN_8007b778` | 264 | `unverified` | `FUN_8006efd4`, `FUN_8006f888` |
| `0x8007b960` | `FUN_8007b960` | 116 | `unverified` | `FUN_8006f888` |
| `0x80098f8c` | `FUN_80098f8c` | 316 | `unverified` | `FUN_8006f380` |
| `0x800991e0` | `FUN_800991e0` | 20 | `unverified` | `FUN_8006f1fc` |
| `0x80099628` | `FUN_80099628` | 244 | `unverified` | `FUN_8006f6cc` |
| `0x8009ff74` | `FUN_8009ff74` | 24 | `unverified` | `FUN_8006f49c` |
| `0x800a36f4` | `FUN_800a36f4` | 48 | `unverified` | `FUN_8006f1fc` |
| `0x800a3724` | `FUN_800a3724` | 48 | `unverified` | `FUN_8006f1fc` |
| `0x800a37f8` | `FUN_800a37f8` | 84 | `unverified` | `FUN_8006f6cc` |

All 27 rows already existed in the symbol map with these exact sizes; this
pass added no new symbol-map rows and changed no confidence tier. Any future
reconstruction of `PREPARE`/`INTRO`/`DANCING`/`STAGE END` as a module would
need to reconstruct or otherwise resolve these 23 unreviewed and one
library-signature callee first, alongside the already-reviewed three.

## Data globals referenced but not yet catalogued

The decompiled C for these twelve functions references 26 fixed-address
globals absent from [the global map](/docs/games/ddr-5th-mix-jp-globals.md)
(which currently covers `DAT_800f2900` and `DAT_800f2908` from the
`runtime-core` module, both of which *are* referenced here and already
documented). No field types, structure boundaries, or semantics are claimed
for the new addresses below — they are recorded only as "referenced here,
undocumented elsewhere," per this pass's investigation-only scope:

`0x8001cac0`, `0x8001cac4`, `0x8001cac8`, `0x800e3bcb`, `0x800f28f8`,
`0x800f28fc`, `0x800f290c`, `0x800f2910`, `0x800f2911`, `0x800f2912`,
`0x800f2913`, `0x800f2914`, `0x800f2916`, `0x800f2918`, `0x800f291a`,
`0x800f291e`, `0x800f2924`, `0x800f292c`, `0x800f292d`, `0x800f292e`,
`0x800f299a`, `0x800f29a4`, `0x800f29c8`, `0x800fbbb0`, `0x800fbbb2`,
`0x800fbc1e`.

The `0x800f28f8`–`0x800f299a` cluster and the `0x800fbbb0`/`0x800fbbb2`/
`0x800fbc1e` cluster read as two separate per-player (or per-timeline) field
groups given their reuse pattern across `FUN_8006f380`/`FUN_8006f49c`/
`FUN_8006f888`, but this is a structural observation, not a confirmed layout
claim — no stride, count, or field width is asserted here.

## Reproduction

```powershell
$env:JAVA_HOME = "tools/local/jdk25"
& tools/local/ghidra_12.1.2_PUBLIC/support/analyzeHeadless.bat `
  runtime/ghidra/projects ddr5thmix `
  -process SLPM_868.97_1 -noanalysis `
  -scriptPath tools/ghidra/scripts -postScript DumpFunctionDetail.java `
  0x8006efd4 0x80070ab4 0x8006f0a0 0x8006f1fc 0x8006f380 0x80070aac `
  0x80070bc4 0x8006f49c 0x8006f6cc 0x8006f784 0x8006f888 0x8006fa30
```

Reproduced against the same executable SHA-256 as the router/opening modules,
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. This
confirms boundaries and call graphs only; it is not a byte-match or
reconstruction claim.

# Result and end-of-session branches

Parallel static review on 2026-07-15 resolves every destination reached from
`STAGE END` and closes the child graph at terminal state 14:

```text
STAGE END (7)
├─ next stage, direct selector return → selector owner (1)
├─ normal result route → RESULT (8)
│  ├─ next stage → selector owner (1)
│  └─ no next stage → PRE_END (11)
└─ alternate end route → PRE_END (11)
   ├─ configured continuation → selector owner (1)
   └─ finish → LINK END (12)
      ├─ session flags set → GAME_OVER (9) → terminal (14)
      ├─ name-entry condition → NAME ENTRY (13) → ENDING (10) → terminal (14)
      └─ otherwise → ENDING (10) → terminal (14)
```

Direct screen-index evidence and callback triples:

| State | Screen | Enter / update / exit | Destinations |
|---|---|---|---|
| 8 | `RESULT` (index 6) | `FUN_80070bf8` / `FUN_80070c70` / `FUN_80070d04` | 1 or 11 |
| 9 | `GAME_OVER` (index 25) | `FUN_80070d3c` / `FUN_8006fba4` / `FUN_80070d6c` | 14 |
| 10 | `ENDING` (index 21) | `FUN_80070d9c` / `FUN_80070e2c` / `FUN_80070ebc` | 10 or 14 |
| 11 | `PRE_END` (index 20) | `FUN_80070f04` / `FUN_80070f54` / `FUN_80071004` | 1 or 12 |
| 12 | `LINK END` (index 24) | `FUN_8007102c` / `FUN_80071084` / `FUN_800710f8` | 9, 10, or 13 |
| 13 | `NAME ENTRY` (index 19) | `FUN_80071118` / `FUN_80071168` / `FUN_80071214` | 10 |

State 1 owns the selector rather than naming one fixed screen. Its initializer
`FUN_80075580` enters substate 3 (`MUSIC SEL`) when
`(DAT_800f2914 > 0 || DAT_800f291f > 1) && DAT_800f291c == 1`; otherwise
it restarts at substate 0 (`STYLE SEL`). This supplies the exact condition
behind the genre-level "Result back to Select Music" branch.

Terminal child state 14 makes `FUN_8006ffd8` report completion. The enclosing
outer-state update `FUN_8004b800` then returns outer state 0 or 10 according
to `PTR_DAT_800ac8e8[0xff]`. That handoff is now fully resolved:

```text
child terminal 14
└─ common outer-state-2 cleanup: FUN_8004be30 → FUN_80070154
   ├─ latch +0xff == 0 → outer 0 → RANKING → attract loop
   └─ latch +0xff != 0 → outer 10
                         → 42-tick radial transition
                         → outer 11
                         → 512x480 / 640x480 restoration pipeline
                         → outer 1
                         → title/PUSH START main menu
```

Outer state 10 uses callbacks `FUN_8004c0f0`/`FUN_8004c11c`/
`FUN_8004c154`; outer 11 uses `FUN_8004c15c`/`FUN_8004c184`/
`FUN_8004c1b4`. Neither writes `DAT_800f2908` or owns another child machine:
they are graphical/infrastructure transitions, not semantic screens.

The effective latch address is `0x800100ff`. `FUN_8006ffd8` reads it to
force child state 14 when nonzero, and `FUN_8004b800` reads it to select the
outer destination. `FUN_8002313c` is its direct setter; child `GAME_OVER`
and wait-state exits call it unconditionally, while `FUN_8006e43c` can call
it after a long Cross hold during PLAY START/selector/RESULT. Main-menu entry
clears the latch through `FUN_800535b0`; full runtime-block initialization
also clears it via `bzero`.

This gives both conditional destinations exact static identities. If the
latch is still clear when completion is reported, the destination is outer
state 0; its constructor selects internal attract state 6/`RANKING` on that
specific entry path. This is not the observed loop boundary, which is
`WARNING`. The latched/forced path performs post-session transitions and
returns to the main menu. An exhaustive audit of the 15 update callbacks
finds only states 9 (`GAME_OVER`) and 10 (`ENDING`) transition naturally to
14, and both exits set the latch before outer dispatch. The force path also
requires it already set. Therefore no valid player-session path reaches
outer 0/RANKING; that edge is defensive or historical, not a session route.

# Confirmed attract presentation internals

Reviewed with Ghidra 12.1.2 against boot-executable SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`, using
`DumpFunctionDetail.java`, `DumpBytes.java 0x8001bdf4 56`, and targeted
data-xref dumps.

The seven-state child owned by outer state 0 now has exact screen identities.
Written from the runtime-observed loop boundary, its cyclic transition graph
is:

```text
WARNING (state 0)
→ TITLE (2)
→ PLAY DEMO (5)
→ CATCH DEMO phase 1 (3)
→ CATCH DEMO phase 2 (4)
→ RANKING (6)
→ WARNING (0)
```

`FUN_80053ed8` stores state 6 as its default constructor choice, or state 0
when inherited `DAT_800f2908` is `0x1c`/`0x1d`. That implementation detail
does **not** make RANKING the first observed screen of the attract loop: the
consecutive runtime captures above establish WARNING as the visible start and
show RANKING immediately before the return to WARNING. State 1 is a second
`RANKING` variant that also returns to `WARNING`. Crucially,
screen index `0x25` is `RANKING`; the true `PLAY DEMO` is index `0x24` and
uses callbacks `FUN_80054618`/`FUN_800546d8`/`FUN_800547cc`.

## State 0: WARNING through the company/promotional block

`FUN_80054054` writes `DAT_800f2908=0x1d` (`WARNING`) and loads resource
group 3. Its update is only a wrapper around `FUN_8004c27c`, which owns the
whole six-resource presentation:

| Start counter | Resource ID | Duration | Runtime-correlated content |
|---:|---:|---:|---|
| 1 | `0x7e` | 300 | WARNING |
| 301 | `0x7b` | 300 | KONAMI |
| 601 | `0x79` | 300 | BEMANI |
| 901 | `0x7d` | 260 | Dancemania/intercord/TOSHIBA EMI sponsor card |
| 1161 | `0x7a` | 260 | Dancemania series montage |
| 1421 | `0x7c` | 20 | promotion-to-title bridge, not separately captured |
| 1441 | none | until elapsed 65 | terminal wait before state 2 |

The earliest transition to state 2 is counter 1506. The first six resource
associations combine this exact static chronology with the owner's consecutive
captures; the code contains IDs, not literal filenames. Importantly,
`DAT_800f2908` remains `WARNING` throughout. KONAMI, BEMANI, TOSHIBA, and
the montage are timed segments inside state 0, not dispatcher states.

## State 2: TITLE

`FUN_800541a8` writes index `0x22` (`TITLE`), loads group 6, and queues
`title_25`, `hbota_25`, and resource `0x70`. Its 481-tick update has no
substate: ticks 1–31 fade in, 32–448 hold brightness `0x80`, 449–469 fade
out, and 470–481 are black before returning state 5. Captures 06 and 07 are
therefore one TITLE state. Their resemblance to fade-in and stable-title
phases is consistent but not an exact tick assignment without a dynamic log.

Group 6 also loads the `0x2e58`-byte `inst demo` overlay from absolute CD
LBA `0x7a80` into `0x801e4000` (`READ_DT.BIN+0x1630000`, SHA-256
`3dbf4bfa55caf2eb9e8e2db8cef4286441fc9e36850b1dca72515ef89060b0bb`).
On tick 481 the dispatcher exits TITLE and enters state 5 in the same update.

## States 5, 3, and 4: instruction demo versus gameplay demonstration

State 5 writes `0x24` (`PLAY DEMO`), selects one of 12 presentation variants,
and invokes `inst demo` at `0x801e413c`/`0x801e41e8`/`0x801e4284`.
The overlay is executable MIPS with 3D-lighting calls, not prerecorded video.

**Resolved 2026-07-16 by raw-overlay import**: the hash-gated range was
imported with Ghidra 12.1.2 `BinaryLoader` at `0x801e4000`, using
`/tools/ghidra/Import-RawOverlay.ps1`. The three caller-supplied addresses are
confirmed as init/update/exit functions. Init installs a fixed command list at
`0x801e66c4`; update (`FUN_801e41e8`) ticks it through
`FUN_801e42ec`, renders only while the list is active, and returns true when
the list reaches its null callback at `0x801e69cc`.

The command list contains 96 non-jump callbacks plus one explicit jump from
`0x801e67f4` to `0x801e67fc`, 24 waits of 60 ticks, five waits of 80 ticks,
two 20-tick interpolations, and six 5-tick interpolations. The exact scripted
duration is therefore **1,910 ticks**. The first segment
(`0x801e66c4`–`0x801e67ec`, 550 ticks) enables render slots 0–3 and performs
the staged camera/object transitions; the jumped-to segment
(`0x801e67fc`–`0x801e69c4`, 1,360 ticks) runs the repeated instruction
presentation and enables slots 4–6 before the terminator.

State 2 never writes `HOW TO`, has no local substate, and goes directly to
state 5. State 5 now has a code-proven terminal boundary after those 1,910
ticks, and the next outer states 3/4 implement the captured DEMONSTRATION.
Together with the runtime order `TITLE → HOW TO PLAY → DEMONSTRATION`, this
confirms the entire state-5 overlay as the HOW TO PLAY presentation; a dynamic
trace is needed only to attach individual visible instructional cards to
specific command addresses, not to establish the state boundary.

After state 5, states 3 and 4 both write/retain index `0x23` (`CATCH DEMO`)
and implement the actual gameplay demonstration:

- State 3 selects sequentially from ten music IDs, loads the chosen record and
  audio, applies a short visual transition, and advances after 16 ticks.
- State 4 configures both player records and literally shares
  `FUN_8007fc8c` initialization, `FUN_8007fdec` per-frame timeline/gameplay
  core, and `FUN_80081e90` cleanup with the normal DANCING path. Its terminal
  phase fades for 30 ticks before state 6.

The ten demo IDs resolve through the linked music database to `17SAI`,
`DANCING ALL ALONE`, `TEST MY BEST`, `RIGHT NOW`, `ROMANCE NO KAMISAMA`,
`NEVER ENDING STORY`, `MY GENERATION(Fat Beat Mix)`, `DIVE`,
`STILL IN MY HEART`, and `NO LIMIT(RM Remix)`. State 3 → 4 does not change
`DAT_800f2908`; there is no separate dispatcher state for the visible
DEMONSTRATION label.

This proves literal gameplay-engine reuse for the CATCH DEMO states, while
the state-5 overlay's own chart/judgment/scoring reuse remains unproven.

## State 1: second RANKING variant

`FUN_80054114` (76 bytes, verified byte-exact) writes `0x25` (`RANKING`) and,
in the same instruction pair (the `sh` lands in the delay slot of the call
below), invokes `FUN_8004d468`, which queues resource `hlink_25` through the
resource-name-to-index/index-to-address pair `FUN_800985c8`/`FUN_80098880`
(see [globals](/docs/games/ddr-5th-mix-jp-globals.md)'s "Resource-name
table"). This is new evidence added 2026-08-18, distinct from and
independent of state 6's own `FUN_800547f4`, which loads a different,
numbered "ranking group 12" through the unrelated `FUN_8004c27c`-style
resource path used by state 0's WARNING/company block. The two RANKING
variants therefore do not share a resource-loading mechanism.

The name `hlink_25` is not self-evidently "RANKING" the way `caut_25` reads
as "CAUTION" — DDR cabinets have a separate arcade link-play feature, and the
game's own 42-name debug string table includes `LETS LINK` as a distinct
entry (see "A 42-entry screen-name string table" above), which is a more
literal match for a name containing "link". Whether `hlink_25` is a
link-branded RANKING background (e.g. showing rankings with a link-play
banner or icon) or this state's actual screen identity is closer to `LETS
LINK` than to a second `RANKING` screen is not resolved here; recorded as an
open question rather than asserted either way. The `0x25` write itself is
not in question.

## State 6: BEST RANKING and loop closure

`FUN_800547f4` writes `0x25` (`RANKING`) and loads ranking group 12.
`FUN_8005484c` renders through counter `0x438`, fades through `0x455`,
and returns state 0 at `0x456`. State 0 then starts again at WARNING, matching
capture 11.

**Historical update 2026-07-14, superseded by the callback mapping above**:
see "A 42-entry screen-name string table" above. The game's
own debug strings include `WARNING` (Caution), `KONAMI`/`BEMANI`/
`TOSHIBA` (Company — three separate logo screens), `HOW TO`, `PLAY DEMO`
(Gameplay Demonstration), and `RANKING`, matching this account closely.
This string evidence established that the names exist in the game, but at
that time did not establish their exact order or owner. The later seven-state
callback and runtime review above now resolves that gap; the earlier proposed
direct relationship to `DAT_80105120` was separately withdrawn.

**One concrete pairing already has structural support**: `FUN_8002216c`
(reviewed in the symbol map) unconditionally zeroes
`PTR_DAT_800ac8e8+0x28` — the mode field itself — as part of the state
reset `main` calls once before its per-frame loop starts. That makes
`mode == 0x00` the value the dispatcher is guaranteed to see on the very
first frame after boot, which lines up with **Memory Card Auto Load** being
first in the sequence above. This is still `suspected`, not `manual`: it's
consistent with mode `0x00` running first, not proof of what mode `0x00`
*represents*. Those three submode targets were later reviewed and did not
provide card-I/O-specific evidence, so the pairing remains `suspected`.

The former task of pairing these screens directly to top-level mode/submode
values is superseded: they are presentations inside the nested attract child,
not separate top-level modes. An earlier version of this section proposed
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
At that stage none of Caution/Company/How To Play/Gameplay
Demonstration/Ranking had a proposed pairing. The nested attract-child mapping
above later superseded that mode-first search; `FUN_80021470` remains relevant
only to naming the apparently unreachable three-item mode-`0x10` menu.

**Update 2026-07-14, after reviewing mode `0x04`'s full call tree**: the
whole `0x00 → 0x10 → 0x04` chain increasingly reads as **boot/loading
infrastructure, not a sequence of visible screens** — Memory Card Auto
Load (`0x00`) → GPU reset + asset load (`0x10`/submode `0x00`) →
settings validation + linked-metadata/state initialization (including the
literal `"data/mdb/mdb.bin"` source/build marker) + SPU/reverb setup
(`0x04`) → mode `2`. **Correction 2026-07-15**: the marker's call target,
`FUN_8007eea8`, is a return-only no-op, not a file open; the runtime music
table is already linked into the executable. At that point this pushed the
search for the first visible screen further down the chain; the later nested
callback mapping above found it inside mode `0x02`'s child hierarchy.

**Update 2026-07-14, after reviewing mode `2`'s own submodes**: they
don't supply that screen identity either. Submodes `0x00`/`0x01` are a
confirmed, generic **resolution-switch utility** (display off → resize
to `640×480` → delay → display on) — independently corroborated by the
repository owner's own recollection of DDR 5th Mix changing resolution in
BizHawk. Submode `0x02` drives an apparently unrelated state machine that
touches a `"TEST_MODE"` string.
Every mode reviewed in this chain so far — `0x00`, `0x10`, `0x04`, `0x02`
— has turned out to be infrastructure (memory card I/O, GPU reset, asset/
database loading, resolution switching) rather than a screen with a
visible identity of its own. **Superseded 2026-07-15**: mode `0x02`/submode
`0x02` pumps the one-state wrapper and 14-state child mapped above; the
seven-state attract child within that hierarchy owns the visible loop.

# Mode table

| Mode | Submode | Handler(s) | Structural facts | Proposed screen | `confidence` | Evidence | Notes |
|---|---|---|---|---|---|---|---|
| `0x00` | `0x00` | `FUN_800235f8` | **Reviewed 2026-07-14**: zeroes 8 byte flags (`PTR_DAT_800ac8ec+0x9c..0x9f`, `+0xac..0xaf`), zeroes `PTR_DAT_800ac8e8+0x17`, sets a 16-bit countdown at `+0x22` to `2`, calls `FUN_80023230(1)`. Reads as the "init" step of a 3-step countdown state machine spanning all three submodes of this mode. | Memory Card Auto Load | `suspected` | | Mode `0x00` is guaranteed to be the first mode value the dispatcher ever sees, since `FUN_8002216c`'s boot-time state reset zeroes the mode field itself (see "Known screen sequence" above) — matches this screen being first in the boot sequence. Submode `0x00` reads as an init/reset step generically; nothing card-I/O-specific observed yet — `FUN_80023230` (its one callee) unread. |
| `0x00` | `0x01` | `FUN_80023690` | **Reviewed 2026-07-14**: resets the same `+0x22` countdown to `4`, then calls the widely-shared `FUN_800231b0` "commit/present" routine. Arms the countdown submode `0x02` decrements. | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. Possible sub-step: "load system data" or "prompt to create data" per the user's description — not yet distinguished; nothing in this body is card-specific either. |
| `0x00` | `0x02` | `FUN_80022f04` | **Reviewed 2026-07-14**: decrements the `+0x22` countdown every call; when it underflows to `-1` and the 4 flags submode `0x00` zeroed are still zero, writes `PTR_DAT_800ac8e8+0x17 = 0x80`, then resets `+0x22` to `0x10` and calls `FUN_80023210(0x10)` — a **confirmed transition to mode `0x10`** (see "Mode-transition primitive" above). | Memory Card Auto Load | `suspected` | | Same reasoning as submode `0x00` row. **Correction 2026-07-14**: an earlier version of this note treated the `+0x17 = 0x80` write as a candidate queued-next-mode, hypothesizing a transition to mode `0x80`. `FUN_80023210` is now confirmed as the only function that writes the real mode field, and this handler calls it with `0x10`, not `0x80` — so the actual transition target is `0x10`, confirmed, not `0x80`. `+0x17`'s purpose is still unexplained. Superseded, not deleted. |
| `0x02` | `0x00` | `FUN_8009f820(0x280, 0x1e0)` then `FUN_800231b0` (32 B) | **Reviewed 2026-07-14**: `bzero`s an 8-byte state block and stores the target width/height (`640`/`480`) for submode `0x01`'s sequence below. | | `unverified` | | |
| `0x02` | `0x01` | `FUN_8009f390` (100 B), conditionally `FUN_800231b0` (32 B) if result `> 0` | **Reviewed 2026-07-14, confirmed by the repository owner's own BizHawk observation**: a 7-step state machine that calls `SetDispMask(0)` (display OFF), clears the screen to black at `640×480` (`ClearImage2`+`DrawSync`+`FUN_8009f0a8`), waits a few frames, then `SetDispMask(1)` (display ON) — **a display-off/resize/delay/display-on resolution-change sequence**, exactly matching what the owner recalled seeing in BizHawk. Returns `1` ("done") only after all 7 steps complete, `0` otherwise — explaining why `FUN_80022cf8`'s dispatcher only advances submode (via the shared `FUN_800231b0`/`NextSubmode`) when this returns `> 0`. | | `unverified` | | Confirmed as generic infrastructure (a resolution switcher to `640×480`), not a screen with its own visible identity. |
| `0x02` | `0x02` | `FUN_80049dec` (280 B) | **Reviewed 2026-07-14**: unrelated to the resolution switch above — drives a separate enter/exit/update state machine keyed on `DAT_80105120` (shared with `FUN_80049d3c`, mode `0x04`'s initializer containing the inert `mdb.bin` marker) through three function-pointer tables, then copies a table of records ending at one containing **`PTR_s_TEST_MODE_8001bd74`** — a pointer to the literal string `"TEST_MODE"` — before calling `FUN_80042e1c()`. | Main nested-state pump | `manual` | Function tables and child callbacks reviewed | **Updated 2026-07-15**: `DAT_80105120` is the one-state wrapper; it owns the separate 14-state `DAT_80105124` child whose attract/menu/game-session branches are mapped above. The 42-name array is separate, while child enter callbacks select individual indices through `DAT_800f2908`. |
| `0x04` | `0x00` | `FUN_8002340c` | **Reviewed 2026-07-14** (corrects "single call, no args observed"): mode `0x04`'s handler (`FUN_800230cc`, 112 B) also dispatches on `+0x2a`. This branch, if global `DAT_800ac88c == 0`, checks byte flag `PTR_DAT_800ac8ec[6]`: **zero** → `FUN_800a0cb0()` (reviewed: small flag reset) then `FUN_80023230(2)` — this is `SetSubmode(2)`, **staying in mode `0x04`**, advancing to submode `0x02` below, *not* a mode transition; **nonzero** → `FUN_80049d3c()` (reviewed: initializer containing the inert `"data/mdb/mdb.bin"` marker) then `FUN_80023210(2)` — this *is* `SetMode(2)`, a **confirmed transition to mode `2`**. `PTR_DAT_800ac8ec[6]` is set by submode `0x02` below — first visit takes the "zero" path (wait via submode `0x02`), later visits take the "nonzero" path directly (fast-path, flag already set). | | `unverified` | | **Correction 2026-07-15**: `FUN_8007eea8`, which receives the marker pointer, is `jr ra; nop`; this call is not a music-database load. The 2026-07-14 transition correction remains valid. |
| `0x04` | `0x02` | `FUN_80023474` | Same `FUN_800230cc` dispatcher as above; submode `0x01` calls neither branch. **Reviewed 2026-07-14**: if `FUN_800a0ce0() > 0` (wraps the unreviewed `FUN_800a00d4` — the real "ready" check), sets `PTR_DAT_800ac8ec[6] = 1` (read by submode `0x00` above, enabling its fast-path on the *next* visit to mode `0x04`), then calls `FUN_8002a7a4()` (reviewed: real PsyQ SPU/reverb setup), `FUN_8009b0a8()` (reviewed settings clamp), `FUN_800236cc()` (reviewed no-op), `FUN_80049d3c()` (initializer containing the inert `"data/mdb/mdb.bin"` marker), and `FUN_80023210(2)` — a **confirmed transition to mode `2`**. | | `unverified` | | **Correction 2026-07-15**: this validates settings and configures audio, but does not load `mdb.bin`; `FUN_8007eea8` is a no-op and the 47-record music table is statically linked. See the music-database data map. |
| `0x04` | *(any)* | *(shared tail)* | Every call to `FUN_800230cc`, regardless of submode, also copies `PTR_DAT_800ac8ec[0xbb] = PTR_DAT_800ac8ec[0x52]` unconditionally. | | `unverified` | | |
| `0x10` | `0x00` (default-branch) | `FUN_800232cc` (168 B) | **Reviewed 2026-07-14**: sets 4 fields to `320`/`240`/`4`/`1` (display dimensions), calls `SetDispMask(1)`, its callee `FUN_800222fc` (also reviewed) does a full GPU reset (`ResetGraph`/`GsInitGraph2`/`GsInit3D`/`InitGeom`/`ClearImage2`/`DrawSync` — all real PsyQ calls), conditionally calls `FUN_8002a9dc(&DAT_80118e48, &DAT_8011acb8)` (also reviewed: a generic, 22-call-site asset loader that draws primitives then uploads images to VRAM), then **unconditionally transitions to mode `4`**. Since `SetMode` always resets submode to `0`, this runs first after *any* transition into mode `0x10` and immediately forwards onward every time. | | `unverified` | | **Correction 2026-07-14**: previously proposed **Company** here from the transition graph alone; refuted by reading this handler's actual body and its sibling submode's menu logic (see submode `0x01` row) — reset to `unverified`. Having now also read both of its callees, this submode reads less like a screen at all and more like **generic screen-entry boilerplate**: reset the GPU, conditionally load assets, hand off to mode `4`. This nudges the "title/mode-select" guess (see "Known screen sequence" above) toward mode `4` rather than mode `0x10` itself — mode `0x10`/submode `0x00` looks like a loading gateway *to* whatever mode `4` is, not a screen in its own right. |
| `0x10` | `0x01` (default-branch) | `FUN_80022b30` (456 B) | **Reviewed 2026-07-14**: a real menu — cycles a 3-item selection (`+0x2c`, wrapped `% 3`) via d-pad bits on up to 2 controller ports, confirms with a button-bit, and transitions via a 3-entry destination-mode table `DAT_800ac8e0 = {4, 0x32, 0x20}` (read directly with `tools/ghidra/scripts/DumpShorts.java`). Draws the idle menu (5 calls to `FUN_80021470`) if nothing confirms. | Title / Mode Select | `suspected` | | This is the strongest evidence yet for *any* screen identity in this table: real d-pad-cycle-and-confirm menu logic, not passive display code — see symbol map's `FUN_80022b30` review. Naming it specifically "Title/Mode Select" (vs. just "a menu") is still a genre-informed guess; reading `FUN_80021470`'s draw calls for string/texture references would confirm or refine it. **Open question**: since `FUN_80023210` (`SetMode`) always resets submode to `0`, and only `FUN_800232cc` (submode `0x00`) runs immediately after any transition *into* mode `0x10`, it's not yet clear how submode ever advances to `1` to reach this menu at all — see "Open structural questions" below. **Update 2026-07-14**: having now read submode `0x00`'s two callees (pure GPU reset + a generic, 22-call-site asset loader — see symbol map), submode `0x00` looks like generic loading boilerplate rather than a screen, which nudges this "Title/Mode Select" guess toward being a property of mode `0x10` overall (or specifically its menu submode) rather than something submode `0x00` itself displays. **2026-07-15**: the repository owner notes that BEMANI PS1 ports routinely leave arcade-only functionality compiled into the Consumer build, unreachable via retail controls but not removed — see the quirks doc's new entry. This is a plausible explanation for why no path into this menu has been found: it may simply not be reachable in the Consumer build at all, by design, not because review has missed something. |
| `0x20` | — | `FUN_800219b8` (60 B) | Checks bit `0x40` of a 32-bit field at `+0x54`; if set, calls `FUN_80023210(0x10)` — a **confirmed transition to mode `0x10`**. **Byte-for-byte identical body to mode `0x32`'s handler** (`FUN_80021a30`) — same field, same bit, same call, same target. Reachable *from* mode `0x10`'s own menu (item 2 — see `0x10`/submode `0x01` row), forming a menu↔here loop. | | `unverified` | | |
| `0x32` | — | `FUN_80021a30` (60 B) | Byte-for-byte identical to mode `0x20`'s handler (`FUN_800219b8`) above, including its confirmed transition to mode `0x10` — see that row. Reachable *from* mode `0x10`'s own menu (item 1). | | `unverified` | | |
| `0x80` | — | *(none)* | No handler call at all — just sets `PTR_DAT_800ac8ec[0] = 0` then falls to the shared epilogue. Possibly a "clear/idle" mode rather than a screen. **Confirmed transition target** of `FUN_80022cf8`'s own shared epilogue, from *any* mode, whenever `PTR_DAT_800ac8ec[7] != 0` (see "Mode-transition primitive" above). | | `unverified` | | **Correction 2026-07-14**: an earlier version of this row proposed **Caution** here, reasoning from mode `0x00`'s `+0x17 = 0x80` write. That write turned out not to be the real transition mechanism (see mode `0x00`/submode `0x02`'s note) — the actual confirmed way to reach `0x80` is a global flag check in the dispatcher's own epilogue, reachable from any mode, which reads more like a service/reset/interrupt state than a step in a fixed attract sequence. Reset to `unverified` rather than keep an unsupported guess; superseded, not deleted. |
| `0xff` | `0x00`–`0x04` | `FUN_800234cc` / `FUN_80023500` / `FUN_80023544` / `FUN_8002356c` / `FUN_8002358c` | `FUN_80022fb0` (152 B) also reads `+0x2a` and, if `< 5`, dispatches through a jump table at `0x8001a840` — **confirmed 2026-07-14** by reading its raw bytes (`tools/ghidra/scripts/DumpJumpTable.java`): submode 0-4 map to these 5 functions in order, exactly. All five now **reviewed 2026-07-14**: submode `0x04` (`FUN_8002358c`) calls the real PsyQ kernel function `ResetGraph(1)` and writes `PTR_DAT_800ac8e8[9] = 1` (see symbol-map's review for why this can't affect `main`'s own do-while, and what it might affect instead). Submodes `0x00`/`0x01`/`0x02` each gate a short call sequence behind a distinct global flag (`DAT_800e2a60`, `DAT_800ac88c`, `DAT_800ac890`); submode `0x03` is a bare call to the shared `FUN_800231b0` (now confirmed as `NextSubmode`). **Confirmed 2026-07-14**: reachable via `FUN_80021374`, a service/reset-combo watcher outside the dispatcher tree that transitions here on a specific controller-button combo (see "Submode-transition primitives" above) — `0xff` is a genuine reset/service state, not a sentinel value. | Return-to-attract-loop (Start+Select) | `suspected` | | **Updated 2026-07-15**: the repository owner's observed behavior is now backed by an exact static bit/layout match. The per-frame input producer proves `FUN_80021374` requires Start held (`current & 0x800`) and Select newly pressed (`newly_pressed & 0x100`) before the GPU-reset/loop-restart path. The screen identity remains `suspected` because the final attract-screen pairing is behavioral/domain evidence, while the trigger itself is confirmed. |
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
- ~~How does `DAT_80105120` relate to the 42-name table and the visible game
  states?~~ **Resolved structurally 2026-07-15**: `DAT_80105120` is a
  one-state wrapper pumped by mode `0x02`/submode `0x02`; its state 0 owns the
  separate 14-state child at `DAT_80105124`. That child, its seven-state
  attract child, and its 15-state gameplay child are mapped above. The
  42-name pointer array is not the wrapper's function table; individual enter
  callbacks instead write name indices to `DAT_800f2908`.
- ~~What does `FUN_80021374` do?~~ **Resolved 2026-07-15**: the sole PAD
  producer proves it checks Start held plus Select newly pressed on either
  port, then selects mode `0xff`; the observed Consumer-build behavior is a
  return to the attract loop.
- ~~Which functions write `+0x2a` and is it mode-2-specific?~~ **Resolved
  2026-07-14**: the exhaustive field-xref review found only `SetMode`
  (clear), `NextSubmode` (increment), and `SetSubmode` (direct assignment).
  It is a general phase/substate field shared by multiple modes.
- ~~What consumes the complete 42-entry screen-name pointer array?~~
  **Resolved 2026-07-24**: re-reading `FUN_80049dec` (`DumpFunctionDetail.java`)
  plus a per-entry `DumpDataXrefs.java` sweep of all 42 individual pointer
  slots shows this is not a conditional scan that stops at `TEST_MODE` — it
  is an unconditional copy of the *complete* 42-entry array into a local
  168-byte stack buffer (unrolled 4-at-a-time for entries 0-39, then entries
  40-41 handled directly); the loop's termination test just compares against
  the compile-time-constant address of the `TEST_MODE` slot, an artifact of
  unrolling a fixed-size copy. `FUN_80049dec` remains the *only* function
  referencing any entry of the array — no other consumer exists. The copied
  buffer itself is never read again in this function, and its only remaining
  call (`FUN_80042e1c`) overwrites its own first argument register before
  use, so it does not consume the copy either. See the symbol map's
  "`FUN_80049dec` does not scan for `TEST_MODE`" update for the full
  disassembly evidence.
- ~~What are `PTR_DAT_800ac8e8+0x2c` and `+0x2e`?~~ **Resolved 2026-07-24**:
  `+0x2c` is `FUN_80022b30`'s (mode `0x10`/default submode `0x01`'s menu
  handler) own current-selection index for its 3-item menu — read back and
  incremented/decremented on d-pad input, wrapped `% 3`, then used both to
  index the `DAT_800ac8e0` destination-mode table on confirm and to compute
  the highlighted item's on-screen draw position. `SetMode`/`SetSubmode`
  clearing it on every transition is exactly what a fresh menu cursor needs.
  `+0x2e` was re-checked the same way (a fresh `DumpFieldXrefs.java` pass,
  62 functions) and remains a genuine, exhaustive negative result: only
  `SetMode`/`SetSubmode`/`NextSubmode` ever touch it, and no reader exists
  anywhere in the executable.
- ~~What is `PTR_DAT_800ac8e8+0x17`?~~ **Resolved 2026-07-24**: it is a
  shared glyph/menu-item draw-color scratch byte. The shared draw routine
  `FUN_80021470` reads it as the color/brightness passed to `FUN_80023e9c`
  whenever its own draw-flags argument has bit `0x8000` set (otherwise it
  substitutes a fixed `0x80`). Two more writers beyond mode `0x00`/submode
  `0x02` were found the same pass: `FUN_800ab408` (unconditionally sets
  `0x80`) and `FUN_8009e4cc` (computes a value from `counter_090` and its own
  parameter, likely a pulsing/flashing highlight effect). It is unrelated to
  mode transitions, as already established, and not itself a mode constant —
  `0x80` and `0x10` simply both happen to be plausible brightness/mode values.
- ~~`PTR_DAT_800ac8e8[9]` is written from deep inside the mode-0xff/
  submode-4 handler~~ **Resolved 2026-07-24**: `main` is its own same-frame
  consumer. Its two nested `do`/`while` loop conditions
  (`PTR_DAT_800ac8e8[9] != 0` for the outer reset loop,
  `PTR_DAT_800ac8e8[9] == 0` for the inner per-frame loop) read this byte
  directly through bracket indexing, which a textual `+ 0x9)`-style search
  had missed — the decompiler renders single-byte accesses through this
  `undefined *` pointer as array indexing, not pointer arithmetic. Byte `9`
  is `main`'s own loop-restart flag: `FUN_8002216c` zeroes it every outer
  pass; `FUN_8002358c` (mode `0xff`/submode `4`) is the only writer that ever
  sets it to `1`, forcing the inner per-frame loop to exit early back through
  a full state/GPU reset. `main` is now reconstructed (semantic MIPS
  assembly, `src/ddr5thmix/RuntimeCore.s`) and matches all 408 reference
  bytes; the `runtime-core` module now covers six functions/2,232 bytes.

# Open structural questions

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
  debug-only code). **2026-07-15**: the repository owner points out that
  BEMANI PS1 ports routinely leave arcade-only functionality compiled
  into the Consumer (home) build without a reachable trigger, rather than
  stripped — see the quirks doc's new entry, "Arcade-only functionality
  left in the Consumer build." If this menu is one such leftover, "no
  path found" may be the correct, final answer rather than an unsolved
  gap — worth keeping in mind before spending more effort searching for a
  trigger that may not exist in this build.

# Citations

[1] [/docs/foundations/screen-flow-schema.md](/docs/foundations/screen-flow-schema.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
[3] [/docs/games/ddr-5th-mix-jp-inst-demo-overlay.md](/docs/games/ddr-5th-mix-jp-inst-demo-overlay.md)
[4] [/docs/games/ddr-5th-mix-jp-globals.md](/docs/games/ddr-5th-mix-jp-globals.md)
