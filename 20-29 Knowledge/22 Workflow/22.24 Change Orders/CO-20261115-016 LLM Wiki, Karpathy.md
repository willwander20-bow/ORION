---
id: CO-20261115-016
type: change-order
title: LLM Wiki, Karpathy
status: open
created: 2026-11-15T23:45
updated: 2026-11-15T23:45
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-009 LLM Wiki, Karpathy]]"
brain-version: CO-20261115-014
change-types: [refine, add-evidence, qualify, relate]
affected:
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[CLM-20261115-001 Search plain files first, then add indexes]]"
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

Source: [[SRC-20261115-009 LLM Wiki, Karpathy|LLM Wiki (karpathy, GitHub gist, 2026-04-04)]]. It is the primary text for the "LLM wiki" pattern that the Brain now holds only second-hand (Lipsky). The Brain already holds the method (CON-003) and its setup steps (CON-004). This Change Order does not make a record. It replaces the "secondhand credit" caveat with a link to the primary text, adds the source as evidence, notes differences from the Lipsky setup, and adds one qualifying note to the index claim. The source gives no test or data, so no `confidence` or `evidence-strength` value changes.

## 1a. Brief against the Brain

The Brief is in the Source note. Labels A1 to A12 match C1 to C12.

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1 query-time retrieval makes the LLM rediscover knowledge | research-gap | Research Questions row 2 | The author's argument with no test (E1). The Brain holds no claim on it. Row 2 already asks the question. |
| A2 | C2 persistent, interlinked wiki; "compounding artifact" | supports | CON-20261113-003 | Same method as the Definition. This is the primary text. See X1, X2. |
| A3 | C3 three layers: raw sources, wiki, schema | supports | CON-20261113-004 | Matches steps 2 and 4 (`sources`, `wiki`, `claude.md`). See X3. |
| A4 | C4 ingest, query, lint | supports | CON-20261113-004 | Matches step 5 (Ingest, Answer, Tidy). See X3. |
| A5 | C5 good query answers are filed back into the wiki | research-gap | Research Questions row 1; CON-20261113-004 | Step 5 (Answer) does not file answers back. The Brief gives no test of this loop (E9). See X3. |
| A6 | C6 one source touches 10 to 15 pages; one source at a time preferred | qualifies | CON-20261113-004 | The nightly batch in step 6 differs from the author's preference (E10). One author's experience. See X3. |
| A7 | C7 `index.md` works at about 100 sources without embedding RAG; `log.md` append-only | qualifies | CLM-20261115-001 | Partly agrees with "add heavy indexes only when needed", but starts from an LLM-kept index, not from search. No measurement (E11). See X4. |
| A8 | C8 maintenance cost, not reading, makes wikis fail; LLM makes it near zero | research-gap | Research Questions row 2 | An assertion with no figures (E3). The MOC holds no benefit claim for this reason. No record. |
| A9 | C9 human curates and asks; LLM does the rest | qualifies | CON-20261113-004 | The Brief gives no information on review of the LLM's edits (Brief §10, E12 limits). The approval-gate gap stays open. See X3. |
| A10 | C10 abstract by design; details depend on domain | new | none | A statement about the text itself. No record. |
| A11 | C11 optional tools (qmd, Web Clipper, Marp, Dataview, Git) | new | none | A tool list with no comparison (E13). No record. See X4 for qmd only. |
| A12 | C12 Memex left maintenance unsolved | new | none | The author's reading of Bush, not checked (E4). No record. |

No Claim Candidate contradicts a Brain record. No new record is justified: the source describes a pattern that CON-003 and CON-004 already hold, and every benefit statement lacks data. The Brief did not analyze the gist comments.

Threshold: no. No record is made. No Claim text, status, `confidence`, or `evidence-strength` changes (X4 adds an evidence line and a relationship sentence only). 4 records change (below 5). The Editor second look is not required by the threshold.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[CON-20261113-003 AI-maintained wiki over files]] | Replace the "secondhand credit" sentences with the primary text |
| X2 | add-evidence | [[CON-20261113-003 AI-maintained wiki over files]] | Add a caveat bullet and a Sources line |
| X3 | qualify | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add one Explanation bullet and a Sources line |
| X4 | add-evidence | [[CLM-20261115-001 Search plain files first, then add indexes]] | Add an Evidence line and a Relationships sentence |
| X5 | relate | [[MOC-20261113-002 AI-maintained knowledge bases]] | Add an Evidence line and replace one sentence in Disputes and gaps |

