---
id: KAS-20261113-009
type: knowledge-assessment
title: Build a Self Improving Claude Knowledge Base
status: validated
created: 2026-11-13T19:10
updated: 2026-11-13T19:10
created-by: editor
schema-version: "0.10"
source: "[[SRC-20261113-011 Self-improving Claude knowledge base, Lipsky]]"
brief: "[[BRF-20261113-010 Self-improving Claude knowledge base, Lipsky]]"
brain-version: CO-20261113-007
relevance: medium
recommended-action: advance
---

## 1. Summary of relevance

The source describes a method in which an AI keeps an index and linked topic pages over plain Markdown files: the "LLM wiki" or "map". The method uses a written prompt with ground rules, a split between `sources` and `wiki`, three ongoing jobs (Ingest, Answer, Tidy) and a nightly task. This topic is not in the Brain. The Brain now covers only note durability and plain-text files. The source connects to the existing Brain Claim only weakly, through the instruction to use plain `.md` only and the statement that the setup works with more than one AI tool. The prompt text is reliable evidence of what the method specifies. The benefit claims are self-reports with no data, and some come from a sponsored segment.

## 2. Brain records reviewed

I read the whole Brain: four notes. `Research Questions.md` does not exist.

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]] (read in full)
- [[CON-20261113-001 File over app|File over app]] (read in full)
- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (read in full)
- [[MOC-20261113-001 Note durability|Note durability]] (read in full)

The Brain has no Claim, Concept or MOC about AI-maintained knowledge bases, AI memory, indexes for an AI, or scheduled AI tasks. My searches for these terms and their synonyms (index, map, wiki, agent, AI, ingest, scheduled, approval) found nothing related in the Brain.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C23 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | The Knowledge Base Prompt tells the AI to "use plain Markdown (.md) only, for portability" (E37, Summary). This matches the claim's core: lasting notes in open, readable formats. The support is very weak. (1) It is an instruction in a prompt. It is not an argument, and it gives no data. The only reason is the word "portability". (2) The author shows no expertise in knowledge management (Brief §11, Authority 2). (3) The quote check covers the prompt text, but E37 is a summary, not an exact quote. This row adds one practitioner's choice. It does not add a reason or data, so it does not change `evidence-strength: weak`. Related condition: the prompt's wiki uses Markdown links between pages (E41) and specifies no frontmatter (E42). So its notes are the kind of linked notes that the Bologov condition in the claim is about. The source does not test if such links stay usable, so it gives no evidence for or against that condition. |
| A2 | C10 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | The creator says the system works with Claude Cowork or OpenAI Codex "and a simple system of files on your computer" (E15, E16). This matches the claim's second, weaker reason: a file in an open format does not depend on one app. Here the same files can be used with two different AI tools. The support is very weak. Codex use is asserted, not shown (E16 limits). The creator does not argue for durability or app independence. He states only which tools the setup needs. Do not count this as an independent reason. |
| A3 | C24, C29 | — | — | No finding. This row records an item that I checked. C24 (raw material in `sources`, never edited, kept as the source of truth) and C29 (the approval gate) are about workflow control, not file durability. They do not relate to any Brain record. They are part of A5. |
| A4 | C1, C5 | new-concept | — | No Brain record is related. The source defines a named concept: an index (`index.md`) plus linked topic pages that the AI writes and keeps over the user's files. The index is a table of contents for the AI, not for the user (E9, E10). The creator calls it "a map for your AI" and credits the idea and the term "LLM wiki" to Andrej Karpathy (E1, E2, E3). The definition is reliable as the creator's description. The credit to Karpathy is secondhand. The creator gives no link, the auto-captions misspell the name, and the description is not independent of the creator (E1 to E3 limits). So the Brain must attribute the term to the creator's report, not to Karpathy directly. |
| A5 | C23, C24, C26, C27, C28, C29 | new-process | [[CON-20261113-002 Work with plain-text notes]] (related, not extended) | The source gives the full text of a six-step process: look around, propose a structure, organize, build the map, set up Ingest/Answer/Tidy, add a nightly task (Brief §5; E35 to E46). The evidence is direct for what the prompt specifies. It is not evidence of how well a model follows the prompt (Brief §10). The demo shows the setup. It does not show a nightly run or a Tidy report. Relation to CON-20261113-002: both are methods that organize notes in plain files with folders. CON-002 is a set of manual steps for one person (folders, metadata lines read by a script, separate graphics files). This process has an AI do the organizing and the upkeep. It adds an index, links, a log, and sourcing for each claim, and it specifies no frontmatter (E42). The purpose and the actor differ, so I classify it as a new process, not an extension of CON-002. Limit on the approval gate: the written approval rule covers file moves, renames and deletes only (E36). No step asks for approval before the nightly task writes or updates wiki pages (C29, inferred, medium confidence). The creator says the AI will "never do anything without your permission first" (E28). That statement is broader than the written rule. A Brain record for this process must keep that limit. |
| A6 | C2, C3, C4 | new | — | No Brain record is related. C2 and C3 make a causal claim: an AI that only reads files must read and interpret them again in each session, and a map lets it know at once what it needs and where it is. This could stand as its own Brain Claim, but the evidence is weak. These are the creator's statements, with no test, no measurement and no comparison (E4 to E6 limits). C4 (the AI keeps the map automatically and updates it every night) describes intended behavior. The demo shows only the setup of the task (E8 limits). I do not recommend a Brain Claim from this source alone. See the question in §5. |
| A7 | C19, C20, C21, C22 | new | — | No Brain record is related. These are benefit claims: the AI uses the knowledge base on its own, it may recognize similar client problems, the system led to "real breakthroughs", and it is "the single most useful thing". All are self-reports or hypotheticals. The source shows no example output (E30 to E34 limits), and the video is promotional. They are too weak to support a Brain Claim. I list them so that the decision not to advance them is visible. |

