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

# READ_DT.BIN sample bank

The same inventory accepts the lawful local `READ_DT.BIN` extraction:

```powershell
& .\tools\iso9660\Inventory-VagSamples.ps1 `
  -InputPath .\work\ddr5thmix-extract\read_dt.bin `
  -OutJson .\work\ddr5thmix-extract\read-dt-vag-inventory.json
& .\tools\iso9660\Extract-VagSamples.ps1 `
  -InputPath .\work\ddr5thmix-extract\read_dt.bin `
  -OutDir .\work\ddr5thmix-extract\read-dt-vag
```

For `READ_DT.BIN` SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`, it
finds and bounds-validates 16 uniquely named VAG samples at 2,048-byte
alignment. They include `fail_01` through `fail_06` and `res_00` through
`res_14`; the first output, `0000_es_14.vag`, validates with FFprobe 8.1.2 as
mono `adpcm_psx` at 14,500 Hz, duration 3.543448 seconds. The 16 outputs stay
under ignored `work/`.
# Optional lawful-local extraction

To write the individual VAG files into an ignored local directory:

```powershell
& .\tools\iso9660\Extract-VagSamples.ps1 `
  -InputPath .\work\ddr5thmix-extract\assets\STR.BIN `
  -OutDir .\work\ddr5thmix-extract\vag
```

For the recorded input this writes 1,764 `.vag` files. FFprobe 8.1.2 validates
the first output, `0000_demo_02.vag`, as mono `adpcm_psx` at 18,500 Hz with a
duration of 1.449946 seconds. The output files are copyrighted game assets and
remain ignored under `work/`.
# Format references

The standard PS1 STR video sector structure, including its `0x80010160` magic,
is described by [FFmpeg's PSX STR demuxer](https://nest-open-source.googlesource.com/manifest_repos/ffmpeg/%2B/refs/heads/main/libavformat/psxstr.c).
The CD-XA subheader fields used to classify `XA.STR` are documented by
[psx-spx](https://psx-spx.consoledev.net/cdromfileformats/).