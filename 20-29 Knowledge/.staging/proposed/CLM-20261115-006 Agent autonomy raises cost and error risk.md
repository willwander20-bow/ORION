---
id: CLM-20261115-006
type: brain-claim
title: Agent autonomy raises cost and error risk
status: accepted
created:
updated:
created-by: managing-editor
schema-version: "0.13"
confidence: low
evidence-strength: weak
supports: []
contradicts: []
refines: []
extends: []
related: []
concepts:
  - "[[CON-20261115-003 Workflows and agents]]"
superseded-by:
valid-from:
valid-to:
last-reviewed:
change-orders: []
aliases:
  - Cost of agent autonomy
---

## Claim

One vendor article states that the autonomous nature of agents means higher costs and the potential for compounding errors. This is the source's view. The source gives no figures and no test.

## Context and conditions

The source says this about agents as it defines them: LLMs that direct their own process and tool use (see the concept). The Brief gives no information on how large the costs are, on how errors compound, or on the conditions where the risk is small or large. The page says that much of the tooling has changed since December 2024.

## Evidence

- [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]] · E8 · § Agents · supports · quote: "The autonomous nature of agents means higher costs, and the potential for compounding errors."; checked against the page; no figures given.

## Relationships

- [[CON-20261115-003 Workflows and agents|Workflows and agents]] (concepts): the definition of "agent" that this claim uses. A link, not a dependency.
- [[CLM-20261115-005 Start with the simplest agent design|Start with the simplest agent design]] (related): the source's advice to add complexity only when needed. A link, not a dependency. Link written with the draft title.

## Disputes and caveats

- One source, one sentence of evidence. The authors work for a vendor of models and tools. `source-quality: medium`.
- No data, no example, and no comparison with workflows in the quote.
- The article is dated 2024-12-19. Model and tool changes since then can change the cost and error risk. The Brief does not say.
