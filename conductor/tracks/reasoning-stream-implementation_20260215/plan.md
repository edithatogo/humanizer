# Implementation Plan: Implement Reasoning Stream in Humanizer Repository

## Phase 1: Stream Architecture and Source Integration

- [ ] Task: Define stream boundaries and file layout
  - [ ] Confirm split between core humanization and reasoning diagnostics
  - [ ] Document architecture rationale in docs
- [ ] Task: Add reasoning stream source modules
  - [ ] Add/extend src/ fragments for reasoning stream
  - [ ] Connect taxonomy references from `docs/reasoning-failures-taxonomy.md`
- [ ] Task: Conductor - Automated Verification 'Phase 1: Stream Architecture and Source Integration' (Protocol in workflow.md)

## Phase 2: Build, Adapter, and Test Integration

- [ ] Task: Update compile/sync pipeline for stream output
  - [ ] Ensure deterministic generation for all relevant adapters
- [ ] Task: Validate all adapters receive reasoning stream correctly
  - [ ] List all adapter targets (Gemini, Qwen, Copilot, Antigravity, VS Code, Codex)
  - [ ] Run sync and verify each adapter output includes reasoning stream
  - [ ] Fix any adapters that miss the stream
- [ ] Task: Add adapter validation as CI step
  - [ ] Create `scripts/validate-adapters.sh` to grep for reasoning stream in all adapters
  - [ ] Add to `.github/workflows/` as a job or step
  - [ ] Ensure CI fails if any adapter missing stream
- [ ] Task: Add failing tests for regressions and stream outputs
  - [ ] Test: core humanizer behavior unchanged
  - [ ] Test: reasoning stream present in compiled outputs
  - [ ] Test: taxonomy references resolve correctly
  - [ ] Implement until tests pass
- [ ] Task: Run repository validation suite
  - [ ] Run tests and validation scripts
  - [ ] Run `npm run lint` and `npm run validate`
- [ ] Task: Conductor - Automated Verification 'Phase 2: Build, Adapter, and Test Integration' (Protocol in workflow.md)

## Phase 3: Release Notes and Handoff

- [ ] Task: Update changelog and version rationale
- [ ] Task: Document operator guidance for stream usage
  - [ ] How to invoke reasoning stream vs core humanization
  - [ ] When to use which stream
- [ ] Task: Conductor - Automated Verification 'Phase 3: Release Notes and Handoff' (Protocol in workflow.md)

## Handoff Artifacts

- [ ] Artifact: Compiled adapters with reasoning stream included (all 6 adapters)
- [ ] Artifact: `docs/operator-guide-streams.md` - usage guidance
- [ ] Artifact: Updated `CHANGELOG.md` with stream introduction

## Definition of Done

- [ ] All acceptance criteria in `spec.md` are satisfied
- [ ] All phases have verification checkpoints passed
- [ ] Handoff artifacts exist and are committed
- [ ] All 6 adapters validated with reasoning stream
- [ ] `metadata.json` status updated to `completed`
- [ ] `npm run lint` and `npm run validate` pass
- [ ] No regressions in core humanizer behavior
