---
type: Test Harness
title: BizHawk Functional Validation Harness
description: Pinned local execution harness for deterministic PS1 smoke tests and behavioral evidence.
resource: https://github.com/TASEmulators/BizHawk
tags: [ps1, bizhawk, emulation, testing, regression]
timestamp: 2026-07-23T19:00:00-04:00
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

Use `-GamePath`, `-EmuHawkPath`, `-ChdmanPath`, `-Frames`, or `-LuaPath` to
override defaults. Exactly one CHD in `input/chd/` is selected automatically.
Each run writes to an ignored, timestamped directory under
`runtime/bizhawk/runs/`. `-LuaPath` (added 2026-07-23) selects which Lua
script the launcher autoloads; it defaults to `tools/bizhawk/probe.lua` (the
smoke-test probe below) but any script following the same
`RIE_BIZHAWK_OUTPUT`/`RIE_BIZHAWK_FRAMES`/`probe-stage.log`/`report.json`
convention can be pointed at instead, e.g.
`tools/bizhawk/probe-inst-demo-watch.lua` (see "Memory-access watch probe").

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

# CD-read polling probe

`tools/bizhawk/probe-cd-reads.lua` polls the two runtime fields written by the
verified CD request path: current LBA at virtual `0x800e2958` and requested
byte size at `0x800e2940` (both addressed as masked Main RAM offsets). It
emits an event only when either value changes. It can be launched without a new
disc copy by passing the retained canonical CUE explicitly:

```powershell
.\tools\bizhawk\run-probe.ps1 `
  -GamePath .\runtime\bizhawk\runs\20260723-185640\disc\game.cue `
  -LuaPath .\tools\bizhawk\probe-cd-reads.lua `
  -Frames 3000
```

On 2026-08-13 this invocation exited before Lua created `probe-stage.log` or
`report.json`; therefore it has not yet produced evidence and no resource LBA
mapping is claimed from it. The failure did not modify or copy the canonical
disc. Resolve the local BizHawk launch issue before using its output for asset
classification.
# Simulated input timing

Empirically observed (2026-07-23), not a claim about the game itself: a
simulated button press held for only 1-2 frames via `joypad.set` can be
silently dropped if it lands on a lag frame (`emu.lagcount()` increments
without the core accepting new input that frame). Hold any simulated press
for at least ~10 frames to make sure the core actually registers it, then
release. Two-frame presses did work in initial testing here, but that was
not a reliable general result -- this rule is now followed by
`tools/bizhawk/probe-inst-demo-watch.lua`'s boot-setup dialog presses.

Real PSX joypad button names exposed to Lua on this core have **no `"P1 "`
prefix** and use the bare PlayStation glyphs: `joypad.get(1)` on this build
returned `X`, `□`, `△`, `○`, `D-Pad Up/Down/Left/Right`, `Start`, `Select`,
`L1`/`L2`/`R1`/`R2`, `L3`/`R3`, `Analog`, and the two stick axes -- not the
`config.ini` "PSX Front Panel" input-binding names like `"P1 Circle"`, which
name physical-device bindings, not the Lua-visible logical button table.
Confirm with `joypad.get(1)` (dump `pairs()` of the result) rather than
assuming either naming scheme; a wrong name is accepted silently (no error,
the button simply never presses).

# Memory-access watch probe

`tools/bizhawk/probe-inst-demo-watch.lua` (2026-07-23) is a second Lua
probe, run via `run-probe.ps1 -LuaPath tools/bizhawk/probe-inst-demo-watch.lua
-Frames 13000`, built to gather dynamic (runtime) evidence about specific
byte ranges in the DDR 5th Mix HOW TO PLAY overlay
(`docs/games/ddr-5th-mix-jp-inst-demo-overlay.md`'s "Third pass"). It is a
reusable pattern for any future "watch this address range during this
specific screen" task in this project:

1. **Boot-setup dialogs.** A fresh BizHawk session mounts an empty virtual
   memory card. This game detects that as "card present, no system data" and
   blocks on a real YES/NO dialog pair before the attract loop can run at
   all -- not an artifact of the probe. Dismissing both (one `○` press each,
   held ~10 frames per the input-timing note above, ~30 idle frames between
   them) drops into the title/PUSH START main menu; the menu's own
   documented 900-frame inactivity timeout then returns to the attract
   loop's `WARNING` state on its own. This is the one narrow, cited
   exception to an otherwise zero-input run.
2. **Screen-index polling, not save-state seeking.** The probe locates its
   target window by polling the documented screen-index global
   `DAT_800f2908` (`docs/games/ddr-5th-mix-jp-globals.md`) each frame via a
   plain `memory.read_u16_le`, rather than by a fixed frame count, and only
   pays for expensive per-byte watching once the target screen index is
   actually observed.
3. **`event.on_bus_read`/`on_bus_write`/`on_bus_exec` were tested and found
   non-functional for this session's core.** These BizHawk Lua bus-hook
   functions exist in this build (confirmed against
   `BizHawk.Client.Common.dll` strings and BizHawk's own
   `EventsLuaLibrary.cs`/`Octoshock.IDebuggable.cs` source at tag `2.11`),
   but this build's actual PSX core is `"Nymashock"` per `config.ini` (a
   Waterbox/Nyma-wrapped core, distinct from the classic direct-P/Invoke
   `Octoshock` class the tag-`2.11` source models). `event.availableScopes()`
   returned zero scopes in this session, so every `on_bus_*` registration
   silently resolves to the library's documented empty-GUID "no callback
   available" sentinel instead of erroring -- no exception, no error
   message, just a callback that never fires. A control hook on a function
   documented as called unconditionally every active frame never fired once
   across a full active window, which is what actually exposed this: **a
   hook that "registers" without error is not proof it will ever fire**;
   register a similar guaranteed-to-fire control hook before trusting any
   `on_bus_*` result on a Nyma-wrapped BizHawk core. The working fallback
   was plain `memory.read_u8` polling once per frame, diffed against the
   previous frame's snapshot -- this detects writes (value changes) but
   cannot detect reads with no observable side effect.
4. **Fixed-frame boot timing showed occasional run-to-run variance.** Across
   six otherwise-identical runs of the same script, one diverged into an
   actual gameplay-session route instead of returning to the attract loop,
   most likely from disc-read timing jitter shifting the boot dialogs'
   exact appearance frame by a few frames run to run. Treat any fixed-frame
   boot sequence as probabilistic, not guaranteed; confirm the intended
   target screen was actually reached with a screenshot (not only the
   screen-index poll) before trusting data gathered under it.

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
