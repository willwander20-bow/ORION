---
id: CO-20261113-004
type: change-order
title: Write hypertext, not plaintext
status: withdrawn
created: 2026-11-13T11:53
updated: 2026-11-13T12:18
created-by: managing-editor
schema-version: "0.8"
assessment: "[[KAS-20261113-005 Write hypertext, not plaintext]]"
source: "[[SRC-20261113-006 Write hypertext, not plaintext]]"
brain-version: CO-20261113-001
change-types:
  - qualify
  - refine
  - add-evidence
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[CON-20261113-001 File over app]]"
  - "[[MOC-20261113-001 Note durability]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

A third source (Bologov, "Write hypertext, not plaintext") agrees that plain-text storage lasts. But it says that storage alone is not enough when a note carries links and metadata, and that Markdown behaves differently on different platforms. This proposal adds these points as conditions on the claim "Lasting notes belong in open files" and adds a two-layer view of "plain text" to the Concept "File over app". It also records the source in the MOC as the first source that partly disagrees. The source is a low-quality opinion essay, so the claim sentence, `confidence`, and `evidence-strength` do not change.

## 2. Proposed changes

| Label | Change type | Record | Current state | Proposed state | Evidence | Reason |
|---|---|---|---|---|---|---|
| X1 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Claim: "Notes meant to last should be stored as files that the owner controls, in open, readable formats such as plain text. Reason: apps become obsolete, but files can outlast them." Context and conditions: "Applies to personal knowledge that must stay usable for years or decades. It does not say that every tool must use plain text." No condition on links or metadata. `confidence: medium`. `evidence-strength: weak`. | Claim text: no change. `confidence: medium` (no change). `evidence-strength: weak` (no change). **Add this paragraph at the end of Context and conditions** (after the CO-20261113-003 X2 paragraph, if that one is applied): "Condition: plain-text storage possibly does not keep a note fully usable on its own. One source agrees that plain-text storage is necessary. But it argues that when metadata, links, lists, and quotations are added, the file becomes non-portable, non-standard rich text. In that view, the format inside the file matters as well as the storage. The source is an opinion essay with no data." **Add to Evidence:** (a) `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, no date)]] · E2, E3 · § All You Need is Plaintext · qualifies · metadata and links make a plain-text file non-standard rich text; argument only.` (b) `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, no date)]] · E7 · § The Plaintext is a Lie · supports · plain text as the storage type is necessary.` **Add to Disputes and caveats**, before the ORION line: "- One opinion source (Bologov, `source-quality: low`) qualifies the conditions of this claim. It does not contradict it. ORION applies this claim through Markdown and YAML, so ORION notes are the kind of note with metadata and links that the qualification is about. Nothing tests this." Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E2, E3, E7 | A2. The difference is in the conditions, not a contradiction. Both statements can be true together. E2 is the author's argument with no data. E3 is a conclusion. So this adds a condition and does not raise or lower `confidence`. |
| X2 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Claim names "plain text" as an example of an open, readable format. Nothing about Markdown dialects. Caveat: "ORION applies this claim: root `CLAUDE.md` §4.4 and area rule 12 ("keep Markdown and YAML portable")." | Claim text: no change. **Add this paragraph at the end of Context and conditions, after X1:** "Limit on 'readable': an open format can still have dialects. One source calls Markdown the de facto standard for notes, blogs, and docs, but says that it has many platform-specific behaviors. So a Markdown note possibly does not read the same in each tool. The source gives no list of the differences." **Add to Evidence:** `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, no date)]] · E8, E9 · § Screw .TXT, All My Homies Use Markdown · qualifies · Markdown has platform-specific behaviors; informal, no list.` `confidence` and `evidence-strength`: no change. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E8, E9 | A3. A difference in definition: "open" does not mean "the same in each tool". E9 is informal, and the Brief extracted no list of the differences (E9 limits). |
| X3 | refine | [[CON-20261113-001 File over app\|File over app]] | Explanation: "Apps change, close, or lose support. A file in an open format, such as plain text, stays readable with many tools. The principle also asks toolmakers to give users ownership of their data. Steph Ango, the CEO of Obsidian, named it in 2023." The two layers of "plain text" are not separated. Sources: BRF-20261113-001 · E1 only. | Definition: no change. **Add at the end of Explanation** (after the CO-20261113-002 X4 passage, if that one is applied): "One source separates two layers of 'plain text': the storage type (text stored as a `text/*` type) and the subtype (the markup or display format inside it, for example Markdown, Org, or HTML). The author predicts that the storage type lasts, and that a subtype lasts only as long as the software or people that process it. This is a prediction with no data. In this view, 'open format' can mean either layer. A file can be open at the storage layer and still depend on tools at the subtype layer." **Add to Sources:** `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, no date)]] · E4, E6 · § The Plaintext is a Lie`. Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E4, E6 | A1. The model makes "open format" in the Concept more exact. The meaning of the principle does not change. It is not a new Concept: there is one low-quality source, and E6 is a prediction with no data (E6 limits). Refer to §6 for the other option. |
| X4 | add-evidence | [[MOC-20261113-001 Note durability\|Note durability]] | Evidence for and against: "- For: [[BRF-20261113-001 File over app\|File over app (Ango, 2023)]]. Opinion essay." / "- Against: none yet." Disputes and gaps: "- Only one source. Look for an independent source, for example from digital preservation work." | **Replace "- Against: none yet." with:** "- Against, in part: [[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, no date)]]. Opinion essay, low source quality. It agrees that plain-text storage lasts. It says that storage alone is not enough for notes with links, metadata, and Markdown dialects. It qualifies the conditions of the claim and does not contradict it." **Add to Disputes and gaps** (keep the existing line, or its replacement from CO-002 or CO-003): "- No source tests if notes with links and metadata stay usable when only the file survives, or how much Markdown dialects differ between tools." Key concepts, Important claims, Processes and methods, Open research questions: no change. Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E2, E9 | A2, A3. Keeps the MOC the same as X1 and X2. The Assessment notes that this is the first source that partly disagrees with the claim. The gap line comes from the Brief §10 limits ("does not test HTML against Markdown or plain text over time"). |

