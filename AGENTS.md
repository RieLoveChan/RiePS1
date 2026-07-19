# Repository agent guide

This repository is a research and implementation workspace for legally obtained
PlayStation 1 software. Read `spec.md`, then `docs/index.md`, before working.

## Non-negotiable rules

- Put all documentation and research in `docs/`. `AGENTS.md` and the
  owner-requested project landing page `README.md` are the only root-level
  documentation exceptions.
- Treat `docs/` as an Open Knowledge Format (OKF) 0.1 bundle. Every Markdown
  concept other than reserved `index.md` and `log.md` files must begin with
  YAML frontmatter containing a non-empty `type`.
- Use bundle-root links (`/docs/...`) in concepts. Use relative links in index
  files so they also work when browsing the repository on disk.
- Add meaningful documentation changes to the nearest `log.md`, newest date
  first. Do not log formatting-only changes.
- Do not commit copyrighted game binaries, BIOS images, leaked/proprietary SDKs,
  keys, or extracted assets. Prefer hashes, maps, scripts, source written by the
  project, and instructions for users to supply their own lawful dumps.
- Do not claim a function is matched or correct without reproducible evidence.
  Record the input revision/hash, tool versions, command, and comparison result.
- Preserve unknown OKF frontmatter fields. Keep claims cited with primary sources
  where available and clearly label inference or project policy.

## Start-of-work protocol

1. Read `docs/index.md`, the relevant OKF concepts under `docs/`, and recent
   `git log`/`git status` output to understand current repository state
   before making changes.
2. Pick a non-overlapping unit of work. There is no claim/reservation file
   system — coordination among agents happens through git itself (commits,
   pushes, and ordinary merge/conflict resolution), not through a central
   task board or per-task claim files.
3. Do the work directly. Keep each commit scoped to one coherent unit of
   work so history stays reproducible and reviewable after the fact.

## During work

- Put durable discoveries in an OKF concept, not only in a commit message.
- Record uncertainties and negative results; do not silently turn guesses into
  names, types, addresses, or build assumptions.
- Prefer small commits scoped to one unit of work. Never discard another
  agent's changes or use destructive Git cleanup (no force-push, no
  `git reset --hard` on shared history, no `git clean` over paths you did not
  create this session).

## Commit and push

- Commit completed units of work yourself and push to `origin` immediately —
  do not wait for the user/human to review, approve, or ask you to before
  committing or pushing. Autonomy here is intentional project policy, not a
  default to second-guess.
- Write commit messages that state what changed and why, and reference the
  concepts/manifests/tools touched.
- Add meaningful documentation changes to the nearest `log.md`, newest date
  first, in the same commit as the change they describe. Do not log
  formatting-only changes.
- If a push is rejected because the remote has diverged, pull/rebase and
  resolve normally — never force-push over another agent's or the owner's
  work.
- Before committing, confirm `git status`/`git diff` contain only the
  intended paths — never commit copyrighted game binaries, BIOS images,
  proprietary SDKs, keys, or extracted assets (see the non-negotiable rules
  above and `/docs/foundations/legal-provenance.md`). A commit is complete
  only when another agent can reproduce its result from repository contents
  and lawful external inputs.

## Technical baseline

- Target CPU is little-endian MIPS R3000A-class code with load/branch delay
  behavior; distinguish CPU code from GTE coprocessor operations and data.
- Preserve disc layout details (LBAs, XA/CD-DA tracks, pregaps, timestamps) when
  the game depends on them.
- Separate static analysis, dynamic validation, source reconstruction, object
  matching, executable linking, disc rebuilding, and emulator/hardware testing.
- See `/docs/workflows/decompile-recompile.md` for gates and
  `/docs/tooling/toolchain.md` for the initial tool inventory.
