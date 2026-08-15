---
type: Tool
title: DDR 5th Mix indexed-resource table extraction
description: Bounds-validates 0x44-byte indexed resource headers and separates their non-null sections into ignored local files.
tags: [ps1, ddr5thmix, assets, extraction, resource-table]
timestamp: 2026-08-15T00:00:00-04:00
---

# Scope

`Extract-OffsetTableResources.ps1` handles the descriptor-addressed resource
family whose first little-endian word is `0x00000044`. This value is validated
as the 68-byte table size; the next 16 words are treated only as optional
4-byte-aligned section offsets. The tool does not assign the entries a
semantic name or format.

For every nonzero entry, it requires an offset at or after the header and
strictly before EOF. Duplicate offsets are rejected. It defines the section end
as the next greater unique table offset, or EOF for the final section. The
manifest records the source and section SHA-256 values, offsets, lengths, and
local filenames. The 68-byte header is retained in the original local resource
but is not emitted as an entry section.

# Usage

```powershell
& .\tools\iso9660\Extract-OffsetTableResources.ps1 `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -OutDir .\work\ddr5thmix-extract\offset-table-sections `
  -OutJson .\work\ddr5thmix-extract\offset-table-sections\manifest.json
```

All inputs and outputs are lawful local game data beneath ignored `work/`; no
asset bytes or manifests are committed.

# Reproduced result

Against the descriptor candidates extracted from lawful `READ_DT.BIN` SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`, the
28 resources with this header pass the table validation. They contain 84
non-null sections totalling 5,982,984 bytes, which were separately retained
under ignored `work/` with a JSON manifest.

A bounded LZ verification rejects all 28 as complete `FUN_8002a8b8` streams.
Structural TIM inventory finds zero valid TIM serializations in all 84 emitted
sections. Their leading words form two observed groups, `0x00000d53` (79
sections) and `0x00000e53` (5 sections); this is a classification observation,
not a format identification. No TMD, TIM, audio, or gameplay semantic claim is
made for these sections.