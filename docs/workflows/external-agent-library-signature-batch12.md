---
type: Workflow
title: Library-signature reconstruction — batch 12
description: Direct reconstruction and byte verification of the 15 remaining 512+ byte PsyQ-signature functions.
tags: [reconstruction, byte-match, psyq, mips]
timestamp: 2026-08-03T00:00:00-04:00
status: completed
---

# Scope

Batch 12 covers exactly the 15 remaining real `library_signature` rows in the
main executable with `size >= 512`: 11,152 selected bytes, canonical inventory
SHA-256 `2b9951586ea27c0c26a8080ccd8044041c9dc3156af99cb23b699776e3603d08`.
The 167 synthetic GTE entries at `0x2000...` remain excluded because they are
not executable-code functions.

# Evidence

The lawful `SLPM_868.97_1` executable has SHA-256
`4e0308ca35000fe91bf0b468297125061efeb16198c27fd13c950003d94c4aee`.
Sources were generated from `mipsel-none-elf-objdump -D -b binary -m mips:3000 -EL -z -M no-aliases`, assembled with GCC 14.2.0/binutils 2.43, and checked with `tools/build/Invoke-FunctionMatch.ps1`.

All 15/15 functions passed `byte_match: true`; every manifest reference and
built SHA-256 is recorded in `config/ddr5thmix/build.json`, and every promoted
CSV row records the same evidence. The `s8` register emitted by objdump was
normalized to its numeric assembler-compatible register spelling only where
needed; no raw opcode transcription or prohibited binary was added.