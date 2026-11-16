---
id: CON-20261115-003
type: concept
title: Workflows and agents
status: accepted
created: 2026-11-15T22:51
updated: 2026-11-15T23:57
created-by: managing-editor
schema-version: "0.13"
kind: definition
related:
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[CON-20261115-005 Context engineering]]"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-013 Building effective agents, Anthropic]]"
  - "[[CO-20261115-014 How to build an AI agent, Udacity]]"
  - "[[CO-20261115-017 Effective context engineering for AI agents, Anthropic]]"
aliases:
  - Agentic systems
---

## Definition

In one source's terms, an agentic system is either a workflow or an agent. A workflow is a system where LLMs and tools are orchestrated through predefined code paths. An agent is a system where an LLM dynamically directs its own processes and tool use.

## Explanation

The definitions are the source's own, for its article (E1, E2). Other authors can use the words in other ways. The source adds these terms:

- Augmented LLM: an LLM with retrieval, tools, and memory. The source treats it as the basic building block (E15; outline only, the exact wording was not read).
- Five workflow patterns (E14, from the outline): prompt chaining (fixed steps), routing (classify an input and send it to a specialized task), parallelization (sectioning: independent subtasks; voting: the same task run several times; E10, E11), orchestrator-workers (a central LLM splits and delegates), and evaluator-optimizer (one LLM generates, another gives feedback in a loop). The source says that the last pattern is particularly effective when clear evaluation criteria exist (E9; author judgment, no data).
- Agent-computer interface (ACI): the tool design and documentation that an agent uses. The source advises thorough tool documentation and testing (E7).

- Another definition (Udacity Team article, a vendor of courses): an agent has three layers that work together: a reasoning loop (plan, act, observe, revise), tool use, and state management. The article calls one LLM call with a system prompt a chatbot or prompt wrapper, not an agent (E1, E2, E3). This definition names state management. The definition above does not. Other authors can use the words in other ways.
- State and memory (Udacity article, E5): state is the execution status of the current run. Memory is information that can persist across runs. The article says most agents need state and not all need memory. This is the author's use of the terms.

Caveats:
- Two sources. Both authors work for vendors (models and tools; courses). The Brain does not show that they are independent. Neither article gives data in the parts read. The Udacity Brief has summaries only, no checked quotes.
- The Brief covers the outline and about a dozen short passages. Detail inside each pattern is not covered.
- The page says that much of the tooling has changed since December 2024. The terms can still apply. The Brief does not show this.

## Steps

None.

## Related claims

- [[CLM-20261115-005 Start with the simplest agent design|Start with the simplest agent design]]: draft title. The Orchestrator sets the final name.
- [[CLM-20261115-006 Agent autonomy raises cost and error risk|Agent autonomy raises cost and error risk]]: draft title. The Orchestrator sets the final name.

## Related concepts

- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: rules for an agent that reads and writes a file-based memory. The augmented LLM here includes memory. A link, not a dependency.
- [[CON-20261115-005 Context engineering|Context engineering]]: strategies for what enters the context of such a system, including retrieval and memory. A link, not a dependency.

## Sources

- [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]] · E1, E2 · § What are agents? · quotes checked against the page; E2 starts mid-sentence · E7, E9 · quotes checked · E10, E11, E14, E15 · summaries of a fetch result, not exact text
- [[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]] · E1, E2, E3, E5 · § Introduction; § Layer 1: Reasoning loop; § Layer 3: State management · summaries of a fetch result, not checked against the page
