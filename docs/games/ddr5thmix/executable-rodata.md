---
type: Data Map
title: DDR 5th Mix — leading executable rodata block (0x8001a800–0x800206f8)
description: Structural map of the executable's leading non-code region — PsyQ debug strings, per-object function-pointer tables, game string and pointer tables, and the Shift-JIS UI message block.
resource: /docs/foundations/linked-object-evidence.md
tags: [ps1, ddr5thmix, rodata, data-map, strings, psyq]
timestamp: 2026-08-20T00:00:00-04:00
---

# Leading executable rodata block

The 24,312 bytes at `0x8001a800`–`0x800206f8` (everything between the
PS-X EXE header and the crt0 entry chain at `0x80020700`) are **data, not
code** — a rodata block that PSYLINK placed at the front of the text image.
This page is the structural map; the falsifiable check that it is not
un-inventoried code is recorded in
[linked-object evidence §5.2](/docs/foundations/linked-object-evidence.md).

Input: lawful `SLPM_868.97_1`, SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Reproduction: `python3 tools/build/classify-data-region.py <exe> --load
0x8001a800 --file-base 0x8001a000 --start 0x8001a800 --end 0x800206f8
--symbol-map docs/games/ddr5thmix/symbol-map.csv`.

## Whole-block classification

| Metric | Value |
|---|---|
| Size | 24,312 bytes (6,078 32-bit words) |
| Aligned words pointing into the image (`0x8001a000`–`0x80120000`) | 2,151 (35.4%) |
| Bytes in printable ASCII runs (>= 4 bytes) | 7,763 (31.9%); 659 runs |
| Shift-JIS double-byte bytes | ~3,388-byte contiguous block at `0x8001f5d0`–`0x8002030c` (110 messages) |
| Zero bytes | 4,552 (18.7%) |
| Control-flow words (branches / j / jr) | 0 branches, 12 j/jal, 21 jr in 6,078 words (0.5%) — vs ~29–66 branches + 53–121 jumps per ~1,000 words in verified code ranges |

Real code ranges of the same executable show 3–7% branch density and 5–12%
jump density; the block shows ~0% of both. Every aligned word either is a
printable-string byte, a zero, or a pointer constant into the image.

## Contents

### 1. PsyQ SDK debug strings

Format strings and RCS `$Id$` headers of the PsyQ libraries, including
`intr.c,v 1.75 1997/02/07`, `sys.c,v 1.140 1998/01/12` (`ResetGraph`,
`SetDispMask`, `DrawSync`, ...), and `bios.c,v 1.86 1997/03/28` (`CD_cw`,
`CD_datasync`, ...), plus the CD-ROM command-name table (`CdlReadS` ...
`NoIntr`, `%s:(%s) Sync=%s, Ready=%s`). The very first strings are
game-facing: `--- %08x %08x %08x`, `NOW LOADING.`, `PLEASE WAIT...`.

### 2. PsyQ per-object function-pointer tables

Aligned word runs whose targets resolve to confirmed PsyQ object rows in the
symbol map — the linker's per-object dispatch tables, an independent
corroboration of the [object-boundary evidence](/docs/foundations/linked-object-evidence.md):

| Table base | Words | Resolved targets (sample) |
|---|---|---|
| `0x8001aba4` | 7 | `S_SVA_OBJ_13C`... (SpuSetVoiceAttr family) |
| `0x8001abc4` | 7 | `S_SVA_OBJ_21C`... |
| `0x8001abe4` | 22 | `S_SCA_OBJ_90`, `S_SCA_OBJ_58`... (SpuSetCommonAttr family) |
| `0x8001ad24` | 35 | `GS_123_OBJ_7C`, `GS_123_OBJ_94`... |
| `0x8001aff4` | 5 | `PADENTRY_OBJ_2F0`... |
| `0x8001b1f4` | 5 | `BIOS_OBJ_3A8`... (Cd* family) |
| `0x8001c340` | 45 | `SPRINTF_OBJ_2DC`, `SPRINTF_OBJ_788`... |
| `0x8001d824` | 30 | `PRESET_OBJ_14C`, `PRESET_OBJ_1A8`... (GsSet* family) |

### 3. Game function-pointer tables

- `0x8001a840`: `0x80022ff0`, `0x80023000`, `0x80023010`, `0x80023020`,
  `0x80023030` — the mode-handler table feeding the mode-control dispatch
  area (`FUN_80023048` and neighbors).
- `0x8002031c` (616 bytes): pointers into `0x800a0xxx` — the runtime-helper
  dispatch table.
- `0x800206dc`: `0x800aaf98`... — a runtime-block dispatch table.

### 4. Game string tables (ASCII)

- Session-state names at `0x8001bb24` (pointer table at `0x8001bcd4`):
  `BOOT`, `PREPARE`, `INTRO`, `STAGE END`, `RESULT`, `NON STOP I`,
  `NON STOP C`, `STYLE SEL`, `MODE SEL`, `CHARA SEL`, `MUSIC SEL`,
  `SEQKIND SEL`, `LINK SEL`, `COURSE SEL`, `INRAN SEL`, `EDSEQ_SEL`,
  `SELECT END`, `NAME ENTRY`, `PRE_END`, `ENDING`, `URL&PASS`,
  `LINK START`, `LINK END`, `GAME_OVER`, `PLAY START`, `PUSH START`,
  `WARNING`, `KONAMI`, `BEMANI`, `TOSHIBA`, `TMOV`, `CATCH DEMO`,
  `PLAY DEMO`, `RANKING`, `LETS LINK`, `TEST_MODE` — corroborating the
  [session router](/docs/games/ddr5thmix/game-session-router.md) and
  [screen flow](/docs/games/ddr5thmix/screen-flow.md) names.
