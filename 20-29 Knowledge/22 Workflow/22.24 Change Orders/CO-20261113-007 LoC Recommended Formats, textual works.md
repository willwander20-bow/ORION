---
id: CO-20261113-007
type: change-order
title: "LoC Recommended Formats, textual works"
status: applied
created: 2026-11-13T14:30
updated: 2026-11-13T14:55
created-by: managing-editor
schema-version: "0.9"
assessment: "[[KAS-20261113-006 LoC Recommended Formats, textual works]]"
source: "[[SRC-20261113-008 LoC Recommended Formats, textual works]]"
brain-version: CO-20261113-006
change-types:
  - add-evidence
  - qualify
  - refine
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[MOC-20261113-001 Note durability]]"
priority: low
decision: approved
decided: 2026-11-13T14:50
decision-note: Approve all rows
applied: 2026-11-13T14:55
brain-version-after: CO-20261113-007
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

A second institution, the Library of Congress (LoC), prefers nearly the same text encodings as NARA. This proposal adds LoC as a second institutional source for the encoding condition of the claim "Lasting notes belong in open files". LoC also ranks structured formats (XML with a schema, EPUB3, PDF/A, PDF/UA) above plain text, and it bans DRM or encryption that restricts access. So the proposal adds a caveat on the ranking and a new condition on access measures. LoC gives no reasons and no durability data, so the claim sentence, `confidence`, and `evidence-strength` do not change.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | add-evidence | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Add LoC as a second source for the encoding condition. Note that LoC also gives no data. |
| X2 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Add a caveat: LoC ranks plain text below structured formats. |
| X3 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Add a condition: no DRM or encryption that restricts access or use. |
| X4 | add-evidence | [[MOC-20261113-001 Note durability\|Note durability]] | Add LoC to "Evidence for and against". |
| X5 | refine | [[MOC-20261113-001 Note durability\|Note durability]] | Update the claim note, the encoding question, and the first gap to name two institutions. |

### X1

- Current state: Context and conditions, encoding paragraph: "Condition for plain text: the character encoding is known. NARA requires agencies to identify the encoding of each text file, and it prefers ASCII 7-bit, UTF-8, and UTF-16. This rule is for the transfer of federal records. Its use for personal notes is an extension. NARA does not say why or how to record the encoding." Evidence: 14 lines. The NARA E1 line ("encoding rule for plain text") comes just before the Bologov lines. Disputes and caveats, fifth line: "No source gives data. NARA is from digital preservation work, but it gives a list with no reasons. Evidence strength stays `weak` until a source with data or reasons supports it." `confidence: medium`. `evidence-strength: weak`.
- Proposed state:
  - Claim text: no change. `confidence: medium` (no change). `evidence-strength: weak` (no change).
  - Encoding paragraph: add these sentences at the end, after "NARA does not say why or how to record the encoding.": "The Library of Congress (LoC) prefers nearly the same set for digital textual works: UTF-8, UTF-16 (with BOM), and US-ASCII. This rule is for the works that LoC receives for its collection. Its use for personal notes is also an extension. LoC gives no reasons."
  - Evidence: add this line after the NARA E1 line and before the first Bologov line: `- [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]] · E8 · § ii. Textual Works - Digital, A. Technical Characteristics · supports (indirect) · encoding list for digital text, nearly the same as NARA's.`
  - Disputes and caveats, fifth line: replace it with "No source gives data. NARA is from digital preservation work, but it gives a list with no reasons. LoC (BRF-20261113-006) also gives preferences with no reasons and no durability data. Evidence strength stays `weak` until a source with data or reasons supports it."
  - Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E8 (direct, quote checked). Brief §10 and §11 for "no reasons, no durability data".
- Reason: A1 and A6. A second institution independently names the same encodings. The only difference is that LoC adds "with BOM" for UTF-16. The support is indirect: the scope is works that LoC receives, the page has no date, and LoC gives no reasons. So the support confirms the encoding list, not the reasons of the claim. Weak evidence of this kind does not raise `confidence` or `evidence-strength` (A6).

### X2