### X1

- Current (CON-003, Explanation, paragraph 1, last three sentences): "He credits the idea and the term 'LLM wiki' to Andrej Karpathy. This credit is secondhand: the creator gives no link, and the Brain has no source from Karpathy. So the Brain attributes the term to the creator's report."
- Proposed: "He credits the idea and the term 'LLM wiki' to Andrej Karpathy. He gives no link. The Brain now has a primary text: a GitHub gist titled 'LLM Wiki' (SRC-20261115-009), owned by the GitHub user `karpathy`, dated 2026-04-04 (the Orchestrator found the date and the name Andrej Karpathy on the gist page). The gist describes the same pattern: raw sources, a wiki that an LLM keeps, a schema file, `index.md`, and `log.md`. So a primary text for the pattern exists. The Brain does not show that the creator took the idea from it."
- Evidence: [[SRC-20261115-009 LLM Wiki, Karpathy|Karpathy]] · E2, E7, E8, E11 · Brief §12 (author and date notes)
- Reason: A2. The old sentence says that the Brain has no source from Karpathy. That is no longer true.

### X2

- Current (CON-003): none. The caveat list ends with the Wall bullet. The Sources list ends with the Wall line.
- Proposed, new last Caveat bullet: "- A third source (the Karpathy gist, SRC-20261115-009) is the primary description of the pattern. It argues that retrieval at query time makes the LLM rediscover knowledge at each question (E1), and that the cost of maintenance is near zero with an LLM (E3). Both are assertions. The Brief gives no test, no data, and no figures on cost. It does not support the stated reason above with data."
- Proposed, new last Sources line: "- [[SRC-20261115-009 LLM Wiki, Karpathy|LLM Wiki (karpathy, GitHub gist, 2026-04-04)]] · E2, E7 · § The core idea · E8 · § Architecture · E9 · § Operations · E11 · § Indexing and logging · primary description; a proposal, no test"
- Evidence: [[SRC-20261115-009 LLM Wiki, Karpathy|Karpathy]] · E1, E3
- Reason: A1, A2, A8. The new bullet keeps the Brain from reading these assertions as findings. Locators come from the Brief and are not checked.

### X3

- Current (CON-004): none. The Explanation list ends with the Okhlopkov "Layout option" bullet, then the Markdown-links, clipped-copy, and Cowork bullets. The Sources list ends with the Okhlopkov E3, E7 line.
- Proposed, new Explanation bullet (after the Okhlopkov layout bullet): "- A fourth source (the Karpathy gist, SRC-20261115-009) describes the same structure: raw sources that the LLM never edits, an LLM-kept wiki, a schema file (for example CLAUDE.md), the operations ingest, query, and lint, an `index.md`, and an append-only `log.md` (E8, E9, E11). Two differences. The gist files good query answers back into the wiki. Step 5 (Answer) does not. The author prefers to ingest one source at a time with close involvement, and says batch ingest is possible (E10). Step 6 is a nightly batch. The Brief gives no information on review or approval of the LLM's edits, so the approval-gate limit above stays open. The gist is a proposal and shows no result."
- Proposed, new last Sources line: "- [[SRC-20261115-009 LLM Wiki, Karpathy|LLM Wiki (karpathy, GitHub gist, 2026-04-04)]] · E8 · § Architecture · E9 · § Operations · E10 · § Operations, Ingest · E12 · § Why this works · same structure; no test"
- Evidence: [[SRC-20261115-009 LLM Wiki, Karpathy|Karpathy]] · E8, E9, E10, E12
- Reason: A3, A4, A5, A6, A9. The text adds no step and no rule. The gist's lint (a periodic check for contradictions, stale claims, and orphans; Brief §5) is similar in kind to step 5 Tidy. This is my reading of the two texts, not a statement of the Brief. The new bullet names only differences that the Brief reports.

### X4

