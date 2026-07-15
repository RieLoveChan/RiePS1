---
type: Data Map
title: Dance Dance Revolution 5th Mix (Japan) — Linked Music Database
description: Reproducible map and export of the 47-record music_info table linked into SLPM-86897.
resource: /docs/games/ddr-5th-mix-jp-music-database.csv
tags: [ps1, ddr5thmix, music-database, data-map, reverse-engineering]
timestamp: 2026-07-15T18:00:00-04:00
---

Revision: [/docs/games/ddr-5th-mix-jp.md](/docs/games/ddr-5th-mix-jp.md).
Data: [ddr-5th-mix-jp-music-database.csv](/docs/games/ddr-5th-mix-jp-music-database.csv).

# Result

The retail disc does not expose `data/mdb/mdb.bin` as an ISO 9660 file.
The path survives as a source/build marker at `0x8001bb10`, but its only
observed call target, `FUN_8007eea8`, is exactly `jr ra; nop`. It cannot load,
open, or parse a file. The earlier project claim that `FUN_80049d3c` loads
`mdb.bin` is therefore withdrawn.

The runtime music metadata is instead already linked into `SLPM_868.97`.
This document maps and exports the identified portion: 47 `music_info`
records, their title strings, and a separate 50-entry valid-ID table. This is
the usable content associated with the marker, but it is **not** a claim that
the original standalone build input has been reconstructed byte-for-byte.

# Provenance and reproduction

Input is the executable documented in the revision manifest:

- ISO path: `SLPM_868.97;1`, LBA 24, 1,052,672 bytes.
- SHA-256: `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
- Ghidra: 12.1.2 with `ghidra_psx_ldr`; functions reviewed with
  `/tools/ghidra/scripts/DumpFunctionDetail.java`.

Export the table from a lawful local extraction:

```powershell
.\tools\ddr5thmix\Export-MusicDatabase.ps1 `
  -ExePath <path-to-SLPM_868.97> `
  -OutCsv docs/games/ddr-5th-mix-jp-music-database.csv `
  -OutJson work/ddr5thmix-extract/music-database.json
```

The exporter rejects any executable whose SHA-256 differs from the revision
above. The committed CSV has 47 data rows and SHA-256
`f64bae8d854af67bc6d15476daec2dde53ae40d1e3bc0e0b5f238cd7aaf8e45a`.

# Static layout

| Structure | RAM address | Count | Element size | Evidence |
|---|---:|---:|---:|---|
| `music_info` records | `0x800df3d8` | 47 | `0x1c` bytes | Fixed bounds/stride in `FUN_8007ee38`, `FUN_8007ee70`, and `FUN_8007f0a4` |
| Valid music IDs | `0x800df900` | 50 | 2 bytes | Fixed bounds in `FUN_8007f14c` |
| Source/build marker | `0x8001bb10` | 1 string | — | Literal `data/mdb/mdb.bin`; passed to the no-op `FUN_8007eea8` |

The 47 titles cover the retail song list represented by this table. Three
records encode variable BPM ranges with a nonzero secondary BPM: `Healing
Vision` (196/49), `INSERTiON` (220/140), and `Healing Vision(Angelic mix)`
(196/46). Records 32–47 use nonzero unlock-bit selectors; the field is read
as a bit index by `FUN_8007ef38`.

# Record fields

| Offset | Exported field | Interpretation | Confidence/evidence |
|---:|---|---|---|
| `+0x00` | `music_id` | Music identifier | Confirmed lookup key in `FUN_8007f0a4`; compared with the 50-ID table by `FUN_8007f14c` |
| `+0x02` | `field_02` | Unknown byte | Raw value only |
| `+0x03` | `menu_code` | Unique order/lookup code, 1–47 | Confirmed lookup key in `FUN_8007ee38`/`FUN_8007f110`; semantic label inferred |
| `+0x04` | `field_04` | Unknown 16-bit field | Raw value only |
| `+0x06` | `field_06` | Unknown 16-bit field | Raw value only |
| `+0x08` | `single_*` | Single Basic/Trick/Maniac ratings, packed as nibbles | Confirmed extraction pattern in `FUN_8007eeb0`; difficulty names are domain interpretation |
| `+0x0a` | `double_*` | Double Basic/Trick/Maniac ratings, packed as nibbles | Same evidence |
| `+0x0c` | `flags_0c` | Unknown flags | Raw value only |
| `+0x0e` | `field_0e` | Unknown 16-bit field | Raw value only |
| `+0x10` | `field_10` | Unknown 16-bit field | Raw value only |
| `+0x12` | `unlock_bit` | Bit selector used by availability logic | Confirmed read and bit-test path in `FUN_8007ef38` |
| `+0x14` | `bpm_primary` | Primary/high BPM | Values and variable-BPM pairing support the interpretation |
| `+0x16` | `bpm_secondary` | Secondary/low BPM, zero for fixed BPM | Values and variable-BPM pairing support the interpretation |
| `+0x18` | `title_address` / `title` | Pointer to null-terminated title string | Direct pointer resolution in the executable |

# Negative result: `READ_DT.BIN`

`READ_DT.BIN` was also extracted from the same lawful track while testing
whether the marker named content hidden inside a container (LBA 20000,
32,768,000 bytes; SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`).
It contains a much broader body of music/comment-related data, but no catalog
entry, path, or code reference currently proves that any slice is the
original `mdb.bin`. It must not be substituted for the linked table without
additional evidence.

# Open questions

- Recover the meanings of `field_02`, `field_04`, `field_06`, `flags_0c`,
  `field_0e`, and `field_10` from their consumers.
- Determine whether the 50-ID table includes non-playable/reserved IDs and
  explain the three-entry difference from the 47-record table.
- Establish whether the standalone source file was converted into these
  linked objects, compiled into them directly, or removed by a build step.
