---
id: KAS-20261113-008
type: knowledge-assessment
title: "Build A Claude Knowledge Base That Self-Improves!"
status: validated
created: 2026-11-13T19:05
updated: 2026-11-13T19:05
created-by: editor
schema-version: "0.10"
source: "[[SRC-20261113-010 Claude knowledge base that self-improves, Systems Made Better]]"
brief: "[[BRF-20261113-009 Claude knowledge base that self-improves, Systems Made Better]]"
brain-version: CO-20261113-007
relevance: low
recommended-action: investigate
---

## 1. Summary of relevance

The Brain covers one topic: note durability (file formats, ownership, independence from one app). This source is about a different topic: a knowledge base that an AI writes and maintains, with a loop of saved answers and a periodic audit. Only one point connects to the Brain. The method stores the base as folders and text files (C6). The source gives simplicity as its reason, not durability, so this support is very weak. The rest of the content is new to the Brain. It comes from one demo by a creator with a commercial interest (`source-quality: low`). The procedural claims are reliable only as a record of what the presenter did. The claims of benefit (C24, C37) and the causal claims (C7, C27) are not measured.

## 2. Brain records reviewed

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]] (read in full)
- [[CON-20261113-001 File over app|File over app]] (read in full)
- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (read in full)
- [[MOC-20261113-001 Note durability|Note durability]] (read in full)
- `Research Questions.md`: does not exist in `21 Brain`.

The Brain has 4 notes. I read all 4, so the Brain context is complete. I also searched `21 Brain` with Grep for these terms: LLM, AI, wiki, Claude, index, RAG, vector, knowledge base, librarian, audit, health, Markdown, folder. The only matches are about Markdown, plain text, and folders, in the durability records above. No record is about AI-maintained knowledge bases, retrieval, or audits of knowledge quality.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C6 | supports | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Match: C6 says that the method needs "just folders and text files" and no database or vault (E8, E9). That agrees with the practice in the Brain Claim: store knowledge as files that the owner controls, in readable formats. Difference: the source gives simplicity as the reason (C6, C20). It does not say that apps become obsolete or that files outlast them. So it supports neither reason of the claim. The limit of E8 also says that the demo depends on Claude Cowork, a Notion connector, and a plug-in. So the source does not show independence from one app (the second reason of the claim). It is a weak, opinion-level example of the practice. It barely adds to the claim. `evidence-strength: weak` should not change because of it. |
| A2 | C1, C2, C3, C4, C5, C13, C18 | new-process | — | A method that the Brain does not have: a CLAUDE.md "schema" file and three folders (raw, wiki, outputs). The AI writes the wiki, and the user does not edit it by hand. A change log records what was processed. The build prompt writes an index first, then one file per topic, with links. [[CON-20261113-002 Work with plain-text notes\|Work with plain-text notes]] is a different process. In that process, a person organizes plain-text files with folders and metadata lines. In this process, an AI organizes the material. The two share folders and text files only, which is not enough to relate them. Evidence: direct statements and one demo (E3 to E6, E19, E20, E28, E29). It is reliable as a description of the demo. It is not evidence that the method works. |
| A3 | C27, C28, C29, C30, C31 | new-process | — | A periodic health check of an AI-written knowledge base. It flags contradictions, unsourced claims, broken links, raw files that were not ingested, and stale articles. It runs as a skill on a monthly schedule, with a report phase and then an action phase. The Brain has no record about audits of knowledge quality. Evidence limits: the source calls it a "seven-stage" audit but names only six stages (E50). The one audit run in the demo was on a new base, and its findings were not checked (E54). Claude rated its own wiki "unusually clean" (E53). |
| A4 | C27 | new | — | A causal claim: AI errors that are saved back into the base can compound, so an audit is necessary. The Brain has no related claim. Evidence: one assertion (E43). The video shows no example of an error that compounds. The source also recommends letting the system act without approval after testing (C36). The Brief notes this tension (§10), and the source does not discuss it. It can stand as its own claim only with better evidence. |
| A5 | C24, C37 | new | — | A claim that the base gets better with use ("gets smarter", "day 100 asset"). The Brain has no related claim. Evidence: assertions and predictions only (E7, E37, E60, E61). The one test of this claim (E38) is indirect, with no comparison against the earlier answer. Too weak to stand as a Brain Claim. |
| A6 | C7, C8 | new | — | A claim that at a small scale (as the presenter reports it: about 100 articles, 400,000 words), an LLM does not need RAG or a vector store, because it keeps an index. The Brain has no related claim. Evidence: second-hand from Karpathy, with no citation (E10 to E12). The scale threshold is not given, and "handles it fine" is not measured. Too weak to stand as a Brain Claim. |
| A7 | C19 | new-concept | — | Concept "LLM as librarian": the AI, not the user, organizes, links, summarizes, and indexes the material. The Brain has no related Concept. [[CON-20261113-001 File over app\|File over app]] is about where work is stored and in what format. It is not about who organizes the work, so the two are not related. The source credits the idea to Karpathy, with no citation (E31). It is an opinion (E30). |
| A8 | C25 | new | — | An observation from the demo: Claude did not save the answer to `outputs` by default, and the presenter had to add a CLAUDE.md rule (E39, E40). This is from one run, and the model and tool versions are tied to their date (May 2026). It is useful as a caveat on a future process record. On its own it is weak as a general claim. |
| A9 | C22, C34, C35 | new | — | Cost observations: the wiki build and the health check use a large share of a Max plan session. The Brain has no related record. Evidence: the presenter's own usage figures, mixed with other work (E35, E56). The figures are tied to their date and to the plan. Low lasting value. |