- Current state: Disputes and caveats, second line: "One institutional source: NARA (BRF-20261113-002). It is independent of Obsidian, but its support is indirect. It ranks plain text above both Word formats for the transfer of federal records. …" Third line: "NARA also prefers ODT and PDF/A-1 and PDF/A-2, and lists general PDF 1.0–1.7 as acceptable only. NARA does not call these formats open. Openness alone possibly does not explain its ranking." The claim does not say that institutions rank plain text differently.
- Proposed state:
  - Claim text: no change. `confidence: medium` (no change). `evidence-strength: weak` (no change).
  - Disputes and caveats, second line: change the first words "One institutional source: NARA (BRF-20261113-002)." to "First institutional source: NARA (BRF-20261113-002)." The rest of the line does not change.
  - Disputes and caveats: add this line after the third line ("NARA also prefers ODT …"): "- Second institutional source: the Library of Congress (LoC, BRF-20261113-006). It does not rank plain text first. For digital textual works, it prefers structured formats with a schema or a standard: XML-based markup with a DTD or schema, EPUB3, other book DTDs (TEI, DocBook), PDF/UA, PDF/A, and PDF of the highest quality. It lists plain text as acceptable only, under "Other formats", with RTF and proprietary word-processing formats. LoC gives no reasons, and not every LoC preference is a durability judgment. Its scope is the textual works that it receives for its collection, not personal notes. So NARA's rank for plain text is not a shared institutional view. LoC does not say that plain text fails to last. This is a difference in scope and conditions, not a contradiction."
  - Evidence: add this line after the X1 line: `- [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]] · E11, E12, E13 · § ii. Textual Works - Digital, B. Formats · qualifies · structured formats preferred; plain text acceptable only; no reasons.`
  - Frontmatter: covered by X1.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E11, E12 (summaries), E13 (quote checked). Brief §10 says that some preferences reflect collection value. The Brief marked the column placement of E11 to E13 as uncertain. The Orchestrator validation note in KAS-20261113-006 confirms the placement against the raw page: "Plain text" is a sub-item of "Other formats" in the "Acceptable" cell.
- Reason: A2. This is not `challenge`. The claim does not say that plain text is the best format, and LoC does not say that plain text fails to last (A2, Assessment §6). The difference is in scope and conditions. It weakens one reading of the institutional evidence, and it agrees with the existing caveat that "openness alone possibly does not explain its ranking". `confidence` stays `medium`: the claim sentence names plain text as an example of an open format, not as the only or best format. The Brief gives no information on whether LoC regards its preferred formats as open.

### X3

- Current state: Context and conditions has four paragraphs: scope, encoding, notes with links and metadata, and the limit on 'readable'. The claim says "files that the owner controls". No condition names DRM, encryption, or other measures that restrict access.
- Proposed state:
  - Claim text: no change. `confidence` and `evidence-strength`: no change.
  - Context and conditions: add this paragraph at the end, after the "Limit on 'readable'" paragraph: "Condition on access measures: the file contains no measures that restrict access or use. LoC states that digital textual files must contain no measures 'such as digital rights management [DRM] technologies or encryption' that restrict access or use. This rule is for the works that LoC receives. Its use for personal notes is an extension. LoC gives no reason."
  - Evidence: add this line after the X2 line: `- [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]] · E14 · § ii. Textual Works - Digital, F. Technological Measures · qualifies · no DRM or encryption that restricts access or use; no reason given; the end of the sentence comes from a tool summary.`
  - Frontmatter: covered by X1.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E14 (direct; the quoted words were checked; "restrict access or use" comes from a tool summary).
- Reason: A4. The Assessment calls this `extends` because it applies the LoC rule to personal notes. In the Brain, the change adds a condition to the claim, so the change type is `qualify` (§5.8). The evidence is direct for what LoC requires. It is not evidence that the condition applies to personal notes.

### X4

- Current state: "Evidence for and against" has: For: Ango. For: Sivers. For (indirect): NARA. Qualifies: Bologov. "- Against: none yet."
- Proposed state: add this line after the Bologov line and before "Against": "- Qualifies, and supports in part: [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]]. The preferences of the Library of Congress for the textual works that it receives. It prefers nearly the same encodings as NARA. It ranks structured formats (XML with a schema, EPUB3, PDF/A, PDF/UA) above plain text, which is acceptable only. It requires no DRM or encryption that restricts access. It gives no reasons and no durability data. It does not contradict the claim." Keep "- Against: none yet." Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E8, E11, E12, E13, E14 (no reasons: Brief §10).
- Reason: A1, A2, A4. This makes the MOC match X1 to X3.

### X5

- Current state:
  - Important claims, suffix: "(evidence `weak`, two opinion sources and one institutional source with indirect support; one more opinion source qualifies its conditions)".
  - Open research questions, second bullet, ends with: "… BRF-20261113-002 C1 and C2: NARA requires that the encoding of each text file is identified, and it prefers ASCII 7-bit, UTF-8, and UTF-16. It gives no evidence on future readability, so the question stays open.)"
  - Disputes and gaps, first bullet: "Two opinion sources, no data. Their independence is not shown. One institutional source (NARA) supports the direction of the claim, but not its reasons, and it gives no data. Look for a source with data or reasons on how long file formats stay readable."
- Proposed state:
  - Important claims, suffix: replace it with "(evidence `weak`, two opinion sources and one institutional source with indirect support; one more opinion source qualifies its conditions; a second institutional source supports the encoding condition and ranks plain text lower)".
  - Open research questions, second bullet: replace "It gives no evidence on future readability, so the question stays open.)" with "BRF-20261113-006 C6: LoC prefers UTF-8, UTF-16 (with BOM), and US-ASCII. Neither institution gives evidence on future readability, so the question stays open.)"
  - Disputes and gaps, first bullet: replace it with "Two opinion sources, no data. Their independence is not shown. Two institutional sources give format lists with no reasons and no data. NARA supports the direction of the claim, but not its reasons. LoC (BRF-20261113-006) supports the encoding condition, but ranks plain text below structured formats. The two institutions do not rank plain text the same way. Look for a source with data or reasons on how long file formats stay readable."
  - Second gap bullet, Topic summary, Key concepts, Processes and methods, Related MOCs: no change.
  - Frontmatter: covered by X4.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E8, E11, E12, E13 (no reasons or data: Brief §10, §11).
