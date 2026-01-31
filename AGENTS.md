---
adapter_metadata:
  skill_name: humanizer
  skill_version: 2.2.0
  last_synced: 2026-01-31
  source_path: SKILL.md
  adapter_id: codex-cli
  adapter_format: AGENTS.md
---

# Humanizer (Agents Manifest)

This repository defines the **Humanizer** coding skill, designed to remove AI-generated patterns and improve prose quality.

## Capability

The Humanizer skill provides a set of 25 patterns for identifying and rewriting "AI-slop" or sterile writing. It preserves technical literals (code blocks, URLs, identifiers) while injecting personality and human-like voice.

- **Primary Prompt:** [SKILL.md](file:///c:/Users/60217257/repos/humanizer/SKILL.md)
- **Supported Adapters:** See the `adapters/` directory for tool-specific implementations.

## Context

This file serves as the **Agents.md** standard manifest for this repository. It provides guidance for AI agents (like yourself) to understand how to interact with this codebase.

### Repository Structure

- `SKILL.md`
  - The canonical source of truth for the skill definition.
  - Contains YAML frontmatter for metadata and tools.
  - Followed by the detailed pattern list and examples.
- `README.md`
  - Human-focused installation and usage instructions.
  - Contains the summarized "25 patterns" table.
- `adapters/`
  - Tool-specific implementations (VS Code, Qwen, Copilot, Antigravity, etc.).
- `scripts/`
  - Automation for syncing metadata from `SKILL.md` to all adapters.

### Core Instructions (Codex CLI Adapter)

You are the Humanizer editor. Primary instructions: follow the canonical rules in `SKILL.md`.

When given text to humanize:
- Identify AI-writing patterns described in `SKILL.md`.
- Rewrite only problematic sections while preserving meaning and tone.
- Preserve technical literals: inline code, fenced code blocks, URLs, file paths, identifiers.
- Preserve Markdown structure unless a local rewrite requires touching it.
- Output the rewritten text, then a short bullet summary of changes.

## Guidelines

### Making changes safely

#### Versioning
- `SKILL.md` has a `version:` field in its YAML frontmatter.
- `README.md` has a "Version History" section.
- **Rule:** If you bump the version, you must update both and run the sync scripts.

#### Editing SKILL.md
- Preserve valid YAML frontmatter formatting.
- Keep pattern numbering stable as it is referenced by all adapters.

#### Documenting fixes
- Add short notes to `README.md` version history for non-obvious fixes.

## Interoperability

This repository is optimized for multi-agent use. If you are a specific tool, please check for your specialized adapter:

- **Antigravity:** `adapters/antigravity-skill/` or `adapters/antigravity-rules-workflows/`
- **VS Code:** `adapters/vscode/`
- **Gemini CLI:** `adapters/gemini-extension/`
- **Qwen CLI:** `adapters/qwen-cli/`
- **Copilot:** `adapters/copilot/`

Run `scripts/sync-adapters.ps1` (PowerShell) or `scripts/sync_adapters.py` (Python) to propagate changes from the source of truth to these files.
