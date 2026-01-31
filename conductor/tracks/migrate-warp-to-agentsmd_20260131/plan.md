# Plan: Migrate WARP.md to Agents.md

## Phase 1: Preparation (Done)
- [x] Task: Create Conductor track

## Phase 2: Formalization
- [ ] Task: Create GitHub Issue
    - [ ] Title: "Migrate documentation to Agents.md standard"
    - [ ] Body: Summary of spec and benefits (interoperability).
- [ ] Task: Update `AGENTS.md` draft
    - [ ] Define standard sections (Capabilities, Context, Guidelines).
    - [ ] Merge `WARP.md` content into these sections.
    - [ ] Add "Adapter Discovery" map to point to `adapters/`.

## Phase 3: Execution
- [ ] Task: Update `AGENTS.md` (Real File)
- [ ] Task: Update `README.md` references.
- [ ] Task: Update `sync-adapters.ps1` if necessary (e.g., regex checks for frontmatter).
- [ ] Task: Delete `WARP.md`.

## Phase 4: Verification
- [ ] Task: Run `scripts/validate-adapters.ps1`.
- [ ] Task: Verify that an AI agent (like myself) can correctly interpret the new `AGENTS.md`.
