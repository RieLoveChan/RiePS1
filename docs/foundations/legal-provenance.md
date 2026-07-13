---
type: Policy
title: Legal and Provenance Boundaries
description: Rules for lawful research inputs, clean repository contents, and attributable outputs.
tags: [legal, provenance, copyright, policy]
timestamp: 2026-07-12T00:00:00-04:00
---

# Repository policy

Work only from copies a contributor is legally entitled to inspect. Do not add
game images, BIOS files, leaked SDKs, encryption material, or copyrighted assets
to the repository. Store cryptographic hashes and extraction/rebuild scripts so
users can supply their own inputs locally. Keep generated proprietary material
in ignored local paths when implementation begins.

Prefer independently written source and open tooling. Record the origin and
license of every third-party dependency. A contributor unsure whether an input
or output may be shared must stop publication and seek qualified legal advice;
this page is project policy, not legal advice.

# Provenance record

Every supported game revision should eventually have a manifest containing disc
serial/region, track hashes, executable hash, extraction tool/version, and exact
commands. Results must not be generalized across revisions without verification.

# Citations

[1] [GNU General Public License FAQ on combining and distributing works](https://www.gnu.org/licenses/gpl-faq.html)
[2] [GitHub documentation on licensing repositories](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/licensing-a-repository)
