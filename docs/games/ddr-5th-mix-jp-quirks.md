---
type: Quirk Log
title: Dance Dance Revolution 5th Mix (Japan) — Non-Standard Practices
description: Non-standard/undefined-behavior-reliant code found while reverse-engineering SLPM_868.97;1, tracked for byte-match reproduction rather than "correction."
tags: [ps1, ddr5thmix, quirks, reverse-engineering]
timestamp: 2026-07-15T16:00:00-04:00
---

Schema: [/docs/foundations/quirks-schema.md](/docs/foundations/quirks-schema.md).
Revision: [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).

Manual review of the PsyQ crt0 chain and `main`'s game loop (see the
symbol map) turned up nothing outside standard PsyQ 4.4.0 behavior —
worth stating explicitly rather than leaving silence ambiguous between
"not reviewed" and "reviewed, found nothing unusual." One entry below,
from later review of DDR-5th-Mix-specific code.

Add a `###` entry here, per
[/docs/foundations/quirks-schema.md](/docs/foundations/quirks-schema.md),
the first time review of a DDR-5th-Mix-specific function (not PsyQ library
code) turns up something a clean reimplementation wouldn't naturally
produce: reliance on undefined behavior, timing assumptions, self-modifying
code, hand-written assembly mixed with compiled C, unusual register/stack
usage, or similar.

### Arcade-only functionality left in the Consumer (home) build, unreachable but not removed

`status: suspected_shared`

**Location**: the 42-entry screen-name string table at `0x8001bb10`
(includes a literal `"TEST_MODE"` entry); the still-unresolved question
of how mode `0x10`/submode `0x01`'s interactive menu (`FUN_80022b30`) is
ever actually reached in play (see
`/docs/games/ddr-5th-mix-jp-screen-flow.md`'s open structural
questions).

**Correction 2026-07-15**: an earlier version of this entry also cited
`FUN_80021374` (the service/reset-combo watcher that transitions to mode
`0xff`) as arcade-leftover evidence. The repository owner has since
described a real, standard Consumer-build feature this matches
structurally much better: pressing **Start+Select** during the actual
game loop (outside the Caution screen) immediately returns to the
`KONAMI`/`BEMANI`/`TOSHIBA` attract-loop screens — a legitimate,
documented BEMANI convention, not an inaccessible leftover. `FUN_80021374`
transitioning to mode `0xff` on a specific 2-word button-combo check is a
strong structural match for exactly this. Withdrawn as arcade-leftover
evidence, superseded not deleted; see the screen-flow doc's confirmed
transitions for the corrected reading. The exact bit values checked
(`0x800`/`0x100`) have not been independently confirmed against this
game's actual controller-bit convention as meaning "Start+Select"
specifically — treat the combo identity as a strong structural match,
not a byte-level proof, until that's checked.

**What's non-standard**: the repository owner (former StepMania Team
developer) notes that PS1 releases of BEMANI titles are ports of their
arcade original, and Konami's actual practice — per the owner's
professional background in the genre, not yet independently confirmed
in a second game in this project — is to leave arcade-specific
service/test/debug functionality compiled into the "Consumer" (Konami's
own term for home-console) build rather than stripping it, even though
it's unreachable through the retail control scheme. A from-scratch
home-only reimplementation would have no reason to include such code at
all.

**Evidence**: the 42-entry screen-name table's copy loop in
`FUN_80049dec` stops exactly at a `"TEST_MODE"`-labeled entry — a real,
literal string, but with no confirmed reachable trigger found for the
menu it would presumably present. This doesn't *prove* arcade-leftover
code by itself, but the owner's account gives a coherent explanation for
why mode `0x10`'s menu (`FUN_80022b30`) has so far appeared structurally
unreachable through any confirmed code path — it need not be reachable
at all in the Consumer build. (`FUN_80021374`'s mode-`0xff` transition,
previously grouped with this evidence, is now understood as the
legitimate Start+Select feature above, not part of this quirk.)

**Why it matters**: for this project's `byte_match` success contract,
this code must be reproduced exactly as-is, not treated as dead code to
prune or "correct" — and its presence is not evidence that the features
it implements (test mode, the `FUN_80022b30` menu) are actually
reachable via retail PS1 hardware. Absence of a found trigger path
should not, by itself, be read as "this code is unused/vestigial and
therefore unimportant" for reproduction purposes.

# Citations

[1] [/docs/foundations/quirks-schema.md](/docs/foundations/quirks-schema.md)
