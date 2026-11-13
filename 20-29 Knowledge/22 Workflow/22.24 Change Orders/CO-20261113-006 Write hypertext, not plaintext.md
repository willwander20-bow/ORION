---
id: CO-20261113-006
type: change-order
title: Write hypertext, not plaintext
status: applied
created: 2026-11-13T12:18
updated: 2026-11-13T12:18
created-by: managing-editor
schema-version: "0.8"
assessment: "[[KAS-20261113-005 Write hypertext, not plaintext]]"
source: "[[SRC-20261113-006 Write hypertext, not plaintext]]"
brain-version: CO-20261113-005
change-types:
  - qualify
  - refine
  - add-evidence
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[CON-20261113-001 File over app]]"
  - "[[CON-20261113-002 Work with plain-text notes]]"
  - "[[MOC-20261113-001 Note durability]]"
priority: low
decision: approved
decided: 2026-11-13T12:18
decision-note: "Approve all rows."
applied: 2026-11-13T12:18
brain-version-after: CO-20261113-006
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->
<!-- Replaces CO-20261113-004 (withdrawn: stale Brain version). -->

## 1. Summary

A fourth source (Bologov, "Write hypertext, not plaintext") agrees that plain-text storage lasts. But it says that storage alone is not enough when a note has links and metadata, and that Markdown works differently on different platforms. This proposal adds these points as conditions on the claim "Lasting notes belong in open files". It adds a two-layer view of "plain text" to the Concept "File over app", a caveat on the metadata step of "Work with plain-text notes", and a "Qualifies" line in the MOC. The source is a low-quality opinion essay, so the claim sentence, `confidence`, and `evidence-strength` do not change.

## 2. Proposed changes