Not assessed as findings:
- C14 to C16 (the Cowork connector gap and Zapier MCP): these are in the lead-in to the sponsored segment or inside it. They are about tool features at the publish date, not knowledge for the Brain.
- C30 to C34 (the Business Journal and Health Dashboard prompts): these are application examples outside the Brain's topics. The readiness-score method (C32) is a specification with no stated source or validation (E52 limits).
- C12 (an Obsidian vault is a folder): this agrees with [[CON-20261113-001 File over app]], but it adds nothing to Ango's statement, which is already in the Brain.

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 4 | The Brain has no record on AI-maintained knowledge bases. The concept (A4) and the process (A5) are new to the Brain. |
| Significance | 2 | The procedure is concrete and fully stated. The effect claims (A6, A7) have no data, the source is partly sponsored, and the author has low authority (Brief §11). The source shows what one person tells an AI to do, not whether it works. |
| Applicability | 3 | The prompt text is specific and can be reused. The tools (Cowork, connectors, scheduled tasks) can change after the publish date (Brief §10, currency). The approval-gate limit (C29) affects safe use. |
| Relevance to the Brain | 2 | The only links to existing records are A1 and A2, and both are very weak. The rest of the source opens a topic that the Brain does not cover yet. |

Overall `relevance: medium`: novelty is high, but the links to the current Brain are weak.

## 5. Recommended action

`advance`, for findings A4 (new-concept) and A5 (new-process).

Reason:
- The prompt text is direct, quote-checked evidence of what the method specifies. A Concept and a Process can record what the method is, attributed to the creator, without a claim that it works.
- This matches the evidence level of [[CON-20261113-002 Work with plain-text notes]], which the Brain accepted as advice from one source with no tests.
- A5 must carry the approval-gate limit (C29, E28 against E36) and the note that no nightly run or Tidy report is shown.

Optional, low weight: A1 and A2 can be added as evidence to CLM-20261113-001. They do not change its `evidence-strength`, and the Managing Editor can leave them out.

Do not advance A6 or A7. They are self-reports with no data.

Scope note for Justin: the Brain now has one topic, note durability. Adding A4 and A5 starts a second topic. The Brain has no topic list (KS-Q-01), so Justin decides if this topic is in scope. If it is not in scope, the right action is `no-action`.

Question for the Orchestrator to consider for `Research Questions.md`. It is not a formal `investigate` result, because the action is `advance`:
"Does an AI-maintained index and linked wiki over a user's files make AI answers faster or better than reading the raw files in each session, and under what conditions?" (raised by A6).

## 6. Confidence and limits

Confidence: medium. The Brief is my only view of the source. It is `validated`, with full extraction and high extraction confidence. All transcript quotes depend on auto-captions.

Limits:
- I read the whole Brain (four notes). The Brain is small and has no records on the main topic of the source, so most findings are `new`, `new-concept` or `new-process`.
- A1 and A2 are judgment calls. The source does not argue for durability. I matched its instructions and statements to the claim's content, not to shared words. Both rows say how weak the support is.
- C29 is an inferred claim in the Brief. A5 depends on it for the approval-gate limit.
- I did not compare the source with the ORION Knowledge System design. That design is not a Brain record and is outside my inputs.

Final check (Editor §10):
1. Pass. Each finding has a Claim Candidate label, a type and an explanation. A3 is a "no finding" row with no type, and it says so.
2. Pass. The `supports` rows A1 and A2 link to CLM-20261113-001. No finding uses `contradicts`, `qualifies`, `refines`, `extends`, `new-relationship` or `research-gap`.
3. Pass, not applicable. No finding uses `contradicts`.
4. Pass. §2 lists all four Brain records that I read. `Research Questions.md` does not exist.
5. Pass. `brain-version` is CO-20261113-007, the version from the Orchestrator.
6. Pass. The recommended action has a reason. It names A4 and A5 and gives the optional scope alternative. A question is written for the Orchestrator, but it is not required, because the action is not `investigate`.
