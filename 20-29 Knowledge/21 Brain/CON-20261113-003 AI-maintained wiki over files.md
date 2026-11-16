---
id: CON-20261113-003
type: concept
title: AI-maintained wiki over files
status: accepted
created: 2026-11-13T17:58
updated: 2026-11-15T18:40
created-by: orchestrator
schema-version: "0.10"
kind: concept
related:
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-008 Self-improving Claude knowledge base, Lipsky]]"
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
aliases:
  - LLM wiki
  - Map for your AI
---

## Definition

A method in which an AI writes and keeps an index and linked topic pages over a person's own files. The index (`index.md`) is a table of contents for the AI, not for the person, so that the AI knows what the files hold and where.

## Explanation

Source: one YouTube tutorial (Lipsky, published 2026-06-25), partly sponsored by Zapier. The creator calls the index a map for the AI. He credits the idea and the term 'LLM wiki' to Andrej Karpathy. This credit is secondhand: the creator gives no link, and the Brain has no source from Karpathy. So the Brain attributes the term to the creator's report.

Caveats:
- Stated reason, not tested: the creator says that an AI that only reads the files must read and interpret all of them again in each session, and that with a map it knows at once what it needs and where it is. He gives no test, no measurement and no comparison. The Brain holds no claim on this.
- The creator says that the AI builds and keeps the map automatically and adds new material each night. The source shows only the setup. It does not show a nightly run, a Tidy report, or example output.
- The creator says that the setup works with Claude Cowork or OpenAI Codex and plain files. Only Cowork is shown. The tools can have changed since the publish date.
- The creator's benefit claims (breakthroughs, 'most useful') are self-reports with no data. The Brain does not hold them.
- A second source (Wall, BRF-20261115-002, opinion, partly promotional) proposes a short map file (`memory/MEMORY.md`) that an agent reads before memory-dependent work. The map idea matches. In that source the map is part of a written protocol, and the Brief does not say who keeps it. It gives no test, so it does not support the stated reason above with data.

## Related claims

- [[CON-20261113-004 Set up an AI-maintained wiki|Set up an AI-maintained wiki]]: the setup steps for this method.

## Sources

- [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]] · E1, E2, E3, E9, E10 · definition and credit · E4, E5, E6, E8, E15, E16 · stated reason and tools, not tested
- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E6 · § Give the agent a memory protocol · a map-first rule; opinion, no test
