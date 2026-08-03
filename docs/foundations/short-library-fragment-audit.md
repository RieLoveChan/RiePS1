---
type: Concept
title: Audit of the 14 short real-address library-signature rows
description: Evidence-based classification of the remaining short real-address rows after the synthetic GTE macro audit.
tags: [ps1, ddr5thmix, library-signatures, object-boundaries, evidence]
timestamp: 2026-08-03T00:00:00-04:00
---

# Result

The 14 remaining real-address rows are not 14 reconstruction targets. One is a one-byte data/object marker and the other 13 are four-byte pieces emitted by the `ghidra_psx_ldr` PsyQ-signature/object annotation. Twelve of those 13 pieces contain ordinary MIPS instruction words inside a coherent `<prefix>_OBJ_<offset>` run. One is a zero word used as alignment/padding. None is promoted to an independently callable function.

The lawful input is `work/ddr5thmix-extract/exe/SLPM_868.97_1`, SHA-256 `4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`. The address-to-file mapping is `file_offset = address - 0x8001a800 + 2048`. The symbol-map input is `docs/games/ddr-5th-mix-jp-symbol-map.csv` at the audited working-tree revision. No reference bytes are committed.

# Classification

| Address | Row | Evidence | Classification |
|---|---|---|---|
| `0x800207ac` | `2MBYTE_OBJ_B4`, 1 byte | Surrounding words are `0x0000004d` followed by repeated `0x00200000` values; the row begins inside this data sequence after `stup0` (`0x800207a0`, 12 bytes). | Data/object-boundary marker; not code. |
| `0x8002e5ac` | `S_SR_OBJ_B0`, 4 bytes | Base `0x8002e4fc`; 2-row run; next row begins exactly at `0x8002e5b0`. | Internal object fragment containing an instruction word. |
| `0x8002f598` | `S_SVA_OBJ_16C`, 4 bytes | Base `0x8002f42c`; 20-row run; adjacent rows meet at `0x8002f598`/`0x8002f59c`. | Internal object fragment containing an instruction word. |
| `0x8002f678` | `S_SVA_OBJ_24C`, 4 bytes | Base `0x8002f42c`; same 20-row run; adjacent rows meet at `0x8002f678`/`0x8002f67c`. | Internal object fragment containing an instruction word. |
| `0x80030c48` | `MIDIREAD_OBJ_DC`, 4 bytes | Base `0x80030b6c`; 10-row run; next row begins at `0x80030c4c`. | Internal object fragment containing an instruction word. |
| `0x80031e40` | `UT_KEYV_OBJ_154`, 4 bytes | Base `0x80031cec`; 5-row run; next row begins at `0x80031e44`. | Internal object fragment containing an instruction word. |
| `0x80036754` | `PATCHGTE_OBJ_DC`, 4 bytes | Base `0x80036678`; exact word `0x00000000`, between instruction words at `0x80036750` and `0x80036758`. | Four-byte alignment/padding; not a function. |
| `0x8003c6ac` | `PADENTRY_OBJ_164`, 4 bytes | Base `0x8003c548`; 11-row run; adjacent rows meet at `0x8003c6ac`/`0x8003c6b0`. | Internal object fragment containing an instruction word. |
| `0x8003dad4` | `PADCMD_OBJ_2FC`, 4 bytes | Base `0x8003d7d8`; 28-row run; adjacent rows meet at `0x8003dad4`/`0x8003dad8`. | Internal object fragment containing an instruction word. |
| `0x8003e088` | `PADCMD_OBJ_8B0`, 4 bytes | Base `0x8003d7d8`; same 28-row run; adjacent rows meet at `0x8003e088`/`0x8003e08c`. | Internal object fragment containing an instruction word. |
| `0x8003e318` | `PADCMD_OBJ_B40`, 4 bytes | Base `0x8003d7d8`; same 28-row run; adjacent rows meet at `0x8003e318`/`0x8003e31c`. | Internal object fragment containing an instruction word. |
| `0x80054e3c` | `GS_137_OBJ_484`, 4 bytes | Base `0x800549b8`; 5-row run; adjacent rows meet at `0x80054e3c`/`0x80054e40`. | Internal object fragment containing an instruction word. |
| `0x800550f8` | `COR_05_OBJ_130`, 4 bytes | Base `0x80054fc8`; 4-row run; next row begins at `0x800550fc`. | Internal object fragment containing an instruction word. |
| `0x8007cc24` | `PRESET_OBJ_744`, 4 bytes | Base `0x8007c4e0`; 23-row run; adjacent rows meet at `0x8007cc24`/`0x8007cc28`. | Internal object fragment containing an instruction word. |

The 13 object-labeled rows all preserve the same `address - offset` base as their complete run. This is evidence of fragment placement, not proof of an original PsyQ object boundary or of a callable function at the individual row.

# Reproduction

Run from the repository root in PowerShell:

```powershell
$exe = 'work/ddr5thmix-extract/exe/SLPM_868.97_1'
$load = [uint64][Convert]::ToUInt32('8001a800', 16)
$header = 2048
$bytes = [IO.File]::ReadAllBytes($exe)
$targets = '800207ac','8002e5ac','8002f598','8002f678','80030c48','80031e40','80036754','8003c6ac','8003dad4','8003e088','8003e318','80054e3c','800550f8','8007cc24'
foreach ($text in $targets) {
  $address = [uint64][Convert]::ToUInt32($text, 16)
  $offset = [int]($address - $load + $header)
  $hex = ($bytes[$offset..($offset + 3)] | % { '{0:x2}' -f $_ }) -join ' '
  '{0}: {1}' -f ('0x' + $text), $hex
}
```

Output, in target order:

```text
0x800207ac: 00 00 20 00
0x8002e5ac: aa 01 62 a4
0x8002f598: 00 e0 04 34
0x8002f678: 00 e0 04 34
0x80030c48: 90 00 22 ae
0x80031e40: f1 ff a2 a0
0x80036754: 00 00 00 00
0x8003c6ac: 49 00 62 90
0x8003dad4: 01 00 02 24
0x8003e088: 01 00 02 24
0x8003e318: 21 10 00 00
0x80054e3c: 30 00 b0 27
0x800550f8: 34 00 a2 af
0x8007cc24: 1c 00 31 26
```

Tool versions used: PowerShell 7, repository CSV/build metadata, and the existing Ghidra 12.1.2 project provenance. Status remains `candidate_for_audit`: this does not establish a new confirmed object boundary, exact source reconstruction, or whole-image match.
