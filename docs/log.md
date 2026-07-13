# Knowledge Bundle Update Log

## 2026-07-13
* **Target selection**: Selected Dance Dance Revolution 5th Mix (Japan, serial `SLPM-86897`) as the project's first target revision with a `byte_match` success contract, decided by the repository owner.
* **Schema**: Added a revision manifest schema covering identity, input provenance, boot-executable, and tool-version fields.
* **Provenance**: Extracted the supplied CHD to a raw data track, hashed it, and recorded the result in the first filled revision manifest under `docs/games/`.
* **Tooling**: Added a PowerShell ISO 9660 reader that resolves `SYSTEM.CNF`, extracts the boot executable, and parses its PS-X EXE header.
* **Analysis**: Installed a portable, git-ignored Ghidra 12.1.2 + JDK 25 + `ghidra_psx_ldr` and imported the boot executable headlessly; its PsyQ Signatures analyzer identified PsyQ SDK `4.4.0` as the original toolchain.
* **Schema**: Added a symbol map schema (CSV columns, confidence tiers) and exported the first tool-generated symbol map for the boot executable (2,026 functions; 1,045 PsyQ-signature-matched, 981 unverified).
* **Review**: Manually reviewed the PsyQ crt0 startup chain (`start`→`stup1`→`InitHeap`→`stup0`→`main`→`trap`), promoting 4 functions to `confidence = manual` and locating `main` at `0x800226a4` as the crt0-to-game-code boundary.
* **Coordination**: Removed the file-based handoff claim/coordination system (`docs/handoffs/`) at the repository owner's direction. Agents now commit and push completed work directly instead of waiting for user review; see `AGENTS.md`'s "Commit and push" section. Configured `origin` to `https://github.com/RieLoveChan/RiePS1`.
* **Review**: Manually reviewed `main` (`0x800226a4`), confirming it is a standard PS1 main loop (subsystem init, RCNT2 vsync/timer IRQ setup via correctly-named PsyQ kernel calls, then an infinite frame loop). All 12 of its unnamed callees matched no PsyQ signature, confirming genuinely DDR-5th-Mix-specific code has now been located and is ready for review.
* **Schema**: Added a quirk-entry schema for recording non-standard engineering practices, with a two-tier structure (per-game log, promoted to a cross-game vendor-quirks log only once a pattern is independently confirmed in a second game). Created the (currently empty) DDR 5th Mix quirk log and the cross-game log.
* **Review**: Manually reviewed `FUN_8002216c`, correcting an earlier hypothesis in `main`'s notes — it is a one-shot state-reset call, not a wait/spin loop condition, because it unconditionally zeroes the exact flag byte its caller's loop tests. Local disk cleanup: removed ~3.08GB of duplicate disc copies across `runtime/bizhawk/runs/*/disc/` (git-ignored, fully reproducible from `input/`), keeping only the small evidence files.
* **Review**: Manually reviewed `FUN_80022cf8` and identified it as the game's mode/screen dispatcher — reads a 16-bit field at `PTR_DAT_800ac8e8+0x28` and branches to ~9 distinct handlers by sparse enum-like values, with a second-level submode dispatch at `+0x2a`. Discovered 14 new unreviewed call targets (mode handlers + a shared per-frame epilogue); this is now the best entry point for mapping the game's top-level screen flow.
* **Schema**: Added a screen/mode flow schema and the DDR 5th Mix screen-flow document, pre-populated with the mode dispatcher's structural facts (handler addresses, sizes, arguments) and empty `proposed screen`/`confidence` columns. The repository owner is a former StepMania Team developer and will fill in domain-informed screen hypotheses for verification against the actual handler code.

## 2026-07-12
* **Validation**: Added a pinned BizHawk 2.11 launcher and Lua probe for deterministic PS1 execution evidence.
* **Tooling**: Adopted a locally supplied, Git-ignored `chdman` as the default CHD conversion tool for the BizHawk harness.
* **Safety**: Added a local CHD intake layout and Git exclusions for copyrighted inputs, proprietary tools, generated game content, and analysis caches.
* **Initialization**: Created the OKF 0.1 knowledge bundle and progressive-disclosure indexes.
* **Research**: Added initial PlayStation architecture, toolchain, and decompile/recompile workflow guidance.
* **Coordination**: Added a file-based concurrent-agent claim and handoff system.
