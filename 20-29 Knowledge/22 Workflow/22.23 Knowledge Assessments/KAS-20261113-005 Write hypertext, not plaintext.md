---
id: KAS-20261113-005
type: knowledge-assessment
title: Write hypertext, not plaintext
status: draft
created: 2026-11-13T11:33
updated: 2026-11-13T11:33
created-by: editor
schema-version: "0.8"
source: "[[SRC-20261113-006 Write hypertext, not plaintext]]"
brief: "[[BRF-20261113-005 Write hypertext, not plaintext]]"
brain-version: CO-20261113-001
relevance: medium
recommended-action: advance
---

## 1. Summary of relevance

The source deals directly with the only topic in the Brain: how long notes last, and why files matter more than apps. It agrees with the Brain that plain-text storage lasts and that apps end (C4, C7). It disagrees on one thing. It says that "plain text" is not enough, because the markup inside the file, the links, and the metadata do not last as well as the storage layer does (C2, C3, C6). This qualifies [[CLM-20261113-001 Lasting notes belong in open files|lasting notes belong in open files]]. It is not a contradiction. The source is a low-quality opinion essay (Brief §11), so it gives the Brain new points of view and caveats, not stronger evidence.

## 2. Brain records reviewed

- [[CLM-20261113-001 Lasting notes belong in open files]] (read in full)
- [[CON-20261113-001 File over app]] (read in full)
- [[MOC-20261113-001 Note durability]] (read in full, including its "Open research questions")
- `Research Questions.md`: does not exist in `21 Brain`.

The Brain has 3 notes. I read all 3, so the Brain context is complete for this version.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C3, C4 | new-concept | [[CON-20261113-001 File over app]] | The Brief gives a two-layer model of "plaintext": a storage type (`text/*`) and a subtype (the markup or display format). The Concept says only "a file in an open format, such as plain text", and does not separate the two layers. The model gives a more exact meaning to "open format" in the Concept. The author's own view is that the storage layer is "eternal" and the subtype is "ephemeral" (E6). This is a prediction with no data. |
| A2 | C2, C5 | qualifies | [[CLM-20261113-001 Lasting notes belong in open files]] | The Claim says that notes in "open, readable formats such as plain text" last. The Brief agrees that plain-text storage is necessary (C5). It says that this is not sufficient: a plain-text note with metadata, links, lists, and quotations becomes "non-portable, non-standard rich text" (E2, E3). The difference is in the **conditions**. The Claim does not say if a note with links and metadata stays fully usable when only the file survives. Both statements can be true together, so this is not `contradicts`. The evidence is the author's argument, with no data (E2 limits). It is relevant to ORION, because the Claim's caveat says that ORION applies the Claim through portable Markdown and YAML. |
| A3 | C6 | qualifies | [[CLM-20261113-001 Lasting notes belong in open files]] | The Claim names plain text as an example of an open format. The Brief says that Markdown is the de facto standard for notes, but has "a lot of really platform-specific behaviors" (E9). The difference is in **definition**: an "open" format can still have dialects that work differently on each platform. This limits how far the Claim's "readable" quality goes for Markdown notes. The evidence is informal. The Brief extracted no list of the differences (E9 limits). |
| A4 | C7 | supports | [[CON-20261113-001 File over app]] | The Concept says that "apps change, close, or lose support". The Brief's author predicts that "Obsidian will end", by comparison with Myspace and Google Reader (E11). This supports the reason behind the Concept. It is interesting because the Concept comes from the CEO of Obsidian, and an independent author uses the same reasoning against Obsidian. But the support is weak. It is a prediction from examples, with no date or mechanism (E11 limits), from a low-quality source. It does not meet the Claim's own condition for a better `evidence-strength`, because it is not stronger evidence than the first source. It is only one more opinion. |
| A5 | C11, C12, C14 | extends | [[CLM-20261113-001 Lasting notes belong in open files]] | The Claim gives one criterion: an open, readable file. The Brief adds more criteria for a format that lasts: safe, portable, pretty, rich in metadata, and linked (E19). It names HTML as the format that meets them (C12). The headline "not plain text files" can look like a contradiction, but it is a **definition** difference. The author means plain text as a format with no markup (`.txt`), not as a storage type. He says that HTML is plain-text storage (C5, C10). So the recommendation fits inside the Claim. All the reasons for HTML are the author's judgments, with no test or comparison (E19, E22 limits). The author's own practice also weakens the proposal. He dropped his paragraph anchors as "useless and noisy" (C16), and his blog source is "messy" (C17). |
| A6 | C8 | new-process | [[MOC-20261113-001 Note durability]] | The MOC topic includes "independence from one app", and its "Processes and methods" section is empty. The Brief proposes academic-style referencing (with Zotero or Citation Machine) as a way to link notes that does not depend on a tool (E12). The Brain has no method for links that last. The Brain covers only files. The evidence is a recommendation only, and "it's been there for an eternity" (E13) is rhetoric, not data. |
| A7 | C1, C18 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | The Brief reports Sivers ("most reliable, flexible, and long-lasting option", E1) and Nesbit (a 1991 text file opens in modern editors with no loss, E30). Both support the Claim's storage-layer statement. C18 also relates to the MOC open question about plain text that stays readable. The evidence is second-hand: the Reporter did not open either original (E1, E30 limits). E30 is one example. Do not count this as independent support until the original sources are processed. The Brief's Orchestrator check notes that the Sivers source has its own Brief (BRF-20261113-003). I did not read that Brief. |
| A8 | — | research-gap | [[MOC-20261113-001 Note durability]] | The MOC's open questions ask if plain text stays readable. Neither the Brain nor this source tests the subtype layer. Nothing compares Markdown (with links and metadata) with HTML over time (Brief §10). Question: "Do Markdown notes with links and metadata stay usable across tools over many years, compared with HTML or unmarked plain text?" |

