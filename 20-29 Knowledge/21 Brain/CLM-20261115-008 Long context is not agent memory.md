---
id: CLM-20261115-008
type: brain-claim
title: Long context is not agent memory
status: accepted
created: 2026-11-15T23:55
updated: 2026-11-15T23:57
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
  - "[[CON-20261115-006 Agent memory]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-018 Memory for autonomous LLM agents, Du]]"
  - "[[CO-20261115-019 Anatomy of agentic memory, arXiv]]"
aliases:
  - Long context versus memory
---

## Claim

One survey says that a long context window does not replace memory in an agent. It says that long-context models do worse than purpose-built memory systems on selective retrieval and active management, and that compression inside the context loses detail. This is the survey's view, drawn from other works. The survey ran no test of its own.

## Context and conditions

The author draws this from benchmark results of other works (E11). The Brief gives no information on which models, which window sizes, or which tasks. The survey reports a fall in MemoryArena to 40-60% for models that score near-perfectly on LoCoMo (E10), but that figure is about the benchmarks, not a direct test of long context. The Brief gives no information on newer long-context models. A second paper (SRC-20261115-014) reports that some benchmarks are small enough for a full-context baseline to match memory systems, and rates HotpotQA and MemBench at high saturation risk. The authors call the rating a heuristic and did not compute the gap. The claim above applies to tasks that need selective retrieval over long histories, not to small benchmarks.

## Evidence

- [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]] · E11 · § 5.5 Cross-cutting lessons from the benchmarks · supports · quote: "Long context is not memory."; checked against the page; the comparison with purpose-built systems is the Reporter's summary.
- [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]] · E18 · § 4.1 Context-resident memory and compression · supports · quote: "Each compression pass silently discards low-frequency details."; checked against the page; the statement that larger windows only delay the problem is a summary.
- [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory (Jiang et al., arXiv, 2026-05-20)]] · E2, E9 · qualifies · quote: "inconsistent across benchmarks" (checked against the page); the saturation ratings are a summary, unchecked.

## Relationships

- [[CON-20261115-006 Agent memory|Agent memory]] (concepts): the survey's terms for memory designs. A link, not a dependency.

## Disputes and caveats

- One survey, version 1, one author, no sign of peer review. The figures come from other works and were not checked.
- The quote "Long context is not memory." is a short lesson. The Brief shows no figure that compares long context with a memory system in the same test.
- The survey also says that memory design can matter more than the choice of LLM (E9, indirect evidence from separate systems). The Brain makes no claim on this.
- The paper is dated 2026-03-08. Models change fast.
