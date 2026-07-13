---
type: Playbook
title: Decompile and Recompile a PlayStation 1 Game
description: An evidence-gated workflow for reconstructing and validating a specific PS1 game revision.
tags: [ps1, workflow, decompilation, recompilation, validation]
timestamp: 2026-07-12T00:00:00-04:00
---

# Entry criteria

Select one game, region, serial, and revision. State whether success means
matching bytes, matching behavior on PS1, or a host port. Obtain lawful inputs
and record full-disc, per-track, and main-executable hashes.

# Workflow

1. **Preserve and inventory.** Dump tracks, verify hashes, extract without
   modifying originals, and inventory executables, overlays, archives, audio,
   video, and layout-sensitive files.
2. **Map execution.** Load the main PS-X EXE at its declared address; establish
   memory regions, entry point, GP assumptions, code/data boundaries, overlays,
   SDK/library signatures, and compiler fingerprints.
3. **Build a symbol map.** Identify functions and globals from strings, call
   graphs, hardware access, library signatures, runtime breakpoints, and traces.
   Attach a confidence and evidence trail to every semantic name.
4. **Create the build skeleton.** Pin tools, linker script, section ordering,
   library model, generated-asset boundary, and a deterministic command. Begin
   with assembly stubs or extracted objects only where redistribution permits.
5. **Reconstruct incrementally.** Translate one bounded function/module at a
   time. Preserve ABI, types, padding, volatile hardware access, delay-sensitive
   behavior, and undefined-behavior risks.
6. **Compare.** For matching work, compare object sections and instructions after
   every change before comparing the linked executable. For functional work,
   compare controlled traces, state snapshots, and observable behavior.
7. **Rebuild the disc.** Preserve filenames, directory order, LBAs where used,
   sector modes, XA/CD-DA tracks, pregaps, timestamps, and region/license inputs.
8. **Test in layers.** Boot/smoke tests, deterministic gameplay scenarios,
   loading and saves, graphics/audio, long-running timing, multiple emulators,
   and finally hardware when available.

# Evidence gates

| Gate | Required artifact |
|---|---|
| Baseline accepted | Revision manifest with hashes and lawful-input statement |
| Analysis accepted | Reproducible loader setup and initial memory/symbol map |
| Function accepted | Source/assembly, comparison output or runtime test, confidence |
| Executable accepted | Deterministic build plus section/hash comparison |
| Disc accepted | Rebuild manifest, layout comparison, and boot/test report |

# Initial project backlog

1. Select the target game/revision and success contract.
2. Add ignore rules and a local-input directory convention.
3. Create revision and tool-version manifest schemas.
4. Script extraction, hashing, and executable discovery.
5. Create the Ghidra loader/project recipe and function-map format.
6. Establish the smallest deterministic build and automated comparison loop.

# Citations

[1] [PCSX-Redux debugging introduction](https://pcsx-redux.consoledev.net/Debugging/introduction/)
[2] [mkpsxiso repository](https://github.com/Lameguy64/mkpsxiso)
[3] [PlayStation Specifications (psx-spx)](https://psx-spx.consoledev.net/)
[4] [Ghidra official documentation](https://github.com/NationalSecurityAgency/ghidra/tree/master/GhidraDocs)
