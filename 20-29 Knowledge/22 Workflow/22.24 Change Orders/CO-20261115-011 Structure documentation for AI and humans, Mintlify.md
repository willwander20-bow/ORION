---
id: CO-20261115-011
type: change-order
title: Structure documentation for AI and humans, Mintlify
status: applied
created: 2026-11-15T21:57
updated: 2026-11-15T22:08
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-005 Structure documentation for AI and humans, Mintlify]]"
brain-version: CO-20261115-010
change-types: [create, extend, add-evidence, relate]
affected:
  - "[[CLM-20261115-003 Text formats with direct access are easier for AI to read]]"
  - "[[CON-20261115-002 Design content for AI readers]]"
priority: low
decision: approved
decided: 2026-11-15T22:07
decision-note: "I approve all proposed changes"
applied: 2026-11-15T22:08
brain-version-after: CO-20261115-011
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The Brain has no record on how document structure affects AI readers. Source SRC-20261115-005 (a Mintlify vendor article, 2025-10-06) gives guidance on this. This Change Order adds one new claim on structure. It also adds the source's extra steps and one test method to the process "Design content for AI readers", and adds the source as indirect evidence to the file-format claim. Both of those records come from the Nava Change Order (SRC-20261115-004) and are not yet in the Brain. The new claim stays `low` confidence and `weak` evidence.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1 AI does not read documents as a person does | new | none | No Brain record on how AI reads. Quote checked. Assertion without data. |
| A2 | C2 Chunking can cause skipped or misread information | new | none | No Brain record. WebFetch summary, no test. Used in the new claim. |
| A3 | C3 Clear headings, short paragraphs, lists for steps | extends | proposed CON "Design content for AI readers" (SRC-004) | That process has headings and lists. "Short paragraphs" is new. |
| A4 | C4 Avoid hidden or interactive content (tabs, collapsibles) | extends | proposed CON; proposed CLM "Text formats with direct access…" | New step for the process. Plain Markdown or flat export easier to parse: indirect support for the format claim. |
| A5 | C5 Fenced code blocks; YAML frontmatter | extends | proposed CON | Frontmatter fits step 5 (metadata). Fenced code is new. |
| A6 | C6 Active voice, descriptive link and alt text, consistent terms, fewer vague pronouns | extends | proposed CON | Overlaps in part with plain language and glossary. Four habits are new. |
| A7 | C7 Five-step test plan | new | none | No Brain record on testing. Untested by the source. Added to the process as one section. |
| A8 | C8 Structure helps most in large knowledge bases, developer docs, role-based docs | new | none | Scope statement by an interested author. Kept as a condition in the new claim. |
| A9 | (gap) No data that structure improves AI results | research-gap | none | The Brief gives no data. See §4. |

No Brain record contradicts the source. CLM-20261113-001 is about durability, so I propose no evidence row for it. The format claim in the Nava draft is the closer fit.

