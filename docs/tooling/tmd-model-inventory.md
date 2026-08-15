---
type: Tool
title: DDR 5th Mix TMD model inventory and extraction
description: Scans a lawful local container for structurally complete fixed-pointer TMD models and exports only validated ranges to an ignored workspace.
tags: [ps1, ddr5thmix, assets, tmd, model, extraction]
timestamp: 2026-08-14T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Extract-TmdModels.ps1 `
  -InputPath .\work\ddr5thmix-extract\read_dt.bin `
  -OutJson .\work\ddr5thmix-extract\tmd-inventory.json `
  -ExtractDir .\work\ddr5thmix-extract\tmd
```

The scanner accepts only `0x41` TMD headers with clear flags, a bounded object
list, in-range vertex/normal tables, and primitive packets whose declared input
sizes and GPU modes remain valid. Extracted models remain ignored under `work/`.

# Reproduced result

For lawful `READ_DT.BIN` SHA-256 `004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`, the scan found one validated TMD at offset `0x1633068`: 22 objects, 8,378 bytes, SHA-256 `f6cfb1218abdeaf6df13793c201489e23d0db1d26300926475021419912d6d59`. It was exported locally as `tmd_01633068.tmd`; no semantic model name is claimed.

# Citation

[1] [psx-spx TMD format](https://psx-spx.consoledev.net/cdromfileformats/)
