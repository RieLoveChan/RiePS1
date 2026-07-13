---
type: Test Harness
title: BizHawk Functional Validation Harness
description: Pinned local execution harness for deterministic PS1 smoke tests and behavioral evidence.
resource: https://github.com/TASEmulators/BizHawk
tags: [ps1, bizhawk, emulation, testing, regression]
timestamp: 2026-07-12T15:00:00-04:00
---

# Pinned environment

The initial harness targets BizHawk 2.11 x64 for Windows at the local default
path `D:\_Emulators\_MULTI\BizHawk-2.11-win-x64\EmuHawk.exe`. The path is a
launcher default, not a portable repository requirement. Firmware remains local
and must never be committed.

BizHawk does not directly load PS1 CHDs. The launcher defaults to the local-only,
Git-ignored `tools/local/chdman/chdman.exe` from MAME 0.275 and expands the CHD
into disposable CUE/BIN files inside the ignored run directory before giving the
CUE to BizHawk. Override its path with `-ChdmanPath` on another machine. The
executable is intentionally absent from published clones and must be supplied
locally or installed separately.

The initial lawful input is Dance Dance Revolution 5th Mix (Japan), stored as an
ignored CHD. Its container SHA-256 is
`731A4424EBC6B17496AA331BD9FDCF4D46B829B2D000E87FCF73333C4C2A4798`.
This identifies the supplied file but does not yet establish Redump equivalence.
`chdman info` identifies it as CHD v5 with one `MODE2_RAW` track, 195,857
frames, no stored subchannel data, CHD SHA-1
`5877da8b90644d78347a9253cd67cce9303dfa30`, and raw-data SHA-1
`c184543da9ef942fd69508a76089ca4f35097bbf`.

# Running the probe

From the repository root:

```powershell
.\tools\bizhawk\run-probe.ps1
```

Use `-GamePath`, `-EmuHawkPath`, `-ChdmanPath`, or `-Frames` to override defaults. Exactly one
CHD in `input/chd/` is selected automatically. Each run writes to an ignored,
timestamped directory under `runtime/bizhawk/runs/`.

BizHawk 2.11 opens its Lua Console while the probe runs. Do not add
`--chromeless`: in the tested Windows release that combination prevented the
autoloaded Lua probe from starting. The probe closes the emulator when done.
Because single-instance mode can return control before forwarded Lua work ends,
the launcher writes a unique per-run Lua wrapper carrying the output path and
frame count, waits for parseable JSON, and verifies the reported frame request.
This avoids stale environment values and report-creation races.
For deterministic startup, it also copies the configured `config.ini` into the
ignored run directory, disables single-instance mode in that copy, and passes it
with `--config`. Firmware configuration is preserved without reusing an existing
emulation process or modifying the user's primary BizHawk profile. The temporary
profile also disables automatic loading and saving of the last quicksave slot,
which otherwise carries frame and machine state across nominally fresh runs.

# Evidence produced

The Lua probe advances with neutral controller input and records BizHawk version,
Lua engine, system ID, display type, game identity/hash, database status, frame
and lag counts, executed cycles, memory-domain sizes, small domain fingerprints,
and a final screenshot. This is a smoke-test baseline, not yet a gameplay test.

Future scenarios should use versioned `.bk2` movies or explicit per-frame input,
named semantic checkpoints, selected RAM assertions, and original-versus-rebuild
comparisons. Emulator results establish functional evidence but do not prove
byte identity or real-hardware correctness.

# Current validation status

CHD-to-CUE/BIN extraction was verified with MAME 0.275 `chdman`. An interactive
BizHawk 2.11 run completed and produced a valid JSON report, all stage markers,
and a screenshot. It exposed a frontend timing race: PowerShell resumed before
the artifacts appeared, and the single BizHawk instance retained an older
600-frame environment value. Per-run wrapper parameters and bounded report
polling now address both issues; a post-fix five-frame run remains pending.
The first race-fixed report advanced exactly five frames, but began at frame
1203 because the existing single instance retained earlier state. Per-run config
isolation was added afterward; a fresh-process smoke run remains pending.
The isolated follow-up still began at frame 1209 because the source profile had
automatic last-slot loading enabled. The per-run profile now disables that state
restore/save behavior. The final smoke run began at frame 1, advanced the exact
five requested frames, ended at frame 6, wrote valid JSON and a screenshot, and
left no EmuHawk process behind. Frame 1 is the post-core-initialization point at
which the autoloaded Lua script first runs.

# Citations

[1] [BizHawk 2.11 command-line parser](https://github.com/TASEmulators/BizHawk/blob/2.11/src/BizHawk.Client.Common/ArgParser.cs)
[2] [BizHawk Lua function reference](https://tasvideos.org/Bizhawk/LuaFunctions)
[3] [BizHawk movie format](https://tasvideos.org/BizHawk/BK2Format)
[4] [BizHawk PS1 disc-format guidance](https://tasvideos.org/Bizhawk/PSX)
