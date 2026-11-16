---
id: CON-20261115-001
type: concept
title: Agent memory protocol for file-based memory
status: accepted
created: 2026-11-15T18:39
updated: 2026-11-15T23:57
created-by: orchestrator
schema-version: "0.11"
kind: process
related:
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[CON-20261115-005 Context engineering]]"
  - "[[CON-20261115-007 Claude Code instructions and memory]]"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
  - "[[CO-20261115-005 Obsidian second brain with Claude Code]]"
  - "[[CO-20261115-007 Fix source counts and mark unchecked evidence]]"
  - "[[CO-20261115-009 Repoint Brain citations to Source notes]]"
  - "[[CO-20261115-017 Effective context engineering for AI agents, Anthropic]]"
  - "[[CO-20261115-020 Claude Code memory, Anthropic docs]]"
aliases:
  - Memory protocol
---

## Definition

A written set of rules that an agent follows when it reads or writes a file-based memory.

## Explanation

The nine rules come from one source (Wall), as the Brief reports them. Caveats:
- The nine rules are one author's proposal (Wall). The article gives no test or case study.
- The Brief says that the source has nine rules. The count and the wording come from a WebFetch paraphrase, so only the five rules below are listed. The other four rules are not in the Brain.
- The publisher sells a related product.
- A second source (Okhlopkov, SRC-20261115-002, `source-quality: low`, no date, no data) states a rule that matches step 4 for raw input. The Brief quotes it: "Raw human input should not be rewritten just because an LLM wanted to be helpful." The same source says that a rules file must state where credentials must never be stored (from a WebFetch summary, not checked against the page). This protocol has no credential rule, and this Change Order adds none as a step. Both are opinions with no test. The Brain does not show that the two authors are independent of each other.

## Steps

1. Read the memory map file before work that depends on memory.
2. Treat inbox and daily notes as unverified.
3. Cite the file path behind each durable claim.
4. Do not silently rewrite decisions, sources, or personal facts.
5. At the end of significant work, log decisions, open questions, and next steps.

## Related claims

- None yet. The Brain holds no claim on this protocol.

## Related concepts

- [[CON-20261113-003 AI-maintained wiki over files|AI-maintained wiki over files]]: also an AI that reads a map first. Here the map is part of a written protocol.
- [[CON-20261113-004 Set up an AI-maintained wiki|Set up an AI-maintained wiki]]: a setup prompt for one such method. This protocol is a set of rules for the agent's reading and writing, not a setup.
- [[CON-20261115-005 Context engineering|Context engineering]]: one vendor describes structured note-taking, where an agent writes notes outside the context window and reloads them later. This protocol is a set of rules for such files. The Brief gives no information on whether the two are the same. A link, not a dependency.
- [[CON-20261115-007 Claude Code instructions and memory|Claude Code instructions and memory]]: one product's way to load user-written instructions (CLAUDE.md) and Claude-written notes (auto memory, with an index file). The Brief gives no information on whether its index file is the same as this protocol's memory map file. A link, not a dependency.

## Sources

- [[SRC-20261115-001 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E6 · § Give the agent a memory protocol · opinion, no test
- [[SRC-20261115-002 Obsidian second brain with Claude Code|Obsidian Second Brain with Claude Code (Okhlopkov, undated)]] · E6 · locator unavailable · raw-input rule; the quote was checked against the page · E4 · locator unavailable · credentials rule; a WebFetch summary, not checked
