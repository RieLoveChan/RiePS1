---
type: Quirk Log
title: Dance Dance Revolution 5th Mix (Japan) — Non-Standard Practices
description: Non-standard/undefined-behavior-reliant code found while reverse-engineering SLPM_868.97;1, tracked for byte-match reproduction rather than "correction."
tags: [ps1, ddr5thmix, quirks, reverse-engineering]
timestamp: 2026-07-13T00:00:00-04:00
---

Schema: [/docs/foundations/quirks-schema.md](/docs/foundations/quirks-schema.md).
Revision: [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md).
Symbol map: [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md).

No entries yet. Manual review so far (the PsyQ crt0 chain and `main`'s game
loop, see the symbol map) turned up nothing outside standard PsyQ 4.4.0
behavior — worth stating explicitly rather than leaving silence ambiguous
between "not reviewed" and "reviewed, found nothing unusual."

Add a `###` entry here, per
[/docs/foundations/quirks-schema.md](/docs/foundations/quirks-schema.md),
the first time review of a DDR-5th-Mix-specific function (not PsyQ library
code) turns up something a clean reimplementation wouldn't naturally
produce: reliance on undefined behavior, timing assumptions, self-modifying
code, hand-written assembly mixed with compiled C, unusual register/stack
usage, or similar.

# Citations

[1] [/docs/foundations/quirks-schema.md](/docs/foundations/quirks-schema.md)
