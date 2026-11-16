---
id: CON-20261115-006
type: concept
title: Agent memory
status: accepted
created: 2026-11-15T23:55
updated: 2026-11-16T00:16
created-by: managing-editor
schema-version: "0.13"
kind: concept
related:
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[CON-20261115-003 Workflows and agents]]"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-018 Memory for autonomous LLM agents, Du]]"
  - "[[CO-20261115-019 Anatomy of agentic memory, arXiv]]"
  - "[[CO-20261116-001 Brain maintenance fixes from KHR-20261116-001]]"
aliases:
  - Memory for LLM agents
---

## Definition

In one survey's terms, agent memory is the part of an LLM-based agent that lets it keep and reuse information across steps and sessions. The survey models it as a write-manage-read loop that is tied to perception and action.

## Explanation

The terms below are the author's own proposals (SRC-20261115-013, a survey). The paper gives no test of the taxonomy or of the metric stack.

- Purpose: the author says that memory is what turns a stateless text generator into an adaptive agent (E1; quote checked).
- Loop: "We formalize agent memory as a write–manage–read loop tightly coupled with perception and action" (E2; quote checked).
- Three dimensions (E3; quote checked): temporal scope (working, episodic, semantic, procedural), representational substrate (context text, vector stores, structured stores, executable repositories, hybrid), and control policy (heuristic, prompted self-control, learned). The author says that hybrid stores are the norm in production (E4; no count given).
- Main weakness of each design, as the author states it:
  - Context-resident: "Each compression pass silently discards low-frequency details." (E18)
  - Reflective: "The central risk of reflective memory is self-reinforcing error." (E5)
  - Hierarchical: "The Achilles' heel of hierarchical memory is orchestration" (E6)
  - Policy-learned: "Learned forgetting could delete safety-critical information" (E7; stated as an open concern, not an observed result)
  - Parametric: "hard to audit (where exactly in the weights is the user's birthday stored?)" (E8)
- Evaluation: the paper proposes four metric layers: task effectiveness, memory quality, efficiency, and governance (E15; summary). It says that no reviewed benchmark reports efficiency with effectiveness (E14; quote checked) and that "Nobody evaluates forgetting well." (E12). In its own test of six systems, a second paper reports latency and build cost next to F1 (E7, E8); table cells unchecked.
- Second taxonomy (SRC-20261115-014, E1): four families by memory structure: lightweight semantic, entity-centric and personalized, episodic and reflective, structured and hierarchical. The authors' own scheme. It uses different axes than the three dimensions above. The Brief does not map one to the other.
- Evaluation, second paper (E3, E4, E2): F1 and an LLM judge rank six tested systems differently. Judge ranks stay stable across three prompts (one judge model). Some benchmarks are small enough for a full-context baseline to match memory systems. Both are the authors' own tests; the table figures are unchecked.
- Weak backbone (E5): format errors in memory writes rose on Qwen-2.5-3B against gpt-4o-mini for two systems (SimpleMem 1.20% to 4.82%, Nemori 17.91% to 30.38%). The authors say append-only systems are more robust. The Brief marks that statement as going beyond the two systems shown (E6).

Caveats:

- One survey, one author, version 1, with no sign of peer review. It has no primary data. Its figures come from other works that the Reporter did not check.
- The Brief covers the Abstract and sections 1, 2.4, 3, 4, 5, and 10. It does not cover applications, engineering, or open challenges.
- The Brief gives no information on how the six mechanism families compare in cost or accuracy.
- The paper is dated 2026-03-08 and the field changes fast.
- The second paper (SRC-20261115-014) is a preprint (arXiv v2) with a small empirical study (six systems, two backbones). The Brief did not read its appendices.

## Steps

None.

## Related claims

- [[CLM-20261115-008 Long context is not agent memory|Long context is not agent memory]]: the survey's statement on long context and memory. A link, not a dependency.

## Related concepts

- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: rules for an agent that reads and writes a file-based memory. That protocol is one practical design. The Brief gives no information on where it sits in the survey's taxonomy. A link, not a dependency.
- [[CON-20261115-003 Workflows and agents|Workflows and agents]]: the "augmented LLM" there includes memory. This concept covers memory only. A link, not a dependency.

## Sources

- [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]] · E1, E2, E3, E5, E6, E7, E8, E12, E14, E18 · quotes checked against the page · E4, E15 · summary or unsupported by a count
- [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory (Jiang et al., arXiv, 2026-05-20)]] · E1, E4, E5 · quotes checked · E2, E3, E6, E7, E8 · summaries, unchecked
