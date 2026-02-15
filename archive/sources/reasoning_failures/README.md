# Reasoning Failures Archive

This directory contains archived sources related to LLM reasoning failures research.

## Naming Convention

Files in this directory follow the format:

`<author_year>.<source_type>.<additional_info>.<ext>`

Where:
- `author_year`: Author surname and year (e.g., `smith_2023`)
- `source_type`: Type of source (`paper`, `repo`, `article`, `blog`, `dataset`)
- `additional_info`: Optional additional identifier (e.g., `arxiv_2602.06176`)
- `ext`: File extension (`.pdf`, `.md`, `.txt`, etc.)

## Examples

- `song_2026.paper.arxiv_2602.06176.pdf` - Song et al. 2026 paper from arXiv 2602.06176
- `bai_2024.blog.social_post.txt` - Bai 2024 blog/social post
- `awesome_llm_reasoning.repo.md` - Awesome LLM Reasoning Failures repository documentation

## Metadata

Each source should have a corresponding `.meta.json` file with:
- `id`: Unique identifier
- `type`: Source type
- `url`: Original URL
- `fetched_at`: Date retrieved
- `hash`: SHA256 hash of the file
- `status`: `archived`, `deferred`, `unverified`
- `confidence`: Confidence level (low, medium, high)