- Current (CLM-001): none. The Evidence list ends with the Wall E4 line. The Relationships section has two bullets.
- Proposed, new last Evidence line: "- [[SRC-20261115-009 LLM Wiki, Karpathy|LLM Wiki (karpathy, GitHub gist, 2026-04-04)]] · E11 · § Indexing and logging · qualifies · An `index.md` catalog that the LLM reads first works at about 100 sources without embedding-based RAG. No measurement. His index is a page that the LLM keeps, not a derived index."
- Proposed, new last Relationships bullet: "- The Karpathy gist (SRC-20261115-009) starts from an LLM-kept `index.md`, not from plain-text search. It says an index file is enough at about 100 sources without embeddings (E11) and names qmd (local search with BM25 and vector search) as an optional tool (E13). This partly agrees that heavy indexes are not needed at moderate scale. It differs on the starting point. It gives no measurement, so `confidence` (low) and `evidence-strength` (weak) stay the same."
- Evidence: [[SRC-20261115-009 LLM Wiki, Karpathy|Karpathy]] · E11, E13
- Reason: A7. The claim text does not change. The evidence is indirect and has the same weakness as the first source. The Brief gives no information on whether the two sources are independent.

### X5

- Current (MOC-002, Disputes and gaps, first bullet, last sentence): "The credit to Karpathy is secondhand."
- Proposed: "A primary text exists (SRC-20261115-009, the Karpathy gist). It is one proposal with no data, so it does not close the gap on evidence."
- Also proposed, new Evidence for and against line (after the Okhlopkov line): "- Describes: [[SRC-20261115-009 LLM Wiki, Karpathy|LLM Wiki (karpathy, GitHub gist, 2026-04-04)]]. A pattern description, `source-quality: medium`: three layers, three operations, `index.md`, `log.md`. It is a proposal with no test and no data. The Brief gives no information on errors, drift, or review of the LLM's edits. The Brief did not read the comments on the gist."
- Evidence: [[SRC-20261115-009 LLM Wiki, Karpathy|Karpathy]] · E2, E8, E9 · Brief §10 and §11
- Reason: A2, A3, A4. Keeps the MOC consistent with X1.

## 3. Impact

Direct:
- CON-003 loses the "secondhand" label for the term. The creator's report and a primary text now sit side by side. The definition does not change.
- CON-004 records two differences from the primary text (answers filed back; one source at a time versus nightly batch). No step changes.
- CLM-001 gets one indirect evidence line. Its `confidence` and `evidence-strength` stay `low` and `weak`.
- MOC-002 lists the source and drops one sentence that is no longer accurate.

Possible:
- Justin may later want a step that files good answers back (A5). That needs its own source with a test. Not proposed here.
- Research Questions rows 1 and 2 stay open. This source adds no test. The Orchestrator may note the source in those rows.
- The Knowledge System in this vault uses a raw, wiki, and schema split. The Brain makes no statement on that design. A link between the pattern and the system is not a dependency.

## 4. Risks and limits

- The Source note says the quote check ran against the raw gist file. Locators (section and paragraph) come from a WebFetch account and are unchecked (Brief §8, §12).
- The Orchestrator found the author name and the creation date (2026-04-04) on the gist page itself. The author line gives the GitHub user name; the full name is on the page. Locators are section headings from the fetch account.
- The Brief covers the gist body only. It did not read the comments (extraction completeness `partial`).
- The source is one person's pattern with no data. No row raises a rating because of it.
- If no action is taken: CON-003 and MOC-002 keep a statement that the Brain has no source from Karpathy. That statement is now wrong. The damage is small.

## 5. Priority

`low`. The change is small, local to four records, and has no urgency. It fixes one outdated statement and adds evidence and caveats. The risk of delay is one stale sentence.

## 6. Decision required

Approve, reject, or change each row. The rows can be decided one by one. X1 and X5 belong together for consistency (the credit statement). X2, X3, and X4 are independent of the others.

1. X1: replace the "secondhand credit" sentences in CON-003 with the primary-text wording?
2. X2 and X3: add the caveat bullets and Sources lines to CON-003 and CON-004?
3. X4: add the indirect evidence line and the relationship bullet to CLM-001 (no change to `confidence` or `evidence-strength`)?
4. X5: add the source to MOC-002 and replace the sentence in Disputes and gaps?

## 7. Decision record

## 8. Implementation record
