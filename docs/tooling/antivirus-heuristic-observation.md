---
type: Tooling Observation
title: Antivirus Heuristic Alert During Local Decompilation
description: A local antivirus flagged command-line content associated with PowerShell disassembly and Codex patch application without evidence of malicious execution.
tags: [ps1, tooling, antivirus, powershell, reproducibility, safety]
timestamp: 2026-08-13T00:00:00-04:00
---

# Observation

During reconstruction of `FUN_800973e8`, the local antivirus raised a heuristic alert for a command line involving PowerShell, `objdump`, regular expression processing, generated assembly text, and the Codex patch helper. The alert was not treated as proof of malware. The command read the lawful local executable and repository files; it did not download or modify the original executable.

A later `codex-computer-use.exe turn-ended` event included the earlier command inside its `input-messages` JSON field. That field is event data, not a second execution of the embedded PowerShell text, but its content was sufficient to trigger another heuristic inspection because it contained terms such as `pwsh`, `objdump`, and file-editing operations.

# Reproduction boundary

The observed alert is specific to the local endpoint and antivirus policy. No product name, detection name, quarantine result, or malicious payload was provided, so this record does not identify a confirmed vulnerability or a false-positive verdict from the antivirus vendor.

# Safer procedure

For future work, keep analysis, source preparation, patch application, assembly, comparison, and documentation as separate short commands. Inspect the working tree after each write, preserve the original executable as read-only input, and do not disable antivirus protection or add broad exclusions. If an alert recurs, record the exact process tree and detection name before continuing.