| Label | Change type | Record | Current state | Proposed state | Evidence | Reason |
|---|---|---|---|---|---|---|
| X1 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Claim: "Notes meant to last should be stored as files that the owner controls, in open, readable formats such as plain text. Reason: apps become obsolete, but files can outlast them. A second reason, with weaker support: …" **Context and conditions:** two paragraphs. (1) Scope: "Applies to personal knowledge that must stay usable for years or decades. …" (2) "Condition for plain text: the character encoding is known. …" (from CO-20261113-005). No condition on links or metadata. Evidence: 11 lines (BRF-20261113-001, -003, -002). Disputes and caveats: 7 lines. The last line is "ORION applies this claim: root `CLAUDE.md` §4.4 and area rule 12 ("keep Markdown and YAML portable")." `confidence: medium`. `evidence-strength: weak`. | Claim text: no change. `confidence: medium` (no change). `evidence-strength: weak` (no change). **Add this paragraph at the end of Context and conditions, after the encoding paragraph:** "Condition for notes with links and metadata: plain-text storage possibly does not keep such a note fully usable on its own. One source agrees that plain text is necessary as the storage type. But it argues that when metadata, links, lists, and quotations are added, the file becomes non-portable, non-standard rich text. In that view, the format inside the file matters as well as the storage. The source is an opinion essay with no data." **Add to Evidence, after the last line:** (a) `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E2, E3 · § All You Need is Plaintext · qualifies · metadata and links make a plain-text file non-standard rich text; argument only.` (b) `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E7 · § The Plaintext is a Lie · supports · plain text as the storage type is necessary.` **Add to Disputes and caveats, before the ORION line:** "- One opinion source (Bologov, BRF-20261113-005, `source-quality: low`) qualifies the conditions of this claim. It does not contradict it. It gives no data. ORION applies this claim through Markdown files with YAML metadata and links, so ORION notes are the kind of note that the qualification is about. No source tests this." Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E2, E3, E7 | A2. The difference is in the conditions. It is not a contradiction, because both statements can be true together. E2 is the author's argument with no data. E3 is a conclusion. So this row adds a condition and does not change `confidence` or `evidence-strength`. |
| X2 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | The claim names "plain text" as an example of an open, readable format. It says nothing about Markdown dialects. The ORION caveat names "Markdown and YAML". | Claim text: no change. **Add this paragraph at the end of Context and conditions, after the X1 paragraph:** "Limit on 'readable': an open format can still have dialects. One source calls Markdown the de facto standard for notes, blogs, and docs, but says that it has many platform-specific behaviors. So a Markdown note possibly does not read the same in each tool. The source gives no list of the differences." **Add to Evidence, after X1 (b):** `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E8, E9 · § Screw .TXT, All My Homies Use Markdown · qualifies · Markdown has platform-specific behaviors; informal, no list.` `confidence` and `evidence-strength`: no change. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E8, E9 | A3. A difference in definition: "open" does not mean "the same in each tool". E9 is informal, and the Brief extracted no list of the differences (E9 limits). E8 "de facto standard" is the author's judgment. |
| X3 | refine | [[CON-20261113-001 File over app\|File over app]] | Definition: "A principle for digital work: …" Explanation: "Apps change, close, or lose support. A file in an open format, such as plain text, stays readable with many tools. A second source says that plain text can be converted into other formats, and that many standard formats (HTML, Markdown, JSON, LaTeX) are themselves plain text. So in that source, "plain text" includes these formats. The source gives no formal definition and no limits for conversion. The principle also asks toolmakers to give users ownership of their data. Steph Ango, the CEO of Obsidian, named it in 2023." Sources: 3 lines (BRF-20261113-001 E1; BRF-20261113-003 E8, E9, E11; BRF-20261113-003 E16, E17). The two layers of "plain text" are not separated. | Definition: no change. `related`: no change. **Add to Explanation, after "… no limits for conversion." and before "The principle also asks toolmakers …":** "Another source separates two layers of 'plain text': the storage type (text stored as a `text/*` type) and the subtype (the markup or display format inside it, for example Markdown, Org, or HTML). It says that Sivers and Nesbit conflate the two layers. The author predicts that the storage type lasts, and that a subtype lasts only as long as the software or people that process it. This is a prediction with no data. In this view, Markdown and HTML are plain text at the storage layer only. A file can be open at the storage layer and still depend on tools at the subtype layer." **Add to Sources:** `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E4, E5, E6 · § The Plaintext is a Lie`. Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E4, E5, E6 (layer examples: Brief §6) | A1. The model makes "open format" and the Sivers passage on "plain text" more exact. The meaning of the principle does not change. It is not a new Concept, because there is one low-quality source, and E6 is a prediction with no data (E6 limits). E5 is the author's view of other writers. Sivers does not respond here (E5 limits). Refer to §6 for the other option. |
| X4 | qualify | [[CON-20261113-002 Work with plain-text notes\|Work with plain-text notes]] | Step 2: "Put a few metadata lines at the top of each file, for example a date and tags. Read them with a small script, …" Caveats (under Explanation): "One source. Advice only, with no tests." / "Step 2 needs basic programming skill. The locator of E19 has `medium` confidence." / "Step 3 does not say how to link a graphic to its text." Sources: BRF-20261113-003 only. | Steps: no change. **Add a fourth caveat line:** "- Step 2: another source (Bologov, opinion, low source quality) argues that metadata lines of this kind make a plain-text file non-portable, non-standard rich text. Its example is Sivers's own date, tags, and title headers. Argument only, no data." **Add to Sources:** `[[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E2 · § All You Need is Plaintext · qualifies step 2`. Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E2 | A2. E2 names the metadata headers that Sivers uses, which are the source of Step 2. This Concept did not exist when the Assessment was made (Brain version CO-20261113-001), so A2 names only the claim. The qualification applies to this step directly. E2 limits: argument only, no data on how often this happens. |
| X5 | add-evidence | [[MOC-20261113-001 Note durability\|Note durability]] | **Important claims:** "… (evidence `weak`, two opinion sources and one institutional source with indirect support)". **Evidence for and against:** For: Ango. For: Sivers. For (indirect): NARA. "- Against: none yet." **Disputes and gaps:** one line, "Two opinion sources, no data. … Look for a source with data or reasons on how long file formats stay readable." | **Important claims:** change the suffix to "(evidence `weak`, two opinion sources and one institutional source with indirect support; one more opinion source qualifies its conditions)". **Evidence for and against:** add this line after the NARA line and before "Against": "- Qualifies: [[BRF-20261113-005 Write hypertext, not plaintext\|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]]. Opinion essay, low source quality. It agrees that plain-text storage lasts. It says that storage alone is not enough for notes with links and metadata, and that Markdown has platform-specific behaviors. It does not contradict the claim." Keep "- Against: none yet." **Disputes and gaps:** keep the current line. Add: "- No source tests if notes with links and metadata stay usable when only the file survives, or how much Markdown dialects differ between tools. No source compares Markdown with HTML over time." Key concepts, Processes and methods, Open research questions, Related MOCs: no change. Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-005 Write hypertext, not plaintext]] · E2, E9 (gap: Brief §10) | A2, A3. This keeps the MOC the same as X1 and X2. The gap text comes from the Brief §10 limits ("does not test HTML against Markdown or plain text over time"). |

## 3. Impact

