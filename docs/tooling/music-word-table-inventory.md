---
type: Tool
title: DDR 5th Mix title-associated music word-table inventory
description: Validates the bounded word-stream layout of the central section in all 47 title-associated READ_DT resources without exporting game data.
tags: [ps1, ddr5thmix, music, assets, data-format, validation]
timestamp: 2026-08-15T00:00:00-04:00
---

# Scope

`Inventory-MusicCommandTables.ps1` reads the locally extracted second section
of every title-associated resource. It emits metadata and SHA-256 values only
to an ignored `work/` JSON file; it does not add resource bytes to Git.

```powershell
& .\tools\iso9660\Inventory-MusicCommandTables.ps1 `
  -SectionManifestPath .\work\ddr5thmix-extract\music-resource-sections\manifest.json `
  -SectionDir .\work\ddr5thmix-extract\music-resource-sections `
  -MusicDatabaseJson .\work\ddr5thmix-extract\music-database.json `
  -OutJson .\work\ddr5thmix-extract\music-command-table-inventory.json
```

# Verified structure

Against the lawful `READ_DT.BIN` documented in
[/docs/tooling/iso-asset-inventory.md](/docs/tooling/iso-asset-inventory.md),
all 47 second sections satisfy the same bounded layout:

| Portion | Size | Evidence |
|---|---:|---|
| Header | 12 bytes | The first little-endian word equals the complete section length; two further words follow. |
| Payload | 16,722 total 32-bit words | Every section length minus 12 is divisible by four; individual payloads contain 108–1,206 words. |
| Terminal | One zero 32-bit word | The final word is `0x00000000` in all 47 sections. |

The 47 complete sections total 67,452 bytes. The validator checks the
declared length, alignment, slot uniqueness, common terminal word, and each
local section SHA-256.

# Correction and limits

An earlier observation called these data “12-byte records” solely because the
full section lengths are divisible by 12. Re-alignment at the 12-byte header
shows timing-looking values continue across those arbitrary boundaries. The
evidence therefore supports a 32-bit word stream, not a 12-byte record schema.

The payload is associated with each playable title through the verified
resource-slot table, but its command meanings and any step-chart role are not
yet established. This inventory deliberately does not name individual words
or claim a decoder.