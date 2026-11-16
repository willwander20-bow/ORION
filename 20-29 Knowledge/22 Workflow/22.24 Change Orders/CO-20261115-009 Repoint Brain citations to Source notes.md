---
id: CO-20261115-009
type: change-order
title: "Repoint Brain citations from archived Briefs and Assessments to Source notes"
status: open
created: 2026-11-15T20:01
updated: 2026-11-15T20:01
created-by: orchestrator
schema-version: "0.13"
assessment:
source:
brain-version: CO-20261115-008
change-types:
  - refine
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[CLM-20261115-001 Search plain files first, then add indexes]]"
  - "[[CLM-20261115-002 Git history alone is not a full backup]]"
  - "[[CON-20261113-001 File over app]]"
  - "[[CON-20261113-002 Work with plain-text notes]]"
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[MOC-20261113-001 Note durability]]"
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. Drafted by the Orchestrator, not by the Managing Editor: the change is mechanical and adds no knowledge. -->

## 1. Summary

Justin approved the migration of the legacy Reference Briefs and Knowledge Assessments into their Source notes (KS-D-51, KS-D-52). The workflow part is done: each Brief and Assessment is now a section of its Source note, the text was checked character for character, and the old notes are in `20.09 Knowledge Archive`. This Change Order changes only what the Brain cites. It points each citation to the Source note that now holds the text. No claim text, status, `confidence`, `evidence-strength`, or evidence label changes. The Brain has 78 citations to change in 10 records. `Research Questions.md` (not Brain content) has 4 more.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | 10 Brain records | Repoint each link to a Brief note: the link target changes from the `BRF` note to the `SRC` note. The alias and the `E` label stay. |
| X2 | refine | 10 Brain records | Replace each `BRF-…` ID in plain text with the `SRC-…` ID of the same source. |
| X3 | refine | MOC-20261113-002 | Repoint each link to an Assessment note to the "Assessment (migrated)" section of the Source note, and the `KAS-…` IDs in plain text. |

### X1

- Current: `[[BRF-20261113-001 File over app|File over app (Ango, 2023)]] · E1`
- Proposed: `[[SRC-20261113-001 File over app|File over app (Ango, 2023)]] · E1`
- Mapping (11 Briefs; the 12th, BRF-20261113-008, was rejected and belongs to no Source, so no Brain record cites it):

| Old (archived) | New (Source note) |
|---|---|
| BRF-20261113-001 | SRC-20261113-001 |
| BRF-20261113-002 | SRC-20261113-002 |
| BRF-20261113-003 | SRC-20261113-003 |
| BRF-20261113-004 | SRC-20261113-004 |
| BRF-20261113-005 | SRC-20261113-006 |
| BRF-20261113-006 | SRC-20261113-008 |
| BRF-20261113-007 | SRC-20261113-012 |
| BRF-20261113-009 | SRC-20261113-010 |
| BRF-20261113-010 | SRC-20261113-011 |
| BRF-20261115-001 | SRC-20261115-002 |
| BRF-20261115-002 | SRC-20261115-001 |

- Evidence: Brain record only. The text of each Brief is in its Source note under `# Reference Brief`, with the same `E` and `C` labels. The migration checked that the text is intact (11 of 11).
- Reason: A citation that points to an archived note keeps the Brain tied to a duplicate. The Source note is now the one live copy.

### X2

- Current: `(BRF-20261113-001 C3; not measured.)`
- Proposed: `(SRC-20261113-001 C3; not measured.)`
- The same mapping applies. Evidence: Brain record only. Reason: the same as X1; the ID in the prose must name a live note.

### X3

- Current: `[[KAS-20261113-008 Claude knowledge base that self-improves, Systems Made Better]]`
- Proposed: `[[SRC-20261113-010 Claude knowledge base that self-improves, Systems Made Better#Assessment (migrated)]]`
- The Assessments cited in the Brain are KAS-20261113-008 and KAS-20261113-009 (open questions in MOC-002). The script maps each KAS to the Source it assessed.
- Evidence: Brain record only. Reason: the Assessment text is now a section of the Source note.

Replacements by record (from the dry run, `Repoint Citations.ps1`, 2026-11-15):

| Record | Replacements |
|---|---|
| CLM-20261113-001 | 31 |
| MOC-20261113-001 | 13 |
| MOC-20261113-002 | 7 |
| CON-20261113-004 | 7 |
| CON-20261113-001 | 4 |
| CON-20261113-002 | 3 |
| CON-20261113-003 | 3 |
| CON-20261115-001 | 3 |
| CLM-20261115-001 | 2 |
| CLM-20261115-002 | 1 |
| Brain records total | 74 |
| `Research Questions.md` (not Brain content; exempt from a Change Order, listed for completeness) | 4 |

The script finds no `BRF` or `KAS` ID that it cannot map.

## 3. Impact

- Direct: 74 citations in 10 Brain records change their target. No claim text, status, `confidence`, `evidence-strength`, or evidence label changes.
- Records outside the Brain keep their old IDs: Change Orders, health reports, and the work log. They are history, and the old names still resolve through the archive.
- Possible: a reader who follows a Brain citation now lands in a Source note of several thousand words, at the Brief section, not in a Brief note.

## 4. Risks and limits

- A prose ID is changed in 10 approved records. The meaning is the same, because the Source note holds the same text with the same labels.
- The archived BRF and KAS notes stay in `20.09`, so a link to an old name still works.
- If no action is taken: the Brain cites 23 archived notes, and the migration is half done.

## 5. Priority

`low`. A citation change only.

## 6. Decision required

Justin: approve X1, X2, and X3 as written? The rows go together: if the links change and the IDs in prose do not, a reader sees two kinds of ID in one record.

## 7. Decision record

## 8. Implementation record
