---
id: CO-20261115-001
type: change-order
title: Brain maintenance fixes from KHR-20261113-001 and KHR-20261113-002
status: applied
created: 2026-11-15T17:38
updated: 2026-11-15T17:40
created-by: managing-editor
schema-version: "0.10"
assessment:
source:
brain-version: CO-20261113-008
change-types:
  - relate
  - refine
  - qualify
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[CON-20261113-001 File over app]]"
  - "[[CON-20261113-002 Work with plain-text notes]]"
  - "[[MOC-20261113-001 Note durability]]"
priority: normal
decision: approved
decided: 2026-11-15T17:39
decision-note: "Approve all"
applied: 2026-11-15T17:40
brain-version-after: CO-20261115-001
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

This Change Order fixes seven findings of [[KHR-20261113-001 Brain maintenance review]] (H1 to H7) and three findings of [[KHR-20261113-002 Impact review of CO-20261113-007]] (H1 to H3). It links the claim and the process Concept. It lowers the claim `confidence` to `low` and gives the reason. It replaces the unchecked LoC wording with LoC's own words. It adds one caveat to File over app, one caveat to the process, one Brief name to the MOC, and one gap to the MOC. Overlaps are one row each: KHR-002 H1 = KHR-001 H6 (X6). KHR-002 H3 = KHR-001 H1 and H7 (X1, X2, X3). No Research Questions row is proposed.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | relate | CLM-20261113-001 | Link CON-002 in `concepts` and in Relationships |
| X2 | relate | CON-20261113-002 | Link CLM-001 in "Related claims"; move the CON-001 line to "Related concepts" |
| X3 | refine | CON-20261113-001 | Move the CON-002 line from "Related claims" to "Related concepts" |
| X4 | qualify | CON-20261113-001 | Add a pointer to CLM-001 for the limits of the readability statement |
| X5 | qualify | CLM-20261113-001 | `confidence` medium to low; add the reason to the claim text |
| X6 | refine | CLM-20261113-001 | Replace the paraphrase with LoC's words; update the E14 evidence line |
| X7 | refine | CON-20261113-002 | Say that the steps come from one source |
| X8 | refine | MOC-20261113-001 | Name BRF-20261113-001 in the first open question |
| X9 | refine | MOC-20261113-001 | Add the privacy-encryption gap to "Disputes and gaps" |

### X1

- Current state: CLM-001 `concepts` lists only `"[[CON-20261113-001 File over app]]"`. The Relationships section has one line, for CON-001. CON-002 does not link the claim, and the claim does not link CON-002. Both cite BRF-20261113-005 E2.
- Proposed state:
  - In the frontmatter `concepts`, add a second entry: `"[[CON-20261113-002 Work with plain-text notes]]"`.
  - In "Relationships", add after the CON-001 line: "- Concept [[CON-20261113-002 Work with plain-text notes|work with plain-text notes]]: methods for notes kept as plain text. Both records cite BRF-20261113-005 E2, which qualifies step 2 of the process and the condition of this claim for notes with links and metadata. A link, not a dependency."
- Evidence: Brain record only.
- Reason: KHR-20261113-001 H1 and KHR-20261113-002 H3 (same change in both reports).

### X2

- Current state: CON-002 "Related claims" has one line: "- [[CON-20261113-001 File over app|File over app]]: these methods help keep work in plain files." That line links a Concept. No claim is linked.
- Proposed state:
  - Change "## Related claims" to contain only: "- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]]: the claim that these methods serve. Step 2 is qualified by a source that CLM-001 also cites for its conditions."
  - Add a new section "## Related concepts" after it, with the moved line: "- [[CON-20261113-001 File over app|File over app]]: these methods help keep work in plain files."
- Evidence: Brain record only.
- Reason: KHR-20261113-001 H1 and H7; KHR-20261113-002 H3.

### X3

- Current state: CON-001 "Related claims" lists CLM-001 and CON-002. CON-002 is a process Concept, not a claim.
- Proposed state:
  - "## Related claims" keeps only the CLM-001 line: "- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]]: applies the principle to notes."
  - Add a new section "## Related concepts" after it: "- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]]: methods to keep work in plain files."
