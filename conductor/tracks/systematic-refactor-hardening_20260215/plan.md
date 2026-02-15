# Implementation Plan: Systematic Refactor and Hardening Baseline

## Phase 1: Hotspot Discovery and Refactor Plan

- [ ] Task: Map coupling hotspots and risk areas
  - [ ] Analyze file dependency graph (imports, requires)
  - [ ] Identify circular dependencies
  - [ ] Identify files with high incoming/outgoing dependency counts
  - [ ] Document coupling between core humanization and reasoning stream
- [ ] Task: Define modular target architecture and milestones
  - [ ] Document target module boundaries
  - [ ] Define acceptable coupling thresholds (e.g., max 5 incoming deps)
  - [ ] Create hotspot matrix with priority rankings
- [ ] Task: Execute /conductor:review for Phase 1
- [ ] Task: Conductor - Automated Verification 'Phase 1: Hotspot Discovery and Refactor Plan' (Protocol in workflow.md)

## Phase 2: Refactor Execution

- [ ] Task: Implement prioritized modular refactors
  - [ ] Refactor top 3 hotspots (or all if < 3)
  - [ ] Ensure core humanization has no dependency on reasoning stream internals
  - [ ] Ensure reasoning stream imports from shared utils, not core internals
- [ ] Task: Add failing tests for structural contracts
  - [ ] Test: no circular dependencies in src/
  - [ ] Test: coupling thresholds not exceeded
  - [ ] Test: module boundaries respected (core vs reasoning)
  - [ ] Implement until tests pass
- [ ] Task: Update developer docs and contribution guidance
  - [ ] Document module boundaries in docs/architecture.md
  - [ ] Update contribution guide with coupling guidelines
- [ ] Task: Execute /conductor:review for Phase 2
- [ ] Task: Conductor - Automated Verification 'Phase 2: Refactor Execution' (Protocol in workflow.md)

## Phase 3: Guardrails and Maintenance

- [ ] Task: Add structure/lint checks to prevent regressions
  - [ ] Add dependency analysis to CI (if tool available)
  - [ ] Add coupling threshold check to CI
  - [ ] Document how to run structural checks locally
- [ ] Task: Create Architectural Decision Record (ADR)
  - [ ] Document reasoning stream architecture decision
  - [ ] Document module boundary rationale
  - [ ] Store in `docs/adr/` directory
- [ ] Task: Finalize maintenance playbook and review cadence
  - [ ] Create `docs/maintenance-playbook.md`
  - [ ] Define quarterly hotspot review cadence
  - [ ] Define trigger for out-of-cycle review (e.g., new stream added)
- [ ] Task: Execute /conductor:review for Phase 3
- [ ] Task: Conductor - Automated Verification 'Phase 3: Guardrails and Maintenance' (Protocol in workflow.md)

## Handoff Artifacts

- [ ] Artifact: `docs/hotspot-matrix.md` - coupling analysis results
- [ ] Artifact: `docs/architecture.md` - module boundaries
- [ ] Artifact: `docs/adr/0001-reasoning-stream-architecture.md` - ADR
- [ ] Artifact: `docs/maintenance-playbook.md` - ongoing care guide
- [ ] Artifact: Structural checks in CI workflow

## Definition of Done

- [ ] All acceptance criteria in `spec.md` are satisfied
- [ ] All phases have verification checkpoints passed
- [ ] Handoff artifacts exist and are committed
- [ ] Coupling thresholds defined and enforced
- [ ] At least one ADR committed
- [ ] `metadata.json` status updated to `completed`
- [ ] `npm run lint` and `npm run validate` pass
