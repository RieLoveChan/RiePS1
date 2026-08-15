---
type: Tool
title: DDR 5th Mix descriptor extraction coverage verifier
description: Verifies that every descriptor-addressed READ_DT range exists locally with its declared length and SHA-256.
tags: [ps1, ddr5thmix, assets, descriptors, verification]
timestamp: 2026-08-15T00:00:00-04:00
---

# Usage

```powershell
& .\tools\iso9660\Test-DescriptorExtractionCoverage.ps1 `
  -ManifestPath .\work\ddr5thmix-extract\descriptor-table-assets\manifest.json `
  -InputDir .\work\ddr5thmix-extract\descriptor-table-assets `
  -OutJson .\work\ddr5thmix-extract\format-probes\descriptor-extraction-coverage.json
```

The verifier checks each manifest entry's filename, byte length, and SHA-256. It
returns nonzero if any resource is missing or differs. It only writes the JSON
report beneath the caller-selected ignored workspace.

# Reproduced result

Against the lawful local `READ_DT.BIN` descriptor extraction, the manifest has
544 ranges totalling 32,281,965 declared bytes. The verifier reports
`valid_count: 544` and `invalid_count: 0`. This proves complete physical
retention of the descriptor-addressed ranges; it does not claim that every
range's file format or gameplay role is known.