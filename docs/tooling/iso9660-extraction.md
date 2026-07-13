---
type: Tool Doc
title: ISO 9660 Boot-Executable Reader
description: PowerShell script that resolves SYSTEM.CNF and extracts/hashes a PS1 boot executable from a raw data track.
resource: /tools/iso9660/Read-BootExecutable.ps1
tags: [ps1, iso9660, tooling, provenance]
timestamp: 2026-07-13T00:00:00-04:00
---

# Purpose

Reads a Mode2/2352 raw data track (as produced by `chdman extractcd`), parses
the Primary Volume Descriptor and root directory, finds `SYSTEM.CNF`, resolves
its `BOOT=` line, then extracts and hashes the named PS-X EXE and parses its
header. Used to populate the boot-executable section of a
`/docs/foundations/revision-manifest-schema.md`-shaped manifest.

# Usage

```powershell
.\tools\iso9660\Read-BootExecutable.ps1 -BinPath <path-to-track.bin> [-OutDir <dir>]
```

`-OutDir`, if given, writes the extracted executable bytes there in addition
to printing a JSON report to stdout. Assumes a single-track, Mode2 Form 1 data
track with a 24-byte raw sector header and 2048-byte user data region; pass
`-SectorSize`/`-SectorHeaderSize`/`-SectorDataSize` to override for other
sector layouts (untested against multi-track discs or Mode 1 images).

# Scope

Only walks the root directory today. PS1 boot executables are conventionally
at disc root, which held for the one input tested
(`/docs/games/ddr-5th-mix-jp.md`). Extend directory traversal if a future
revision's `BOOT=` path includes subdirectories.

# Citations

[1] [ECMA-119 (ISO 9660) specification](https://www.ecma-international.org/publications-and-standards/standards/ecma-119/)
[2] [PlayStation Specifications (psx-spx) — CDROM file system](https://psx-spx.consoledev.net/cdromfilesystem/)
