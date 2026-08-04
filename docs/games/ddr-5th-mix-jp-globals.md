---
type: Global Map
title: DDR 5th Mix (Japan) Global Map
description: Evidence-qualified fixed-address data symbols and partial pointed-to layouts for the target executable.
resource: /docs/games/ddr-5th-mix-jp-globals.csv
tags: [ps1, ddr5thmix, globals, reverse-engineering]
timestamp: 2026-07-19T00:00:00-04:00
---

# Scope

The CSV contains sixteen fixed-address globals currently required by the
first two game-logic modules. It follows the
[global-map schema](/docs/foundations/global-map-schema.md). Pointer targets
are runtime objects: their observed fields are expressed as offsets below and
are not given fabricated absolute addresses.

# `DdrModeState` partial layout

| Offset | Width | Conservative field | Evidence |
|---:|---:|---|---|
| `0x06` | 1 | `unknown_006` | Cleared by mode-`0x10`/default initialization. |
| `0x09` | 1 | `loop_restart_flag` | Read by `main` itself in both nested per-frame `do`/`while` conditions. `FUN_8002216c` zeroes it every outer-loop pass; `FUN_8002358c` (mode `0xff`/submode `4`) is the only writer that sets it to `1`, forcing the inner per-frame loop to exit early back through a full state/GPU reset. Resolved 2026-07-24. |
| `0x0b` | 1 | `unknown_00b` | Cleared by the mode-`0xff` GPU-reset handler. |
| `0x0c` | 2 | `display_width` | Set to 320 (`0x140`) by mode `0x10`/submode `0x00` (`FUN_800232cc`); read as param 1 by `GsInitGraph2` in `FUN_800222fc`. Resolved 2026-07-27. |
| `0x0e` | 2 | `display_height` | Set to 240 (`0xf0`) by mode `0x10`/submode `0x00` (`FUN_800232cc`); read as param 2 by `GsInitGraph2` in `FUN_800222fc`. Resolved 2026-07-27. |
| `0x10` | 2 | `display_mode` | Set to 4 by mode `0x10`/submode `0x00` (`FUN_800232cc`); read as param 3 by `GsInitGraph2` in `FUN_800222fc`. Resolved 2026-07-27. |
| `0x12` | 2 | `display_dither` | Set to 1 by mode `0x10`/submode `0x00` (`FUN_800232cc`); read as param 4 by `GsInitGraph2` in `FUN_800222fc`. Resolved 2026-07-27. |
| `0x17` | 1 | `glyph_color` | Read by the shared draw routine `FUN_80021470` as a glyph/menu-item color-brightness byte when its draw-flags argument has bit `0x8000` set. Written `0x80` (full brightness) by mode `0x00`/submode `0x02` and by `FUN_800ab408`; computed from a per-character value and `counter_090` by `FUN_8009e4cc`. Not a next-mode field. Resolved 2026-07-24. |
| `0x1c`–`0x1f` | 4 × 1 | `counter_01c`, `counter_01d`, `direction_01e`, `direction_01f` | `FUN_80023744` advances two wrapping counters by 2/4 and flips their direction flags at the observed signed/unsigned thresholds. |
| `0x20` | 2 | `unknown_020` | Its low nibble and bit `0x10` produce the signed two-bit-derived value at `+0xc1`; broader meaning remains unknown. |
| `0x22` | 2 | `countdown_022` | Armed to 2/4 by mode-0 handlers and decremented by the following phase. |
| `0x28` | 2 | `mode` | Dispatched by `FUN_80022cf8`; `FUN_80023210` is the only known writer. |
| `0x2a` | 2 | `submode` | Written by `SetMode`, `SetSubmode`, and `NextSubmode`. |
| `0x2c` | 2 | `menu_selection_index` | The mode-`0x10`/default-submode-`0x01` menu handler `FUN_80022b30`'s own current-selection index (0-2, wrapped `% 3`); read back and rewritten by that function on d-pad input, and cleared to 0 on every mode/submode change (`SetMode`/`SetSubmode`) so a freshly entered menu starts at item 0. Resolved 2026-07-24. |
| `0x2e` | 2 | `unknown_02e` | Cleared by `SetMode` and `SetSubmode`; exhaustively re-checked 2026-07-24 across all 62 functions referencing `PTR_DAT_800ac8e8` — no reader found. Durable negative result. |
| `0x3f`–`0x42` | 4 × 1 | `unknown_03f`…`unknown_042` | Set to one by the runtime state-reset routine after its 0x140-byte clear. |
| `0x45` | 1 | `pad_valid_mask` | Cleared each frame, then ORed with one table byte for each accepted PAD packet. |
| `0x4c`–`0x68` | 8 × 4 | `pad1_*`, `pad2_*` | Previous held, current held, newly pressed, and newly released words for two PsyQ PAD receive buffers. |
| `0x6c`–`0x88` | 8 × 4 | `aux1_*`, `aux2_*` | Equivalent edge-state words for two current values supplied by `FUN_8009c5f4`; source subsystem remains unknown. |
| `0x90`–`0x91` | 2 × 1 | `counter_090`, `direction_091` | A third wrapping counter/direction pair advanced by four with thresholds observed in `FUN_80023744`. |
| `0xac` | 2 | `unknown_0ac` | Cleared during mode-0 initialization. |
| `0xc1` | 1 | `derived_0c1` | Signed value derived from `+0x20`'s low nibble/bit `0x10`, then arithmetically divided by four. |
| `0xf4` | 1 | `screen_range_flag` | One when signed `DAT_800f2908` is 4 or in inclusive range `0x2a..0x2c`; zero otherwise. |
| `0xf6` | 1 | `unknown_0f6` | Cleared on entry to `PLAY START` and the selector. |
| `0xf7` | 1 | `unknown_0f7` | Cleared on entry to `PLAY START` and the selector. |
| `0xff` | 1 | `termination_latch` | Nonzero forces the game-session terminal/menu route. |
| `0x100` | 1 | `unknown_100` | Cleared on entry to `PLAY START` and the selector. |
| `0x101` | 1 | `unknown_101` | Cleared on entry to `PLAY START` and the selector. |

