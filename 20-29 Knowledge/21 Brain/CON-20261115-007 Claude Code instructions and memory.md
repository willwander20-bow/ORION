---
id: CON-20261115-007
type: concept
title: Claude Code instructions and memory
status: accepted
created: 2026-11-15T23:55
updated: 2026-11-15T23:55
created-by: managing-editor
schema-version: "0.13"
kind: definition
related:
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[CON-20261115-003 Workflows and agents]]"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-020 Claude Code memory, Anthropic docs]]"
aliases:
  - CLAUDE.md and auto memory
---

## Definition

In the vendor's documentation, Claude Code keeps knowledge across sessions with two mechanisms: CLAUDE.md files, which the user writes, and auto memory, which Claude writes. Each session starts with a fresh context window, and both mechanisms load content into it (E1, E3; quote checked).

## Explanation

Currency: this is product documentation. The page shows no date and no version. It names Claude Code versions up to v2.1.309 for some features. Features, limits, and file paths below are as the page stated them when captured on 2026-11-15. They can change with each version. Check the current page before you rely on a detail.

- Context, not enforcement: the page says "Claude treats them as context, not enforced configuration." (E2; quote checked). For rules that must always run, it points to hooks and managed settings (E22, E26). It says that CLAUDE.md content is delivered as a user message after the system prompt (E21).
- Scopes (E4; summary): managed policy, user, project, and local files, listed from broadest to most specific. Files in the working directory and above load at launch. The page says "All discovered files are concatenated into context rather than overriding each other." (E9; quote checked). Files in subdirectories load when Claude works with files there (E10).
- Rules and imports (summaries): `@path` imports load with the importing file, up to four hops, and do not reduce context cost (E7, E8). Files in `.claude/rules/` can load at launch or only when Claude uses a matching file (E12, E13).
- Writing advice (the page's advice, no test data; E5, E6, E27): keep each file under 200 lines, write specific and non-conflicting instructions, and put multi-step procedures in a skill or path-scoped rule. The page says "if two instructions contradict each other, Claude may pick one arbitrarily." (E6; quote checked).
- Auto memory (summaries; E16, E17, E18, E19): Claude saves notes in a per-project directory on the local machine. `MEMORY.md` is an index, and only its first 200 lines or 25KB load at session start. Topic files load on demand. The page says Claude decides what is worth saving.
- Other points from the page: the project-root CLAUDE.md is read again after `/compact` (E23; quote checked). Claude Code reads AGENTS.md by default only when no CLAUDE.md exists (E15). `/doctor prompt-audit` reports outdated or conflicting instructions (E28).

Caveats:

- One source, written by the vendor about its own product. It gives no benchmark for its advice, such as the 200-line target or the effect of file length on adherence.
- The page covers coding projects. The Brief gives no information on a notes vault or a knowledge base.
- The Brief gives no information on how Claude decides what auto memory is worth saving.
- Several behaviors depend on the version, the session type, and the settings (E15, E25).

## Steps

None.

## Related claims

- None yet. The Brain makes no Claim from product documentation, which can change.

## Related concepts

- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: rules that an agent follows for a file-based memory. Here the user's CLAUDE.md files and Claude's `MEMORY.md` index are the files, and the tool loads them. The Brief gives no information on whether the protocol's "memory map file" is the same as `MEMORY.md`. A link, not a dependency.
- [[CON-20261115-003 Workflows and agents|Workflows and agents]]: the "augmented LLM" there includes memory. This concept covers one product's design for it. A link, not a dependency.

## Sources

- [[SRC-20261115-011 Claude Code memory, Anthropic docs|How Claude remembers your project (Anthropic, Claude Code documentation, captured 2026-11-15)]] · E1, E2, E5, E6, E7, E9, E13, E14, E17, E19, E21, E22, E23, E26 · quotes checked against the page · the other evidence rows are summaries or fragments of the page
