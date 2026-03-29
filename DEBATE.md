# Debate Archive

This repo stores debate exports under `debate/`.

## Format

- One debate per slug, for example `ai-and-humanity`
- Metadata file: `debate/<slug>.json`
- Transcript file: `debate/<slug>.jsonl`

## Metadata JSON

The `.json` file should capture:

- `title`
- `topic`
- `agents`
- `source`
- `timestamp_note` when timestamps are reconstructed or synthetic

## Transcript JSONL

The `.jsonl` file should preserve the ordered debate stream, one event per line.
Use stable event types so future tooling can parse them consistently.

Recommended event types:

- `manager_prompt`
- `agent_reply`
- `manager_summary`
- `manager_close`

## Notes

- Prefer deterministic slugs in lowercase with hyphens.
- Keep exports append-only once published unless a correction is necessary.
- If original timestamps are unavailable, document that explicitly in metadata.