- Reason: A1, A2, A6. The gap "look for a source with data or reasons" stays open (A6). A5 does not close the second gap, so that bullet does not change.

## 3. Impact

- Direct: CLM-20261113-001 gets new sentences in its encoding paragraph, one new paragraph in Context and conditions (access measures), three evidence lines, one new caveat line, and small wording changes in two caveat lines. The claim sentence, `status`, `confidence`, and `evidence-strength` do not change.
- Direct: MOC-20261113-001 gets one evidence line, a new claim suffix, one more fact in the encoding question, and a new first gap bullet. "Against: none yet." stays.
- Direct: both records get this Change Order in `change-orders`. After this Change Order is applied, the Brain version is its ID.
- No new record. No status change. No typed link change. CON-20261113-001 and CON-20261113-002 do not change.
- Possible: X3 can be a reason to check whether ORION files use any access-restricting measures. This Change Order proposes no ORION rule, and the Brain does not show a dependency.
- Possible: X2 can make a later reader give less weight to plain text as the institutional first choice. A later source with reasons for format rankings can strengthen X2 or make it weaker.

## 4. Risks and limits

- LoC gives preferences with no reasons, no method, and no date (Brief §10, §11). Each proposed text says this. Source quality is high only as a primary source for what LoC prefers.
- X2 depends on the column placement of E11 to E13. The Brief marked it as uncertain. The Orchestrator confirmed it against the raw page (Assessment validation note), but this check is outside the Brief. The Brief also reported a list numbered 1 to 8. The check found 6 items. No row uses that number.
- X2 could be read as stronger than it is. LoC ranks plain text as acceptable, not rejected. The text says "not a contradiction" and "does not say that plain text fails to last".
- X3 applies a rule for a library collection to personal notes. An owner can choose encryption for privacy. The Brief gives no information on that case. The text calls the rule an extension.
- E14 is quoted only up to "encryption". The words "that restrict access or use" come from a tool summary. The evidence line says so.
- The scope is the textual works that LoC receives. The Brief does not show that the rules apply to personal notes. Each row calls the use for notes an extension.
- Not proposed: A3 (an interpretation by the Editor, marked weak), A5 (says nothing about metadata inside personal notes), and A7 (print and serials, out of scope).
- Risk if no action is taken: the Brain keeps NARA as its only institutional view, although a second institution ranks plain text differently. Readers could overrate the institutional support for plain text. The encoding condition also misses a second, independent source. The risk is low, because no record depends on these values.

## 5. Priority

`low`. Impact: one more source on an existing condition, and two caveats or conditions on one claim. The claim sentence and the ratings do not change. Urgency: none. Scope: two records on one topic. Risk of delay: low. The Brain stays less complete, but it does not become wrong.

## 6. Decision required

You can decide each row on its own. X4 and X5 follow X1 to X3. If you reject a CLM row, remove the matching part of X4 and X5.

1. X1: add LoC as a second source for the encoding condition, and note that LoC gives no data. The ratings do not change. Approve, change, or reject?
2. X2: add the caveat that LoC ranks plain text below structured formats, as a difference in scope and not a contradiction. `confidence` stays `medium`. Approve, change, or reject? Other option: lower `confidence` to `low`. That is not recommended, because the claim does not say that plain text is the best format.
3. X3: add the condition "no DRM or encryption that restricts access or use", as an extension to personal notes. Approve, change, or reject? Other option: record it only as an evidence line on "files that the owner controls" (`add-evidence`), with no new condition paragraph.
4. X4: add LoC to the MOC as "Qualifies, and supports in part". Approve, change, or reject?
5. X5: update the MOC claim note, the encoding question, and the first gap. Approve, change, or reject?

For each row, the options are `approved`, `approved-with-changes`, `rejected`, and `deferred`.

## 7. Decision record

Justin, 2026-11-13, in the Orchestrator session (`20-29 Knowledge`). The Orchestrator copied his words exactly: "Approve all rows".

## 8. Implementation record

- Version check: `brain-version` `CO-20261113-006` matched the current version (newest `applied` in `22.24`: CO-20261113-006).
- Files changed:
  - X1, X2, X3: `21 Brain\CLM-20261113-001 Lasting notes belong in open files.md`
  - X4, X5: `21 Brain\MOC-20261113-001 Note durability.md`
- Each row was applied with the exact text in §2. `confidence`, `evidence-strength`, and `status` of the claim did not change.
- Brain version is now `CO-20261113-007`.