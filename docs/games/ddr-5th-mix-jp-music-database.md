---
type: Data Map
title: Dance Dance Revolution 5th Mix (Japan) — Linked Music Database
description: Reproducible map of 47 playable music_info records and their 50-slot linked resource index in SLPM-86897.
resource: /docs/games/ddr-5th-mix-jp-music-database.csv
tags: [ps1, ddr5thmix, music-database, data-map, reverse-engineering]
timestamp: 2026-07-29T18:00:00-04:00
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
records, their title strings, and two parallel 50-entry resource-slot tables.
This is the usable content associated with the marker, but it is **not** a claim that
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
`2e97b84da95546306bb653fa67f57605c8b83e1cf2bc2e52854339077a892b72`.

The static consumer sweep used Ghidra 12.1.2 and the same analyzed program:

```text
DumpFunctionCallers.java 0x8007ee38 0x8007ee70 0x8007eeb0 \
  0x8007ef10 0x8007ef38 0x8007f0a4 0x8007f14c
DumpFieldXrefs.java 0x800f290c
DumpDataXrefs.java 0x800df14c 0x800df900
DumpScalarOperands.java 0x1cf 0x73c 0x740
```

`DumpFunctionCallers` found 42 unique direct callers of the accessors;
`DumpFieldXrefs` found 30 functions referencing the current-record global.
The scalar sweep found all five instructions that read or write music-select
state offset `+0x73c` (four writes and one read), plus three other
requested-value matches. These counts make the negative results below
reproducible; they are not a claim that an
arbitrary, unanalyzed indirect pointer can never reach a field.

# Static layout

| Structure | RAM address | Count | Element size | Evidence |
|---|---:|---:|---:|---|
| `music_info` records | `0x800df3d8` | 47 | `0x1c` bytes | Fixed bounds/stride in `FUN_8007ee38`, `FUN_8007ee70`, and `FUN_8007f0a4` |
| Resource-slot music IDs | `0x800df900` | 50 | 2 bytes | Fixed bounds in `FUN_8007f14c` |
| Resource descriptor pointers | `0x800df14c` | 50 | 4 bytes | Indexed by `FUN_8007f14c`'s result in `FUN_80074f30` and `FUN_8007a8f4`, then passed to `FUN_80020d24` |
| Source/build marker | `0x8001bb10` | 1 string | — | Literal `data/mdb/mdb.bin`; passed to the no-op `FUN_8007eea8` |

The 47 titles cover the retail song list represented by this table. Three
records encode variable BPM ranges with a nonzero secondary BPM: `Healing
Vision` (196/49), `INSERTiON` (220/140), and `Healing Vision(Angelic mix)`
(196/46). Records 32–47 use nonzero unlock-bit selectors; the field is read
as a bit index by `FUN_8007ef38`.

# Why there are 50 slots but 47 records

Sorting the 47 records by `menu_code` produces codes 1–47 without a gap.
Their `music_id` values equal resource-slot IDs 0–46 exactly, in order; the
exporter now rejects the revision if any of those 47 comparisons fails. The
remaining slots are:

| Slot | Music ID | `music_info` record | Descriptor pointer | Descriptor words |
|---:|---:|---|---:|---|
| 47 | `0x0132` | none | `0x800aca10` | `0x0002e8e0`, `0x00004e95` |
| 48 | `0x0133` | none | `0x800aca08` | `0x0002f570`, `0x00004e36` |
| 49 | `0x0134` | none | null | none |

The first two extra pointers address the same two-word descriptor shape as
the playable slots. Therefore the defensible model is **50 resource slots,
47 playable metadata records, two additional loadable resources, and one
empty reserved slot**. Calling all 50 values “valid songs” was too broad.
No title or gameplay record identifies the two extra resources, so their
content remains unnamed.

# Descriptor-addressed disc resources

All 49 non-null descriptors resolve into the `READ_DT.BIN` ISO extent (base
LBA 20,000) with their first word as byte count and second word as LBA: the
two non-record slots reproduce the `pBAV` banks at `0x4e95` and `0x4e36`.
The 47 title-bearing slots have a common little-endian `0x0000000c` leading
word and no supported TIM, VAB, VAG, or TMD signature. They are therefore
extracted locally as title-associated raw resources, but their internal format
and semantic contents remain unassigned.

