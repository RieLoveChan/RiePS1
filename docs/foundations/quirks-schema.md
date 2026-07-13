---
type: Schema
title: Quirk Entry Schema
description: Format for recording non-standard engineering practices found during reverse engineering, and when to promote one from a single game to a cross-game vendor pattern.
tags: [ps1, schema, quirks, reverse-engineering]
timestamp: 2026-07-13T00:00:00-04:00
---

# Purpose

PS1-era developers (Konami included) routinely relied on undefined behavior,
timing assumptions, hand-tuned assembly, or toolchain-specific tricks that a
"clean" reimplementation would naturally avoid. For a `byte_match` success
contract (see `/docs/games/ddr-5th-mix-jp.md`), these are not bugs to fix —
they are exact behavior a matching decompilation must reproduce. This schema
fixes how a finding gets recorded so it survives being useful across games,
without over-generalizing from a single observation.

# Two-tier structure

1. **Game-scoped file**: every finding starts in that game's
   `docs/games/<game>-quirks.md`, close to the evidence that produced it.
2. **Cross-game file**: `/docs/foundations/vendor-quirks.md` holds only
   entries with `status: confirmed_shared` — i.e. the same pattern has been
   independently observed in a second game, or is backed by an external
   citation establishing it as a known vendor/toolchain convention rather
   than this game's own idiosyncrasy. A promoted entry stays in both places:
   the game file keeps the original, game-specific evidence; the shared file
   holds the generalized description and links back to every game that
   exhibits it.

Do not create or promote to the shared file from a single game's evidence
alone — one observation is a hypothesis about a vendor pattern, not a
pattern. This mirrors the confidence-tier discipline in
`/docs/foundations/symbol-map-schema.md`: don't silently turn a guess into a
generalized claim.

# Quirk entry fields

Each quirk is a `###`-level subsection within the game's quirks file (or the
shared file, once promoted), not a separate document — quirks are prose plus
short evidence, not large enough to warrant CSV treatment like the symbol
map.

| Field | Meaning |
|---|---|
| Title | Short name for the quirk, as a `###` heading. |
| `status` | `game_specific` (default), `suspected_shared` (contributor believes it may be a vendor/engine pattern but has only one game's evidence), or `confirmed_shared` (promoted to `/docs/foundations/vendor-quirks.md`). |
| Location | Function/address/file where it was observed, linking to the relevant symbol-map row if one exists. |
| What's non-standard | What a "clean," spec-conforming implementation would do instead, and what this code actually does. |
| Evidence | How it was found: disassembly/decompilation read, a tool warning, a comparison result. Cite the exact tool/command/date per `/docs/foundations/legal-provenance.md`'s provenance expectations. |
| Why it matters | Consequence for the success contract — e.g. "must be bit-for-bit reproduced, not corrected" for `byte_match`, or "may be safely normalized" for `functional_match`. |
| Citations | External sources if this is a known documented pattern (community wikis, other decompilation projects, hardware docs), when available. |

# Non-goals

This is not a bug tracker for the reverse-engineering *tooling* (Ghidra,
scripts) — that belongs in the relevant tool doc under `/docs/tooling/`, or
just fixed in the script. It is specifically for non-standard practices in
the *target game's own code*.

# Citations

[1] [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md)
[2] [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md)
