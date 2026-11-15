---
id: CO-20261115-002
type: change-order
title: Align LoC access-measures wording in CLM-001 and MOC-001
status: open
created: 2026-11-15T17:45
updated: 2026-11-15T17:45
created-by: managing-editor
schema-version: "0.10"
assessment:
source:
brain-version: CO-20261115-001
change-types:
  - refine
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
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

This Change Order comes from the Knowledge Health Report [[KHR-20261115-001 Impact review of CO-20261115-001]], findings H1 and H2. Two places in the Brain still give the Library of Congress (LoC) rule on access measures in other words than the checked LoC sentence. In CLM-001, the lead sentence of the access-measures paragraph says "restrict access or use". The quote after it uses different words. In MOC-001, the LoC row says "restricts access". The change puts both places in line with the E14 line of CLM-001. The meaning does not change.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[CLM-20261113-001 Lasting notes belong in open files]] | Replace the lead sentence of the access-measures condition (KHR-20261115-001 H1). |
| X2 | refine | [[MOC-20261113-001 Note durability]] | Replace one sentence in the LoC row of "Evidence for and against" (KHR-20261115-001 H2). |

### X1

- Current state: Section "Context and conditions", paragraph "Condition on access measures". The lead sentence reads exactly: "Condition on access measures: the file contains no measures that restrict access or use." The next sentence quotes LoC with other words ('that control access to or prevent use of the digital work'). The two sentences disagree. The lead sentence reads as LoC's rule but is not LoC's wording. Status `accepted`, `confidence: low`, `evidence-strength: weak`. These do not change.
- Proposed state: Replace the lead sentence only. New text: "Condition on access measures: the file has no measure that controls access to it or prevents its use." Do not change the rest of the paragraph. It starts with "LoC states that digital textual files must contain no measures 'such as digital rights management [DRM] technologies or encryption' 'that control access to or prevent use of the digital work'." The new sentence states the condition in plain words. It is not a quote and does not claim to be LoC's wording. Its verbs ("controls access", "prevents use") agree with the quote after it. The meaning of the condition is the same. The new sentence adds no quote.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E14, and the Orchestrator's source check of 2026-11-15 for the words after the quote ("that control access to or prevent use of the digital work"). The check read the raw LoC page https://www.loc.gov/preservation/resources/rfs/text.html with tags removed. The sentence reads: "Files must contain no measures (such as digital rights management [DRM] technologies or encryption) that control access to or prevent use of the digital work." No new quote is added. The existing quotes in the paragraph are unchanged.
- Reason: KHR-20261115-001 H1. The lead sentence is the condition of the claim. The paragraph now quotes LoC in words that differ from the lead sentence. A reader can take the lead sentence as LoC's wording. The Curator's statement was checked in the CLM-001 text and is correct.

### X2

- Current state: Section "Evidence for and against", the bullet that begins "Qualifies, and supports in part: [[BRF-20261113-006 …". It contains the sentence: "It requires no DRM or encryption that restricts access." The CLM-001 E14 line says "no DRM or encryption that controls access to or prevents use of the digital work". The two wordings differ.
- Proposed state: Replace this sentence only. Current: "It requires no DRM or encryption that restricts access." New: "It requires no DRM or encryption that controls access to or prevents use of the digital work." Do not change any other text of the row. This includes the sentences before and after it ("It ranks structured formats … acceptable only." and "It gives no reasons and no durability data. It does not contradict the claim.") and the links.
- Evidence: [[BRF-20261113-006 LoC Recommended Formats, textual works]] · E14, and the Orchestrator's source check of 2026-11-15 for the words after "encryption)" (sentence as in X1). The Brain evidence line in CLM-001 for E14 already uses the new words.
- Reason: KHR-20261115-001 H2. MOC and claim word the LoC rule differently. The change makes the MOC match the CLM-001 E14 line. The Curator's statement was checked in the MOC text and is correct. Justin did not decide any change of the status wording, so the status text stays as it is.

## 3. Impact

Direct:
- CLM-001: one sentence changes. `confidence`, `evidence-strength`, `status` and the evidence list do not change.
- MOC-001: one sentence changes. The row has the same meaning and the same links.
- Both records get this Change Order in `change-orders`, and `updated`, at apply (Orchestrator task).

Search of `21 Brain` for "restrict" (Orchestrator and Managing Editor, 2026-11-15): only the two places above use the paraphrase. These places have no paraphrase: the E14 Evidence line of CLM-001, CON-001 (the X4 sentence says "access measures"), CON-002, CON-003, CON-004, MOC-002 and Research Questions.

Possible: a reader of the MOC and the claim sees the same LoC wording. No downstream dependency is known. A link does not prove a dependency.

## 4. Risks and limits

- Risk if no action is taken: the claim and the MOC give the LoC rule in two sets of words, and the claim lead sentence reads as LoC's own wording. The meaning is the same, so the risk is low. It is a traceability and consistency gap.
- The Brief BRF-20261113-006 keeps the old wording (KHR-20261115-001 H3). Its E14 quote stops at "encryption)". Its C9, summary line and Limits text keep "restrict access or use". This Change Order does not change the Brief. Justin routes H3. Until then, the Brain E14 words after the quote depend on the Orchestrator's source check of 2026-11-15, and a reader of the Brief cannot confirm them.
- The new X1 sentence is a plain-words condition and not a quote. It uses "controls access to it or prevents its use". These words are close to LoC's words. The next sentence gives the source.
- H4 (optional "confidence low" in the MOC line) is not approved and is not in this Change Order. H3 is not in this Change Order.
- This review did not read the Source page. The Brief and the Brain records are the only view of the source.

## 5. Priority

`low`. The impact is small: two sentences, no change of meaning, no change of confidence. No deadline. The scope is two records. Delay adds only a small risk of confusion.

## 6. Decision required

Justin: do you approve X1 and X2, as written? You can decide each row on its own.

- X1: replace the lead sentence in CLM-001.
- X2: replace the LoC sentence in MOC-001.

Separate question for the Orchestrator and Justin: how to route H3 (the Brief).

## 7. Decision record

## 8. Implementation record
