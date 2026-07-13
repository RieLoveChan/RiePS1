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

## 2026-07-12
* **Validation**: Added a pinned BizHawk 2.11 launcher and Lua probe for deterministic PS1 execution evidence.
* **Tooling**: Adopted a locally supplied, Git-ignored `chdman` as the default CHD conversion tool for the BizHawk harness.
* **Safety**: Added a local CHD intake layout and Git exclusions for copyrighted inputs, proprietary tools, generated game content, and analysis caches.
* **Initialization**: Created the OKF 0.1 knowledge bundle and progressive-disclosure indexes.
* **Research**: Added initial PlayStation architecture, toolchain, and decompile/recompile workflow guidance.
* **Coordination**: Added a file-based concurrent-agent claim and handoff system.
