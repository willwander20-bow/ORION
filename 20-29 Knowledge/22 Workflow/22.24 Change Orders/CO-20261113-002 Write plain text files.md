---
id: CO-20261113-002
type: change-order
title: Write plain text files
status: open
created: 2026-11-13T11:50
updated: 2026-11-13T11:50
created-by: managing-editor
schema-version: "0.8"
assessment: "[[KAS-20261113-002 Write plain text files]]"
source: "[[SRC-20261113-003 Write plain text files]]"
brain-version: CO-20261113-001
change-types:
  - add-evidence
  - extend
  - create
  - relate
  - refine
  - qualify
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

A second source (Sivers, "Write plain text files", about 2022) supports the Brain claim that lasting notes belong in open files. This proposal adds it as evidence, but the evidence strength stays `weak`. The reason: the new source is also an opinion essay with no data, and the Brief does not show that its author is independent of the first source. The proposal also adds one weaker reason to the claim (no dependency on one app), adds convertibility to the Concept "File over app", and makes a first process record for working with plain-text notes. It then updates the MOC to match.

## 2. Proposed changes

| Label | Change type | Record | Current state | Proposed state | Evidence | Reason |
|---|---|---|---|---|---|---|
| X1 | add-evidence | [[CLM-20261113-001 Lasting notes belong in open files]] | Evidence: three lines, all from BRF-20261113-001 (E1, E2, E6). `confidence: medium`. `evidence-strength: weak`. Disputes and caveats: "One opinion source. The author leads Obsidian, so the principle supports his product." and "The source gives no data. Evidence strength is `weak` until a second, independent source supports it." | **Add to Evidence:** (1) `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E26 · § CONCLUSION · supports · the author's summary of reasons for plain text.` (2) `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E4 · § Write plain text files (opening section, before § PORTABLE) · supports · the author's own practice: plain text only.` (3) `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E5 · § PORTABLE · supports · files kept across operating systems since 1990 (self-report, not checked).` **Fields:** `confidence: medium` (no change). `evidence-strength: weak` (no change). **Replace the first two caveat lines with:** "Two opinion sources. Ango leads Obsidian, so the principle supports his product. The Brief on Sivers reports no commercial interest in a note app, but it does not show that the two authors are independent." / "Neither source gives data. Evidence strength stays `weak` until a source with data supports it, for example from digital preservation work." / "Scope: Sivers is broader and more absolute. He keeps almost everything important in plain text only. This claim stays limited to notes meant to last." The ORION caveat line does not change. | [[BRF-20261113-003 Write plain text files]] · E26, E4, E5 | A1. Same normative claim from a different author. Opinion only (Brief §10, Objectivity 2), so it adds a second voice, not stronger evidence. Scope difference, not a contradiction. |
| X2 | extend | [[CLM-20261113-001 Lasting notes belong in open files]] | Claim: "Notes meant to last should be stored as files that the owner controls, in open, readable formats such as plain text. Reason: apps become obsolete, but files can outlast them." | Claim: "Notes meant to last should be stored as files that the owner controls, in open, readable formats such as plain text. Reason: apps become obsolete, but files can outlast them. A second reason, with weaker support: a file in an open format does not depend on one app, so the owner can still work when that app is not available." **Add to Evidence:** `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E14, E15 · § NO DEPENDENCIES · supports · no dependency on one app; reasoning and opinion only.` | [[BRF-20261113-003 Write plain text files]] · E14, E15 | A3 (C9). A present-day reason that the claim does not have. E14 is reasoning only. E15 is opinion. The offline reason (C8) is not included (refer to §4). |
| X3 | add-evidence | [[CON-20261113-001 File over app]] | Sources: `[[BRF-20261113-001 File over app\|File over app (Ango, 2023)]] · E1` only. | **Add to Sources:** `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E8, E9, E11 · § UN-COMMERCIAL`. Definition and Explanation do not change in this row. | [[BRF-20261113-003 Write plain text files]] · E8, E9, E11 | A2 (C6, C7). The same risk as "Apps change, close, or lose support", with one way it happens: the company fails. Reasoning and prediction only. No company is named. |
| X4 | extend | [[CON-20261113-001 File over app]] | Explanation: "Apps change, close, or lose support. A file in an open format, such as plain text, stays readable with many tools. …" The Brain does not define "plain text". | **Add to Explanation, after the second sentence:** "A second source says that plain text can be converted into other formats, and that many standard formats (HTML, Markdown, JSON, LaTeX) are themselves plain text. So in that source, "plain text" includes these formats. The source gives no formal definition and no limits for conversion." **Add to Sources:** `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E16, E17 · § EASIEST TO CONVERT`. | [[BRF-20261113-003 Write plain text files]] · E16, E17 | A4 (C10). E16 is an absolute claim. E17 shows that the formats are text-based, not that each conversion is easy. There is not enough for a new Concept. |
| X5 | create | new: Work with plain-text notes | none | Concept, `kind: process`, `status: accepted`, `related: ["[[CON-20261113-001 File over app]]"]`, `aliases: [Plain-text note methods]`. **Definition:** "Methods to organize and extend notes that are kept as plain text files." **Steps** (independent; use the ones that you need): 1. "Use folders for hierarchy. Keep text files in the same folder as related images and audio." 2. "Put a few metadata lines at the top of each file, for example a date and tags. Read them with a small script, for example in Ruby, Python, or JavaScript." 3. "Make drawings or mind maps in separate graphics files, for example SVG. Keep them next to the text files. Keep the text as plain text." **Related:** "[[CON-20261113-001 File over app\|File over app]]: these methods help keep work in plain files." **Sources:** `[[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]] · E19, E20, E21, E22, E23, E24`. **Caveats:** "One source. Advice only, with no tests." / "Step 2 needs basic programming skill. The locator of E19 has `medium` confidence." / "Step 3 does not say how to link a graphic to its text." | [[BRF-20261113-003 Write plain text files]] · E19, E20, E21, E22, E23, E24 | A5 (C12, C13, C14). The Brain has no process record. The MOC section "Processes and methods" is empty. |
| X6 | relate | [[CON-20261113-001 File over app]] | `related: []`. No link to a process. | `related: ["[[<X5 file name>]]"]`. **Add a body line under "Related claims":** "[[<X5 file name>\|Work with plain-text notes]]: methods to keep work in plain files." | [[BRF-20261113-003 Write plain text files]] · E20, E23 | A5. Two-way link with X5. It does not mean that the Concept depends on the process. |
| X7 | relate | [[MOC-20261113-001 Note durability]] | Processes and methods: `-` (empty). | Processes and methods: `- [[<X5 file name>\|Work with plain-text notes]] (advice from one source, no tests)` | [[BRF-20261113-003 Write plain text files]] · E19 to E24 | A5. This is the MOC row for the new record X5. |
| X8 | refine | [[MOC-20261113-001 Note durability]] | Important claims: "… (evidence `weak`, one source)". Evidence for: Ango only. Disputes and gaps: "Only one source. Look for an independent source, for example from digital preservation work." | Important claims: "[[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] (evidence `weak`, two opinion sources)". **Add to "Evidence for and against":** "- For: [[BRF-20261113-003 Write plain text files\|Write plain text files (Sivers, about 2022)]]. Opinion essay." Disputes and gaps: "Two opinion sources, no data. Their independence is not shown. Look for a source with data, for example from digital preservation work." | [[BRF-20261113-003 Write plain text files]] · E26 | A1. This keeps the MOC the same as X1. |
| X9 | qualify | [[MOC-20261113-001 Note durability]] | Open question: "Does plain text stay readable on future computers as well as it has since the 1960s? (Brief C4.)" | "Does plain text stay readable on future computers as well as it has since the 1960s? Conditions to check: character encoding and storage media. (BRF-20261113-001 C4. BRF-20261113-003 C4 and C15 predict yes, with no evidence. Neither source discusses encoding.)" | [[BRF-20261113-003 Write plain text files]] · E6, E25 | A6. The source does not close the question. It names a condition (encoding) that the question does not have. |

