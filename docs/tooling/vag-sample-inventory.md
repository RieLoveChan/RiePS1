---
type: Tool
title: DDR 5th Mix VAG sample inventory
description: Identifies aligned PlayStation VAG headers in a lawfully extracted asset container and records metadata without exporting samples.
tags: [ps1, ddr5thmix, assets, vag, audio, extraction]
timestamp: 2026-08-13T00:00:00-04:00
---

# Usage

Run the inventory only against a lawful local extraction. The JSON report is
metadata only and must remain under the ignored `work/` directory:

```powershell
& .\tools\iso9660\Inventory-VagSamples.ps1 `
  -InputPath .\work\ddr5thmix-extract\assets\STR.BIN `
  -OutJson .\work\ddr5thmix-extract\vag-sample-inventory.json
```

# Result for the supplied revision

`STR.BIN` is not a standard PlayStation STR/MDEC video stream. It has no
standard STR sector header (`0x80010160`) in its 146,207 logical sectors and
is instead a sector-aligned bank of PlayStation VAG ADPCM samples:

| Input SHA-256 | VAG headers | Distinct names | Alignment |
|---|---:|---:|---:|
| `ec6fe3090949faaffa88edd3f7808b02c37b6b1a28d46c20ce62410511f22294` | 1,764 | 63 | 2,048 bytes |

The first valid header is at `0x20800` and records `demo_02`, 15,328 data
bytes at 18,500 Hz. Adjacent headers are most commonly 16,384 or 32,768 bytes
apart. The inventory validates the VAG magic, big-endian size/rate fields, and
that every reported payload remains within `STR.BIN`; it does not export audio
or commit extracted game data.

`XA.STR` is a separate XA ADPCM stream: raw CD-XA sector subheaders use the
audio submode `0x64` and interleave channels. It remains the next audio-decoder
target. No root ISO file is currently evidenced as a standard STR/MDEC video
container.

# Format references

The standard PS1 STR video sector structure, including its `0x80010160` magic,
is described by [FFmpeg's PSX STR demuxer](https://nest-open-source.googlesource.com/manifest_repos/ffmpeg/%2B/refs/heads/main/libavformat/psxstr.c).
The CD-XA subheader fields used to classify `XA.STR` are documented by
[psx-spx](https://psx-spx.consoledev.net/cdromfileformats/).