---
id: CO-20261113-005
type: change-order
title: NARA file format tables
status: applied
created: 2026-11-13T12:12
updated: 2026-11-13T12:13
created-by: managing-editor
schema-version: "0.8"
assessment: "[[KAS-20261113-003 NARA file format tables]]"
source: "[[SRC-20261113-002 NARA file format tables]]"
brain-version: CO-20261113-002
change-types:
  - add-evidence
  - qualify
  - refine
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[MOC-20261113-001 Note durability]]"
priority: low
decision: approved
decided: 2026-11-13T12:13
decision-note: "Approve all rows."
applied: 2026-11-13T12:13
brain-version-after: CO-20261113-005
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->
<!-- Replaces CO-20261113-003 (withdrawn: stale Brain version, test M4). -->

## 1. Summary

Add the NARA file format tables as a third source for the claim "Lasting notes belong in open files". It is the first institutional source, and it is independent of Obsidian. NARA prefers plain text (ASCII, UTF-8, UTF-16) for textual records and lists both Word formats as acceptable only. This points the same way as the claim. But NARA gives no reasons and no data, and its scope is federal records, so `confidence` and `evidence-strength` do not change. The change also adds one condition to the claim (the encoding of plain text is known) and updates the MOC: the source count, the gap text, and the encoding part of the open question.

## 2. Proposed changes

