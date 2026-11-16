---
id: CO-20261115-010
type: change-order
title: Readable AI content, Nava
status: applied
created: 2026-11-15T21:56
updated: 2026-11-15T22:08
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-004 Readable AI content, Nava]]"
brain-version: CO-20261115-009
change-types: [create, add-evidence, relate]
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
priority: low
decision: approved
decided: 2026-11-15T22:07
decision-note: "I approve all proposed changes"
applied: 2026-11-15T22:08
brain-version-after: CO-20261115-010
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The Brain has nothing on how to make content easy for AI models to read. Source SRC-20261115-004 (Nava PBC toolkit, 2025-03-06) gives guidance on this. This Change Order adds two new records: one claim on file formats, and one process on content design. It also adds the source as indirect evidence to one existing claim, and links the new records in one MOC. All new records stay `low` confidence and `weak` evidence: the source is guidance with no tests, and most of its text was not checked against the page.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1 Scans and PDFs force the computer to infer text and structure | new | none | The Brain has no claim on AI reading of formats. |
| A2 | C2 HTML, XML, Markdown give direct access to text | new | [[CLM-20261113-001 Lasting notes belong in open files]] | Same formats as the Brain's open-file claim, but the reason is AI readability, not durability. Indirect support only. |
| A3 | C3 DOCX is less ideal than open formats, better than PDF | new | [[CLM-20261113-001 Lasting notes belong in open files]] | Same order as NARA's ranking (DOCX acceptable, plain text preferred), but a different purpose. |
| A4 | C4 CSV, JSON, XML for structured data | new | none | No Brain record on structured data formats. |
| A5 | C5 Plain language, headings, lists | new | none | No Brain record on content design for AI. |
| A6 | C6 Use the tool's heading styles, not bold or large text | new | none | No Brain record. Source is a WebFetch paraphrase. |
| A7 | C7 The practices also help accessibility and skimmability | new | none | No Brain record. Source statement, no data. Kept as a caveat, not as a claim. |
| A8 | C8 The tactics work best together; one step still helps | new | none | No Brain record. Kept as a caveat, not as a claim. |

No Brain record contradicts the source. The Brain's open-file claim concerns durability. This source concerns AI reading. The two do not conflict.

