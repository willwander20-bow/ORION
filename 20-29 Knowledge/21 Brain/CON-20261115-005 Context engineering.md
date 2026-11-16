---
id: CON-20261115-005
type: concept
title: Context engineering
status: accepted
created: 2026-11-15T23:55
updated: 2026-11-16T00:16
created-by: managing-editor
schema-version: "0.13"
kind: concept
related:
  - "[[CON-20261115-003 Workflows and agents]]"
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-017 Effective context engineering for AI agents, Anthropic]]"
  - "[[CO-20261116-001 Brain maintenance fixes from KHR-20261116-001]]"
aliases:
  - Context management for agents
---

## Definition

In one vendor's terms, context engineering is the set of strategies to curate and maintain the tokens that an LLM receives at inference. The source treats it as the next step after prompt engineering.

## Explanation

The terms are the source's own (SRC-20261115-010). The Brief gives the definition by summary and not as an exact quote (Brief §12).

- Next step after prompt engineering: "At Anthropic, we view context engineering as the natural progression of prompt engineering." This is a view of the vendor (E1; quote checked).
- Finite context: the source says that an LLM has a limited "attention budget" and that more tokens give diminishing returns (E3; summary).
- Context rot: the source says that a decline in recall or performance can follow a growth in tokens (E2; quote checked, fragment only). See [[CLM-20261115-007 Longer context can lower model performance|Longer context can lower model performance]].
- Principle: find the smallest set of high-signal tokens that gives the desired outcome (E8; quote checked).

Advice on the parts of context (E4; summary, guidance only):

- System prompts: clear, at the right level of specificity.
- Tools: self-contained, token-efficient, with no overlap in function.
- Examples: a few diverse, canonical ones, not long lists of edge-case rules.
- Just-in-time retrieval: the agent keeps light references (for example file paths) and loads data through tools when needed. The source says that Claude Code loads some context up front and explores the rest on demand (E5; vendor description of its own product).

Three techniques for long tasks (E6, E7):

- Compaction: summarize a conversation that nears the limit, then continue from the summary. Clearing old tool results is a light form.
- Structured note-taking (agentic memory): the agent writes notes outside the context window and reloads them later.
- Sub-agent architectures: specialized agents work in clean context windows and return condensed summaries to a coordinating agent. The quote "Sub-agent architectures provide another way around context limitations." was checked. The clean-window and summary detail is from a summary.

Caveats:

- One source. The authors work for the vendor of the models and describe their own practice. The source gives advice, not measured results, in the parts that the Brief covers.
- The Brief gives no information on benchmark numbers, on named studies for context rot, or on a comparison of the three techniques.
- Most evidence is a summary of a processed page. Extraction is `partial` and confidence is `low`. Four quotes (E1, E2, E7, E8) were checked against the raw page.
- The article is dated 2025-09-29. The field changes fast.

## Steps

None.

## Related claims

- [[CLM-20261115-007 Longer context can lower model performance|Longer context can lower model performance]]: the context rot statement. A link, not a dependency.

## Related concepts

- [[CON-20261115-003 Workflows and agents|Workflows and agents]]: the "augmented LLM" there includes retrieval, tools, and memory. Context engineering concerns what enters the context of such a system. A link, not a dependency.
- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: rules for an agent that reads and writes a file-based memory. Structured note-taking here is a similar idea. A link, not a dependency.

## Sources

- [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering for AI agents (Anthropic Engineering, 2025-09-29)]] · E1, E2, E7, E8 · quotes checked against the page · E3, E4, E5, E6 · summaries of a fetch result, not exact text