The second of the three structurally bounded sections is stronger: in all 47
resources its leading little-endian word equals the section byte length. A
fresh alignment audit shows a 12-byte header followed by a 32-bit word stream,
not a proven 12-byte-record table: the 47 payloads contain 16,722 words and
all terminate in zero. See
[/docs/tooling/music-word-table-inventory.md](/docs/tooling/music-word-table-inventory.md).
The purpose of those words remains unresolved.

# Record fields

| Offset | Exported field | Interpretation | Confidence/evidence |
|---:|---|---|---|
| `+0x00` | `music_id` | Music identifier | Confirmed lookup key in `FUN_8007f0a4`; compared with the 50-ID table by `FUN_8007f14c` |
| `+0x02` | `artwork_selector` | Signed artwork/resource selector | `FUN_8008c538` reads it as signed: `0`, `-4`, and `-1` select resource codes `0x2e`, `0x2f`, and `0x30`; other non-special values are passed directly to `FUN_8007bb5c` before a sprite is drawn. `-3` suppresses that sprite path. |
| `+0x03` | `menu_code` | Unique order/lookup code, 1–47 | Confirmed lookup key in `FUN_8007ee38`/`FUN_8007f110`; semantic label inferred |
| `+0x04` | `field_04` | Playback/load selector; exact asset class unknown | Gameplay-state consumers pass it to `FUN_80098f8c`; that state machine truncates it to a byte and forwards it to the asynchronous request path `FUN_800280c8`. It is also compared with `FUN_8007f06c`'s current selector. |
| `+0x06` | `field_06` | Unresolved positive selector/marker | `FUN_8008cd3c` copies it into music-select state `+0x73c` when crossing from a playable entry to a special entry (`>=200`). The complete scalar-offset sweep shows that state field is only cleared, assigned, and compared with `-1`; its numeric value is never otherwise consumed on this path. |
| `+0x08` | `single_*` | Single Basic/Trick/Maniac ratings, packed as nibbles | Confirmed extraction pattern in `FUN_8007eeb0`; difficulty names are domain interpretation |
| `+0x0a` | `double_*` | Double Basic/Trick/Maniac ratings, packed as nibbles | Same evidence |
| `+0x0c` | `flags_0c` / `is_long_song` | Bit `0x0100` marks long-format songs; low byte remains unresolved | Multiple gameplay and selection consumers double difficulty/stage and score contributions when bit `0x0100` is set. Exactly four records carry it: `DYNAMITE RAVE(Long ver.)`, `HOT LIMIT`, `B4U glorious style`, and `OOPS!... I DID IT AGAIN(Fired Up MIX)`. |
| `+0x0e` | `field_0e` | Zero/reserved in this revision | All 47 values are zero; no reader appeared in either accessor-caller or current-record-global sweep. |
| `+0x10` | `field_10` | Unknown unlock-era value | Nonzero only on 16 later/unlock records, with unique multiples of five from 5–90 except 70/85. No reader appeared in the two static sweeps, so interpreting it as a threshold would be conjecture. |
| `+0x12` | `unlock_bit` | Bit selector used by availability logic | Confirmed read and bit-test path in `FUN_8007ef38` |
| `+0x14` | `bpm_primary` | Primary/high BPM | Values and variable-BPM pairing support the interpretation |
| `+0x16` | `bpm_secondary` | Secondary/low BPM, zero for fixed BPM | Display consumers `FUN_80089114`/`FUN_80089370`; variable-BPM pairing supports the interpretation |
| `+0x18` | `title_address` / `title` | Pointer to null-terminated title string | Direct pointer resolution; `FUN_80086878` uses it for alphabetical ordering |

The exported `resource_slot` column is derived from the verified invariant
`menu_code - 1`; `is_long_song` is derived from `flags_0c & 0x0100`. Raw
fields remain present wherever a narrower meaning is not established.

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

- Identify the exact asset class selected by `field_04` and the intended
  numeric meaning, if any, of `field_06`.
- Recover the low-byte meanings in `flags_0c` and find stronger evidence for
  `field_10`; keep `field_0e` reserved unless another revision uses it.
- Identify the two loadable non-record resources in slots 47–48 without
  inferring names from ordering alone.
- Establish whether the standalone source file was converted into these
  linked objects, compiled into them directly, or removed by a build step.