| Label | Change type | Record | Current state | Proposed state | Evidence | Reason |
|---|---|---|---|---|---|---|
| X1 | add-evidence | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | Claim text: two reasons (apps become obsolete; no dependency on one app). `confidence: medium`. `evidence-strength: weak`. Evidence: 7 lines, from BRF-20261113-001 (E1, E2, E6) and BRF-20261113-003 (E26, E4, E5, E14 and E15). Disputes and caveats: 4 lines. (1) "Two opinion sources. Ango leads Obsidian, ... does not show that the two authors are independent." (2) "Neither source gives data. Evidence strength stays `weak` until a source with data supports it, for example from digital preservation work." (3) Sivers scope. (4) ORION. | Claim text: no change. `confidence: medium` (no change). `evidence-strength: weak` (no change). **Add to Evidence, after the last line:** (a) `[[BRF-20261113-002 NARA file format tables\|NARA file format tables (reviewed 2026)]] · E2 · § Born-Digital Textual Data, Preferred Formats table, rows ASCII Text and Unicode Text · supports (indirect) · NARA prefers plain text for textual records.` (b) `[[BRF-20261113-002 NARA file format tables\|NARA file format tables (reviewed 2026)]] · E6 · § Born-Digital Textual Data, Acceptable Formats table, row Microsoft Word (DOCX) Office Open XML · supports (indirect) · DOCX is acceptable only, not preferred.` (c) `[[BRF-20261113-002 NARA file format tables\|NARA file format tables (reviewed 2026)]] · E7 · § Born-Digital Textual Data, Acceptable Formats table, row DOC · supports (indirect) · DOC is acceptable only, not preferred.` **Disputes and caveats:** keep line (1) as it is. Add after line (1): "- One institutional source: NARA (BRF-20261113-002). It is independent of Obsidian, but its support is indirect. It ranks plain text above both Word formats for the transfer of federal records. It gives no reasons, so it does not support either reason in this claim. Its scope is federal records, not personal notes. The part of the page that the Brief read does not define 'preferred' and 'acceptable'." / "- NARA also prefers ODT and PDF/A-1 and PDF/A-2, and lists general PDF 1.0–1.7 as acceptable only. NARA does not call these formats open. Openness alone possibly does not explain its ranking." / "- Currency: the NARA page was last reviewed on 2026-03-11, but its DOCX row names Word 2007–2010 only. The lists can be older than the current versions of the formats. A format that is not listed is not shown to be rejected." Replace line (2) with: "- No source gives data. NARA is from digital preservation work, but it gives a list with no reasons. Evidence strength stays `weak` until a source with data or reasons supports it." Keep lines (3) and (4) as they are. Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-002 NARA file format tables]] · E2, E6, E7 (support); E3, E4, E5 (caveat) | A1: independent, institutional support for the direction of the claim, with these limits: scope, no reasons, tiers not defined. Caveat text from A3 (ODT, PDF/A), A4 (PDF against PDF/A), A7 (currency). |
| X2 | qualify | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | **Context and conditions:** "Applies to personal knowledge that must stay usable for years or decades. It does not say that every tool must use plain text." No condition on encoding. | Claim text: no change. **Add this paragraph to Context and conditions, after the current text:** "Condition for plain text: the character encoding is known. NARA requires agencies to identify the encoding of each text file, and it prefers ASCII 7-bit, UTF-8, and UTF-16. This rule is for the transfer of federal records. Its use for personal notes is an extension. NARA does not say why or how to record the encoding." **Add to Evidence:** `[[BRF-20261113-002 NARA file format tables\|NARA file format tables (reviewed 2026)]] · E1 · § Born-Digital Textual Data (prose before the tables) · supports · encoding rule for plain text.` | [[BRF-20261113-002 NARA file format tables]] · E1, E2 | A2: the claim says "plain text" but names no encoding. NARA names the encodings and requires that the encoding is identified (direct, normative). |
| X3 | add-evidence | [[MOC-20261113-001 Note durability\|Note durability]] | **Important claims:** "... (evidence `weak`, two opinion sources)". **Evidence for and against:** For: Ango (2023). For: Sivers (about 2022). "Against: none yet." **Disputes and gaps:** "Two opinion sources, no data. Their independence is not shown. Look for a source with data, for example from digital preservation work." | **Important claims:** change the suffix to "(evidence `weak`, two opinion sources and one institutional source with indirect support)". **Evidence for and against:** add a line after the Sivers line: "- For (indirect): [[BRF-20261113-002 NARA file format tables\|NARA file format tables (reviewed 2026)]]. Transfer guidance for federal records. It ranks plain text above Word formats. It gives no reasons. The lists can be older than the current format versions (page reviewed 2026-03-11; the DOCX row names Word 2007–2010 only)." Keep "- Against: none yet." **Disputes and gaps:** replace the line with: "- Two opinion sources, no data. Their independence is not shown. One institutional source (NARA) supports the direction of the claim, but not its reasons, and it gives no data. Look for a source with data or reasons on how long file formats stay readable." Frontmatter: add this Change Order to `change-orders`. Set `last-reviewed` and `updated` to the apply date. | [[BRF-20261113-002 NARA file format tables]] · E2, E6 | A1 (the MOC gap "a source ... from digital preservation work" is partly filled, but with no data). A7 (date caveat for the MOC evidence list). This keeps the MOC the same as X1. |
| X4 | refine | [[MOC-20261113-001 Note durability\|Note durability]] | **Open research questions**, item 2: "Does plain text stay readable on future computers as well as it has since the 1960s? Conditions to check: character encoding and storage media. (BRF-20261113-001 C4. BRF-20261113-003 C4 and C15 predict yes, with no evidence. Neither source discusses encoding.)" | "Does plain text stay readable on future computers as well as it has since the 1960s? Conditions to check: character encoding and storage media. (BRF-20261113-001 C4. BRF-20261113-003 C4 and C15 predict yes, with no evidence. Neither of these two sources discusses encoding. BRF-20261113-002 C1 and C2: NARA requires that the encoding of each text file is identified, and it prefers ASCII 7-bit, UTF-8, and UTF-16. It gives no evidence on future readability, so the question stays open.)" Item 1: no change. | [[BRF-20261113-002 NARA file format tables]] · E1, E2 | A6: NARA's preference agrees with the question but does not answer it. A2: NARA speaks to the encoding condition that the question names. With three sources in the MOC, "Neither source" is no longer clear. |

## 3. Impact

