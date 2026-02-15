# Implementation Plan: Repo Hardening, CI/CD, and Release Operations

## Phase 1: Assessment and Policy Drafting

- [ ] Task: Audit current CI/CD and validation paths
  - [ ] Document existing workflows in `.github/workflows/`
  - [ ] Identify gaps in quality gates (lint, test, validate)
  - [ ] Assess reproducibility of CI environment
- [ ] Task: Define release/versioning policy and checklists
  - [ ] Document semantic versioning decision tree
  - [ ] Define patch vs minor vs major bump criteria
  - [ ] Create release checklist template
  - [ ] Define version file locations (SKILL.md frontmatter, package.json, etc.)
- [ ] Task: Define breaking change detection checklist
  - [ ] List breaking change categories (API changes, skill behavior changes, adapter contract changes)
  - [ ] Define detection workflow (manual review + automated flags)
- [ ] Task: Define upstream PR/merge runbook
  - [ ] Document PR creation workflow
  - [ ] Document merge conflict resolution procedure
  - [ ] Document post-merge verification steps
- [ ] Task: Conductor - Automated Verification 'Phase 1: Assessment and Policy Drafting' (Protocol in workflow.md)

## Phase 2: Hardening Implementation

- [ ] Task: Implement prioritized CI/CD improvements
  - [ ] Add missing quality gates if identified
  - [ ] Ensure all workflows use `CI=true` for non-interactive execution
  - [ ] Add workflow timeout limits to prevent hung jobs
- [ ] Task: Add tests/automation for release guardrails
  - [ ] Test: version bump validation (version in SKILL.md matches expected)
  - [ ] Test: changelog updated on release
  - [ ] Test: breaking change detection runs before merge
  - [ ] Implement until tests pass
- [ ] Task: Create release workflow if warranted
  - [ ] Add `.github/workflows/release.yml` (or document why deferred)
  - [ ] Define release trigger (tag push, manual dispatch)
- [ ] Task: Add changelog/release templates
  - [ ] Create `docs/release-template.md`
  - [ ] Update `CHANGELOG.md` format guidance
- [ ] Task: Create release checklist
  - [ ] Create `RELEASE_CHECKLIST.md` with tickable items
  - [ ] Include: version bump verification, changelog update, tests pass, adapters validated
  - [ ] Document when to use checklist (every release)
- [ ] Task: Conductor - Automated Verification 'Phase 2: Hardening Implementation' (Protocol in workflow.md)

## Phase 3: Operational Readiness

- [ ] Task: Dry-run release checklist end to end
  - [ ] Simulate patch release (no real tag)
  - [ ] Simulate minor release (no real tag)
  - [ ] Document any blockers or gaps discovered
- [ ] Task: Document deferred risks and next actions
  - [ ] Create risk register for deferred items
  - [ ] Document when deferred items should be revisited
- [ ] Task: Conductor - Automated Verification 'Phase 3: Operational Readiness' (Protocol in workflow.md)

## Handoff Artifacts

- [ ] Artifact: `docs/release-policy.md` - versioning rules, semver decision tree
- [ ] Artifact: `docs/breaking-change-checklist.md` - semver-major detection
- [ ] Artifact: `docs/upstream-pr-runbook.md` - PR/merge procedures
- [ ] Artifact: `.github/workflows/release.yml` (if warranted)
- [ ] Artifact: `docs/release-template.md` - release notes format
- [ ] Artifact: `RELEASE_CHECKLIST.md` - tickable release checklist
- [ ] Artifact: `docs/deferred-risks.md` - risk register

## Definition of Done

- [ ] All acceptance criteria in `spec.md` are satisfied
- [ ] All phases have verification checkpoints passed
- [ ] Handoff artifacts exist and are committed
- [ ] Release dry-run completed successfully
- [ ] `metadata.json` status updated to `completed`
- [ ] `npm run lint` and `npm run validate` pass
