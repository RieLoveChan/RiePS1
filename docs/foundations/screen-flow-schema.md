---
type: Schema
title: Screen/Mode Flow Schema
description: Format for mapping a game's top-level screen/state dispatcher to hypothesized and confirmed screen identities.
tags: [ps1, schema, screen-flow, reverse-engineering]
timestamp: 2026-07-13T23:00:00-04:00
---

# Purpose

Some games expose a single dispatcher function that reads a "mode"/"screen"
field and branches to per-screen handlers — see
`/docs/games/ddr-5th-mix-jp-symbol-map.md`'s review of `FUN_80022cf8` for
the discovery that prompted this schema. Once such a dispatcher is found,
mapping every mode value to what screen it actually represents is one of
the highest-leverage reverse-engineering tasks available: it turns a flat
function list into the game's actual flow chart.

# Why this is a separate document from the symbol map

The symbol map (`/docs/foundations/symbol-map-schema.md`) is about a single
function's identity/behavior. A screen-flow document is about a
*relationship* — which mode value routes to which handler, and what that
handler represents in the game's overall structure — so it gets its own
small table rather than being squeezed into symbol-map columns.

# Table columns

One row per distinct mode/submode value the dispatcher handles.

| Column | Meaning |
|---|---|
| Mode / submode | The exact dispatch value(s), hex, matching the dispatcher's own comparisons (e.g. `0x02` / submode `0x00`). |
| Handler(s) | Function address(es) called for this value, cross-referenced to the symbol map. |
| Structural facts | What was directly observed reading the dispatcher/handler disassembly — arguments passed, whether it recurses into a further sub-dispatch, whether it's a no-op. This is `manual`-tier, already-verified information; keep it separate from the hypothesis columns below. |
| Proposed screen | A human- or domain-knowledge-informed guess at what this mode represents (e.g. "title screen", "song select"). May be filled by a contributor with relevant domain expertise before any code-level confirmation exists. |
| `confidence` | `unverified` (no guess yet), `suspected` (a domain-informed guess with no code evidence yet), `manual` (confirmed by reading the handler's own code/behavior), or `verified` (confirmed plus reproducible evidence, e.g. a string/asset reference or runtime observation). Same discipline as `/docs/foundations/symbol-map-schema.md` — a plausible guess from genre knowledge is `suspected`, not `manual`, until the code itself is read. |
| Evidence | What confirmed or refuted the guess: a string reference, a loaded asset name, a comparison against known rhythm-game screen flow, a runtime/emulator observation. Required before `confidence` can be `manual` or higher. |
| Notes | Anything else — open questions, alternate hypotheses considered and rejected, related mode values. |

# Workflow

1. When a mode/screen dispatcher is found, seed the table with every
   structural fact already known (handler addresses, arguments, sub-dispatch
   shape) at `confidence: unverified`, `proposed screen` empty.
2. A contributor with relevant domain knowledge (genre conventions, a
   related game's known flow) fills in `proposed screen` and sets
   `confidence: suspected`, explaining their reasoning in `notes`.
3. Reviewing the handler's own disassembly/decompilation (or other code
   evidence — string tables, asset loads, comparison against a reference)
   either confirms the guess (`confidence: manual`/`verified`, evidence
   filled in) or refutes it (record the negative result in `notes`, reset
   `proposed screen`/`confidence` rather than deleting the history of what
   was tried).

# Citations

[1] [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md)
[2] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
