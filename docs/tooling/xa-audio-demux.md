---
type: Tool
title: DDR 5th Mix XA audio demultiplexing
description: Preserves raw Mode2 sectors and separates CD-XA ADPCM streams by file and channel into ignored local outputs.
tags: [ps1, ddr5thmix, assets, xa, audio, extraction]
timestamp: 2026-08-13T00:00:00-04:00
---

# Usage

The XA subheaders required by a decoder are not present in a 2,048-byte ISO
file extraction. Run against the lawful local raw `MODE2/2352` track:

```powershell
& .\tools\iso9660\Demux-XaAudio.ps1 `
  -BinPath .\work\ddr5thmix-extract\track.bin `
  -StartLba 1000 `
  -FileSize 33456128 `
  -OutDir .\work\ddr5thmix-extract\xa-raw `
  -OutJson .\work\ddr5thmix-extract\xa-audio-inventory.json
```

Decode the resulting raw streams locally with FFmpeg:

```powershell
ffmpeg -f psxstr -i .\work\ddr5thmix-extract\xa-raw\file_01_channel_00.str `
  -map 0:a:0 -c:a pcm_s16le .\work\ddr5thmix-extract\xa-wav\file_01_channel_00.wav
```

# Result for the supplied revision

For raw-track SHA-256 `c414a87c81b7a7a2104f18739a1dca7c256c84f8ff2202ee29f307e72967a935`,
the XA extent at LBA 1,000 comprises 16,336 audio sectors. The demultiplexer
assigns all of them to 61 `(file_id, channel)` streams and records nine sector
end markers. It writes 61 local raw `.str` streams; FFmpeg 8.1.2 converted all
61 to WAV without failure. `file_01_channel_00.wav` validates as stereo PCM at
37,800 Hz with duration 93.760000 seconds.

The file and channel IDs are container routing metadata, not song names. Their
mapping to the game's music database remains a separate static/dynamic analysis
task. Raw streams and WAV files are copyrighted game assets and remain under
ignored `work/` paths.

# Format reference

CD-XA file, channel, submode, and coding fields are documented by
[psx-spx](https://psx-spx.consoledev.net/cdromfileformats/).