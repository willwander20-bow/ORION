---
id: MOC-20261115-002
type: moc
title: Building AI agents
status: active
created: 2026-11-15T22:51
updated: 2026-11-16T05:45
created-by: managing-editor
schema-version: "0.13"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-013 Building effective agents, Anthropic]]"
  - "[[CO-20261115-014 How to build an AI agent, Udacity]]"
  - "[[CO-20261115-017 Effective context engineering for AI agents, Anthropic]]"
  - "[[CO-20261115-018 Memory for autonomous LLM agents, Du]]"
  - "[[CO-20261115-019 Anatomy of agentic memory, arXiv]]"
  - "[[CO-20261115-020 Claude Code memory, Anthropic docs]]"
  - "[[CO-20261116-001 Brain maintenance fixes from KHR-20261116-001]]"
  - "[[CO-20261116-003 Claude for dummies, Hassid]]"
---

## Topic summary

How people design systems in which an LLM uses tools and directs its own steps: the terms, the patterns, the advice on when to use them, and what an agent holds in its context and its memory (including how one product loads instructions). This topic is about building agents. [[MOC-20261113-002 AI-maintained knowledge bases|AI-maintained knowledge bases]] is about one use of an agent.

## Key concepts

- [[CON-20261115-003 Workflows and agents|Workflows and agents]] (definitions and five patterns from one vendor article)
- [[CON-20261115-005 Context engineering|Context engineering]] (what goes into an agent's context; one vendor article)
- [[CON-20261115-006 Agent memory|Agent memory]] (the write-manage-read loop and three dimensions; one survey preprint)
- [[CON-20261115-007 Claude Code instructions and memory|Claude Code instructions and memory]] (how one product loads user instructions and keeps notes; vendor documentation, can change by version)
- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]] (rules for an agent that reads and writes a file-based memory)

## Important claims

- [[CLM-20261115-005 Start with the simplest agent design|Start with the simplest agent design]] (evidence `weak`, one vendor article)
- [[CLM-20261115-006 Agent autonomy raises cost and error risk|Agent autonomy raises cost and error risk]] (evidence `weak`, one vendor article, one sentence)
- [[CLM-20261115-007 Longer context can lower model performance|Longer context can lower model performance]] (evidence `weak`, one vendor article, studies not named)
- [[CLM-20261115-008 Long context is not agent memory|Long context is not agent memory]] (evidence `weak`, one survey preprint)

## Processes and methods

- None yet.

## Evidence for and against

- For: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]]. Engineering article by the vendor of the models, `source-quality: medium`, currency 2 of 5 (the page says that tooling has changed). Design guidance from the authors' work with customers. No data. Extraction `partial`: the Brief covers the outline and about a dozen short passages.
- For: [[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]]. Teaching article by a course vendor, `source-quality: medium`. Gives a three-layer definition of an agent and advice for a single agent by default. No data, no named cases, no original date. The Brief has summaries only.
- For: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering for AI agents (Anthropic Engineering, 2025-09-29)]]. Engineering article by the vendor of the models, `source-quality: medium`, currency 3 of 5. Advice on context, retrieval, and long tasks. No data. Extraction `partial`: the Brief rests on a fetch summary, with 4 quotes checked.
- For: [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]]. Survey preprint, one author, no sign of peer review, `source-quality: medium`, currency 4 of 5. No primary data. Extraction `partial`: the Brief covers the Abstract and sections 1, 2.4, 3, 4, 5, and 10.
- Qualifies [[CLM-20261115-008 Long context is not agent memory]]: [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory (Jiang et al., arXiv, 2026-05-20)]]. Survey preprint with a small empirical study, `source-quality: medium`, currency 4 of 5. Extraction `partial`: the Brief covers the abstract, introduction, taxonomy, Section 4, and conclusion. Most numbers are unchecked summaries.
- For: [[SRC-20261115-011 Claude Code memory, Anthropic docs|How Claude remembers your project (Anthropic, Claude Code documentation, undated, captured 2026-11-15)]]. Product documentation by the vendor, `source-quality: high`, currency 4 of 5. Describes CLAUDE.md files and auto memory. No data, no test of the advice. Version-dependent.
- Against: none. No source contradicts a Claim. One source qualifies one Claim (line above).

## Related MOCs

- [[MOC-20261113-002 AI-maintained knowledge bases|AI-maintained knowledge bases]]: a wiki that an AI keeps is one use of an agent. A link, not a dependency.
- [[MOC-20261116-001 Using Claude|Using Claude]]: working with Claude as a tool (prompting, chats). This MOC is about building agents. A link, not a dependency.

## Open research questions

- Does the simplest-design advice hold across tasks and model generations, and what does extra autonomy cost in practice? (The source gives no test or figure.)
- Does context rot hold for current models, and at what context sizes? (The source names no study and gives no figure.)
- Is a long context window enough for agent memory, or do agents need a memory system? (The survey cites other works and ran no test.)
- Do memory systems beat a full-context baseline on large tasks, and which metric shows it? (Two papers call evaluation weak. Neither gives a result that settles it.)

## Disputes and gaps

- Six sources: four from vendors (three from Anthropic, one from Udacity) and two survey preprints (Du; Jiang et al.). The Brain does not show that the vendor sources are independent, nor that the two preprints are.
- The vendor articles give no data. Du gives no primary data. Jiang et al. report a small empirical study.
- The oldest source is dated 2024-12-19 and says that tooling has changed. Newer sources are dated 2025-09-29, 2026-03-08, and 2026-05-20. The Brain does not show if the oldest advice still holds.
- Both preprints are about memory. They do not test the design or context advice on this page.
- Two memory papers by different authors agree that evaluation is weak. Both are preprints. Jiang et al. say that on some benchmarks a full-context baseline can match memory systems. This qualifies [[CLM-20261115-008 Long context is not agent memory]].
- The Brief for Building effective agents does not cover the detail inside each pattern, the two appendices, or the named frameworks. The Brief for the context article gives no information on the three techniques side by side.
- The Claude Code documentation page has no date or version and changes with each release. The Brain keeps no Claim from it.
