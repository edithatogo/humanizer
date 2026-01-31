---
adapter_metadata:
  skill_name: humanizer
  skill_version: 2.2.0
  last_synced: 2026-01-31
  source_path: SKILL.md
  adapter_id: antigravity-rules-workflows
  adapter_format: Antigravity rules/workflows
---

# Humanizer (Antigravity Rules & Workflows)

This adapter provides rule and workflow templates for Google Antigravity.
The canonical rules live in `SKILL.md`.

## Installation

### Rules (Always-on)

Copy `rules/humanizer.md` to your Antigravity rules directory (e.g., `~/.antigravity/rules/` or workspace `.agent/rules/`).

### Workflows (User-triggered)

Copy `workflows/humanize.md` to your Antigravity workflows directory (e.g., `~/.antigravity/workflows/` or workspace `.agent/workflows/`).

## Usage

- **Rules:** Will be applied automatically to relevant file types (markdown, text).
- **Workflows:** Can be triggered via the Antigravity action menu or command palette.