- Evidence: Brain record only.
- Reason: KHR-20261113-001 H7.

### X4

- Current state: the CON-001 Explanation says, with no attribution: "A file in an open format, such as plain text, stays readable with many tools."
- Proposed state: add this sentence directly after that sentence: "This statement has no source of its own here. [[CLM-20261113-001 Lasting notes belong in open files]] gives the conditions (character encoding, Markdown dialects, access measures) and the evidence, which is `weak`."
- Evidence: Brain record only. The row adds no new fact from a Brief. It points to the claim.
- Reason: KHR-20261113-001 H2. The Managing Editor chose the pointer option because the Brain has no evidence row for this exact statement. Giving it a source would need a Brief check that the report did not do.

### X5

- Current state: CLM-001 `confidence: medium`, `evidence-strength: weak`. No text gives the reason for `medium`.
- Proposed state:
  - Frontmatter: `confidence: low`. `evidence-strength: weak` does not change.
  - In "## Claim", add this at the end of the paragraph: "Confidence is `low`. The direct support is opinion essays. The two institutional sources support the claim only in part and give no reasons. No source gives data. Evidence strength is `weak`."
- Evidence: Brain record only. The reason repeats text that is already in "Disputes and caveats".
- Reason: KHR-20261113-001 H3 and Justin's decision ("Approve, lower to low").

### X6

- Current state:
  - Context and conditions, the access-measures paragraph, has this sentence: "LoC states that digital textual files must contain no measures 'such as digital rights management [DRM] technologies or encryption' that restrict access or use."
  - The words "that restrict access or use" are not LoC's wording.
  - The E14 evidence line ends: "no DRM or encryption that restricts access or use; no reason given; the end of the sentence comes from a tool summary."
- Proposed state:
  - (a) In the paragraph, replace the sentence with: "LoC states that digital textual files must contain no measures 'such as digital rights management [DRM] technologies or encryption' 'that control access to or prevent use of the digital work'." The first quote is 9 words and the second is 11 words. Each is 15 words or fewer.
  - (b) In the E14 evidence line, replace the end "no DRM or encryption that restricts access or use; no reason given; the end of the sentence comes from a tool summary." with "no DRM or encryption that controls access to or prevents use of the digital work; no reason given; the Orchestrator checked the full sentence against the raw LoC page on 2026-11-15."
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E14 (the quote), with the Orchestrator's source check of 2026-11-15 for the words after the quote. The Brief itself does not contain these words.
- Reason: KHR-20261113-001 H6 and KHR-20261113-002 H1 (same change in both reports). Part (b) follows from (a). The old clause would be wrong after the check. Justin can approve (a) without (b).

### X7

- Current state: CON-002 Caveats start with "One source. Advice only, with no tests." The Sources section lists two Briefs. BRF-20261113-005 qualifies step 2.
- Proposed state: replace the first caveat with: "The steps come from one source (Sivers, BRF-20261113-003). Advice only, with no tests." The Step 2 caveat about Bologov stays as it is.
- Evidence: Brain record only (the CON-002 Sources section).
- Reason: KHR-20261113-001 H5.

### X8

- Current state: MOC-001 "Open research questions", first bullet: "- Do most digital artifacts sit in closed formats or behind logins? (Brief C3; not measured.)"
- Proposed state: "- Do most digital artifacts sit in closed formats or behind logins? (BRF-20261113-001 C3; not measured.)"
- Evidence: [[BRF-20261113-001 File over app]] · C3 and E3 (Brief claim and evidence rows; E3 says "most" is not measured).
- Reason: KHR-20261113-001 H4. The text matches BRF-001 C3. The other Briefs' C3 rows are different, as the report says.

### X9

