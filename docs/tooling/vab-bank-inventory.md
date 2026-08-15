---
type: Tool
title: DDR 5th Mix VAB bank inventory and raw-sample extraction
description: Bounds-validates replay-observed PlayStation VAB banks and optionally exports their raw SPU-ADPCM samples only to an ignored local workspace.
tags: [ps1, ddr5thmix, assets, vab, audio, extraction]
timestamp: 2026-08-14T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Inventory-VabBanks.ps1 `
  -InputPath .\work\ddr5thmix-extract\observed-rage-17sai\<slice>.bin `
  -OutJson .\work\ddr5thmix-extract\vab-inventory.json `
  -ExtractDir .\work\ddr5thmix-extract\vab-samples
```

The extractor accepts only a `pBAV` version-7 bank when its declared size,
program/tone limits, 256-entry VAG-size table, and every raw sample extent
are internally consistent. It writes raw `.spuadpcm` payloads without adding
synthetic VAG headers; all outputs remain under ignored `work/`.

# Reproduced result

Against the 15-request partial Rage/song-17-sai/Maniac replay extraction, the
two complete VAB slices validate and export as follows:

| Frame | Slice SHA-256 | Programs | Tones | Raw samples exported |
|---:|---|---:|---:|---:|
| 1156 | `9980d72eafc5637cdf66bc39235d075f77c8b4c5121401fdc6c7b3cb7193630f` | 3 | 33 | 31 |
| 1878 | `ef7e755b1b4a8c8f70659589ee61eeb2d7eabeabe27377f94f7d47407830137a` | 1 | 15 | 15 |

The source header stores the last VAG index, so the valid sample count is that
field plus one. These are format and boundary results only; neither bank nor
sample has been assigned a song or gameplay name.

# Citation

[1] [psx-spx VAB/VH/VB format](https://psx-spx.consoledev.net/cdromfileformats/)