Threshold: yes (makes a record; edits 1 existing record and 2 proposed records).

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: investigate. Brain version: CO-20261115-009.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1, C2 | new | — | The Brain has no claim on how AI tools read documents. C1 (AI does not read as a person does) and C2 (tools split documents into chunks, which can cause skipped or misread content) can stand as one Brain Claim on chunking. Evidence is weak: E1 is a verified-length quote and an assertion without data. E2 is a fetch-tool paraphrase of a causal claim with no test. Confidence should be low. C1 alone is too general to be useful. |
| A2 | C2 | research-gap | [[Research Questions]] (row 2) | Row 2 asks if an AI-maintained index makes answers faster or better than raw files. C2 gives one possible mechanism (chunking causes misreads) and no test. It does not answer the row. It also differs in subject: the row is about an index built by an AI. C2 is about how documents are split by retrieval tools. |
| A3 | C5 (frontmatter part) | supports | [[CON-20261113-002 Work with plain-text notes]] | Step 2 puts a few metadata lines at the top of each file. C5 recommends YAML frontmatter to give AI context. The practice matches. The reason differs: Sivers (the source of step 2) uses it for scripts, and this source uses it for AI context. This is weak support: E7 is a paraphrase with no evidence of effect. The Bologov qualification of step 2 (metadata makes a plain-text file non-standard rich text) is not answered. The source does not address it. |
| A4 | C5 (fenced code), C3, C6 | new | — | Fenced code blocks (E6, a 4-word quote not tied to a section), a clear heading hierarchy with short paragraphs and lists (C3), and consistent terms, active voice, descriptive link text, and fewer vague pronouns (C6) are formatting and writing advice. No Brain record covers them. They are opinions of one vendor with no data (E3, E6, E8). As Brain Claims they would be at most `low` confidence, `weak` evidence. They can stand as one Claim on structure for AI readers, or be left as source detail. |
| A5 | C4 | new | — | Advice to avoid tabs and collapsibles for content that AI must read (E4 quote, E5 summary). No Brain record covers it. The source hedges ("may not be captured reliably") and its Brief §10 notes that the same article promotes tabs as a Mintlify feature. That is an internal conflict and a vendor interest. Weak. |
| A6 | C4 (llms-full.txt) | new-relationship | [[CON-20261113-003 AI-maintained wiki over files]] | The source offers a flat text export (llms-full.txt) as an easy form for AI to parse. CON-20261113-003 describes an index (`index.md`) as a map for the AI. Both are artifacts made for AI readers over plain files. They differ in kind: a flat export holds the content, and an index points to the content. No source compares them. The link is a possible relation only. It rests on a paraphrase (E5). |
| A7 | C7 | new-process | — | A five-step test plan: raw-text check, human baseline, UI usability tests, human tasks, compare and retest. Also an LLM prompted with real support questions. No Brain process covers testing readability. E9 is a paraphrase, and the source did not test the plan. The plan can inform how to test Research Questions row 2, but it is not a result. |
| A8 | C8 | research-gap | [[CLM-20261115-001 Search plain files first, then add indexes]] | C8 says structure helps most in large knowledge bases. That Brain claim caveat says "the Brain does not show that a plain search is enough for a larger set of files". C8 is related in subject (size of the file set) but gives no data and no size (E10, interested vendor). It does not qualify the Brain claim. It points at the same gap. |

No finding contradicts a Brain record. No finding weakens one. The source does not address durability (CLM-20261113-001, CON-20261113-001), backup (CLM-20261115-002), or the agent memory protocol (CON-20261115-001).

### Recommended action

`investigate`. The findings are new but the evidence is too weak to support a Brain Claim: one vendor, no data, a summarized fetch, and an internal conflict on tabs. The findings do not weaken any Brain record. A Change Order for one `low`/`weak` Claim (A1, A4) is possible, but it would add little. Justin gave no reason for the source, and he can decide if he wants it.

Question for `Research Questions.md`: Does the structure of a document (headings, chunk size, frontmatter, hidden content) change how well an AI tool retrieves and answers from it, and how can that be tested?


### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. **They differ on the action.** The Managing Editor proposes four rows (a new claim, two additions to the proposed Nava records, a MOC link). The Editor recommends `investigate`: the evidence is one vendor article with no data, a fetch summary, and an internal conflict on tabs, so a Change Order "would add little".

They agree on the facts: no finding contradicts or weakens a Brain record; a new claim is possible at `low` confidence and `weak` evidence; the process steps overlap with the Nava source; and there is a research gap (no test that structure helps AI).

Points that only the Editor makes:
1. **A3.** The frontmatter advice gives weak support to step 2 of CON-20261113-002 (metadata lines). CO-20261115-011 has no row for CON-002. It does not answer the Bologov qualification.
2. **A6.** A flat text export (llms-full.txt) and the index of CON-20261113-003 are both files made for AI readers. They differ in kind. No row. Possible relation only.
3. **Research Questions.** Suggested row: "Does the structure of a document (headings, chunk size, frontmatter, hidden content) change how well an AI tool retrieves and answers from it, and how can that be tested?" The Orchestrator adds it only if Justin says so.

**Dependency.** X2 and X3 add text to records that CO-20261115-010 proposes. If Justin rejects those rows there, only X1 and X4 can apply.

