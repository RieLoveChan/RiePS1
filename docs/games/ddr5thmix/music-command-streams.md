---
type: Data Map
title: DDR 5th Mix — music command streams (0x0000000c chart payloads)
description: Structural evidence that the 47 title-associated 0x0000000c READ_DT.BIN resources are step-chart command payloads, with two observed sub-encodings; full decoder remains future work.
resource: /docs/games/ddr5thmix/music-database.md
tags: [ps1, ddr5thmix, music, chart, steps, data-map]
timestamp: 2026-08-20T00:00:00-04:00
---

# Music command streams (step-chart payloads)

The 47 title-associated resources in READ_DT.BIN whose first word is
`0x0000000c` are the per-song **step-chart command payloads**. The
2026-08-15 inventory established each has a 12-byte header and a bounded
32-bit word stream ending in `0x00000000`, but explicitly claimed no chart,
command, or semantic decoder. This page records the 2026-08-20 structural
pass: the streams are chart data, not generic tables, with at least two
sub-encodings.

Input: lawful READ_DT.BIN, SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`; byte
offset = `(LBA − 0x4e20) × 2048`. Each song's `(byte_count, LBA)` pair is
the descriptor entry at `0x800AD610` + slot×8 (see
[music database](/docs/games/ddr5thmix/music-database.md)).

## Header

The first word is the `0x0000000c` family marker. The following header
fields vary by song; e.g. DYNAMITE RAVE(Long ver.):
`0000000c 00001b80 00002b04 00000014 00000000 00000001 0006d000 00003319
00000370` — the first three words are the documented 12-byte header; the
rest is per-song metadata (tempo/measure fields suspected, not asserted).

## Sub-encoding A — doubled-nibble arrow words

Some streams (DYNAMITE RAVE(Long ver.), STILL IN MY HEART, BROKEN MY HEART)
consist largely of 32-bit words whose bytes are **doubled 4-bit nibbles**
from {0x00, 0x11, 0x22, 0x33, 0x44, 0x88, 0x99, 0xaa, ...} — e.g.
`00110011`, `00880022`, `00880011`, `00000044` — interleaved with
`00000000` separators. The nibble values 1/2/4/8 (doubled to 0x11/0x22/
0x44/0x88) are a natural 4-arrow bitmask encoding (left/down/up/right);
0x33/0x99/0xaa etc. are the doubled forms of multi-arrow masks. This is
the dominant pattern in the streams that use it (top distinct words across
all 47 streams: `(0,0,0,0x88)`, `(0,0,0,0x11)`, `(0,0,0,0x22)`,
`(0,0,0,0x68→0x44)`, `(0,0x88,0,0x11)`, ...).

## Sub-encoding B — (offset, value) timing pairs

Other streams (Healing Vision, ECSTASY) instead begin with sequences of
word pairs such as `00009000 00000677 00033000 00001588 00044c00 00001d3e`
— a small measure/offset value followed by a larger value — i.e.
(offset, note-data) rows rather than the doubled-nibble arrow words.

## Status

- Confirmed 2026-08-20: the streams are per-song **step-chart payloads**
  (arrow-pattern words and/or timing-pair rows), superseding the neutral
  "12-byte-record table" description.
- The exact command semantics (which nibble/bit is which arrow, how
  offsets map to beats/measures, per-difficulty layout) remain **unassigned
  and require a dedicated decoder pass** traced against the chart consumer
  `FUN_8007a8f4` (music dispatcher); this pass does not claim a decoder.
- Honest negative: sub-encoding A covers only ~4% of all non-zero words
  across the 47 streams, so the doubled-nibble pattern is one component,
  not the whole format.
