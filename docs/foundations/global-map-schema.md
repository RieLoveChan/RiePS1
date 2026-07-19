---
type: Schema
title: Global Map Schema
description: CSV columns and evidence rules for fixed-address data symbols and pointed-to layouts.
tags: [ps1, schema, global-map, reverse-engineering]
timestamp: 2026-07-19T00:00:00-04:00
---

# Purpose

A function symbol map cannot describe fixed-address data symbols without
mixing two different kinds of evidence. Each target revision may therefore
provide a `globals.csv` beside its function map. One row represents one symbol
stored at a fixed address in the imported image. Fields reached through a
pointer are documented in the accompanying concept, not assigned invented
absolute addresses in the CSV.

# CSV columns

| Column | Meaning |
|---|---|
| `address` | Fixed runtime address, hexadecimal with a `0x` prefix. |
| `size` | Size in bytes of the symbol stored at `address`; blank only when not established. |
| `proposed_name` | Current symbol name. Tool-default names remain valid until semantics are verified. |
| `data_type` | Narrowest supported C-like type, without implying original source spelling. |
| `storage_kind` | `value`, `pointer`, `array`, or `table`. |
| `points_to` | Named partial layout for pointer symbols, otherwise empty. This is a type relation, not a fixed target address. |
| `namespace` | Game/module grouping if established, otherwise empty. |
| `symbol_source_type` | Raw source type reported by the analysis tool. |
| `confidence` | Same ordered vocabulary as the function symbol map: `unverified`, `tool_heuristic`, `library_signature`, `manual`, or `verified`. |
| `source_status` | `decompiler_output_only`, `disassembly_reviewed`, `hand_written_source`, or `runtime_verified`. |
| `verification_evidence` | Reproducible evidence for every row above `unverified`. |
| `reference_count` | Number of references at the recorded export/review point, when known. |
| `overlay` | Owning image/overlay, normally `main` for the boot executable. |
| `notes` | Uncertainty, aliases, lifetime restrictions, or other qualifications. |

# Pointed-to layouts

The CSV records only the pointer slot's fixed address and size. Its companion
concept may list observed field offsets, widths, conservative names, and
evidence. Unknown padding remains unknown. A field offset is never converted
to an absolute address unless runtime evidence establishes a stable target.

# Acceptance

A global reaches `verified` only when its address, storage width, and stated
operation have reproducible static comparison or runtime evidence. A verified
pointer slot does not automatically verify every field of the object it points
to. Semantic field names must remain conservative and uncertainties explicit.

# Citations

[1] [/docs/foundations/symbol-map-schema.md](/docs/foundations/symbol-map-schema.md)
[2] [/docs/workflows/decompile-recompile.md](/docs/workflows/decompile-recompile.md)
