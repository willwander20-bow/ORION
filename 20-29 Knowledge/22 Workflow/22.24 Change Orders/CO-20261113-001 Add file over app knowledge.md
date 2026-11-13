---
id: CO-20261113-001
type: change-order
title: Add file over app knowledge
status: applied
created: 2026-11-13T10:24
updated: 2026-11-13T10:27
created-by: orchestrator
schema-version: "0.6"
assessment: "[[KAS-20261113-001 File over app]]"
source: "[[SRC-20261113-001 File over app]]"
brain-version: none
change-types:
  - create
affected: []
priority: low
decision: approved
decided: 2026-11-13T10:27
decision-note: "Approved as proposed. Keep the records in the Brain after the exit test."
applied: 2026-11-13T10:27
brain-version-after: CO-20261113-001
---

## 1. Summary

Add the first knowledge to the Brain. One claim: notes meant to last belong in open files that the owner controls, because apps become obsolete. One concept: "file over app". One MOC, "Note durability", that links the two. The claim gives the reason for ORION's portable-Markdown rule.

## 2. Proposed changes

| Label | Change type | Record | Current state | Proposed state | Evidence | Reason |
|---|---|---|---|---|---|---|
| X1 | create | new: Lasting notes belong in open files | none | Brain Claim, `accepted`, confidence `medium`, evidence-strength `weak` | [[BRF-20261113-001 File over app]] · E1, E2, E6 | C1 with C2 as its reason (A1, A2). Confidence medium: a sound principle, but one opinion source with a conflict of interest. Evidence weak: no data. |
| X2 | create | new: File over app | none | Concept, `kind: concept`, `accepted` | [[BRF-20261113-001 File over app]] · E1 | Named principle (A3). |
| X3 | create | new: Note durability | none | MOC, `active` | — | Navigation for X1 and X2. Lists C3 and C4 as open questions. |

## 3. Impact

- Direct: three new notes in `21 Brain`. Brain version changes from `none` to `CO-20261113-001`.
- Possible: later sources on file formats, sync, or tool choice link to X1 and X2.
- No existing record changes.

## 4. Risks and limits

- One source only. A later source can challenge X1.
- Risk if no action: none now. This is a test of the workflow.

## 5. Priority

`low`. No urgency. No existing record depends on it.

## 6. Decision required

1. Approve X1, X2, and X3 as proposed? Options: `approved`, `approved-with-changes`, `rejected`, `deferred`.
2. Keep the three Brain records after the exit test, or archive them to `20.09`?

## 7. Decision record

Justin, 2026-11-13, in the PM session (`01.23`). The Orchestrator copied his choices exactly:
- Decision: "approved".
- Retention: "Keep in the Brain".

## 8. Implementation record

- Version check: `brain-version` `none` matched the current version. `21 Brain` was empty before the change.
- Files made:
  - X1: `21 Brain\CLM-20261113-001 Lasting notes belong in open files.md`
  - X2: `21 Brain\CON-20261113-001 File over app.md`
  - X3: `21 Brain\MOC-20261113-001 Note durability.md`
- Brain version is now `CO-20261113-001`.