Justin has three options: (A) approve all four rows; (B) approve X1 and X4 only, or X1 alone; (C) reject this Change Order and add the research question row (the Editor's `investigate`).

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Simple document structure helps AI tools read content correctly | New claim from C1 to C4, C8 (A1, A2, A4, A8). |
| X2 | extend | proposed (SRC-004 X2): Design content for AI readers | Add steps 7 to 10, one test section, a metadata example, a caveat, and a source line. |
| X3 | add-evidence | proposed (SRC-004 X1): Text formats with direct access are easier for AI to read | Add the source as indirect evidence, and one caveat. |
| X4 | relate | [[MOC-20261113-001 Note durability]] | Link the new claim and add the source to the evidence list. |

X2 and X3 target records that the Nava Change Order (SRC-20261115-004) proposes. The Orchestrator re-points them after it gives the IDs. If Justin rejects SRC-004 X1 or X2, the matching row here has no target.

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CLM-20261115-004 Simple structure helps AI tools read content correctly.md`. Title: "Simple document structure helps AI tools read content correctly". Status `accepted`, `confidence: low`, `evidence-strength: weak`.
- Evidence: [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article]] · E1, E2, E3, E4, E5, E10
- Reason: A1, A2, A4, A8. The claim is worded as the source's view. E1 and E4 are quotes checked against the page. E2, E3, E5, and E10 are WebFetch summaries not checked. The author is a vendor (Mintlify), and the article ends in product promotion.

### X2

Target: proposed CON "Design content for AI readers" (file `.staging\proposed\CON-20261115-002 Design content for AI readers.md`). Do not edit that file. Apply to the record after the Orchestrator gives its ID.

- Current: `## Explanation`: "The steps come from one source (Nava toolkit, Tactic 2 and the section on combining both tactics)."
- Proposed: "Steps 1 to 6 come from one source (Nava toolkit, Tactic 2 and the section on combining both tactics). Steps 7 to 10 and the test come from a second source (Mintlify article, a vendor)."
- Current: step 5: "Add metadata, such as dates and topic tags."
- Proposed: step 5: "Add metadata, such as dates and topic tags, or YAML frontmatter."
- Current: `## Steps` ends at step 6: "For structured data, supply CSV, JSON, or XML."
- Proposed: add after step 6:
  7. Keep paragraphs short.
  8. Put code in fenced blocks, separate from prose.
  9. Do not put content that AI must read in hidden or interactive parts, such as tabs and collapsibles. The source says that plain Markdown or a flat text export is easier to parse.
  10. Use active voice, descriptive link text and alt text, the same term for the same concept, and fewer vague pronouns.

  Add a section `## Test (one source, untested)`: "The Mintlify source proposes this plan: (1) check raw-text readability; (2) get human baseline feedback; (3) add interface layers and run usability tests; (4) run human usability tasks; (5) compare with the baseline and retest. It also proposes to prompt an LLM with real support questions. The source gives no result for this plan."
- Current: `## Explanation` caveats: no line on this source.
- Proposed: add caveat: "Steps 7 to 10 and the test: guidance from a documentation vendor (Mintlify, `source-quality: medium`). The article ends in product promotion. It gives no data. It advises against tabs, and it also presents tabs as a feature of its own product. Only three quotes were checked against the page (E1, E4, E6). The other items are WebFetch summaries."
- Current: `## Sources`: no line for this source.
- Proposed: add: `- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E3, E4, E5, E6, E7, E8, E9 · § Minimal formatting for reliable extraction; § Writing habits that improve AI processing; § Testing readability with AI and humans · steps 5, 7 to 10 and the test; E4 and E6 are quotes checked against the page; the other items are WebFetch summaries, not checked`
- Evidence: [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article]] · E3, E4, E5, E6, E7, E8, E9
- Reason: A3 to A7. The steps are advice from one vendor source, so the record keeps its shape as a process with caveats. The text makes no claim that the steps work. E4 and E6 locators are `unavailable` in the Brief.

### X3

Target: proposed CLM "Text formats with direct access are easier for AI to read" (file `.staging\proposed\CLM-20261115-003 Text formats with direct access are easier for AI to read.md`). Do not edit that file.

- Current: `## Evidence`: three lines, all from SRC-20261115-004.
- Proposed: add: `- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E5 · § Minimal formatting for reliable extraction · supports (indirect) · plain Markdown or a flat text export such as llms-full.txt is easier for AI to parse than tabs or collapsibles; a WebFetch summary, not checked against the page; the author is a vendor.`
- Current: `## Disputes and caveats`: no line on this source.
- Proposed: add: "A second source (Mintlify, SRC-20261115-005, `source-quality: medium`) supports the direction in part. It compares plain Markdown with tabs and collapsibles. The Brief gives no information on scans, PDF, or DOCX. It gives no data. The author is a vendor. Confidence stays `low` and evidence strength stays `weak`."
- Evidence: [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article]] · E5
- Reason: A4. The source speaks about interactive page parts, not about file formats, so the support is indirect. It does not raise `confidence` or `evidence-strength`.

