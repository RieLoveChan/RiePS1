---
type: Schema
title: Revision Manifest Schema
description: Required fields for a game revision's provenance manifest and its tool-version record.
tags: [ps1, schema, provenance, manifest]
timestamp: 2026-07-13T00:00:00-04:00
---

# Purpose

Backlog item 3 of `/docs/workflows/decompile-recompile.md` and the "Baseline
accepted" evidence gate both require a revision manifest before analysis work
begins. This schema fixes the fields every per-game manifest concept under
`/docs/games/` must carry so manifests stay comparable and reproducible.

# Revision identity

- `game` — Display title as printed on packaging/disc.
- `region` — Disc region (e.g. Japan, USA, Europe).
- `serial` — Disc serial as read from `SYSTEM.CNF`'s `BOOT=` line (source of
  truth), noted separately from any external database's serial if they differ.
- `success_contract` — One of `byte_match` (matching decompilation), or
  `functional_match` (behavior-equivalent recompilation), or `host_port`
  (static recompilation targeting a new host). See `/docs/tooling/toolchain.md`
  "Selection decisions". Record who decided and when.

# Input provenance

- `source_container` — File name, format (CHD/BIN+CUE/etc.), byte size, and
  SHA-256 of the exact file a contributor supplied locally. Never the file
  itself.
- `container_tool_hashes` — Any hashes a conversion tool reports natively (e.g.
  `chdman info`'s CHD SHA-1 and raw-data SHA-1), kept distinct from hashes this
  project computed independently.
- `tracks` — One entry per disc track: number, mode (e.g. `MODE2/2352`),
  sector count, extracted file SHA-256, and the exact extraction command.
- `redump_cross_check` — `verified`, `not_yet_verified`, or `mismatch`, plus
  notes. Do not claim Redump equivalence without an explicit comparison.

# Boot executable

- `path` — Path as it appears in `SYSTEM.CNF`'s `BOOT=` line.
- `extent_lba` / `size` — Directory-record location and byte size on the data
  track.
- `sha256` / `sha1` — Hashes of the extracted executable bytes.
- `header` — Parsed PS-X EXE header fields: `pc0`, `gp0`, `t_addr`, `t_size`,
  `d_addr`, `d_size`, `b_addr`, `b_size`, `s_addr`, `s_size`.

# Tool-version record

For every tool used to produce the manifest, record: name, version/build
string, source (official release URL or local-only note), and the exact
invocation (arguments, not just the tool name). Tools that must stay local per
`/docs/foundations/legal-provenance.md` (e.g. `chdman`) are still named and
versioned here even though the binary itself is git-ignored.

# Non-goals

This schema does not cover symbol maps, function-match confidence, or build
manifests — those belong to later workflow stages once a target and contract
are fixed.

# Citations

[1] [/docs/workflows/decompile-recompile.md](/docs/workflows/decompile-recompile.md)
[2] [/docs/foundations/legal-provenance.md](/docs/foundations/legal-provenance.md)
