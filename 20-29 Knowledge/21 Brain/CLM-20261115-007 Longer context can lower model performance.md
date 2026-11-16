---
id: CLM-20261115-007
type: brain-claim
title: Longer context can lower model performance
status: accepted
created: 2026-11-15T23:55
updated: 2026-11-15T23:55
created-by: managing-editor
schema-version: "0.13"
confidence: low
evidence-strength: weak
supports: []
contradicts: []
refines: []
extends: []
related:
  - "[[CLM-20261115-006 Agent autonomy raises cost and error risk]]"
concepts:
  - "[[CON-20261115-005 Context engineering]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-017 Effective context engineering for AI agents, Anthropic]]"
aliases:
  - Context rot
---

## Claim

One vendor article says that studies of needle-in-a-haystack style benchmarks showed "context rot": the recall or performance of an LLM can fall as the number of tokens in its context grows. This is the source's report. The Brief names no study and gives no figure.

## Context and conditions

The source states this as a reason to treat context as a finite resource (E2, E3). The Brief gives no information on which models, which context sizes, or which tasks show the effect, or on how large it is. The Brief gives no information on newer models. The article is dated 2025-09-29.

## Evidence

- [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering for AI agents (Anthropic Engineering, 2025-09-29)]] · E2 · § Why context engineering is important to building capable agents · supports · quote: "Studies on needle-in-a-haystack style benchmarking have uncovered the concept of context rot:"; checked against the page; fragment only; the studies are not named in the Brief.
- [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering for AI agents (Anthropic Engineering, 2025-09-29)]] · E3 · § The anatomy of effective context · supports · summary, not checked against the page; the article says that an LLM has a finite attention budget with diminishing returns.

## Relationships

- [[CON-20261115-005 Context engineering|Context engineering]] (concepts): the term and the techniques that the source builds on this statement. A link, not a dependency.
- [[CLM-20261115-006 Agent autonomy raises cost and error risk|Agent autonomy raises cost and error risk]] (related): another one-source caution on agent design. A link, not a dependency.

## Disputes and caveats

- One source, from the vendor of the models. The quote is a fragment that points to studies that the Brief does not name or show.
- The Brief gives no figure, no model name, and no condition. The size of the effect is unknown.
- The article is dated 2025-09-29, and models change fast. The Brief gives no information on whether the effect holds for newer models.