Threshold: yes (makes records; edits 2 existing records).

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261115-009.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C2 | extends | [[CLM-20261113-001 Lasting notes belong in open files]] | The Brain claim gives two reasons for open formats: apps become obsolete, and no single app is needed. C2 gives a different reason: HTML, XML, and Markdown give a computer direct access to the text, which helps AI reading. This is a new purpose, not durability. Evidence E2 is a direct quote, but it is a definition of "machine-readable", not a test. No data. Weak support. |
| A2 | C3 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | C3 ranks DOCX below open formats and above PDF. The Brain claim cites NARA, which lists DOCX as acceptable only, below plain text. The two rankings agree in direction for DOCX versus open text. The criteria differ: Nava ranks for AI reading, NARA for federal record transfer. Both give no reasons or tests, so the agreement adds little. The Nava ranking of PDF below DOCX does not match NARA and LoC, which prefer PDF/A (see A3). |
| A3 | C1 | qualifies | [[CLM-20261113-001 Lasting notes belong in open files]] | The Brain claim (Disputes section) records that NARA and LoC prefer PDF/A and PDF/UA, and LoC ranks plain text as acceptable only. C1 says scanned documents and PDFs add errors because a computer must infer text and structure. This is not a contradiction: the criteria differ (preservation versus AI reading) and the source speaks of scans and general PDFs, not PDF/A. It shows that a ranking depends on the purpose. The error claim is a summary only (E1), with no error rates. |
| A4 | C1, C2, C4 | new | — | No Brain record states that the file format changes how well AI reads content. A Claim of this kind can stand alone: formats with direct text access (HTML, XML, Markdown; CSV, JSON, XML for structured data) are easier for AI than scans and PDFs. Basis: one advocacy toolkit. C4 (structured data formats) has no related Brain record. E3 to E4 are direct, but E1 and E3 are WebFetch summaries. |
| A5 | C5, C6 | new | — | No Brain record covers the structure inside a note (real headings, lists, plain language). Applicability to ORION: Markdown headings are real headings. C6 (use the editing tool's heading style, not bold text) is a procedural recommendation with a WebFetch paraphrase as evidence (E7). E5 and E6 are short list-item quotes. The source gives no evidence that this improves AI results (E5 Limits). |
| A6 | C5 | new-relationship | [[CON-20261113-002 Work with plain-text notes]] | Step 2 of the process puts metadata lines at the top of each file. The source lists metadata (dates, topic tags) as a tactic for AI readability, but only in a WebFetch summary (E6 Limits), and C5 does not state it. If a Brain record uses it, the Reporter must check it first. Bologov (cited in the Brain) says that metadata makes a plain-text file non-portable. The two views differ in conditions: Nava is about AI reading, Bologov about portability. No conflict, and no test of either. |
| A7 | C7 | new | — | The statement that AI-readable content also helps accessibility and skimmability for people can stand alone, but it is a paraphrase (E8) with no data. Low value as a separate Claim. A caveat or a mention in A4 or A5 is enough. |
| A8 | C8 | new-process | — | The two tactics (choose the format, design the content) and the advice to combine them or start small form a short process. The Brain has no process for preparing content for AI. The source gives only a high-level list. Whether it is worth a Concept is a question for Justin. |
| A9 | — | research-gap | [[Research Questions]] | The source gives no test, data, or named AI tool for its claims (Brief §10). Row 2 asks if an AI-maintained index makes AI answers faster or better. A parallel gap exists on format and structure: no source in the Brain tests if format or heading structure changes AI accuracy. [[CLM-20261115-001 Search plain files first, then add indexes]] has the same gap (no benchmarks). |

### Recommended action

`advance`. Findings A1, A3, A4, and A5 possibly justify a change: a new low-confidence Claim on format and structure for AI reading, and a qualification note on CLM-20261113-001 that rankings differ by purpose (A3). Reason: the Brain has no record on this topic, and the source is relevant to ORION practice. Limit: the evidence is one advocacy source with summary-level evidence. Confidence must stay `low` and evidence strength `weak`. A2, A6, A7, and A8 are minor and can go in as caveats or be left out, as Justin decides. A9 also supports an optional row for `Research Questions.md`: "Does the file format or heading structure of a note change how accurately an AI reads it, and by how much?"


### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. They agree on 7 of 9 points: a new low-confidence claim on formats for AI reading; a process on content design; indirect evidence on CLM-20261113-001; the accessibility benefit as a caveat only; no contradiction; and a research gap. They differ on two points. Neither is a conflict. Each is a caveat that the Change Order does not yet have.

1. **Editor A3: rankings depend on purpose.** Nava rates PDF lowest for AI reading. NARA and LoC prefer PDF/A for preservation, as CLM-20261113-001 records. X3 says only that Nava's reason is AI reading, not durability. Suggested addition to the X3 caveat: "Nava rates PDF lowest for AI reading. NARA and LoC prefer PDF/A for preservation. The rankings serve different purposes."
2. **Editor A6: metadata.** Step 5 of the new process ("Add metadata") rests on an unchecked WebFetch summary. The Brain cites Bologov, who says that metadata makes a plain-text file less portable. X2 has no caveat on this. Suggested addition to the process caveats: "Bologov (cited in CLM-20261113-001) argues that metadata makes plain text less portable. The two views serve different purposes (AI reading, portability). Neither is tested."

Justin can approve X2 and X3 with these two additions (`approved-with-changes`). The Editor and the Managing Editor both suggest an optional row for `Research Questions.md`: "Does the file format or heading structure of a note change how accurately an AI reads it, and by how much?" The Orchestrator adds it only if Justin says so.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Text formats with direct access are easier for AI to read | New claim from C1 to C3 (A1 to A3). |
| X2 | create | new: Design content for AI readers | New process from C4 to C8 (A4 to A8). |
| X3 | add-evidence | [[CLM-20261113-001 Lasting notes belong in open files]] | Add the source as indirect evidence. The claim text stays. |
| X4 | relate | [[MOC-20261113-001 Note durability]] | Link the two new records and the source. |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CLM-20261115-003 Text formats with direct access are easier for AI to read.md`. Title: "Text formats with direct access are easier for AI to read". Status `accepted`, `confidence: low`, `evidence-strength: weak`.
- Evidence: [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit]] · E1, E2, E3
- Reason: A1, A2, A3. The claim is stated as the source's guidance. E2 quote was checked against the page. E1 (error claim) and E3 are WebFetch summaries.

### X2

- Current: none
- Proposed: Draft: `.staging\proposed\CON-20261115-002 Design content for AI readers.md`. Title: "Design content for AI readers". Kind `process`, status `accepted`.
- Evidence: [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit]] · E4, E5, E6, E7, E8, E9
- Reason: A4 to A8. I propose a process, not claims: the source gives steps, with no test. Quotes for E4, E5, E6 were checked. E7, E8, E9 and the other list items are WebFetch summaries.

### X3

- Current: none (no line for this source in `## Evidence`)
- Proposed: add to `## Evidence`: `- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E2, E3 · § Tactic 1: selecting the best file format · supports (indirect) · open text formats (HTML, XML, Markdown) give a computer direct access to text; DOCX is rated below them and above PDF. About reading by AI, not durability. E3 is a WebFetch summary, not checked.`
  Add to `## Disputes and caveats`: `- Fourth opinion source (Nava, SRC-20261115-004, source-quality: medium). Its reason is that AI reads open formats more easily, not that files outlast apps. Indirect support. It gives no data and does not change confidence or evidence strength. It is not counted in the three opinion sources above.`
- Evidence: [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit]] · E2, E3
- Reason: A2, A3. Evidence is added only. Claim text, `confidence` (`low`), and `evidence-strength` (`weak`) stay.

