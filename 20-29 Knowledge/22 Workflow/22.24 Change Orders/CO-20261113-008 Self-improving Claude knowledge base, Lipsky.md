---
id: CO-20261113-008
type: change-order
title: Build a Self Improving Claude Knowledge Base
status: applied
created: 2026-11-13T19:25
updated: 2026-11-13T17:59
created-by: managing-editor
schema-version: "0.10"
assessment: "[[KAS-20261113-009 Self-improving Claude knowledge base, Lipsky]]"
source: "[[SRC-20261113-011 Self-improving Claude knowledge base, Lipsky]]"
brain-version: CO-20261113-007
change-types:
  - create
  - relate
affected:
  - "[[MOC-20261113-001 Note durability]]"
priority: low
decision: approved
decided: 2026-11-13T17:57
decision-note: "Approve all rows"
applied: 2026-11-13T17:59
brain-version-after: CO-20261113-008
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

This proposal starts a second topic in the Brain: knowledge bases that an AI writes and keeps over a person's own files. It adds three records: a Concept for the method (an AI-kept index and linked wiki, which the source calls an "LLM wiki"), a Process with the six setup steps from the source's prompt, and a new MOC for the topic. It also links the new MOC to the "Note durability" MOC. The source is one partly sponsored video. So the records describe what the method specifies, attributed to the creator. They do not say that the method works, and they keep the limit that the written approval rule does not cover the nightly wiki writes.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: AI-maintained wiki over files | New Concept (`kind: concept`): an AI-kept index and linked pages over a person's files. |
| X2 | create | new: Set up an AI-maintained wiki | New Process (`kind: process`): the six-step setup prompt, with its approval-gate limit. |
| X3 | create | new: AI-maintained knowledge bases | New MOC for the topic. It links X1 and X2. |
| X4 | relate | [[MOC-20261113-001 Note durability\|Note durability]] | Add the X3 MOC under "Related MOCs". |

### X1

- Current state: The Brain has no record on AI-maintained knowledge bases, AI memory, indexes for an AI, or scheduled AI tasks (Assessment §2). The Brain has four records, all on note durability.
- Proposed state: A new Concept in `21 Brain`. Use the sections of CON-20261113-002 (Definition, Explanation, Related claims, Sources).
  - Frontmatter: `type: concept`, `title: AI-maintained wiki over files`, `status: accepted`, `kind: concept`, `aliases: [LLM wiki, Map for your AI]`, `related:` the X2 record, `last-reviewed:` and `change-orders:` set at apply (this Change Order).
  - Definition: "A method in which an AI writes and keeps an index and linked topic pages over a person's own files. The index (`index.md`) is a table of contents for the AI, not for the person, so that the AI knows what the files hold and where."
  - Explanation: "Source: one YouTube tutorial (Lipsky, published 2026-06-25), partly sponsored by Zapier. The creator calls the index a map for the AI. He credits the idea and the term 'LLM wiki' to Andrej Karpathy. This credit is secondhand: the creator gives no link, and the Brain has no source from Karpathy. So the Brain attributes the term to the creator's report.
    Caveats:
    - Stated reason, not tested: the creator says that an AI that only reads the files must read and interpret all of them again in each session, and that with a map it knows at once what it needs and where it is. He gives no test, no measurement and no comparison. The Brain holds no claim on this.
    - The creator says that the AI builds and keeps the map automatically and adds new material each night. The source shows only the setup. It does not show a nightly run, a Tidy report, or example output.
    - The creator says that the setup works with Claude Cowork or OpenAI Codex and plain files. Only Cowork is shown. The tools can have changed since the publish date.
    - The creator's benefit claims (breakthroughs, 'most useful') are self-reports with no data. The Brain does not hold them."
  - Related claims: "- [the X2 record|Set up an AI-maintained wiki]: the setup steps for this method." Add no Brain Claim. None is related.
  - Sources: "- [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]] · E1, E2, E3, E9, E10 · definition and credit · E4, E5, E6, E8, E15, E16 · stated reason and tools, not tested"