### X4

- Current: none (the new claim is not in the MOC)
- Proposed: add to `## Important claims`: `- [[CLM-20261115-004 Simple structure helps AI tools read content correctly]] (evidence weak, one vendor source; about reading by AI, not durability)`. Add to `## Evidence for and against`: `- For (indirect): [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]]. Vendor article, no data. Says that simple structure helps AI tools read content, and that plain text is easier to parse than tabs.` If SRC-004 X4 is applied first, also change its line `(steps from one source, no tests)` to `(steps from two sources, no tests)`. The Orchestrator sets the final record ID in the link.
- Evidence: [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article]] · E4, E5
- Reason: each new record needs a MOC link. I use MOC-001 to match SRC-004 X4. If Justin chooses [[MOC-20261113-002 AI-maintained knowledge bases]] for the SRC-004 records, move this row there too. The fit is weak (see §4).

## 3. Impact

Direct:
- One new Brain claim. One MOC edited (MOC-20261113-001).
- Two proposed records from SRC-004 receive more text (X2, X3), when those are applied.
- No `confidence` or `evidence-strength` value changes.

Possible:
- The Brain gets a small topic on content for AI readers with two sources: one toolkit (Nava) and one vendor article (Mintlify). The Brain does not show that the two are independent of each other.

## 4. Risks and limits

- Vendor interest: the article ends in promotion of Mintlify's Markdown-first product. The Brief rates objectivity 2 of 5. Advice can favor the vendor's approach.
- The Brief is a WebFetch summary. Only three quotes (E1, E4, E6) were checked against the page. Author and date were confirmed. E2, E3, E5, and E7 to E10 were not checked. I kept the wording tied to the Brief.
- The Brief gives no data, test, or benchmark. The source advises against tabs and also presents tabs as a product feature.
- The date is 2025-10-06. AI tool behavior changes, so the advice can age.
- The MOC fit is weak: MOC-001 is about durability, and these records are about AI reading. SRC-004 §6 asks the same question.
- Dependency: X2 and X3 need the SRC-004 records. If SRC-004 is not applied first, apply X1 and X4 only. X4 can link the new claim without the SRC-004 records.
- Research gap (A9): no source in the Brain tests whether structure changes AI results. The Orchestrator can add one row to `Research Questions.md`.
- Risk if no action: the source stays only in its Source note. The Brain loses nothing else.
- The Brief gives no information on whether these steps help personal notes or Obsidian.

## 5. Priority

`low`. One new `low`-confidence claim and added caveats. No change to an existing claim. No urgency. Scope: 1 existing record, 1 new record, 2 proposed records. Risk of delay: none.

## 6. Decision required

Approve, reject, or change each row: X1, X2, X3, X4. Rows can be decided one by one. X2 and X3 depend on SRC-20261115-004 X2 and X1. X4 depends on X1.

Question: do you want the claim in MOC-001 (Note durability) or in MOC-002 (AI-maintained knowledge bases)? Use the same answer as for SRC-004.

## 7. Decision record

2026-11-15T22:07. Justin: "Lets skip reddit. I approve all proposed changes. Where do you think it belongs?" Decision: `approved`. Rows X1, X2, and X3 were applied as written. Row X4 (the MOC link) was NOT applied (see CO-20261115-010). The Editor recommended `investigate`; Justin approved the Managing Editor's rows.

## 8. Implementation record

2026-11-15T22:08. Rebased by the Orchestrator: `brain-version` changed from CO-20261115-009 to CO-20261115-010, because this Change Order was drafted knowing the proposed records of CO-20261115-010, and CO-010 was applied first. Before the apply, the Orchestrator checked that each "Current" text of X2 and X3 was in the records (all found). Files: new `CLM-20261115-004`; `CON-20261115-002` (steps 7 to 10, test section, source count, two caveats, source line); `CLM-20261115-003` (evidence line, caveat). `change-orders` and `updated` set. X4 not applied

Brain version after: CO-20261115-011.

Row X4 (the MOC link) was replaced by CO-20261115-012 (applied 2026-11-15T22:12): a new MOC, "Content for AI readers".
