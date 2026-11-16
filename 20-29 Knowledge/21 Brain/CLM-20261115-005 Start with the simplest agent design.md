---
id: CLM-20261115-005
type: brain-claim
title: Start with the simplest agent design
status: accepted
created: 2026-11-15T22:51
updated: 2026-11-15T22:51
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
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-013 Building effective agents, Anthropic]]"
  - "[[CO-20261115-014 How to build an AI agent, Udacity]]"
aliases:
  - Simplest agent design first
---

## Claim

One vendor article recommends the simplest workable solution for an LLM application, with more complexity only when it is needed. It adds that frameworks can hide the prompts under extra layers, and it gives simplicity as the first of three design principles. This is the source's view. The source shows no test and no data.

## Context and conditions

The source writes for developers who build LLM applications, from the authors' work with customers. The Brief gives no information on non-developer use, on personal knowledge systems, or on how much simpler designs gain or lose. The page says that much of the tooling has changed since December 2024. The Brief does not show if the advice still holds.

## Evidence

- [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]] · E3 · § When (and when not) to use agents · supports · quote: "we recommend finding the simplest solution possible, and only increasing complexity when needed."; checked against the page; advice by an interested vendor.
- [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]] · E4 · § When and how to use frameworks · supports · quote: "they often create extra layers of abstraction that can obscure the underlying prompts"; checked against the page; no example or data.
- [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]] · E5 · § Summary · supports · quote: "Maintain simplicity in your agent's design."; checked against the page; a principle, not measured.
- [[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]] · E9 · § Design choices that matter more than model choice · supports · summary, not checked against the page; the article recommends the simplest architecture that works; opinion with no data.
- [[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]] · E10 · § When to go multi-agent, and when not to · supports · summary, not checked against the page; the article advises one agent by default and more agents only when roles are separable, specialization measurably helps, and orchestration cost is justified; opinion with no data.

## Relationships

- [[CON-20261115-003 Workflows and agents|Workflows and agents]] (concepts): the terms that this claim uses. A link, not a dependency.
- [[CLM-20261115-006 Agent autonomy raises cost and error risk|Agent autonomy raises cost and error risk]] (related): the source gives this as a reason for caution. A link, not a dependency. Link written with the draft title.

## Disputes and caveats

- Two sources, both from vendors (models and tools; courses). The Brain does not show that they are independent. Neither gives data. The second source has no checked quotes.
- The source gives no data, study, or benchmark. The Brief gives no information on what simplicity costs.
- The article is dated 2024-12-19, and the page says the tooling has changed. The advice can age.
