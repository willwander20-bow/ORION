---
id: MOC-20261113-002
type: moc
title: AI-maintained knowledge bases
status: active
created: 2026-11-13T17:58
updated: 2026-11-15T18:49
created-by: orchestrator
schema-version: "0.10"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-008 Self-improving Claude knowledge base, Lipsky]]"
  - "[[CO-20261115-003 Add Research Questions row 1 to MOC-002]]"
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
  - "[[CO-20261115-005 Obsidian second brain with Claude Code]]"
---

## Topic summary

Knowledge bases that an AI writes and keeps over a person's own files: how they are set up, how the AI keeps them current, and the limits on what the AI may change.

## Key concepts

- [[CON-20261113-003 AI-maintained wiki over files|AI-maintained wiki over files]]

## Important claims

- None yet on the benefits. One source states benefits (faster answers, breakthroughs), but gives no data. The Brain holds no claim on them.
- [[CLM-20261115-001 Search plain files first, then add indexes|Search plain files first, then add indexes]] (evidence `weak`, one opinion source, no benchmarks)

## Processes and methods

- [[CON-20261113-004 Set up an AI-maintained wiki|Set up an AI-maintained wiki]] (prompt text from one source; no nightly run shown)
- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]] (rules from one source; no test)

## Evidence for and against

- Describes: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]]. YouTube tutorial with the full prompt text, partly sponsored by Zapier, `source-quality: medium`. Reliable for what the prompt specifies. Weak for the effects that the creator claims: self-reports with no data.
- Describes: [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]]. Opinion and design article with a nine-rule agent memory protocol, `source-quality: medium`, objectivity 2 of 5. It proposes a map file, search first, and a write boundary for agents. The wording comes from WebFetch summaries. No test or data.
- Describes: [[BRF-20261115-001 Obsidian second brain with Claude Code|Obsidian Second Brain with Claude Code: My Agent-Readable Vault Setup (Okhlopkov, undated)]]. First-person account of one vault that Claude Code reads and writes, `source-quality: low`, no date, no data. It describes a central rules file (`AGENTS.md`), raw human notes that the AI does not edit, and AI output stored beside them. Three quotes were checked against the page. The other wording comes from WebFetch summaries.
- Against: none yet.

## Related MOCs

- [[MOC-20261113-001 Note durability|Note durability]]: the method in this topic stores its wiki as plain Markdown files with Markdown links. Note durability covers if such files stay readable and usable. A link, not a dependency.

## Open research questions

- Does a knowledge base that an AI writes, and that saves AI answers back into itself, become more accurate over time, or do its errors compound, and does a periodic AI audit catch those errors? (Row 1 of [[Research Questions]]; raised by [[KAS-20261113-008 Claude knowledge base that self-improves, Systems Made Better]].)
- Does an AI-maintained index and linked wiki over a person's files make AI answers faster or better than reading the raw files in each session, and under what conditions? (KAS-20261113-009 A6; the source asserts it with no test.)

## Disputes and gaps

- One source, one creator, partly sponsored. A second source (Wall, BRF-20261115-002) is partly independent of the first on the map-first idea. It is opinion and partly promotional. A third source (Okhlopkov, BRF-20261115-001) is a first-person account of one vault, with `low` source quality, no date, and no data. The Brain does not show that the authors are independent of each other. No source with data or tests yet. The credit to Karpathy is secondhand.
- No source shows how well a model follows the prompt, a nightly run, or a Tidy report.
- The written approval rule does not cover the nightly wiki writes. No source tests what an AI changes without approval in this setup. One source proposes a write boundary as an option (see CON-004). It gives no test.
