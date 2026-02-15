# Source Refresh Commands

This document contains commands to re-fetch and validate archived sources.

## Prerequisites

- Node.js installed
- Internet connectivity
- Appropriate permissions to write to the archive directory

## Commands

### Refresh arXiv Paper (2602.06176)

```bash
# Download the paper
curl -L https://arxiv.org/pdf/2602.06176.pdf -o archive/sources/reasoning_failures/song_2026.paper.arxiv_2602.06176.pdf

# Calculate and verify hash
sha256sum archive/sources/reasoning_failures/song_2026.paper.arxiv_2602.06176.pdf

# Update manifest with new hash and date
# (Manual step - update fetched_at and hash fields in archive/sources_manifest.json)
```

### Refresh Awesome LLM Reasoning Failures Repository

```bash
# Clone or update the repository
git clone https://github.com/Peiyang-Song/Awesome-LLM-Reasoning-Failures.git archive/sources/reasoning_failures/awesome_llm_reasoning_repo --depth 1

# Or if already cloned:
cd archive/sources/reasoning_failures/awesome_llm_reasoning_repo
git pull origin main
```

### Validate All Sources

```bash
# Run the validation script
node scripts/validate-manifest.js

# Run all tests
npm test
```

### Run Pre-commit Validation

```bash
# Run pre-commit on the manifest file
pre-commit run validate-manifest --files archive/sources_manifest.json
```

## CI/CD Safe Commands

All the above commands are non-interactive and suitable for CI/CD environments. Just ensure the environment has the required tools (curl, git, node, npm) installed.