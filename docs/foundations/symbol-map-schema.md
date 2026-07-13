---
type: Schema
title: Symbol Map Schema
description: Required fields and confidence tiers for a game revision's function/global symbol map.
tags: [ps1, schema, symbol-map, reverse-engineering]
timestamp: 2026-07-13T00:00:00-04:00
---

# Purpose

Workflow step 3 of `/docs/workflows/decompile-recompile.md` ("Build a symbol
map") and the "Function accepted" evidence gate both require every semantic
name to carry a confidence level and an evidence trail. `/docs/foundations/
platform-architecture.md` already lists the required fields (address, size,
confidence, callers/callees, data references, overlay, proposed name, source
status, verification evidence); this schema fixes their format so a symbol
map is machine-generatable, diffable, and comparable across revisions.

# Why a CSV, not a markdown table

A base PS1 executable routinely has 1,000+ functions after auto-analysis.
Markdown tables of that size are unreadable and slow to diff meaningfully.
Each per-game symbol map is therefore a CSV file (`symbol-map.csv`) sitting
next to that game's revision manifest concept, with an OKF concept document
alongside it that states methodology, confidence-tier definitions, summary
statistics, and links — the concept is what a human/agent reads first; the
CSV is the `resource` it points at. Keep observations (what a tool reported)
distinct from hypotheses (what a contributor believes but hasn't verified) —
that distinction lives entirely in the `confidence` and `source_status`
columns below, never in the `proposed_name` alone.

# CSV columns

| Column | Meaning |
|---|---|
| `address` | Entry point, hex with `0x` prefix, e.g. `0x80020700`. |
| `size` | Function body size in bytes, as Ghidra (or another tool) currently delimits it. Boundaries can be wrong; do not treat as ground truth. |
| `proposed_name` | Current best name. Tool-default names (`FUN_########`) are valid values, not errors — they mean "no claim made yet." |
| `namespace` | Library/module grouping if known (e.g. a PsyQ library name), else empty. |
| `symbol_source_type` | The raw source-type value the analysis tool reports for this symbol (e.g. Ghidra's `DEFAULT`/`ANALYSIS`/`IMPORTED`/`USER_DEFINED`). Kept distinct from `confidence` because a tool's own source-type vocabulary rarely maps cleanly onto the tiers below; record it anyway so a later, more precise tier assignment doesn't require re-running analysis. |
| `confidence` | One of the tiers below. Required. |
| `source_status` | One of: `decompiler_output_only`, `disassembly_reviewed`, `psyq_object_compared`, `hand_written_source`, `runtime_verified`. Required — this is what the "Function accepted" gate actually checks. |
| `verification_evidence` | Free text: what was compared, against what, and how (e.g. "PsyQ 4.4.0 signature match via ghidra_psx_ldr's PsyQ Signatures analyzer, tool version X, run <date>; not independently re-verified"). Never leave blank for anything above `unverified` confidence. |
| `caller_count` / `callee_count` | Counts only, from the analysis tool's call graph at export time. The full graph is reproducible from the Ghidra project (or equivalent) and is not duplicated here. |
| `overlay` | Which overlay/segment the function belongs to, or `main` if there are none in this revision (confirm per-revision; do not assume). |
| `notes` | Anything else worth a human's attention (e.g. "GTE macro pseudo-function", "stack frame looks miscomputed"). |

# Confidence tiers

Ordered lowest to highest trust. A tier describes how the *name and
boundaries* were obtained — it says nothing about whether the function's
*decompiled behavior* has been validated; that is `source_status`'s job.

1. **`unverified`** — Default tool output with no matching signature or
   review (`FUN_########` style names, or any name nobody has checked).
2. **`tool_heuristic`** — A tool proposed a name/boundary via heuristics
   (e.g. calling-convention or stack-shape guesses) without a specific
   library/version match.
3. **`library_signature`** — A tool matched the function against a named
   library signature database tied to a specific SDK/library version (e.g.
   ghidra_psx_ldr's PsyQ `.gdt` signatures). Strong identity evidence, but
   the matched body is still tool output, not human-reviewed.
4. **`manual`** — A contributor read the disassembly/decompilation and
   confirmed or corrected the name, boundaries, and behavior by hand.
5. **`verified`** — `manual` plus reproducible comparison evidence per the
   "Function accepted" gate (object/instruction diff, or a runtime test),
   recorded in `verification_evidence`.

Bulk tool exports land at `unverified`, `tool_heuristic`, or
`library_signature` automatically; `manual`/`verified` are only ever set by a
human reviewing a specific function (or an agent doing so on a human's
behalf with the review itself recorded as evidence).

# Non-goals

This schema does not define a call-graph interchange format or a data/global
variable map — globals should get their own `globals.csv` following the same
confidence-tier vocabulary once that work starts; this covers functions only.

# Citations

[1] [/docs/foundations/platform-architecture.md](/docs/foundations/platform-architecture.md)
[2] [/docs/workflows/decompile-recompile.md](/docs/workflows/decompile-recompile.md)
