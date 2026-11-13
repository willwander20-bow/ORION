---
title: Intake System — Roadmap and Status
id: IN-04
system: Intake System
type: roadmap
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [INB, INC]
---

# Intake System — Roadmap and Status

## 1. Status

The latest status in the sources is from the end of the session on 2026-11-10 [INC]. INC marks the project "paused — next session starts with the quick-note channel".

This review did not test the system. The status below is the status in INC.

Review result (2026-11-12): the Knowledge System is developed first (X-D-01). Intake development starts after it. The built channels stay as they are until then.

The sources give no calendar dates for future work. Refer to IN-G-11.

## 2. Status table on 2026-11-10 [INC]

| Item | Status |
|---|---|
| Drop folder: Google Drive folder `ORION Vault Inbox` | Exists and works |
| Voice channel, through the `capture` skill | Works |
| Share channel | Works. YouTube tested. |
| Quick-note channel | Not tested |
| Sweep (Drive → PC → `00.01 System Inbox`) | Not built |
| Charter | Paused |

## 3. Phases

### 3.1 Plan in INB

| Phase | Intake | Note in INB |
|---|---|---|
| 1 (MVP) | Quick note straight into the vault | "Obsidian widget likely covers most of this" |
| 2 | Share button from any app | "Anything with a share button works" |
| 3 (wish list) | Voice note converted to a text note | Also consider a quick chat with Claude as an intake |

### 3.2 Actual state in INC

- Built: the drop folder in Google Drive, the voice channel, and the share channel.
- Next: the quick-note channel.
- After that: the sweep.

The INB plan put the quick note first and voice last. The actual build did voice and share first. Refer to IN-C-04.

## 4. Deliverables

### 4.1 Deliverables in INB

| No. | Deliverable | Status | Note |
|---|---|---|---|
| 1 | Project brief | Complete | INB |
| 2 | User stories | Not started | IN-G-02. The next steps in INC do not include them. |
| 3 | Capture spec: folder, file names, one note for each capture, templates, metadata | Not written | INC has part of the content in the sweep requirements. IN-G-03. |
| 4 | Sync design (phone → computer) | Decided in practice | The Drive inbox and the sweep. No design document exists other than INC. |
| 5 | Each intake built and tested | In work | Two of three channels work. |
| 6 | Review pass design and custom instructions | Back in scope as part of triage automation (IN-D-17) | Not started |
| 8 | Triage process, manual first | Not started | NEW (IN-D-17). Refer to IN-G-10. |
| 7 | Backlog migration plan | Not started | IN-G-09. INC calls it the "final deliverable". |

### 4.2 More items that INC names

| Item | Status |
|---|---|
| Project charter | Paused. Section 1 is a draft. |
| Sweep spec for Claude Code | Not written |
| Sweep script | Not built |
| `_processed` subfolder | Not made |
| Capture-note format | Not written as a document |
| Root `CLAUDE.md` (ORION house rules) | Status not given |
| Work package `CLAUDE.md` | Not built |
| Master project instructions in `01.23` | Not built |

## 5. Next steps as INC records them

INC gives this sequence for the next session:

1. Quick-note channel: decide and test.
2. Quick test: share a TikTok and a Chrome page to the drop folder. Confirm the same behavior as YouTube.
3. Write the sweep spec for Claude Code.
4. Then complete the charter as a one-page document, if Justin agrees.

Review note: the user request of 2026-11-12 stops solution work until the review of this document set is complete. This sequence is the recorded plan. It is not an instruction.

Review result: X-D-01 puts the Knowledge System first. This sequence waits until Intake development starts.

## 6. Handoff to Claude Code [INC]

INC says: hand off to Claude Code after these items exist:

- The charter.
- The capture-note format.
- The two `CLAUDE.md` files.

INC also records a view from Claude: the sweep requirements cover most of the note format, and the charter must stay at one page. This view is not a decision.

The next-session sequence puts the sweep spec before the charter. Refer to IN-C-12.

## 7. Open questions from INB and their status

| No. | Question in INB | Status |
|---|---|---|
| 1 | Phone platform: Android or iPhone? | Closed. Android (CONFIRMED) [INC]. |
| 2 | Sync method: how do phone captures get into a folder on the computer for free? | Closed in practice. Drive inbox and sweep [INC]. The sweep is not built. |
| 3 | Landing location: folder, file names, one note for each capture. | Partly closed. Folder: `00.01 System Inbox`. File names: partly (IN-G-03). |
| 4 | Review pass trigger. | Moved to the sorting project with the review pass. |
| 5 | "Satisfied": what are the measurable criteria? | OPEN (IN-Q-04) |
| 6 | Time budget: hours for each week. | Closed. 5 to 10 hours each week (IN-D-22). |
| 7 | Home-screen news feed: which app? | OPEN (IN-Q-06). INB says that it does not block. |

## 8. Later versions

| Version | Content | Condition | Source |
|---|---|---|---|
| v2 | Custom Android intake app | Three to four weeks of real use show gaps | INC |

## 9. Schedule gaps

- No target date for any item.
- Time budget: 5 to 10 hours each week (IN-D-22). The source does not say if this budget is for each effort or for both (IN-A-06).
- No sequence between this effort and the Knowledge System effort. Refer to X-G-07.

## 10. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: sequence, deliverables, time budget, drop folder term. |
