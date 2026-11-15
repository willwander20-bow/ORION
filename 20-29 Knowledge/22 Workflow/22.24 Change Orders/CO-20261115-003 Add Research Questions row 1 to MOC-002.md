---
id: CO-20261115-003
type: change-order
title: Add Research Questions row 1 to MOC AI-maintained knowledge bases
status: open
created: 2026-11-15T17:49
updated: 2026-11-15T17:49
created-by: managing-editor
schema-version: "0.10"
assessment:
source:
brain-version: CO-20261115-002
change-types:
  - refine
affected:
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

Health report [[KHR-20261113-003 Impact review of CO-20261113-008]], finding H1, found that the MOC "AI-maintained knowledge bases" does not list an open research question that is on its topic. This Change Order adds that question (row 1 of `Research Questions.md`, from KAS-20261113-008) to the MOC section "Open research questions". The row text is copied as the file gives it. No other part of the MOC changes. `Research Questions.md` does not change.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[MOC-20261113-002 AI-maintained knowledge bases]] | Add one bullet to "Open research questions": Research Questions row 1, with its KAS source |

### X1

- Current state: Section "Open research questions" of MOC-20261113-002 has one bullet: "- Does an AI-maintained index and linked wiki over a person's files make AI answers faster or better than reading the raw files in each session, and under what conditions? (KAS-20261113-009 A6; the source asserts it with no test.)"
- Proposed state: Add this bullet as the first bullet of the section. Keep the current bullet as it is, after the new one: "- Does a knowledge base that an AI writes, and that saves AI answers back into itself, become more accurate over time, or do its errors compound, and does a periodic AI audit catch those errors? (Row 1 of [[Research Questions]]; raised by [[KAS-20261113-008 Claude knowledge base that self-improves, Systems Made Better]].)" The question text of the new bullet is the row text, word for word. The parenthesis names the list and the KAS record. It adds no claim about what any source reports. At apply, the Orchestrator adds this Change Order to `change-orders` of the MOC and sets `updated`. The MOC checklist needs no other item for H1: no section is missing, and the MOC already links the Concepts, the process, a related MOC and the gaps (KHR-20261113-003 §6).
- Evidence: Brain record only. The change depends on `21 Brain\Research Questions.md` row 1 and the MOC text, not on a Brief.
- Reason: KHR-20261113-003 H1. MOC checklist item 6 (open research questions) has a gap. A reader of the MOC does not see a known open question on its topic. Change type `refine` (open-question text of a MOC, Schema §5.8). The Managing Editor and the Orchestrator checked that the statement of the report is correct.

## 3. Impact

- Direct: MOC-20261113-002 lists both open questions of its topic. Its checklist item 6 passes.
- Possible: if row 1 closes later, the MOC bullet must change with it. The same applies to row 2 (KHR-20261113-003 §7).
- `Research Questions.md` and MOC-20261113-001 do not change.
- CO-20261115-001 and CO-20261115-002 did not touch MOC-002 or its linked records.

## 4. Risks and limits

- Risk if no action is taken: a reader of the MOC does not see the open question on whether AI-written bases stay accurate. The risk is small.
- The new bullet has no A-label (a finding label inside a KAS, as "A6" is for row 2). The row in the list does not give one, and the Managing Editor did not read KAS-20261113-008. Justin can ask for the label to be added.
- The question text has "and does a periodic AI audit catch those errors". The MOC text does not say anything on audits. The MOC does not state that any source supports it.

## 5. Priority

low. The impact is one bullet in one MOC. The gap does not affect any Claim or Concept. The scope is one record. A delay does little harm.

## 6. Decision required

Justin: approve or reject X1? Add Research Questions row 1, as written in §2, to "Open research questions" in MOC-20261113-002. There is one row, so there is one decision.

## 7. Decision record

## 8. Implementation record