- Direct: two Brain records change, CLM-20261113-001 and MOC-20261113-001. No new record. No status change.
- Direct: the claim text, `confidence`, and `evidence-strength` do not change. The claim gets 4 evidence lines, 3 new caveat lines, 1 replaced caveat line, and 1 new paragraph on encoding in "Context and conditions".
- Direct: the MOC shows the third source and a new gap text, and its open question records what NARA says about encoding.
- Direct: after the change is applied, the Brain version changes from CO-20261113-002 to the ID of this Change Order.
- CON-20261113-001 (File over app) and CON-20261113-002 (Work with plain-text notes) do not change.
- Possible: ORION's own Markdown files can follow the encoding condition (for example UTF-8). This Change Order proposes no rule for ORION.
- Possible: a later source with data on format durability can fill the gap in X3 or answer the question in X4.

## 4. Risks and limits

- The support is indirect. NARA's ranking is direct and authoritative, but the link from the ranking to "lasting notes belong in open files" is an inference (Assessment A1). NARA does not support either reason in the claim. Do not read X1 as proof of the claim's reasons.
- "Three sources" can read as stronger proof than it is. X1 and X3 say directly that none of the sources gives data.
- Scope: the NARA rules are for federal record transfer. X2 states the encoding condition as an extension for personal notes.
- The Brief covers one section of the page only (`extraction-completeness: partial`). The page parts that define "preferred" and "acceptable" were not analyzed.
- Date: some version ranges look old (DOCX 2007–2010). A format that is not in the list is not shown to be rejected.
- Not proposed: A3 does not change the claim text. ODT and PDF/A are only a caveat, because NARA does not call them "open". The NARA definition of plain text (A5) is not added. The Assessment did not advance it. Note: since CO-20261113-002, the Concept "File over app" says that, in Sivers's view, "plain text" includes Markdown and HTML. NARA defines plain text as text with no styling information. The Brief does not say how NARA treats markup syntax, so the two descriptions are not compared here. Justin can ask for this as a later change.
- X2 uses `qualify` and keeps the claim sentence the same. The Assessment typed A2 as `refines`. Refer to §6 for the other option.
- Overlap: CO-20261113-004 is `open`, was reviewed at CO-20261113-001, and changes the same records. Its X1 puts a paragraph "after the CO-20261113-003 X2 paragraph". Its X4 replaces "Against: none yet." and adds a line to "Disputes and gaps". If both are approved, the Orchestrator must place the CO-004 text after X2 and X3 of this Change Order.
- Risk if no action: the claim and the MOC keep the caveat "until a source ... from digital preservation work", but an institutional source has been assessed. The encoding condition stays out of the Brain, and the MOC question keeps saying that no source discusses encoding. The risk is low, because no other record depends on these values.

## 5. Priority

`low`. Impact: two records get better evidence notes, one condition, and a more exact open question. The claim sentence and the ratings do not change. Urgency: none. Scope: one claim and one MOC on one topic. Risk of delay: low. The Brain stays less complete, but it does not become wrong.

## 6. Decision required

You can decide each row on its own. X3 follows X1. If you reject X1, reject X3 too.

1. X1: add the NARA evidence and the new caveats to the claim. Keep `confidence: medium` and `evidence-strength: weak`. Approve, change, or reject?
2. X2: add the encoding condition to "Context and conditions", with the claim text unchanged. Approve, change, or reject? Other option: put the condition in the claim sentence as a `refine`, for example "... in open, readable formats such as plain text with a known encoding."
3. X3: update the MOC to show the third source and the new gap text. Approve, change, or reject?
4. X4: add what NARA says about encoding to the open question. The question stays open. Approve, change, or reject?

For each row, the options are `approved`, `approved-with-changes`, `rejected`, and `deferred`.

## 7. Decision record

Justin, 2026-11-13, in the Orchestrator session (`20-29 Knowledge`). The Orchestrator copied his words exactly: "Approve all rows".

## 8. Implementation record

- Version check: `brain-version` `CO-20261113-002` matched the current version (newest `applied` in `22.24`: CO-20261113-002).
- Files changed:
  - X1, X2: `21 Brain\CLM-20261113-001 Lasting notes belong in open files.md`
  - X3, X4: `21 Brain\MOC-20261113-001 Note durability.md`
- Brain version is now `CO-20261113-005`.