- Evidence: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky]] · E1, E2 (quotes; auto-captions; secondhand credit), E3 (summary; creator's own description, not independent), E9, E10 (quotes; self-report), E4, E5, E6 (creator's statements, no test), E8 (task set up, no run shown), E15, E16 (Codex not shown). Brief §10 and §11 (Authority 2, Objectivity 2).
- Reason: A4 (new-concept). The definition is reliable as the creator's description. The credit to Karpathy is secondhand, so the record attributes it to the creator. The A6 statements show up only as stated reasons with their limits. They do not become a Claim, because the Assessment does not advance A6. The A7 benefit claims are named only as "not held".

### X2

- Current state: The Brain has one Process, [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]]: manual steps for one person (folders, metadata lines read by a script, separate graphics files). The Brain has no process in which an AI organizes and keeps notes.
- Proposed state: A new Concept with `kind: process` in `21 Brain`. Use the sections of CON-20261113-002 (Definition, Explanation, Steps, Related claims, Sources).
  - Frontmatter: `type: concept`, `title: Set up an AI-maintained wiki`, `status: accepted`, `kind: process`, `aliases: [Knowledge Base Prompt, Ingest Answer Tidy loop]`, `related:` the X1 record and "[[CON-20261113-002 Work with plain-text notes]]", `last-reviewed:` and `change-orders:` set at apply (this Change Order).
  - Definition: "A setup prompt in six steps, from one source. It tells an AI to organize a folder of plain Markdown files and then keep a linked wiki over them, with a nightly update."
  - Explanation: "The steps come from the prompt text in the source. Caveats:
    - One source. Advice only, with no tests. The prompt text shows what the AI is told to do. It is not evidence of how well a model follows it. The demo shows the setup and the scheduling of the nightly task. It does not show a nightly run or a Tidy report.
    - Approval-gate limit: the written approval rule covers file moves, renames and deletes only. No step asks for approval before the nightly task creates or updates wiki pages. The user approves the task wording once, at setup. This reading of the prompt is inferred, with medium confidence. The creator says that the AI never does anything without permission first. That statement is broader than the written rule.
    - The pages use normal Markdown links. The prompt specifies no frontmatter.
    - The prompt comes from a clipped copy. The link to the creator's Google Doc is truncated, so the copy cannot be checked against the creator's current document.
    - The setup uses Claude Cowork (folder access, scheduled tasks) as of 2026-06-25. These tools can have changed."
  - Steps:
    "Ground rules (for all steps): work only inside the folder. Show a plan and get an explicit 'yes' before a file is moved, renamed or deleted. Never delete: put files that look like junk in a `_review` folder and tell the user. Use plain Markdown (`.md`) only, for portability. When in doubt, ask a short question.
    1. Look around: read only, then summarize.
    2. Propose a structure: plan only, then wait for approval. Raw material goes in `sources`. It is never edited and is kept as the source of truth. The AI's synthesis pages go in `wiki`.
    3. Organize: after approval, move the raw material into the planned folders. Move, do not copy.
    4. Build the map: one page for each topic, tool, person, project or idea, written as synthesis. A one-line summary at the top of each page. Markdown links between related pages. Each claim points to its source. An `index.md` that links to every page. A `claude.md` or `Agents.md` file. A `log.md` with one dated line (YYYY-MM-DD) for each action.
    5. Set up three ongoing jobs. Ingest: update the existing page, and never duplicate a page. Answer: answer from the wiki first, name the pages used, and say when the wiki does not cover the question. Tidy: list contradictions, out-of-date claims, pages that nothing links to, and missing topics. Do not fix them automatically.
    6. Make it self-improving: a nightly scheduled task checks the sources or clippings folder for new items since the last run, ingests each item into the wiki, logs it, runs a quick tidy pass and leaves a short note."
  - Related claims: "- [the X1 record|AI-maintained wiki over files]: the method that these steps set up.
    - [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]]: also a method to organize notes in plain files with folders. There, one person does the steps by hand. Here, an AI does the organizing and the upkeep, and the pages have no frontmatter. A related method, not an extension."
  - Sources: "- [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]] · E35 to E46 · § Knowledge Base Prompt · E28 · 10:09 · the creator's broader statement on permission"