- Current state: MOC-001 "Disputes and gaps" has two bullets. Neither covers access measures (DRM or encryption).
- Proposed state: add a third bullet at the end of the section: "- The LoC rule on access measures (BRF-20261113-006 E14) is for the works that LoC receives. An owner can choose encryption for privacy. The Brief gives no information on that case. No source in the Brain says whether the rule applies to personal notes. CLM-20261113-001 applies it to personal notes only as an extension."
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E14. The line on the privacy case is a gap, not a Brief fact. CO-20261113-007 §4 names it.
- Reason: KHR-20261113-002 H2, MOC part only. Justin did not approve a Research Questions row, so none is proposed.

## 3. Impact

Direct:
- CLM-001 changes in X1, X5 and X6. Its `confidence` falls to `low`. The claim sentence, the status and `evidence-strength` do not change.
- CON-001 changes in X3 and X4. CON-002 changes in X2 and X7. MOC-001 changes in X8 and X9.
- The CLM-001, CON-001 and CON-002 pages are linked in both directions.
- The MOC-001 "Important claims" line says "evidence `weak`" and does not state `confidence`. It stays correct.
- At apply, the Orchestrator adds this Change Order to `change-orders` of each of the four records.

Possible:
- A reader may give less weight to CLM-001 after X5. ORION applies this claim (root `CLAUDE.md` §4.4, area rule 12). Lower confidence could affect how people use it.
- The MOC-001 LoC evidence line says "requires no DRM or encryption that restricts access". This is also a paraphrase. It stays unchanged in this Change Order (see §6).

## 4. Risks and limits

- Source wording, X6: the Brief is validated and does not change. BRF-006 E14 Limits says "The tool summary says that the end of the sentence is about measures that restrict access or use." The checked page reads "that control access to or prevent use of the digital work". That Limits text now differs from the checked page in wording. The Brief also has C9 with a similar paraphrase. The Brain and the Brief will disagree on the wording until the Brief is revised. The meaning is the same. The Orchestrator's check is the only source for the new words. The Brief and the Brain do not hold them.
- X4 points to CLM-001 and does not give a source. The statement stays without direct support.
- X5 is a judgment by Justin. A `low` value makes the field agree with the `weak` evidence (Schema §5.9). No new source is the basis.
- X9 adds a gap and no fact. The Brief gives no information on the privacy case.
- If no action is taken: the claim keeps `medium` with no stated reason. The Brain keeps wording that it presents as LoC's words and is not. The process and the claim stay unlinked. The MOC keeps a reference that readers cannot follow, and it has no line on the privacy case.
- The Editor did not review these rows, because they come from health reports. The CON-003, CON-004 and MOC-002 records from CO-20261113-008 are not touched.

## 5. Priority

normal. The changes are wording, links and one field value. No claim is marked false. No wrong fact is in the Brain. The scope is four records. The risk of delay is low. X6 is the most useful row, because the Brain gives words to LoC that LoC did not write.

## 6. Decision required

Justin: do you approve Change Order A (X1 to X9) as written? The rows can be decided one by one. X6 has parts (a) and (b), and (a) can stand alone. X1, X2 and X3 belong together (they make the link between CLM-001 and CON-002 and fix the "Related claims" lists).

The Managing Editor found two more places with the same non-LoC wording, outside the approved findings: the MOC-001 LoC evidence line ("requires no DRM or encryption that restricts access"), and the CLM-001 lead sentence of the access-measures paragraph ("the file contains no measures that restrict access or use"). They are not in this Change Order. Decide whether to add them as rows.

## 7. Decision record

2026-11-15T17:39. Justin: "Approve all". Decision: `approved`. Rows X1 to X9, as written. The two extra places with the non-LoC wording (§6) are not part of this Change Order.

## 8. Implementation record

2026-11-15T17:40. The Orchestrator checked that `brain-version` (CO-20261113-008) matched the current Brain version before the change. Rows X1 to X9 applied as written. Files changed in `21 Brain`:

- CLM-20261113-001: X1, X5, X6. `confidence: low`. `change-orders` and `updated` set.
- CON-20261113-001: X3, X4. `change-orders` and `updated` set.
- CON-20261113-002: X2, X7. `change-orders` and `updated` set.
- MOC-20261113-001: X8, X9. `change-orders` and `updated` set.

Brain version after: CO-20261115-001.
