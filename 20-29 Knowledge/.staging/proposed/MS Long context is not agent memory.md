---
id:
type: brain-claim
title: Long context is not agent memory
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
  - "[[Agent memory]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-15
change-orders: []
aliases:
  - Long context versus memory
---

## Claim

One survey says that a long context window does not replace memory in an agent. It says that long-context models do worse than purpose-built memory systems on selective retrieval and active management, and that compression inside the context loses detail. This is the survey's view, drawn from other works. The survey ran no test of its own.

## Context and conditions

The author draws this from benchmark results of other works (E11). The Brief gives no information on which models, which window sizes, or which tasks. The survey reports a fall in MemoryArena to 40-60% for models that score near-perfectly on LoCoMo (E10), but that figure is about the benchmarks, not a direct test of long context. The Brief gives no information on newer long-context models.

## Evidence

- [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]] · E11 · § 5.5 Cross-cutting lessons from the benchmarks · supports · quote: "Long context is not memory."; checked against the page; the comparison with purpose-built systems is the Reporter's summary.
- [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]] · E18 · § 4.1 Context-resident memory and compression · supports · quote: "Each compression pass silently discards low-frequency details."; checked against the page; the statement that larger windows only delay the problem is a summary.

## Relationships

- [[Agent memory]] (concepts): the survey's terms for memory designs. A link, not a dependency. Link written with the draft title.

## Disputes and caveats

- One survey, version 1, one author, no sign of peer review. The figures come from other works and were not checked.
- The quote "Long context is not memory." is a short lesson. The Brief shows no figure that compares long context with a memory system in the same test.
- The survey also says that memory design can matter more than the choice of LLM (E9, indirect evidence from separate systems). The Brain makes no claim on this.
- The paper is dated 2026-03-08. Models change fast.
