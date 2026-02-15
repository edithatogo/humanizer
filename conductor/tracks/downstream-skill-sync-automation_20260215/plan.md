# Implementation Plan: Automate Downstream Skill Sync Workflows

## Phase 1: Target Discovery and Trigger Design

- [ ] Task: Catalog downstream repos and ingest points
  - [ ] Inventory all known downstream consumers
  - [ ] Document their sync mechanisms (git submodule, copy, API, etc.)
  - [ ] Create `docs/downstream-inventory.md`
- [ ] Task: Define trigger strategy (tag/release/manual)
  - [ ] Map release policy version events to sync triggers
  - [ ] Define manual dispatch workflow for ad-hoc syncs
- [ ] Task: Define safety checks and dry-run protocol
  - [ ] Pre-sync validation (manifest integrity, adapter consistency)
  - [ ] Dry-run mode that logs actions without executing
- [ ] Task: Conductor - Automated Verification 'Phase 1: Target Discovery and Trigger Design' (Protocol in workflow.md)

## Phase 2: Automation Implementation

- [ ] Task: Implement sync scripts/workflows
  - [ ] Create `.github/workflows/sync-downstream.yml`
  - [ ] Implement per-target sync logic
- [ ] Task: Add tests for sync manifest generation and routing
  - [ ] Test: manifest generation produces valid output
  - [ ] Test: routing logic selects correct targets
  - [ ] Test: dry-run produces logs but no side effects
  - [ ] Implement until tests pass
- [ ] Task: Add logging/reporting outputs
  - [ ] Structured sync log format
  - [ ] Success/failure summary per target
- [ ] Task: Add failure notification
  - [ ] Define notification channel (GitHub Issue, Slack webhook, email - based on repo preferences)
  - [ ] Add notification step to workflow on failure
  - [ ] Include: failed targets, error messages, rollback instructions link
- [ ] Task: Implement rollback capability
  - [ ] Capture pre-sync state snapshot
  - [ ] Implement per-target rollback script
  - [ ] Document rollback procedure in `docs/sync-rollback.md`
- [ ] Task: Conductor - Automated Verification 'Phase 2: Automation Implementation' (Protocol in workflow.md)

## Phase 3: Operationalization

- [ ] Task: Run dry-run and one controlled live path
  - [ ] Execute dry-run against all targets
  - [ ] Execute one live sync to lowest-risk target
  - [ ] Verify sync succeeded and downstream repo is updated
- [ ] Task: Document rollback and incident handling
  - [ ] Incident response checklist
  - [ ] Escalation paths for sync failures
- [ ] Task: Conductor - Automated Verification 'Phase 3: Operationalization' (Protocol in workflow.md)

## Handoff Artifacts

- [ ] Artifact: `docs/downstream-inventory.md` - target catalog
- [ ] Artifact: `.github/workflows/sync-downstream.yml` - automation with failure notification
- [ ] Artifact: `docs/sync-rollback.md` - rollback procedure
- [ ] Artifact: `scripts/validate-sync-targets.sh` - target health check

## Definition of Done

- [ ] All acceptance criteria in `spec.md` are satisfied
- [ ] All phases have verification checkpoints passed
- [ ] Handoff artifacts exist and are committed
- [ ] Dry-run and live sync completed successfully
- [ ] Rollback procedure tested
- [ ] `metadata.json` status updated to `completed`
- [ ] `npm run lint` and `npm run validate` pass