Not mapped to the Brain: C9 (the academic origin of HTTP, URI, and HTML, with no citation), C10 (HTTP as plain text), C13 (the Wikipedia definition of hypertext), C15 (Gemtext), C16 and C17 (used only as a limit in A5). No Brain record covers these topics. No finding is `contradicts`.

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 4 | The Brain has no separation between the storage layer and the format layer (A1). It does not cover links or metadata as a risk to durability (A2, A5), and it has no method for links (A6). |
| Significance | 3 | These points could narrow the conditions of the only Brain Claim. Because the source is a low-quality opinion essay, it can add caveats but cannot change the confidence much. |
| Applicability | 4 | ORION stores its notes in Markdown with YAML frontmatter and wikilinks, which is the setup that the source criticizes (A2, A3). The Brain Claim's own caveat links the Claim to ORION's portability rules. |
| Relevance to the Brain | 4 | The source deals directly with CLM-20261113-001, CON-20261113-001, and the MOC topic. The MOC records "Against: none yet", and this is the first source that partly disagrees. |

## 5. Recommended action

`advance`, for A2 and A3, and possibly A1.

Reason: A2 and A3 qualify the conditions of CLM-20261113-001. They say that plain-text storage alone may not keep notes with links, metadata, and Markdown dialects fully usable. A Change Order is possibly justified to record this qualification and this source as partial counter-evidence. The MOC now says "Against: none yet". A1 is possibly a reason for a new Concept, or for a change to the Concept's explanation of "open format". Justin decides if the low source quality is enough for that.

These findings do not justify a change: A4 and A7 give weak or second-hand support, so they do not raise the `confidence` or `evidence-strength` of CLM-20261113-001. A5 and A6 rest on the author's judgments only. They can be noted, but alone they are not a reason for new Brain Claims.

A8 is a research gap. The question is written in A8, if the Orchestrator or Justin wants to record it in `Research Questions.md`.

## 6. Confidence and limits

- Confidence in the comparison: medium to high. The Brain is small (3 notes), and I read all of it. The Brief gives clear evidence rows and limits.
- Confidence in the source content: low. The Brief rates `source-quality: low` and `extraction-confidence: medium`. Several evidence rows are WebFetch summaries (E16, E22, E29, E30). The Orchestrator checked all `Quote:` rows against the raw page.
- The Brief's Orchestrator check reports a paraphrase error. The source says that HTML5 elements "cover all the possible needs of a writer", not "most writing needs" (E18, C11). The real claim is stronger, and so less careful, than the Brief shows. This does not change A5.
- I used only the Brief as my view of the source. I did not read the Source page, BRF-20261113-001 (the Brain's evidence), or BRF-20261113-003 (Sivers).
- I added no facts from outside the Brief and the Brain.

Final check (Editor §10):
1. Pass. Each finding has a Claim Candidate label (or `—` for A8), a type, and an explanation.
2. Pass. Each finding links to a Brain record. No finding is `new`.
3. Pass. No finding is `contradicts`. A2 (conditions), A3 (definition), and A5 (definition) name the difference.
4. Pass. §2 lists all 3 Brain records that I read, and records that `Research Questions.md` is missing.
5. Pass. `brain-version` is `CO-20261113-001`, as the Orchestrator gave.
6. Pass. The recommended action `advance` has a reason and names the findings.

## Orchestrator check (2026-11-13)

- Phase 3 test E3, Editor step (KS-08 §8.9). Editor draft v0.2. Justin validated the Brief in chat at 11:31. The Orchestrator saved the Editor's text without changes, and added this section.
- Brain version `CO-20261113-001` confirmed (newest `applied` Change Order in `22.24`).
- Editor §10 checklist: confirmed. 8 findings, each with a label, a type, a Brain record, and a reason. No `contradicts`.
- Contradiction against definition: A5 names the headline "not plain text files" as a definition difference, because the author treats HTML as plain-text storage. A2 is a difference in conditions, and A3 a difference in definition. This meets the "Pass if" of E3. Editor §6 rule for `contradicts` is respected.
- Citation detail: A5 cites C5 and C10 for "HTML is plain-text storage". C10 is about HTTP, and the Brief has no row that says HTML is plain text. The statement is correct: the raw page says "Your data is safe in HTML because it's still plaintext". But the Brief does not carry it (E19 is a summary without this reason). Low impact.
- Spot-checked Brain quotes: "a file in an open format, such as plain text" (CON), "apps change, close, or lose support" (CON, capital A in the note), "Against: none yet" (MOC), the CLM caveat on Markdown and YAML. All correct. Brief details checked: E2 wording, E9, E11 limits, C17 "messy". All correct. No invented detail found.
- `new-concept` (A1) and `new-process` (A6) link to the nearest Brain record. Same pattern as E1 and E2. Refer to proposed edit D1 in KS-08 §8.9.
- The A8 question is not added to `Research Questions.md`, because the recommended action is `advance`, not `investigate`.
- Files read by the Editor (from its access log): the Brief, `TPL Knowledge Assessment.md`, the Schema (whole file), the three Brain notes. No other file.
- `advance` is recorded only. No Change Order is made in Phase 3.
