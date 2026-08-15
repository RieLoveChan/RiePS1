---
type: Tool
title: DDR 5th Mix counted-offset resource extraction
description: Validates and separates descriptor resources with a counted monotonic offset directory while preserving declared trailing ranges.
tags: [ps1, ddr5thmix, assets, extraction, descriptors]
timestamp: 2026-08-15T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Split-CountedOffsetResources.ps1 `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -OutDir .\work\ddr5thmix-extract\header1b-sections `
  -OutJson .\work\ddr5thmix-extract\header1b-sections\manifest.json
```

The default contract accepts a leading count of 27. It reads 27 offsets from
word five, requires them to be strictly increasing and within the declared end
at word four, emits each bounded section, and writes any bytes after the
declared end as a separate local suffix. All outputs remain ignored under
`work/`.

# Reproduced result

Two descriptor resources beginning with `0x0000001b` satisfy this contract.
They yield 54 neutral sections totalling 121,264 bytes and two suffixes totalling
38,288 bytes. TIM, VAG, VAB, and TMD validators accept zero structures across
all 56 outputs. The table structure and raw sections are established; their
format and semantic roles remain unassigned.