---
id: CON-20261113-004
type: concept
title: Set up an AI-maintained wiki
status: accepted
created: 2026-11-13T17:58
updated: 2026-11-13T17:58
created-by: orchestrator
schema-version: "0.10"
kind: process
related:
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
  - "[[CON-20261113-002 Work with plain-text notes]]"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-008 Self-improving Claude knowledge base, Lipsky]]"
aliases:
  - Knowledge Base Prompt
  - Ingest Answer Tidy loop
---

## Definition

A setup prompt in six steps, from one source. It tells an AI to organize a folder of plain Markdown files and then keep a linked wiki over them, with a nightly update.

## Explanation

The steps come from the prompt text in the source. Caveats:
- One source. Advice only, with no tests. The prompt text shows what the AI is told to do. It is not evidence of how well a model follows it. The demo shows the setup and the scheduling of the nightly task. It does not show a nightly run or a Tidy report.
- Approval-gate limit: the written approval rule covers file moves, renames and deletes only. No step asks for approval before the nightly task creates or updates wiki pages. The user approves the task wording once, at setup. This reading of the prompt is inferred, with medium confidence. The creator says that the AI never does anything without permission first. That statement is broader than the written rule.
- The pages use normal Markdown links. The prompt specifies no frontmatter.
- The prompt comes from a clipped copy. The link to the creator's Google Doc is truncated, so the copy cannot be checked against the creator's current document.
- The setup uses Claude Cowork (folder access, scheduled tasks) as of 2026-06-25. These tools can have changed.

## Steps

Ground rules (for all steps): work only inside the folder. Show a plan and get an explicit 'yes' before a file is moved, renamed or deleted. Never delete: put files that look like junk in a `_review` folder and tell the user. Use plain Markdown (`.md`) only, for portability. When in doubt, ask a short question.

1. Look around: read only, then summarize.
2. Propose a structure: plan only, then wait for approval. Raw material goes in `sources`. It is never edited and is kept as the source of truth. The AI's synthesis pages go in `wiki`.
3. Organize: after approval, move the raw material into the planned folders. Move, do not copy.
4. Build the map: one page for each topic, tool, person, project or idea, written as synthesis. A one-line summary at the top of each page. Markdown links between related pages. Each claim points to its source. An `index.md` that links to every page. A `claude.md` or `Agents.md` file. A `log.md` with one dated line (YYYY-MM-DD) for each action.
5. Set up three ongoing jobs. Ingest: update the existing page, and never duplicate a page. Answer: answer from the wiki first, name the pages used, and say when the wiki does not cover the question. Tidy: list contradictions, out-of-date claims, pages that nothing links to, and missing topics. Do not fix them automatically.
6. Make it self-improving: a nightly scheduled task checks the sources or clippings folder for new items since the last run, ingests each item into the wiki, logs it, runs a quick tidy pass and leaves a short note.

## Related claims

- [[CON-20261113-003 AI-maintained wiki over files|AI-maintained wiki over files]]: the method that these steps set up.
- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]]: also a method to organize notes in plain files with folders. There, one person does the steps by hand. Here, an AI does the organizing and the upkeep, and the pages have no frontmatter. A related method, not an extension.

## Sources

- [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]] · E35 to E46 · § Knowledge Base Prompt · E28 · 10:09 · the creator's broader statement on permission
