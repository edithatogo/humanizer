# Humanizer

A toolkit to remove signs of AI-generated writing from text, making it sound more natural and human. Based on Wikipedia's "Signs of AI writing" guide.

## Installation

### Recommended

```bash
git clone https://github.com/blader/humanizer.git
```

## Usage

### Sync & Build (Cross-platform)

The repository use a modular fragment system to maintain consistency.

1.  Requires **Node.js**.
2.  Install dependencies: `npm install`
3.  Compile and sync all versions: `npm run sync`
4.  Validate metadata: `npm run validate`

This will rebuild `SKILL.md` (Standard) and `SKILL_PROFESSIONAL.md` (Pro) from the `src/` directory and sync them to all 11 adapter files.

### Variants

- **Standard Version (Human):** `/humanizer` (via `SKILL.md`)
- **Professional Version (Pro):** `/humanizer-pro` (via `SKILL_PROFESSIONAL.md`)

## Capability Overview

Detects 25 patterns including inflated symbolism, superficial analyses, vague attributions, and AI-signature comments.

### Key Adapters
- **Gemini CLI:** `adapters/gemini-extension/`
- **GitHub Copilot:** `adapters/copilot/`
- **VS Code:** `adapters/vscode/`
- **Antigravity:** `adapters/antigravity-skill/`

## Version History

- **2.2.0** - Modular refactor, Humanizer Pro, and Node.js build system.
- **2.1.0** - Added Pattern #25 (AI Signatures) and Pattern #26 (Non-text slop).

## License

MIT
