---
id:
type: concept
title: Vibecoding with Claude Code
status: accepted
created:
updated:
created-by: managing-editor
schema-version: "0.13"
kind: process
related:
  - "[[CON-20261115-007 Claude Code instructions and memory]]"
  - "[[CON-20261115-005 Context engineering]]"
last-reviewed:
change-orders: []
aliases:
  - Vibecoding
---

## Definition

One author's workflow for building small software with Claude Code by describing it in plain English ("vibecoding", the author's term). The author gave this advice on 2026-06-17. Treat it as dated advice from one promotional source, not as a test result.

## Explanation

The source is SRC-20261116-014. The Brief took its quotes from a model summary of the page. The Orchestrator checked the quotes against the page on 2026-11-16.

Uses the author recommends (E2): clickable mockups to brief developers, and small tools for one boring job. The author says vibecoding "will never make you rich" but is still worth learning (E1). The author advises not to build what takes longer to build than to consume (E7).

Method (summaries; E3, E4, E5, E6, E9, E11):

1. Set up: Claude app, Code tab, one clean empty folder, connectors for hosting and data, then choose a model (E3).
2. Start with a long prompt that makes Claude interview the user, one question at a time, before it builds (E4). The Brief did not capture the full prompt.
3. Describe the end result, start from a screenshot, build one piece at a time, then review and list problems in plain words (E5).
4. To avoid a generic design, give Claude a design file of a brand's style and specific references (E6). The effect is the author's claim, not shown.
5. Use fresh chats per task, ask for a plan before big changes, and refer to files instead of pasting text. The author says Claude Code uses up usage faster than normal chat (E8, E9). No figures are given.
6. For a handoff to a developer, ask Claude to write a handoff file with a summary, status, and stack (E11).

Risk, not advice: the author's setup includes turning on "bypass permissions" mode. The Brief says this has a security cost. The author only says to check with IT at work. Do not treat this step as safe by default. The Brief gives no information on safer settings.

Caveats:

- One source. The author sells a paid newsletter, community, and consulting (objectivity 2 of 5). He says that no AI company pays him. This is a self-report (E12).
- The page gives no test, no benchmark, and no vendor documentation.
- Plan prices, model names, and tool names in the source are not kept here. They change fast and are unchecked (E10).
- The Brief gives no information on code quality, security of the generated apps, or maintenance after handoff.
- The Brain makes no Claim from this advice. It is opinion from one source.

## Steps

See Explanation. The Brief did not capture the detail under each setup step.

## Related claims

- None yet.

## Related concepts

- [[CON-20261115-007 Claude Code instructions and memory|Claude Code instructions and memory]]: the vendor's documentation of CLAUDE.md and auto memory in the same product. The Brief gives no information on whether the author uses them. A link, not a dependency.
- [[CON-20261115-005 Context engineering|Context engineering]]: the "fresh chat" and "reference files" habits concern what enters the context. A link, not a dependency.

## Sources

- [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid, 2026-06-17)]] · E1 to E12 · quotes checked against the page on 2026-11-16
