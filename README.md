# RiePS1 — PlayStation 1 reconstruction research

Research and implementation workspace for legally obtained PlayStation 1
software. Targets are documented per game under `docs/games/<target>/`; the
current first target is **Dance Dance Revolution 5th Mix (Japan)**
(`SLPM-86897`) with an instruction-level `byte_match` success contract.

Copyrighted game binaries, BIOS images, proprietary SDKs, keys, and extracted
assets are not committed. Reproduction tools accept a user-supplied lawful dump
and validate its recorded hashes before comparison.

## Repository layout

The layout separates content exclusive to one target revision from
infrastructure meant to carry over when a second target is added:

| Path | Scope |
|---|---|
| `src/ddr5thmix/`, `config/ddr5thmix/`, `tools/ddr5thmix/`, `docs/games/ddr5thmix/` | Everything specific to DDR 5th Mix (Japan): reconstructed source, the build manifest, game-only scripts (BizHawk probes with hardcoded checkpoints/addresses, HOW TO PLAY overlay tests), and per-game docs (overview/status readme, doc index, symbol map, globals, screen flow, module write-ups). |
| `docs/foundations/`, `docs/tooling/`, `docs/workflows/` | Schemas, methodology, and process docs meant to apply to any PS1 target, even where current examples are drawn from DDR 5th Mix. |
| `tools/build/`, `tools/ghidra/`, `tools/iso9660/`, `tools/bizhawk/` (excluding the files under `tools/ddr5thmix/`) | Generic, parametrized tooling: byte-match verification (`Invoke-FunctionMatch.ps1`/`Invoke-ModuleMatch.ps1`), Ghidra headless scripts, ISO 9660/TIM/VAB/VAG/TMD extraction, and the BizHawk harness driver. Each accepts an executable/manifest path rather than assuming DDR 5th Mix. |
| `docs/games/` (top level) | One self-contained folder per target: each `docs/games/<target>/` carries its own `readme.md` (status, progress, next targets) and `index.md` (doc index), so a new game is added without touching shared directories. |

## Targets

* [DDR 5th Mix (Japan)](docs/games/ddr5thmix/readme.md) - Current target; status, completed foundations, and next targets in the game's own readme, with its [documentation index](docs/games/ddr5thmix/index.md).

Adding a second target follows the [new-target onboarding procedure](docs/workflows/new-target-onboarding.md): each game gets its own self-contained
`docs/games/<target>/` folder (readme + index + revision manifest), and the
shared verifiers accept the new target's manifest/CSV paths via parameters.

## Documentation

* [Knowledge bundle](docs/index.md) - OKF bundle root: foundations, tooling, workflows, and games.
* [Legal provenance policy](docs/foundations/legal-provenance.md) - Repository rules for lawful inputs and redistributable outputs.

See [AGENTS.md](AGENTS.md) before making changes. Correctness and byte-match
claims require reproducible evidence tied to the exact input revision, tool
versions, command, and comparison result.
