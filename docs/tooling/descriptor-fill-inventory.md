---
type: Tool
title: DDR 5th Mix descriptor fill-resource inventory
description: Proves that descriptor-addressed candidates are uniform fill bytes rather than asset payloads.
tags: [ps1, ddr5thmix, assets, descriptors, validation]
timestamp: 2026-08-15T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Inventory-FillResources.ps1 `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -Filter 'lba_08*.bin' `
  -OutJson .\work\ddr5thmix-extract\format-probes\ff-fill-resources.json
```

The tool filters candidate files by their first little-endian word, checks every
byte against `ExpectedByte`, and records per-file SHA-256 metadata. It does not
create copies of game data.

# Reproduced result

For the lawful `READ_DT.BIN` extraction with SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`, all 17
candidate descriptors beginning with `0xffffffff` are entirely `0xff`. They
total 479,405 bytes. This establishes padding/fill for these ranges, not an
asset format or semantic resource; they are excluded from remaining decoder
work.