- Song-group names at `0x8001b8e4` (pointer table at `0x8001b9b4`):
  `COVERS & CLASSICS`, `POPS-SIDE A`, `EURO & RAVE & SPEED`,
  `POPS-SIDE B`, `KONAMI ORIGINAL-SIDE A/B`, `SPECIAL SELECTION`,
  `PLAYER'S BEST`, `INTERNET RANKING`, `ALL MUSIC`, `TRUE ALL`.
- Stage names at `0x8001cb44`: `1ST STAGE`...`FINAL STAGE`; mode names at
  `0x80020664` (`HISTORY MODE`, `EXERCISE MODE`, `DIARY MODE`, pointer
  table at `0x80020690`); game-object/resource names
  (`data/mdb/mdb.bin`, `GAME MODE init/finish`, `demo loop %u times`,
  `mp3 n(%d) %d  r %u`, camera `CAM_STAT_NON` messages).
- Graphic-resource names at `0x8001be2c`–`0x8001f108` (dense 8-byte strided
  runs): `ARROW_16`, `ARROS_25`, `WARN_16`, `TITLE_25`, `SSTXT_25`,
  `SSJOI_25`, `SHOWT_25`, `OWARN_16`, `OTOSH_25`, `OTITL_25`, `OKLOG_16`,
  `OCD_25`, `OBLOG_16`, `MSTXT_25`, `MCMES_16`, `LJOIN_25`, `LHOWT_25`,
  `INST3_16`..`INST0_16`, `HMCME_16`, `HLINK_25`, `HJOIN_25`, `HBOTA_25`,
  `CSTXT_25`, `CAUT_25`, `BOTAN_25`, `BLOGO_16`, `SSLOP_25`, `SSLOB_25`,
  `SSLDM_MM`, `SSLDF_MM`, `SSLBK_16`, `SELUP_16`, `SELTR_16`, `SELIC_25`,
  `SELDW_16`, `SELCM_16`, `MSLTT_16`, `MSLTA_25`, `MSLOB_25`, `MSLBK_16`,
  `MSLAL_16`, `MSBPM_16`, `CSLOB_25`, `CSLIC_25`, `CSLBK_16`, `CHRNA_25`,
  `CHR14_25`..`CHR01_25`, `ALBM1_25`, `ALBM0_25`, `RSLOB_25`, `RSLDL_25`,
  `RSLBK_16`, `SCROB_25`, `SCRBK_16`, `PADV_16`, `OOBJ_25`, `OBK_16`,
  `KLOGO_16`, `INST5_16`..`INSB1_16`, `ENDOB_25`, `ENDIN_25`, `CGCHK_25`,
  `BTILE_25`, `MFRM_25`, `HGOVE_25`, `GREAD_25`, `GOVER_25`, `GMOB_25`,
  `GAUGW_25`, `GAUGE_25`, `ENDGS_25`, `DANGR_16`, `ARROE_16`,
  `JD7_YELO`/`I97_YELO`/... color-family names, `unknow name (%s)`.
- Arrow-pattern names at `0x8001e878`: `LRLRLR>1`, `UDUDUD>1`, `UDLR>1`,
  `UDRL>1`, `ULRLR>1`, ... and `- NO DATA. -`, `OFFICIAL STEP`,
  `PS:%s`, `AC:%s`, `pass_num = %d`.

### 5. Shift-JIS UI message block (`0x8001f5d0`–`0x8002030c`, 3,388 bytes)

110 null-terminated Shift-JIS messages — the memory-card / PocketStation /
link-data / download / auto-save dialogs, e.g.:

- サポートしますか？ / サポートに失敗しました。 ("support? / support failed")
- リンクデータをロードしますか？ / リンクデータがありません。
- ポケットステーションが抜かれました。 ("PocketStation removed")
- メモリーカードがメモリーカード差込口１に差されていません。
- ダウンロードには４ブロック必要です。 ("download needs 4 blocks")
- オートセーブ機能を使用しますか？ ("use auto-save?")
- 「４ｔｈＭＩＸ　ＰＬＵＳ」対応の / ５ｔｈＭＩＸとＮＥＷ　ＶＥＲＳＩＯＮの
  (4th Mix PLUS / 5th Mix & NEW VERSION compatibility text)

This block is the message source for the LIBCARD/memory-card surface that
the [linked-object evidence](/docs/foundations/linked-object-evidence.md)
identifies as LIBCARD's memory-card region consumer.

## Status

Classified 2026-08-20 with the whole-region word/string/pointer census and
control-flow density check above (see
[linked-object evidence §5.2](/docs/foundations/linked-object-evidence.md)).
Reproducing this block byte-for-byte (or splicing it from the lawful dump at
build time) is the remaining work toward `whole_executable_match`; see
[main-executable-candidate](/docs/tooling/main-executable-candidate.md).
