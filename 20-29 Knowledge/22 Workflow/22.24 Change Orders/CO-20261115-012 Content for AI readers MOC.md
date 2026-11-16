---
id: CO-20261115-012
type: change-order
title: "New MOC: Content for AI readers"
status: applied
created: 2026-11-15T22:11
updated: 2026-11-15T22:12
created-by: orchestrator
schema-version: "0.13"
assessment:
source:
brain-version: CO-20261115-011
change-types:
  - create
  - relate
affected:
  - "[[MOC-20261113-001 Note durability]]"
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision: approved
decided: 2026-11-15T22:14
decision-note: "Yes approved"
applied: 2026-11-15T22:12
brain-version-after: CO-20261115-012
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. Drafted by the Orchestrator: the change is structural and adds no source. There is no Brief, so the merged mode and the Editor second look do not apply. -->

## 1. Summary

Justin asked where the three new records belong (CLM-20261115-003, CLM-20261115-004, CON-20261115-002). Rows X4 of CO-20261115-010 and CO-20261115-011 put them in MOC-20261113-001 (Note durability), a weak fit: both Managing Editors said so. This Change Order makes a new MOC for the topic, links the three records from it, and links it from the two related MOCs. The Curator rule asks for a new MOC when a topic has 3 or more records. The held rows X4 of the two earlier Change Orders are replaced by this one. Link Check shows one ORPHAN today (CLM-20261115-004). This fixes it.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Content for AI readers (MOC) | New MOC with the three records, the two sources, and two related MOCs. |
| X2 | relate | [[MOC-20261113-001 Note durability]] | Link the new MOC under "Related MOCs". |
| X3 | relate | [[MOC-20261113-002 AI-maintained knowledge bases]] | Link the new MOC under "Related MOCs". |
| X4 | (list, not Brain content) | `Research Questions.md` | Add one row for the open question that the new MOC lists. |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\MOC-20261115-001 Content for AI readers.md`. Title "Content for AI readers", status `active`. It links CLM-20261115-003, CLM-20261115-004, CON-20261115-002, SRC-20261115-004, SRC-20261115-005, MOC-20261113-001, and MOC-20261113-002, each with a reason. It has no claim text of its own.
- Evidence: Brain record only. The MOC links existing records and states only what they state (the source counts, the vendor interest, the gaps).
- Reason: the MOC checklist (a topic with 3 or more records needs a MOC) and Justin's question about placement. Each link has a reason.

### X2

- Current: "Related MOCs" in MOC-20261113-001 has one bullet, for MOC-20261113-002.
- Proposed: add after it: `- [[MOC-20261115-001 Content for AI readers|Content for AI readers]]: both topics rank open file formats, for different reasons. There the reason is how long files last. Here it is reading by AI. A link, not a dependency.`
- Evidence: Brain record only.
- Reason: two related topics link each other.

### X3

- Current: "Related MOCs" in MOC-20261113-002 has one bullet, for MOC-20261113-001.
- Proposed: add after it: `- [[MOC-20261115-001 Content for AI readers|Content for AI readers]]: an AI that keeps a wiki over plain files also reads those files. That topic covers how to write for that reader. A link, not a dependency.`
- Evidence: Brain record only.
- Reason: as X2.

### X4

- Current: `Research Questions.md` has 4 rows, none on this topic.
- Proposed: add a row: "Does the structure of a document (headings, chunk size, frontmatter, hidden content), or its file format, change how well an AI tool reads and answers from it, and how can this be tested?" Raised by: SRC-20261115-004 and SRC-20261115-005 (the Editor second looks). Date 2026-11-15. Status open.
- Reason: the new MOC lists the question under "Open research questions", and the MOC template takes those from the list. The list is not knowledge and needs no Change Order (Schema §2.5), but you decide. If you reject X4, the Orchestrator deletes that one bullet from the MOC draft before it moves.

## 3. Impact

- Direct: one new MOC. Two existing MOCs get one bullet each. No claim, status, `confidence`, or `evidence-strength` changes. The three records are not edited. The Link Check ORPHAN is resolved.
- Rows X4 of CO-20261115-010 and CO-20261115-011 are not applied. This Change Order replaces them.

## 4. Risks and limits

- A new MOC for two weak sources can be early. If no action is taken: the three records stay without a MOC, Link Check keeps one ORPHAN, and you would still have to pick MOC-001 or MOC-002.
- The MOC text states only what the records state. It adds no new fact. The vendor interest and the unchecked evidence are named in "Disputes and gaps".
- There is no Brief and no Editor second look, because the change is structural. The next Curator maintenance run will check the MOC against its checklist.

## 5. Priority

`low`. Navigation only.

## 6. Decision required

Justin: approve X1, X2, X3, and X4 as written? The rows can be decided one by one. If you prefer another placement, say which.

## 7. Decision record

2026-11-15T22:14. Justin: "Yes approved". Decision: `approved`. Rows X1, X2, X3, and X4, as written.

## 8. Implementation record

2026-11-15T22:12. The Orchestrator checked that `brain-version` (CO-20261115-011) matched the current Brain version. X1: new `MOC-20261115-001` (the draft moved from `.staging\proposed`). X2 and X3: one bullet each in MOC-20261113-001 and MOC-20261113-002. X4: one row added to `Research Questions.md`. `change-orders` and `updated` set. Link Check: the ORPHAN of CLM-20261115-004 is resolved. Rows X4 of CO-20261115-010 and CO-20261115-011 are replaced by this Change Order.

Brain version after: CO-20261115-012.
