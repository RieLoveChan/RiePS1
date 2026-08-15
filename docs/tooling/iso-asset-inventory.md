---
type: Tool
title: DDR 5th Mix ISO asset inventory and extraction
description: Recursively inventories the ISO 9660 data track, hashes each file, and optionally extracts all files to an ignored workspace.
tags: [ps1, ddr5thmix, assets, iso9660, extraction]
timestamp: 2026-08-13T00:00:00-04:00
---

# Usage

Inventory the lawful local Mode2/2352 data track without writing extracted
files:

```powershell
& .\tools\iso9660\Inventory-IsoAssets.ps1 `
  -BinPath .\work\ddr5thmix-extract\track.bin `
  -OutJson .\work\ddr5thmix-extract\iso-asset-inventory.json
```

Add `-ExtractDir work/ddr5thmix-extract/iso-files` to extract every ISO file.
The output must remain under an ignored local path; copyrighted game assets
are not committed.

# Current inventory

The supplied data track contains six ISO 9660 files and no subdirectories:

| File | Size | SHA-256 | Classification |
|---|---:|---|---|
| `SLPM_868.97` | 1,052,672 | `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee` | PS-X EXE |
| `SYSTEM.CNF` | 68 | `78826a4a81331c433b9628439415a48c03aedfbc2aafaaa3614c243e31c59c2b` | Boot configuration |
| `READ_DT.BIN` | 32,768,000 | `004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a` | Mixed overlay/resource container; HOW TO PLAY overlay at `0x1630000`, six validated VAB banks (66 raw samples), 16 standalone VAG samples, 298 validated TIM images, and one validated 22-object TMD at `0x1633068` |
| `STR.BIN` | 299,431,936 | `ec6fe3090949faaffa88edd3f7808b02c37b6b1a28d46c20ce62410511f22294` | Sector-aligned VAG ADPCM sample bank; 1,764 headers; see [/docs/tooling/vag-sample-inventory.md](/docs/tooling/vag-sample-inventory.md) |
| `XA.STR` | 33,456,128 | `28e9b8763b353c3bccc6861c5477fa5b27f23074e6219021c157ab51838aa1c8` | CD-XA ADPCM stream; 61 raw-sector streams demultiplexed locally; see [/docs/tooling/xa-audio-demux.md](/docs/tooling/xa-audio-demux.md) |
| `DUMMY.BIN` | 27,648,000 | `f4c77051ab98f1ac6105bc3d3f284bbb9369ddaa6a64e8a333ebc1d1e2b9c76c` | All-zero padding; no asset payload |

# Limits and next decoder work

`STR.BIN` and `XA.STR` are already unpacked from the ISO as complete
containers, but they are not ordinary archive files. `STR.BIN` has now been
identified as a VAG sample bank rather than a video stream. Both root audio
containers are now unpacked locally: VAG samples directly, and XA streams after
reconstructing their raw CD sectors. The next asset-specific work is mapping
these audio identifiers to gameplay/music records and inspecting `READ_DT.BIN`
for further non-executable resources. A replay-driven mapping has now extracted 15 observed READ_DT request slices locally; see [/docs/tooling/cd-read-asset-mapping.md](/docs/tooling/cd-read-asset-mapping.md).
