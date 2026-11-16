---
id:
type: concept
title: Agent memory
status: accepted
created:
updated:
created-by: managing-editor
schema-version: "0.13"
kind: definition
related:
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[CON-20261115-003 Workflows and agents]]"
last-reviewed: 2026-11-15
change-orders: []
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
- Evaluation: the paper proposes four metric layers: task effectiveness, memory quality, efficiency, and governance (E15; summary). It says that no reviewed benchmark reports efficiency with effectiveness (E14; quote checked) and that "Nobody evaluates forgetting well." (E12).

Caveats:

- One survey, one author, version 1, with no sign of peer review. It has no primary data. Its figures come from other works that the Reporter did not check.
- The Brief covers the Abstract and sections 1, 2.4, 3, 4, 5, and 10. It does not cover applications, engineering, or open challenges.
- The Brief gives no information on how the six mechanism families compare in cost or accuracy.
- The paper is dated 2026-03-08 and the field changes fast.

## Steps

None.

## Related claims

- [[Long context is not agent memory]]: the survey's statement on long context and memory. A link, not a dependency. Link written with the draft title.

## Related concepts

- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: rules for an agent that reads and writes a file-based memory. That protocol is one practical design. The Brief gives no information on where it sits in the survey's taxonomy. A link, not a dependency.
- [[CON-20261115-003 Workflows and agents|Workflows and agents]]: the "augmented LLM" there includes memory. This concept covers memory only. A link, not a dependency.

## Sources

- [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]] · E1, E2, E3, E5, E6, E7, E8, E12, E14, E18 · quotes checked against the page · E4, E15 · summary or unsupported by a count