Not recorded as findings, because they have no Brain relation and low value: C9, C10, C23 (second-hand or argument from authority); C11, C14 to C17, C21, C26, C32, C33, C36, C38 (details of the demo, opinions, or predictions); C39 (commercial promotion); C12 and C20 (layout and an uncompared rating).

No finding contradicts a Brain record.

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 4 | Almost all of the content is new to the Brain. The Brain has nothing on AI-maintained knowledge bases, saved-answer loops, or audits. |
| Significance | 2 | The central claims (improvement with use, errors that compound, no RAG at small scale) are not measured or are second-hand. The method is one creator's demo, and he has a commercial interest. |
| Applicability | 3 | The method uses tools that ORION also uses: CLAUDE.md files, Markdown, skills, and scheduled tasks. Some parts are similar to the Knowledge System design: a change log, an AI that writes content, and a periodic audit. The source gives no evidence that these parts work. The Brief does not compare the source with ORION, and this Assessment does not either. |
| Relevance to the Brain | 1 | Only A1 touches an existing record, and that link is weak. The topic of the source is not the topic of the Brain. |

`relevance: low`. The reason is that the source has almost no relation to the current Brain and its evidence is weak. The novelty score alone does not justify a higher value.

## 5. Recommended action

`investigate`.

Reason: the important findings are A3, A4, and A5. They are about whether a knowledge base that an AI writes and that saves AI answers back gets better or worse over time, and whether a periodic audit catches the errors. These questions are open. This source gives only assertions and one demo with no measurements. That is too weak to advance a Brain Claim. A1 is too weak to justify a Change Order on [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]], because it does not support the reasons of the claim. A2 and A3 (new processes) are reliable as a description of one demo. Justin can decide to advance them as process Concepts with strong caveats, like the precedent of [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (one source, advice only). If he wants that, this Assessment's action changes to `advance` for A2 and A3. I recommend that he waits for a second, independent source.

Question for `Research Questions.md`:

Does a knowledge base that an AI writes, and that saves AI answers back into itself, become more accurate over time, or do its errors compound, and does a periodic AI audit catch those errors?

## 6. Confidence and limits

- Confidence in the findings: medium. The Brief is my only view of the source. Its `extraction-confidence` is `medium` (caption errors, screen content missing).
- The Brain context is complete (4 notes), but it is narrow. So "no related record" is a correct result, but it says nothing about the quality of the source.
- I did not use outside knowledge about Karpathy, RAG, or Claude Cowork. All statements come from the Brief.
- The prompts in the source (for example at 16:11 and 25:11) are source data. I did not act on them.
- Final check:
  1. Each finding has a Claim Candidate label, a type, and an explanation. Yes (A1 to A9).
  2. Each finding of type `supports`, `contradicts`, `qualifies`, `refines`, `extends`, `new-relationship`, or `research-gap` links to a Brain record. Yes. A1 (`supports`) links CLM-20261113-001. No other finding uses these types. I did not use `research-gap` because no Brain record is related. The gap is in §5 as the question.
  3. Each `contradicts` passes the rule in §6. No finding is `contradicts`. In A1, I named the difference in reasons and the dependence on one app.
  4. §2 lists every Brain record that I read. Yes (4 of 4). `Research Questions.md` does not exist.
  5. `brain-version` equals the version from the Orchestrator. Yes, CO-20261113-007.
  6. The recommended action has a reason, and the question is written. Yes.