# `DdrSecondaryState` partial layout

**Struct size corrected 2026-08-04**: the prior `sizeof == 0xbc` (188 bytes)
assertion undercounted the real allocation. `FUN_80021dfc` (boot
initialization) calls `bzero(PTR_DAT_800ac8ec, 0xd0)` (208 bytes), and real
4-byte accesses reach as far as `+0xc0`–`+0xc3` (see `boot_check_value`
below) — both beyond the old bound. `sizeof(DdrSecondaryState)` is now
`0xd0`, matching the `bzero` call, the same evidence style already used for
`DdrModeState`'s own `0x140` size.

The table below was produced by a full Ghidra 12.1.2 headless field/xref
sweep over `PTR_DAT_800ac8ec` (`DumpFieldXrefs.java 0x800ac8ec`, 79
referencing functions decompiled and read in full), the same method Unit E
used for `PTR_DAT_800ac8e8`. Unlike the prior nine-row table, this sweep
covers every offset touched by any of the 79 functions, not just the fields
already suspected to matter.

| Offset | Width | Conservative field | Evidence |
|---:|---:|---|---|
| `0x00` | 1 | `unknown_000` | Written by `FUN_800236bc` ("empty mode-4 hook"), and read/written across most of the mode-4 loading-queue handlers below (e.g. cleared to 0 at each step's start in `FUN_800a0930`/`FUN_800a0a2c`/`FUN_800a12e0`/`FUN_800a13a8`/`FUN_80096000`, and in `FUN_800a0930` receives a byte copied from table `DAT_800e142a` on completion). Its meaning varies per caller (generic "step result/output" byte), so no single domain name is assigned. |
| `0x01` | 1 | `graphics_init_once_flag` | `FUN_80021f00` reads it, and if zero, sets it to 1 and calls `GsInitGraph` — a run-once latch guarding a single graphics-mode initialization call. Resolved 2026-08-04. |
| `0x04` | 1 | `termination_flag` | Set to 1 by `FUN_8002313c` (the termination-latch helper, alongside `DdrModeState.termination_latch` and `+0x66` below); cleared by `FUN_800232cc` (mode `0x10`/submode `0x00`, the mode-4 forwarder) and `FUN_8002358c` (mode `0xff`/submode `4`, GPU reset). Read by `main`'s own per-frame loop together with `DdrModeState.display_height == 0x1e0` to suppress `DAT_800e29f4`/`DAT_800e2998`. Resolved 2026-08-04 (renamed from `unknown_004`). |
| `0x05` | 1 | `cd_sync_status` | `FUN_80020e68` (a reconstructed CD-sync poll, see the 2026-08-03 startup-gap functions) writes 0 or 1 here, mirroring its own return value, based on `CdSync(1, 0)`'s result. No reader found among the 79 referencing functions; named from its clear single-writer behavior, matching this project's convention for write-evidenced fields (e.g. `screen_range_flag`). |
| `0x06` | 1 | `mode4_ready_flag` | Read by `FUN_8002340c` (mode `0x04`/submode `0x00`) to pick between the "not ready" (`FUN_800a0cb0` + `SetSubmode(2)`) and "ready" (`FUN_80049d3c` + `SetMode(2)`) branches; set to 1 by `FUN_80023474` (mode `0x04`/submode `0x02`) once `FUN_800a0ce0() > 0`. Resolved 2026-08-04 (renamed from `unknown_006`; behavior already described in the screen-flow concept). |
| `0x07` | 1 | `idle_transition_flag` | Read by `FUN_80022cf8`'s shared epilogue: when nonzero, forces `SetMode(0x80)` (the "clear/idle" mode) from any mode. No writer found among the 79 referencing functions; the only mutation touching this byte at all is the whole-struct `bzero(..., 0xd0)` in `FUN_80021dfc`. Epistemic status matches `DdrModeState.screen_range_flag`: a confirmed, specific reader, but an unconfirmed writer. |
| `0x08` | 2 | `glyph_blink_timer` | Read by the shared draw routine `FUN_80021470` (the same function that reads `DdrModeState.glyph_color`) as an extra draw parameter when its flags argument has bit `0x4000` set. Two writers pair it with a `glyph_color` write in the same call: `FUN_800ab408` sets `glyph_color = 0x80` and this field to `10`; a second site sets `glyph_color` from a computed brightness and this field to `param_7 - 1` — consistent with a countdown/duration paired with a highlight color for a blinking menu glyph. Resolved 2026-08-04. |
| `0x1e` | 1 | `boot_debug_flag` | Written in `FUN_80021dfc` (boot init) from the boolean return of `FUN_80022604`, which tests `(*DAT_800ac8a8 & 0xffff0000) == 0x20000000` — the same debug/dev-marker-shaped check whose raw tested value is separately kept at `boot_check_value` (`+0xc0`) below. No reader found among the 79 referencing functions. |
| `0x40` | 1 | `load_step_index` | Dispatched by `FUN_800a00d4` through a 12-case (`< 0xc`) jump table (`switchdataD_8002031c`; Ghidra could not statically recover the table's individual case targets — "too many branches"). Reset to 0 by every "select queue item" function below (`FUN_800a0cb0`, `FUN_800a0d00`, `FUN_800a0d50`, `FUN_800a0da4`, `FUN_800a0df8`, `FUN_800a0e4c`, `FUN_800a0e94`, `FUN_800a0f7c`, `FUN_800a0fd0`, `FUN_800a1074`, `FUN_800a142c`), advanced to specific values (2, 4, 5, 7, 8, `0xb`) by the individual step handlers (`FUN_800a0930`, `FUN_800a10bc`, `FUN_800a12e0`, `FUN_800a13a8`, `FUN_800a0a2c`). Read (bounds-checked) only by the dispatcher itself. |
| `0x41`–`0x44`, `0x46`, `0x48`, `0x4a` | 7 × 1 | `unknown_041` … `unknown_04a` | Each is cleared by exactly one "select queue item" function alongside that call's own `load_queue_index` write: `+0x41`↔item 0 (`FUN_800a0cb0`), `+0x42`↔item 1 (`FUN_800a0d00`), `+0x43`↔item 2 (`FUN_800a0d50`), `+0x44`↔item 3 (`FUN_800a0da4`), `+0x46`↔item 4 (`FUN_800a0df8`), `+0x48`↔item 10 (`FUN_800a0fd0`), `+0x4a`↔item 9 (`FUN_800a0f7c`). Items 5, 6, 12, and 13 have no such byte. No reader found for any of the seven; kept `unknown_*` since the mapping is item-specific rather than a uniform array, and no consumer confirms a shared meaning. |
| `0x45` | 1 | `unknown_045` | A local 3-value (0/1/2) phase byte read and written entirely within `FUN_80099cb0`: 0 starts a table-reset sequence and advances to 1, 1 polls `FUN_8009c02c()` and advances to 2 on success, 2 makes the function return "done". Structurally similar to `load_step_index` but a distinct, single-consumer field; not merged with it. |
| `0x50` | 1 | `unknown_050` | Cleared by `FUN_8002216c` (main per-outer-loop reset) and elsewhere; read only by `FUN_80099e9c`, itself gated behind an unrelated global flag (`PTR_DAT_800e0b18[0x7c]`), as an `== 1` readiness check. |
| `0x51` | 1 | `load_queue_index` | Selects an entry (values 0–0xd, i.e. up to 14 items, observed) in a family of parallel tables at stride `0x1c` (28 bytes): a function-pointer table (`DAT_800e141c`, readiness-poll callbacks), an int table (`DAT_800e1414`, a byte count — zero means "nothing to load, skip"), two `short` fields (`DAT_800e1424`/`DAT_800e1426`, width/height passed to `FUN_8009f820`), a byte flag (`DAT_800e1428`), and a byte result (`DAT_800e142a`, copied to `+0x00` on completion). `FUN_800a12e0` uses the int-table entry to decide whether to call `FUN_800a2384(table_entry, &DAT_80174000)` (a CD-backed load into the fixed buffer `DAT_80174000`) or poll `FUN_800a201c()` for completion. Resolved 2026-08-04 as the mode-4 asset-loading queue's item index; see also the CD-read-request fields below, which the same queue uses to size its loads. |
| `0x52` | 1 | `unknown_052` | Copied to `+0xbb` by the mode-4 dispatcher (`FUN_800230cc`), unconditionally, on every entry. No writer found among the 79 referencing functions — the same missing-writer pattern as `+0x07`. |
| `0x64` | 1 | `unknown_064` | Set to one by the mode-`0xff` GPU-reset handler. |
| `0x66` | 1 | `unknown_066` | Receives the low byte of `DAT_800e2a60`, written by `FUN_8002313c` (the termination-latch helper) alongside `termination_flag` (`+0x04`) and `DdrModeState.termination_latch`. No reader found among the 79 referencing functions. |
| `0x74` | 1 | `unknown_074` | Set to 1 unconditionally by `FUN_80021dfc` (boot init), immediately after the whole-struct `bzero`. No reader found among the 79 referencing functions. |
| `0x77` | 1 | `cd_read_status_flags` | A bitmask written only by the CD-sector-read state machine — `FUN_80020efc` (read-request initiator), `FUN_800207bc`, and `FUN_80020a44` (the two CD callback handlers reconstructed in the 2026-08-03 startup-gap pass) — via read-modify-write `\|=` of bits `0x01` (request had zero size), `0x08` (a `CdGetSector` retry was needed), `0x10` (a `CdGetSector` call failed outright), and `0x80` (destination address fell outside the current buffer window, forcing a buffer-position resync). No independent reader (only self-referential read-modify-write) found. Resolved 2026-08-04. |
| `0x7c` | 4 | `cd_read_dest_end` | Set by `FUN_80020d24` (the CD read-request initiator) to `param_2 + *param_1` — the destination buffer's end address. Read by `FUN_80020a44` as the upper bound of the current buffer window (paired with `cd_read_dest_start` below). Resolved 2026-08-04. |
| `0x88` | 4 | `cd_read_dest_start` | Set by `FUN_80020d24` to `param_2` — the destination buffer's start address. Read by `FUN_80020a44` as the lower bound of the current buffer window, and copied back into `DAT_800ac898` on a buffer-window resync. Resolved 2026-08-04. |
| `0x8c` | 4 | `cd_read_request_size` | Set by `FUN_80020d24` to `*param_1` — the requested byte count for the pending CD read; copied to `DAT_800e2940` on a resync. Resolved 2026-08-04. |
| `0x90` | 4 | `cd_read_padded_size` | Set by `FUN_80020d24` to `param_2 + ((*param_1 + 0x7ff) & 0xfffff800) + 0x100` — the destination start plus the request size rounded up to a 2,048-byte (one CD sector) boundary, plus a 256-byte slack. Read by `FUN_800a12e0` and `FUN_8007a410` (mode-4's asset-loading queue, case 4) as the byte count passed to `FUN_8002a9dc`, the generic VRAM image-upload helper — the size of a completed CD load handed directly to the texture uploader. Resolved 2026-08-04; ties the CD-read record to the mode-4 loading queue's own use of `DAT_80174000` as a shared load buffer. |
| `0x9c`–`0x9f` | 4 × 1 | `unknown_09c`…`unknown_09f` | Cleared during mode-0 initialization (`FUN_800235f8`, alongside `+0xac`–`+0xaf` below, `SetSubmode(1)`, and a countdown reset). No reader distinct from `+0xac`–`+0xaf`'s found. |
| `0xac`–`0xaf` | 4 × 1 | `unknown_0ac`…`unknown_0af` | Cleared during mode-0 initialization (see above). Read by `FUN_80022f04` (mode `0x00`/submode `0x02`): when the `+0x22` countdown expires (`-1`) and all four of these bytes are still zero, the countdown-driven auto-transition to mode `0x10` fires; if any is nonzero, the transition is suppressed. Reader newly identified 2026-08-04. |
| `0xbb` | 1 | `unknown_0bb` | Receives `+0x52` after mode-4 dispatch. No reader found. |
| `0xc0` | 4 | `boot_check_value` | Set by `FUN_80022604` (boot init) to `*DAT_800ac8a8` — the same value whose `0xffff0000`-masked comparison against `0x20000000` produces the boolean stored at `boot_debug_flag` (`+0x1e`) above. No reader found among the 79 referencing functions; kept as the raw tested value alongside its derived boolean. Resolved 2026-08-04. |

The tracked header `/src/ddr5thmix/mode_control.h` encodes exactly these
offsets with compile-time assertions. Its `0x140` size represents the prefix
cleared by `FUN_8002216c`, not proof that the runtime allocation ends there.
Padding and unknown fields remain opaque.

# Opaque two-word snapshot

`FUN_80022148` copies two consecutive words from fixed range
`0x800ac8f0–0x800ac8f7` to `0x800e2ae0–0x800e2ae7`. The operation is verified,
but neither range has a supported semantic name. In particular, the
tool-assigned `PTR_DAT_800ac8f0` prefix is not treated as evidence that either
word is a pointer.

# Other bounded globals

`DAT_800ac890` is a distinct 32-bit flag cleared by the mode-`0xff`
submode-2 handler. `FUN_8002358c` verifies only byte `DAT_800f2900+1`; the
surrounding object's extent remains unknown. `FUN_800232cc` verifies that
`DAT_80118e48` and `DAT_8011acb8` are passed by address to `FUN_8002a9dc`, but
does not establish their types or contents.

# Runtime input and screen-index globals

`FUN_8002112c` verifies a two-byte table at `DAT_800ac90c`, two consecutive
`0x34`-byte PAD receive buffers at `DAT_800e2a68`, and two 32-byte snapshots at
`DAT_800e3b58` and `DAT_800e3c18`. The first snapshot has confirmed standard
PAD semantics for ports 1 and 2. The second has the same edge-state shape, but
its two current words come from `FUN_8009c5f4`, so their device/subsystem
identity remains unknown.

`DAT_800e2ad0` is independently verified only as a 32-bit value cleared by the
runtime reset. `DAT_800f2908` is read as a signed halfword by `FUN_8009971c`;
the wider screen-flow review establishes that callbacks write screen-name
indices there, while the reconstructed leaf verifies only its range test and
the resulting `screen_range_flag`.

## Unidad E — auditoría de layout global (2026-08-03)

Se repitió el barrido reproducible con Ghidra 12.1.2 headless sobre `SLPM_868.97_1`, usando `DumpFieldXrefs.java` para `PTR_DAT_800ac8e8`. El comando fue `analyzeHeadless runtime/ghidra/projects ddr5thmix -process SLPM_868.97_1 -noanalysis -scriptPath tools/ghidra/scripts -postScript DumpFieldXrefs.java 0x800ac8e8`; reportó 62 funciones con referencias.

La revisión separó accesos fijos de expresiones indexadas. `+0xf2` se comporta como `alternate_input_mapping_flag`: selecciona una ruta alternativa basada en tablas; `+0xf3` como `input_mapping_enabled`: habilita la capa de traducción de entradas. `+0x102` se conserva como `input_mapping_variant_flag`, pues selecciona el mapeo extendido/directo; `+0x103` como `input_button_layout_variant`, pues cambia la conversión de bits de botones. Son nombres conductuales, no nombres de dominio definitivos.

No apareció otro offset con evidencia suficiente para asignar semántica estable más allá de `+0x09`, `+0x17`, `+0x2c` y del negativo exhaustivo de `+0x2e`. Los restantes accesos corresponden a reset, contadores, estado de entrada o índices dinámicos por jugador/subsistema. Se conserva `unknown_*` donde no hay evidencia discriminante.
# Reproduction

The address and access evidence comes from the Ghidra 12.1.2 field/xref dumps
recorded in the screen-flow and symbol-map concepts. The fixed symbol addresses
are also linker inputs for the accepted functions in
`/config/ddr5thmix/build.json`; run the `mode-control` module comparison from
[/docs/workflows/function-byte-match.md](/docs/workflows/function-byte-match.md)
to reproduce the byte evidence.

# Citations

[1] [/docs/games/ddr-5th-mix-jp-symbol-map.md](/docs/games/ddr-5th-mix-jp-symbol-map.md)
[2] [/docs/games/ddr-5th-mix-jp-screen-flow.md](/docs/games/ddr-5th-mix-jp-screen-flow.md)
