# Implementation Plan: Create Humanizer Review Skill

## Phase 1: Review Skill Design

- [ ] Task: Define review scope and output contract
  - [ ] Severity rubric (P0 critical, P1 major, P2 minor, P3 suggestion)
  - [ ] Finding schema (file, line, category, severity, message, remediation)
  - [ ] Required evidence/citation checks for reasoning-failure claims
- [ ] Task: Draft skill prompt/behavior files
  - [ ] Define review SKILL.md structure
  - [ ] Map taxonomy categories to review checks
- [ ] Task: Create test fixture corpus
  - [ ] Add sample reasoning-failure examples in `tests/fixtures/reasoning-failures/`
  - [ ] Include examples of each taxonomy category
  - [ ] Include examples of citation quality issues
- [ ] Task: Execute /conductor:review for Phase 1
- [ ] Task: Conductor - Automated Verification 'Phase 1: Review Skill Design' (Protocol in workflow.md)

## Phase 2: Implementation and Validation

- [ ] Task: Implement review skill artifacts in repo structure
  - [ ] Add `src/review/` module or equivalent
  - [ ] Wire to build/sync pipeline
- [ ] Task: Add failing tests/fixtures for review outputs
  - [ ] Test: severity ordering is correct
  - [ ] Test: taxonomy categories are detected
  - [ ] Test: citation quality issues are flagged
  - [ ] Test: false positive rate is acceptable
  - [ ] Implement until tests pass
- [ ] Task: Validate integration with existing adapters
  - [ ] Verify review skill is included in adapter outputs
  - [ ] Test review behavior in at least one adapter environment
- [ ] Task: Execute /conductor:review for Phase 2
- [ ] Task: Conductor - Automated Verification 'Phase 2: Implementation and Validation' (Protocol in workflow.md)

## Phase 3: Documentation and Handoff

- [ ] Task: Add usage docs and examples
  - [ ] Document review command/skill invocation
  - [ ] Add example output format
  - [ ] Document integration with conductor workflows
- [ ] Task: Add changelog/version updates
- [ ] Task: Create review integration guide for conductor-humanizer-templates
- [ ] Task: Execute /conductor:review for Phase 3
- [ ] Task: Conductor - Automated Verification 'Phase 3: Documentation and Handoff' (Protocol in workflow.md)

## Handoff Artifacts

- [ ] Artifact: `src/review/*.md` - review skill source
- [ ] Artifact: `tests/fixtures/reasoning-failures/` - test corpus
- [ ] Artifact: `docs/review-integration-guide.md` - for templates track

## Definition of Done

- [ ] All acceptance criteria in `spec.md` are satisfied
- [ ] All phases have verification checkpoints passed
- [ ] Handoff artifacts exist and are committed
- [ ] False positive rate < 10% on test corpus
- [ ] `metadata.json` status updated to `completed`
- [ ] `npm run lint` and `npm run validate` pass