- Evidence: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky]] · E35, E36, E37, E38, E39, E40, E41, E42, E43, E44, E45, E46 (prompt text; direct for what the prompt specifies), E51 (ask when in doubt), E28 (transcript; broader than E36), C29 (inferred, medium). Brief §10 (no nightly run shown; prompt shows instructions, not model behavior; Google Doc link truncated).
- Reason: A5 (new-process). The evidence is direct and quote-checked for what the method specifies. This matches the evidence level of CON-20261113-002, which the Brain accepted as one-source advice with no tests. The Assessment requires the approval-gate limit (C29, E28 against E36) and the note that no nightly run is shown. Both are in the Explanation. The record links CON-20261113-002 as related, as A5 suggests. CON-20261113-002 itself does not change, because the purpose and the actor differ, and a link does not prove a dependency.

### X3

- Current state: The Brain has one MOC, [[MOC-20261113-001 Note durability|Note durability]]. Its topic summary is "How to keep notes readable and usable for many years: file formats, ownership, and independence from one app." No MOC covers AI-maintained knowledge bases.
- Proposed state: A new MOC in `21 Brain`. Use the sections of MOC-20261113-001.
  - Frontmatter: `type: moc`, `title: AI-maintained knowledge bases`, `status: active`, `last-reviewed:` and `change-orders:` set at apply (this Change Order).
  - Topic summary: "Knowledge bases that an AI writes and keeps over a person's own files: how they are set up, how the AI keeps them current, and the limits on what the AI may change."
  - Key concepts: "- [the X1 record|AI-maintained wiki over files]"
  - Important claims: "- None yet. One source states benefits (faster answers, breakthroughs), but gives no data. The Brain holds no claim on them."
  - Processes and methods: "- [the X2 record|Set up an AI-maintained wiki] (prompt text from one source; no nightly run shown)"
  - Evidence for and against: "- Describes: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky|Build a Self Improving Claude Knowledge Base (Lipsky, 2026)]]. YouTube tutorial with the full prompt text, partly sponsored by Zapier, `source-quality: medium`. Reliable for what the prompt specifies. Weak for the effects that the creator claims: self-reports with no data.
    - Against: none yet."
  - Related MOCs: "- [[MOC-20261113-001 Note durability|Note durability]]: the method in this topic stores its wiki as plain Markdown files with Markdown links. Note durability covers if such files stay readable and usable. A link, not a dependency."
  - Open research questions: "- Does an AI-maintained index and linked wiki over a person's files make AI answers faster or better than reading the raw files in each session, and under what conditions? (KAS-20261113-009 A6; the source asserts it with no test.)"
  - Disputes and gaps: "- One source, one creator, partly sponsored. No independent source yet. The credit to Karpathy is secondhand.
    - No source shows how well a model follows the prompt, a nightly run, or a Tidy report.
    - The written approval rule does not cover the nightly wiki writes. No source tests what an AI changes without approval in this setup."
- Evidence: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky]] · E1 to E3, E4 to E6, E28, E36, E37, E41, E42, E46. Brief §10, §11.
- Reason: A4 and A5. Each new record needs a MOC link. The existing MOC does not fit: its topic is how notes last (formats, ownership, app independence), and the new records are about an AI that writes and keeps a wiki. Filing them under "Note durability" would make that MOC's topic summary wrong. Justin decided that the new topic is in scope. The open question comes from A6.

### X4

- Current state: MOC-20261113-001, section "Related MOCs": "-" (empty).
- Proposed state: Replace "-" with: "- [the X3 record|AI-maintained knowledge bases]: one method in that topic keeps its wiki as plain Markdown files with Markdown links, for portability. A link, not a dependency." Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. No other section changes.
- Evidence: [[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky]] · E37 (summary: plain `.md` only, for portability), E41 (quote: normal Markdown links), E42 (no frontmatter).
- Reason: A1 and A5. A1 notes that the prompt's wiki pages are the kind of linked notes that the Bologov condition in CLM-20261113-001 is about, but the source does not test that condition. A link between the MOCs lets a reader go between the topics. It does not add evidence to the claim. MOC link change: `relate` (Schema §5.8).

## 3. Impact

- Direct: the Brain gets three new records (two Concepts and one MOC) and a second topic. The Brain has no topic list yet (KS-Q-01). This topic is the second one.
- Direct: MOC-20261113-001 gets one line under "Related MOCs" and this Change Order in `change-orders`. No other section changes.
- Direct: no existing Claim or Concept changes. CLM-20261113-001, CON-20261113-001 and CON-20261113-002 keep their text, status, `confidence` (medium) and `evidence-strength` (weak). CON-20261113-002 is linked from X2 and shows it as a backlink only.
- Direct: after this Change Order is applied, the Brain version is its ID.
- Possible: the open question in X3 is the same as the A6 question that the Orchestrator can add to `Research Questions.md`. A later source with data can become the first Brain Claim in this topic.
- Possible: the approval-gate limit in X2 can matter to a reader who compares this method with a workflow that needs approval for each change. The Brain shows no dependency, and this Change Order proposes no rule.
- Possible: the Curator can review the new MOC and the cross-link after apply (area workflow step 8).

