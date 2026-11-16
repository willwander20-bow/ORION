---
id: MOC-20261115-002
type: moc
title: Building AI agents
status: active
created: 2026-11-15T22:51
updated: 2026-11-15T22:51
created-by: managing-editor
schema-version: "0.13"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-013 Building effective agents, Anthropic]]"
  - "[[CO-20261115-014 How to build an AI agent, Udacity]]"
---

## Topic summary

How people design systems in which an LLM uses tools and directs its own steps: the terms, the patterns, and the advice on when to use them. This topic is about building agents. [[MOC-20261113-002 AI-maintained knowledge bases|AI-maintained knowledge bases]] is about one use of an agent.

## Key concepts

- [[CON-20261115-003 Workflows and agents|Workflows and agents]] (definitions and five patterns from one vendor article)

## Important claims

- [[CLM-20261115-005 Start with the simplest agent design|Start with the simplest agent design]] (evidence `weak`, one vendor article)
- [[CLM-20261115-006 Agent autonomy raises cost and error risk|Agent autonomy raises cost and error risk]] (evidence `weak`, one vendor article, one sentence)

## Processes and methods

- None yet.

## Evidence for and against

- For: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]]. Engineering article by the vendor of the models, `source-quality: medium`, currency 2 of 5 (the page says that tooling has changed). Design guidance from the authors' work with customers. No data. Extraction `partial`: the Brief covers the outline and about a dozen short passages.
- For: [[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]]. Teaching article by a course vendor, `source-quality: medium`. Gives a three-layer definition of an agent and advice for a single agent by default. No data, no named cases, no original date. The Brief has summaries only.
- Against: none yet.

## Related MOCs

- [[MOC-20261113-002 AI-maintained knowledge bases|AI-maintained knowledge bases]]: a wiki that an AI keeps is one use of an agent. A link, not a dependency.

## Open research questions

- Does the simplest-design advice hold across tasks and model generations, and what does extra autonomy cost in practice? (The source gives no test or figure.)

## Disputes and gaps

- Two sources, both from vendors. The Brain does not show that they are independent. No data in either. No source on the other side.
- The source is dated 2024-12-19 and says that tooling has changed. The Brain has no newer source on this topic.
- The Brief does not cover the detail inside each pattern, the two appendices, or the named frameworks.
