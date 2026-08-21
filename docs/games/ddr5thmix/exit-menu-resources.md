---
type: Data Map
title: DDR 5th Mix — EXIT-mode menu text resources (0x54495845)
description: Classification of the three 'EXIT' (0x54495845) READ_DT.BIN resources as the options / DIET-mode / link-and-information menu text databases.
resource: /docs/tooling/iso-asset-inventory.md
tags: [ps1, ddr5thmix, assets, exit, menu, text, shift-jis]
timestamp: 2026-08-20T00:00:00-04:00
---

# EXIT-mode menu text resources

The three READ_DT.BIN resources whose first word is `0x54495845` (`EXIT`)
are the **text databases of the "EXIT" (options) menu group**. They were
previously catalogued only as "text-bearing menu/interface candidates"
(2026-08-15); this page records their structural classification
(2026-08-20). Input: lawful READ_DT.BIN, SHA-256
`004cbd9fa5c260b32f25319f5ae652208a7c80fbb056fa0e72127eb83d30453a`; byte
offset = `(LBA − 0x4e20) × 2048`.

## The three resources (descriptor-table entries)

| LBA | Byte count | Content |
|---|---|---|
| `0x83d8` | 97,408 | **Options menu** — main labels (`DIET OPTION`, `GRAPHIC OPTION`, `GAME OPTION`, `MEMORY CARD`, `CONTROLLER SETTING`, `SOUND OPTION`) plus Shift-JIS descriptions (モード選択画面に戻ります。 "returns to the mode-select screen", ＤＩＥＴ　ＭＯＤＥに関する設定をします。 "configures DIET MODE", グラフィックに関する設定をします。, ゲームに関する設定をします。, システムデータのセーブ・ロードなどを行います。 "system-data save/load", 専用コントローラの設定をします。 "dedicated controller settings") and option values (`ALL MUSIC MODE`, `EVENT MODE`, `GAME OVER`, `TIME LIMIT`, `MAX STAGE`, `MAX STAGE(NONSTOP)`, `GAME LEVEL` `8/HARDEST`..`1/EASIEST`, `TITLE SCREEN`, `CHARACTER DISPLAY`, `STEP MARK COLOR`, `DANGER DISPLAY`, `BG BRIGHT`, `BG EFFECT`, `BLINK`, ...) |
| `0x8408` | 103,112 | **DIET MODE screens** — `DIET DIARY`, `DIET RECORDS`, `MUSIC RECORDS`, `PLAY`, `CLEAR`, `CLEAR MUSIC`, ... |
| `0x8591` | 152,272 | **Link / information screens** — `NEW VERSION LINK`, `5thMIX LINK`, `LINK DATA CREATE`/`LOAD`/`SAVE`, `NAME ENTRY`, `INFORMATION`, `INTERNET RANKING`, `MUSIC RECORDS`, link filenames `BISLPM-86252link5to4`/`link6to5`, and song titles (`Young Forever`, `XANADU`, `WALKIE TALKIE`, `TRIP MACHINE`, `CLIMAX`, ...) |

## Structure

- Each resource begins with the `0x54495845` family word at offset 0,
  followed by a text section: 4-byte-aligned null-terminated ASCII labels
  in fixed slots (e.g. EXIT 1's six main labels at +0x08/+0x14/+0x24/
  +0x30/+0x3c/+0x50), then Shift-JIS description strings, then the option
  value tables.
- The remaining ~90 KB of each resource is a sequence of per-screen text
  blocks: ASCII label runs are scattered across the whole file (EXIT 1 has
  493 ASCII runs >= 4 bytes in 24 distinct 4 KB buckets; EXIT 2 has 745 in
  25 buckets; EXIT 3 has 690 in 36 buckets), each block pairing ASCII
  labels with their Shift-JIS equivalents. The files end in a zero-filled
  tail.
- The `EXIT` label blocks are the text rendered by the reconstructed
  options/settings cluster `runtime-block-800a384c` (animated cursor
  options menu) — the consumers are the options-menu draw/input functions,
  per-screen mapping is future work.

## Status

Classified 2026-08-20 (structure, label inventory, screen grouping).
Per-screen label-block-to-function mapping and any value-table semantics
remain future work; the resources are text data, not code or images
(TIM validation accepts zero images, consistent with the 2026-08-15 note).
