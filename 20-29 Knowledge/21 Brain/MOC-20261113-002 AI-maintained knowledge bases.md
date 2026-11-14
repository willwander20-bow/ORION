---
id: MOC-20261113-002
type: moc
title: AI-maintained knowledge bases
status: active
created: 2026-11-13T17:58
updated: 2026-11-13T17:58
created-by: orchestrator
schema-version: "0.10"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-008 Self-improving Claude knowledge base, Lipsky]]"
---

## Topic summary

Knowledge bases that an AI writes and keeps over a person's own files: how they are set up, how the AI keeps them current, and the limits on what the AI may change.

## Key concepts

- [[CON-20261113-003 AI-maintained wiki over files|AI-maintained wiki over files]]

## Important claims

- None yet. One source states benefits (faster answers, breakthroughs), but gives no data. The Brain holds no claim on them.

## Processes and methods

- [[CON-20261113-004 Set up an AI-maintained wiki|Set up an AI-maintained wiki]] (prompt text from one source; no nightly run shown)

## Evidence for and against

- Describes: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]]. YouTube tutorial with the full prompt text, partly sponsored by Zapier, `source-quality: medium`. Reliable for what the prompt specifies. Weak for the effects that the creator claims: self-reports with no data.
- Against: none yet.

## Related MOCs

- [[MOC-20261113-001 Note durability|Note durability]]: the method in this topic stores its wiki as plain Markdown files with Markdown links. Note durability covers if such files stay readable and usable. A link, not a dependency.

## Open research questions

- Does an AI-maintained index and linked wiki over a person's files make AI answers faster or better than reading the raw files in each session, and under what conditions? (KAS-20261113-009 A6; the source asserts it with no test.)

## Disputes and gaps

- One source, one creator, partly sponsored. No independent source yet. The credit to Karpathy is secondhand.
- No source shows how well a model follows the prompt, a nightly run, or a Tidy report.
- The written approval rule does not cover the nightly wiki writes. No source tests what an AI changes without approval in this setup.