### X4

- Current: none (the two new records are not in the MOC)
- Proposed: add to `## Important claims`: `- [[CLM-20261115-003 Text formats with direct access are easier for AI to read]] (evidence weak, one source; about reading by AI, not durability)`. Add to `## Processes and methods`: `- [[CON-20261115-002 Design content for AI readers]] (steps from one source, no tests)`. Add to `## Evidence for and against`: `- For (indirect): [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]]. Guidance with no tests. Rates open text formats above DOCX and PDF for AI reading.` The Orchestrator sets the final record IDs in these links.
- Evidence: [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit]] · E2, E3
- Reason: each new record needs a MOC link. MOC-001 covers file formats. See §4 on the alternative.

## 3. Impact

Direct:
- Two new Brain records and one new evidence line on CLM-20261113-001.
- MOC-20261113-001 lists the new records.
- No confidence or evidence-strength value changes.

Possible:
- The Brain starts a topic on content for AI readers. The ORION rules for notes (root `CLAUDE.md` §4.4 and area rule 12) could later use it. This Change Order does not propose that.

## 4. Risks and limits

- Most of the Brief is WebFetch summary. Only 5 quotes (E1, E2, E4, E5, E6) were checked against the page. E3, E7, E8, E9 and the list items for headings, glossary, and metadata were not. I kept wording tied to the Brief.
- The source gives no tests, data, or citations. The author has an advocacy role.
- The MOC fit is weak: MOC-001 is about durability, and the new records are about AI reading. Option: use [[MOC-20261113-002 AI-maintained knowledge bases]], or make a new MOC when more sources arrive. The Mintlify source (SRC-20261115-005) possibly adds to this topic.
- Risk if no action: the source stays only in its Source note. The Brain loses nothing else.
- The Brief gives no information on whether these steps help personal notes or Obsidian.

## 5. Priority

`low`. Two new `low`-confidence records, no change to existing claims. No urgency. Scope: 4 records. Risk of delay: none.

## 6. Decision required

Approve, reject, or change each row: X1, X2, X3, X4. Rows can be decided one by one. X4 depends on X1 and X2. Question: do you want the new records in MOC-001 (Note durability), or in MOC-002 (AI-maintained knowledge bases)?

## 7. Decision record

2026-11-15T22:07. Justin: "Lets skip reddit. I approve all proposed changes. Where do you think it belongs?" Decision: `approved`. Rows X1, X2, and X3 were applied as written, with the two caveats from the Orchestrator comparison (the PDF/A against the Nava ranking, added to the X3 caveat on CLM-20261113-001; the metadata against Bologov, added to the new process). Row X4 (the MOC link) was NOT applied: Justin asked where the records belong, and the placement is decided in a separate Change Order (CO-20261115-012, to be proposed).

## 8. Implementation record

2026-11-15T22:08. The Orchestrator checked that `brain-version` (CO-20261115-009) matched the current Brain version. Files: new `CLM-20261115-003` and `CON-20261115-002` (from the drafts in `.staging\proposed`); `CLM-20261113-001` changed (one evidence line, one caveat bullet; `confidence` and `evidence-strength` unchanged). `change-orders` and `updated` set. Frontmatter Check 0 problems. X4 not applied

Brain version after: CO-20261115-010.