## 4. Risks and limits

- One source, low authority (Authority 2) and objectivity (Objectivity 2), partly sponsored. The records attribute everything to the creator, and they hold no claim that the method works.
- Prompt text is not behavior. A reader could take X2 as a tested method. The Explanation says "Advice only, with no tests" and "not evidence of how well a model follows it".
- The approval-gate limit rests on an inferred claim (C29, medium confidence). The text says "inferred". If a later source shows a different prompt version, X2 can need a `refine`.
- The clipped prompt cannot be checked against the creator's current Google Doc (truncated link). The record says so.
- All transcript quotes come from auto-captions. The definition and the steps rest mostly on the prompt text, not on the captions.
- Currency: tools from 2026-06-25 (Claude Cowork, scheduled tasks, connectors) can change. The records name the date.
- Topic growth: a second topic with one source and no Claim is a thin MOC. This is acceptable, because the MOC lists its gaps.
- Not proposed: A1 and A2 as evidence on CLM-20261113-001 (very weak; no change to the ratings), A6 and A7 (not advanced by the Assessment; self-reports with no data).
- Risk if no action is taken: the Brain keeps no record of a concrete, fully stated method on a topic that Justin decided is in scope. The quote-checked prompt text and its approval-gate limit then stay only in the Brief. The risk is low, because no existing record depends on this content.

## 5. Priority

`low`. Impact: three new records on a new topic, and one link line on an existing MOC. No existing knowledge changes. Urgency: none. Scope: one new topic, one source. Risk of delay: low. The Brain stays less complete, but it does not become wrong.

## 6. Decision required

You can decide each row on its own, with these dependencies: X3 needs X1 or X2 (a MOC with no record is empty). X4 needs X3. If you reject X1 or X2, remove its line from X3 and the link from the other new record.

1. X1: create the Concept "AI-maintained wiki over files", with the credit to Karpathy attributed to the creator and the stated reason marked as not tested. Approve, change, or reject?
2. X2: create the Process "Set up an AI-maintained wiki", with the six steps, the ground rules, and the approval-gate limit. Approve, change, or reject? Other option: merge X1 and X2 into one Concept with `kind: process`. That is not recommended, because the Brain keeps the principle and the method apart in other places (CON-20261113-001 and CON-20261113-002).
3. X3: create a new MOC "AI-maintained knowledge bases" for this topic, instead of filing the records under "Note durability". Approve, change, or reject?
4. X4: add the new MOC to "Related MOCs" in "Note durability". Approve, change, or reject?
5. Optional: I left out A1 and A2 (the prompt's "plain `.md` only, for portability" and the two-tool statement as evidence for CLM-20261113-001), because they add no reason or data. Do you want a separate Change Order for them? Default: no.

For each row, the options are `approved`, `approved-with-changes`, `rejected`, and `deferred`.

## 7. Decision record

Justin, 2026-11-13, in the Orchestrator session (`20-29 Knowledge`). The Orchestrator copied his words exactly: "Approve all rows".

## 8. Implementation record

- Version check: `brain-version` `CO-20261113-007` matched the current version (newest `applied` in `22.24`: CO-20261113-007).
- Files created:
  - X1: `21 Brain\CON-20261113-003 AI-maintained wiki over files.md`
  - X2: `21 Brain\CON-20261113-004 Set up an AI-maintained wiki.md`
  - X3: `21 Brain\MOC-20261113-002 AI-maintained knowledge bases.md`
- File changed:
  - X4: `21 Brain\MOC-20261113-001 Note durability.md` ("Related MOCs" line, `change-orders`, `updated`). No other section changed.
- Each row was applied with the exact text in §2. "The X1 record", "the X2 record", and "the X3 record" became wikilinks to the new records.
- No existing Claim or Concept changed.
- Brain version is now `CO-20261113-008`.