## 3. Impact

- Direct: CLM-20261113-001 gets two new paragraphs in Context and conditions, three evidence lines, and one caveat line. The claim sentence, `status`, `confidence`, and `evidence-strength` do not change.
- Direct: CON-20261113-001 gets one Explanation passage on the two layers of plain text and one Sources line. The Definition does not change.
- Direct: MOC-20261113-001 no longer says "Against: none yet". It records a partial counter-source and one new gap.
- Direct: each changed record gets this Change Order in `change-orders`. After the change is applied, the Brain version becomes the ID of this Change Order.
- No new record. No status change.
- Possible: the conditions in X1 and X2 can be a reason to look again at ORION's Markdown, YAML, and wikilink practice. This Change Order proposes no ORION rule, and the Brain does not show a dependency.
- Possible: a later source that compares Markdown and HTML over time can answer the new MOC gap, or can raise X1 and X2 to a stronger condition or a `challenge`.

## 4. Risks and limits

- Source quality is low (Brief §11): a personal blog, polemical, with no data. X1 to X3 record the author's argument as a condition. They do not record it as a fact. The proposed text names the source as an opinion each time.
- "Against, in part" (X4) can read as stronger than the evidence. The line says directly that the source qualifies the claim and does not contradict it. Another option is to keep "Against: none yet." and add the source as a separate "Qualifies:" line.
- Overlap: CO-20261113-002 and CO-20261113-003 are `open` and change the same records. Each was reviewed against `CO-20261113-001`. When the first of the three is applied, the Orchestrator must re-check the other two. CO-003 X3 keeps "Against: none yet.", and X4 here replaces it. If both are approved, X4 is the later text.
- X3 and CO-002 X4 both add text about what "plain text" includes. As CO-002 reports, Sivers counts HTML and Markdown as plain text. Bologov counts them as subtypes inside plain-text storage. The two passages do not conflict, but together they make the Explanation longer.
- Not proposed: HTML as the recommended format (A5), academic referencing as a process (A6), and stronger support from Sivers and Nesbit (A7). Reason: these are judgments only, or second-hand.
- The Brief has a known paraphrase error (E18, C11). No row here uses E18.
- Risk if no action: the Brain keeps "Against: none yet." after a source that partly disagrees has been assessed. The claim also stays silent on the risk to ORION's own note setup (Markdown with metadata and links). The risk is low, because no record depends on these values.

## 5. Priority

`low`. Impact: conditions and caveats on one claim, one Concept passage, and one MOC update. The claim sentence and the ratings do not change. Urgency: none. Scope: three records on one topic. Risk of delay: low. The Brain stays less complete, but it does not become wrong. Applicability to ORION is high (Assessment §4), but the source is too weak to make the change urgent.

## 6. Decision required

You can decide each row on its own. X4 follows X1 and X2. If you reject both X1 and X2, reject X4 too.

1. X1: add the condition that plain-text storage possibly is not enough for notes with links and metadata, with the claim sentence and ratings unchanged. Approve, change, or reject? Other option: change the claim sentence (`refine`), for example "... in open, readable formats such as plain text, with a format inside the file that stays usable."
2. X2: add the limit on Markdown dialects. Approve, change, or reject?
3. X3: add the two-layer view of plain text to the Explanation of "File over app". Approve, change, or reject? Other option: make a new Concept for the two-layer model (`create`, with a MOC row). That is not recommended now, because there is one low-quality source.
4. X4: record the source as "Against, in part" and add the new gap. Approve, change, or reject? Other option: keep "Against: none yet." and add a "Qualifies:" line.

For each row, the options are `approved`, `approved-with-changes`, `rejected`, and `deferred`.

## 7. Decision record

## 8. Implementation record

Withdrawn 2026-11-13T12:18 by the Orchestrator. Reason: `brain-version` CO-20261113-001 is stale after CO-20261113-002 and CO-20261113-005 were applied. Replaced by [[CO-20261113-006 Write hypertext, not plaintext]].