`<X5 file name>` means the file name that the Orchestrator gives X5 (`CON-… Work with plain-text notes`).

## 3. Impact

- Direct: CLM-20261113-001 gets four evidence lines, a second reason in its claim text, and new caveat text. Its `confidence` and `evidence-strength` do not change.
- Direct: CON-20261113-001 gets two Sources lines, one Explanation passage on convertibility, and a link to the new process.
- Direct: one new Concept (`kind: process`). It is the first process record in the Brain.
- Direct: MOC-20261113-001 changes in four sections: claims, processes, evidence, gaps and questions.
- Direct: each changed record gets this Change Order in `change-orders` and a new `last-reviewed` date. The Brain version becomes this Change Order's ID.
- Possible: the new process becomes a base for ORION's own note practice. The Brain does not show a dependency, so this is not proposed here.
- Possible: a later source on character encoding or digital preservation can close or answer the MOC question (X9), or raise `evidence-strength` for the claim.

## 4. Risks and limits

- Both sources are opinion essays. X1 does not raise `evidence-strength`, but the claim now has "two sources", and a reader can take that as stronger proof than it is. The caveat text in X1 and X8 says this directly.
- X1 changes the condition in the caveat. The old text says "`weak` until a second, independent source supports it". The new text says "until a source with data supports it". The reason: the second source is here, but it gives no data and its independence is not shown. If Justin prefers the old condition, he must decide if Sivers counts as independent. The Brief gives no information on this.
- X2 adds a reason with weak support (E14 reasoning, E15 opinion). It makes the claim text longer. Justin can reject X2 and keep the other rows.
- The offline reason (A3, C8) is not proposed: E13 is `indirect` and does not separate plain text from other formats.
- X5 is advice from one person, with no tests. Its status `accepted` means "approved in the Brain", not "proven". The caveats say this.
- X4 uses the Brief's description of how Sivers uses "plain text". The source gives no formal definition.
- Risk if no action: the Brain keeps a caveat that says "one source" when two exist, and the MOC process section stays empty. The risk is small, because no record depends on these values now.

## 5. Priority

`low`. The impact is small: three existing records and one new record, all on one topic. Nothing is urgent. No record depends on the changed values, and a delay does not make the Brain wrong. It only stays less complete.

## 6. Decision required

You can decide each row on its own. If you approve X5, also approve X6 and X7, or the new process has no link from the Concept and the MOC.

1. X1: add Sivers as evidence. Keep `evidence-strength: weak` and `confidence: medium`. Replace the caveat condition with "until a source with data supports it". Approve, change, or reject?
2. X2: add the app-dependency reason to the claim text. Approve or reject?
3. X3 and X4: add the new Sources lines and the convertibility text to "File over app". Approve, change, or reject?
4. X5, X6, X7: create the process "Work with plain-text notes" and link it. Approve, change, or reject?
5. X8 and X9: update the MOC claims, evidence, gaps, and the open question. Approve, change, or reject?

For each row, the options are `approved`, `approved-with-changes`, `rejected`, and `deferred`.

## 7. Decision record

## 8. Implementation record