- Direct: CLM-20261113-001 gets two new paragraphs in Context and conditions, three evidence lines, and one caveat line. The claim sentence, `status`, `confidence`, and `evidence-strength` do not change.
- Direct: CON-20261113-001 gets one Explanation passage on the two layers of plain text, next to the Sivers passage, and one Sources line. The Definition and `related` do not change.
- Direct: CON-20261113-002 gets one caveat line on Step 2 and one Sources line. The Steps do not change.
- Direct: MOC-20261113-001 shows the source as "Qualifies", gets a new claim suffix and one new gap line. "Against: none yet." stays.
- Direct: each changed record gets this Change Order in `change-orders`. After the change is applied, the Brain version becomes the ID of this Change Order.
- No new record. No status change. No typed link change.
- Possible: X1, X2, and X4 can be a reason to look again at ORION's Markdown, YAML, and link practice. This Change Order proposes no ORION rule, and the Brain does not show a dependency.
- Possible: a later source that compares Markdown and HTML over time can answer the new MOC gap, or can make X1 and X2 a stronger condition or a `challenge`.

## 4. Risks and limits

- Source quality is low (Brief §11): a personal blog, polemical, with no data. X1 to X4 record the author's argument as a condition or a caveat, not as a fact. Each proposed text names the source as an opinion.
- X3 puts two views next to each other: Sivers counts Markdown and HTML as plain text, and Bologov counts them as subtypes in plain-text storage. They do not conflict, but the Explanation gets longer. "Conflate" is Bologov's view of Sivers, not a finding of the Brain.
- X4 extends A2 to a record that the Assessment did not see. The link is direct (E2 names Sivers's metadata headers), but the Editor did not review it. Justin can reject X4 and keep the other rows.
- "Qualifies" (X5) is a new label in the MOC evidence list. If Justin prefers, "Against, in part" is the other option (refer to §6). That label can read as stronger than the evidence.
- Overlap: CO-20261113-004 is `open` and proposes almost the same changes at Brain version CO-20261113-001. Its placement notes refer to CO-20261113-003, which is withdrawn. If both are applied, the text is duplicated. This Change Order replaces CO-20261113-004.
- Not proposed: HTML as the recommended format (A5), academic referencing as a process (A6), stronger support from Sivers and Nesbit (A7), and Obsidian's end (A4). Reason: the Assessment did not advance them. They are judgments only, or second-hand.
- The Brief has a known paraphrase error (E18, C11). No row here uses E18.
- Risk if no action: the Brain stays silent on a source that partly disagrees, after it was assessed. The claim and the metadata step in CON-20261113-002 stay silent on the risk to ORION's own note setup (Markdown with metadata and links). The risk is low, because no record depends on these values.

## 5. Priority

`low`. Impact: conditions and caveats on one claim and two Concepts, and one MOC update. The claim sentence and the ratings do not change. Urgency: none. Scope: four records on one topic. Risk of delay: low. The Brain stays less complete, but it does not become wrong. Applicability to ORION is high (Assessment §4), but the source is too weak to make the change urgent.

## 6. Decision required

You can decide each row on its own. X5 follows X1 and X2. If you reject both X1 and X2, reject X5 too.

1. X1: add the condition that plain-text storage possibly is not enough for notes with links and metadata. The claim sentence and the ratings do not change. Approve, change, or reject? Other option: change the claim sentence (`refine`), for example "... in open, readable formats such as plain text, with a format inside the file that stays usable."
2. X2: add the limit on Markdown dialects. Approve, change, or reject?
3. X3: add the two-layer view of plain text to the Explanation of "File over app". Approve, change, or reject? Other option: make a new Concept for the two-layer model (`create`, with a MOC row). That is not recommended now, because there is one low-quality source.
4. X4: add the caveat on metadata lines to Step 2 of "Work with plain-text notes". Approve, change, or reject?
5. X5: add the source to the MOC as "Qualifies", keep "Against: none yet.", and add the new gap. Approve, change, or reject? Other option: replace "Against: none yet." with "Against, in part: …".

For each row, the options are `approved`, `approved-with-changes`, `rejected`, and `deferred`.

## 7. Decision record

Justin, 2026-11-13, in the Orchestrator session (`20-29 Knowledge`). The Orchestrator copied his words exactly: "Approve all rows".

## 8. Implementation record

- Version check: `brain-version` `CO-20261113-005` matched the current version (newest `applied` in `22.24`: CO-20261113-005).
- Files changed:
  - X1, X2: `21 Brain\CLM-20261113-001 Lasting notes belong in open files.md`
  - X3: `21 Brain\CON-20261113-001 File over app.md`
  - X4: `21 Brain\CON-20261113-002 Work with plain-text notes.md`
  - X5: `21 Brain\MOC-20261113-001 Note durability.md`
- Brain version is now `CO-20261113-006`.
- Times: the session clock ran behind some recorded times. Times are approximate to a few minutes.
