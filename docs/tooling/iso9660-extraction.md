---
type: Tool Doc
title: ISO 9660 Extraction Tools
description: PowerShell tools that extract and hash a PS1 boot executable or an arbitrary file from a raw data track.
resource: /tools/iso9660/
tags: [ps1, iso9660, tooling, provenance]
timestamp: 2026-07-13T00:00:00-04:00
---

# Purpose

Reads a Mode2/2352 raw data track (as produced by `chdman extractcd`), parses
the Primary Volume Descriptor and root directory, finds `SYSTEM.CNF`, resolves
its `BOOT=` line, then extracts and hashes the named PS-X EXE and parses its
header. Used to populate the boot-executable section of a
`/docs/foundations/revision-manifest-schema.md`-shaped manifest.

`Extract-IsoFile.ps1` uses the same sector layout but recursively resolves an
arbitrary ISO 9660 path. It emits the file's extent, byte size, SHA-1, and
SHA-256 as JSON and optionally writes the bytes to a caller-selected ignored
path. This supports reproducible research on individual files without
publishing proprietary data.

# Usage

```powershell
.\tools\iso9660\Read-BootExecutable.ps1 -BinPath <path-to-track.bin> [-OutDir <dir>]
.\tools\iso9660\Extract-IsoFile.ps1 -BinPath <path-to-track.bin> -IsoPath <disc/path> [-OutFile <ignored-path>]
```

`-OutDir`, if given, writes the extracted executable bytes there in addition
to printing a JSON report to stdout. Assumes a single-track, Mode2 Form 1 data
track with a 24-byte raw sector header and 2048-byte user data region; pass
`-SectorSize`/`-SectorHeaderSize`/`-SectorDataSize` to override for other
sector layouts (untested against multi-track discs or Mode 1 images).

# Scope and limitations

`Read-BootExecutable.ps1` only walks the root directory today; PS1 boot
executables are conventionally at disc root, which held for the one input
tested (`/docs/games/ddr5thmix/revision-manifest.md`). `Extract-IsoFile.ps1` traverses
subdirectories and ignores ISO 9660 `;version` suffixes while matching path
components case-insensitively.

Both tools currently assume single-extent files and directories in a
single-track Mode2 Form 1 image. Multi-extent records, interleaved files,
multi-track layouts, and Mode 1 images remain untested.

# Citations

[1] [ECMA-119 (ISO 9660) specification](https://www.ecma-international.org/publications-and-standards/standards/ecma-119/)
[2] [PlayStation Specifications (psx-spx) — CDROM file system](https://psx-spx.consoledev.net/cdromfilesystem/)
