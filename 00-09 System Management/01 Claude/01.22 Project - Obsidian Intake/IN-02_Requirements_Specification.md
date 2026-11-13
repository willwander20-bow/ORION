---
title: Intake System — Requirements Specification
id: IN-02
system: Intake System
type: requirements-specification
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [INB, INC]
---

# Intake System — Requirements Specification

## 1. How to read this document

Each requirement has an ID, a statement, a source, and a status.

| Status | Meaning |
|---|---|
| BUILT | INC says that the item exists and operates. This review did not test it. |
| DECIDED | The source marks the item as decided or confirmed. |
| STATED | The source states the item. The source does not mark it as a decision. |
| DRAFT | The source marks the item as a plan or a draft. |
| CONFLICT | The sources disagree. The conflict ID follows. Refer to IN-06. |
| CHANGED | A review decision changes the requirement. |
| NEW | The review of 2026-11-12 added the requirement. Refer to section 11. |

This document does not add requirements. Each line comes from a source.

INB lists "User stories" as a deliverable. No user stories exist. Refer to IN-G-02.

## 2. General requirements

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-GN-01 | One inbox catches all captures: thoughts, notes, links, and videos. | INB | STATED |
| IN-GN-02 | A capture takes seconds. | INB, INC | STATED. No number (IN-G-01). |
| IN-GN-03 | The user can capture from any app by text, by share button, or by voice. | INB | STATED |
| IN-GN-04 | The user can capture from the phone and from the computer. | INB, INC | CONFLICT IN-C-08 |
| IN-GN-05 | Each capture becomes one note in `00.01 System Inbox` in ORION. | INB, INC | STATED |
| IN-GN-06 | Each note has a time stamp and a source. | INC | STATED |
| IN-GN-07 | Captures get to the computer vault without manual copy. | INB | STATED |
| IN-GN-08 | Capture "stays dumb": no tags, no filing, and no judgment at the point of capture. | INC | CONFLICT IN-C-02 |
| IN-GN-09 | Capture must work if Claude is down. | INC | CONFLICT IN-C-06 |
| IN-GN-10 | A capture is not a commitment. The user decides later. | INC | STATED |
| IN-GN-11 | The scope is capture only. Triage, sorting, retrieval, and the review pass are a different project. | INC | CHANGED (IN-D-17). Refer to IN-RV-01. |
| IN-GN-12 | The system holds personal content only. | INB | CHANGED (IN-D-19). Refer to IN-RV-05. |

## 3. Voice channel

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-VO-01 | The user holds the phone power button to open the Claude assistant. The user says "use the capture skill:" and then the text. | INC | BUILT. Refer to IN-C-07. |
| IN-VO-02 | The `capture` skill writes one plain `.md` file to the drop folder. It finds the folder by folder ID. | INC | BUILT |
| IN-VO-03 | The file name is `claude-YYYY-MM-DD-HHMMSS.md`. | INC | BUILT |
| IN-VO-04 | The frontmatter contains `captured` and `source: claude`. `captured` is the real time. The skill does not guess it. If the time is unknown, the skill omits the field. | INC | BUILT. IN-D-18 renames `source` to `intake-channel`. |
| IN-VO-05 | The body contains the spoken text verbatim. The skill makes no corrections. | INC | BUILT |
| IN-VO-06 | The skill does not write to Obsidian. It does not offer a calendar entry or an alarm. It does not ask questions. It does not add tags. | INC | BUILT |
| IN-VO-07 | Fallback when Claude is down: Android voice typing into the quick-note channel. The charter must say so. | INC | STATED. The quick-note channel is not tested. |

## 4. Share channel

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-SH-01 | From any app, the user selects Share, then "Save to Drive", then the drop folder. | INC | BUILT |
| IN-SH-02 | The result is a plain text file with no extension. The file name is the title of the shared item. The content is the URL. | INC | BUILT. Observed with YouTube. |
| IN-SH-03 | The channel works for "anything with a share button". | INB | STATED. Tested with YouTube only (IN-G-05). |
| IN-SH-04 | Sources include YouTube, TikTok, Chrome, and the phone home-screen news feed. | INB | STATED. TikTok and Chrome tests are planned [INC]. |

## 5. Quick-note channel

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-QN-01 | The user can write a quick text note on the phone. | INB | STATED |
| IN-QN-02 | Plan: a small phone-only Obsidian vault that contains an inbox only. | INC | DRAFT. Not tested. |
| IN-QN-03 | Plan: a free Android sync app sends the vault folder one-way to the drop folder. Examples: FolderSync, Autosync for Google Drive. | INC | DRAFT. Not tested. |
| IN-QN-04 | The plan keeps the Obsidian widget that the user likes. | INC | DRAFT. Refer to IN-C-05. |

## 6. Drop folder

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-IB-01 | The drop folder is the Google Drive folder `ORION Vault Inbox`. | INC | BUILT |
| IN-IB-02 | The drop folder is separate from the vault. Obsidian is "a destination, not a capture tool". | INC | DECIDED. Refer to IN-C-05. |
| IN-IB-03 | The drop folder has a subfolder `_processed`. | INC | STATED. Not made. |
| IN-IB-04 | The Google account that connects to Claude has write access to the drop folder through sharing. | INC | BUILT |

## 7. Sweep

INC says that the sweep is not built. All requirements in this section have status STATED.

Field names follow IN-D-18. INC used `source` and `link`.

| ID | Requirement | Source |
|---|---|---|
| IN-SW-01 | The sweep runs on the PC from Windows Task Scheduler. It runs approximately each 15 minutes and at login. | INC |
| IN-SW-02 | The sweep reads the drop folder through Google Drive for desktop, with the `ja.will` account. | INC |
| IN-SW-03 | If the PC is asleep, the files stay in Drive until the next run. | INC |
| IN-SW-04 | For each file, the sweep makes a note in `00-09 System Management\00 System Backend\00.01 System Inbox`. | INC |
| IN-SW-05 | The note has minimal frontmatter: `captured`, `intake-channel`, and `url` when the capture is a URL. The raw content follows. | INC |
| IN-SW-06 | The sweep moves the original file to `_processed`. It never deletes a file. | INC |
| IN-SW-07 | The sweep accepts `.md` files and plain-text files with no extension. | INC |
| IN-SW-08 | The sweep removes characters from file names that Windows does not permit: `? : " \| / \ * < >`. | INC |
| IN-SW-09 | For `captured`, the sweep uses the frontmatter value. If no value is present, it uses the creation time of the file. | INC |
| IN-SW-10 | If the file name starts with `claude-`, then `intake-channel` is `claude`. | INC |
| IN-SW-11 | If the content is only a URL, then `intake-channel` is `share`. The file name becomes the note title. The URL goes in `url`. | INC |
| IN-SW-12 | If the file comes from the phone quick-note vault, then `intake-channel` is `quick`. | INC |
| IN-SW-13 | The sweep handles files that either Google account owns. | INC |

## 8. Backlog migration plan

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-MG-01 | The project delivers a migration plan for the existing backlog. | INB, INC | STATED. Not written (IN-G-09). |
| IN-MG-02 | The migration itself is a separate project. | INB, INC | STATED |

## 9. Requirements in INB that INC changed or removed

| INB requirement | Change in INC | Reference |
|---|---|---|
| A review pass by Claude fills in metadata and a one-line summary. | Moved to the sorting project (DECIDED). | IN-C-01 |
| Optional dropdown fields at capture (QuickAdd or Templater prompts). | Not in INC. "Capture stays dumb." | IN-C-02 |
| Fourteen metadata fields. | Three fields in the note: `captured`, `source`, `link`. | IN-C-02 |
| `source` values that name the app: YouTube, TikTok, Chrome, news feed. | Three values: `claude`, `share`, `quick`. | IN-C-03 |
| Quick note is Phase 1 (MVP). Voice is Phase 3 (wish list). | Voice and share are built. Quick note is not tested. | IN-C-04 |

## 10. Requirements that the sources do not state

Refer to the gap list in IN-06, section 5. Important examples:

- No capture time target as a number (IN-G-01).
- No file name rule for the note in `00.01 System Inbox` for voice captures and quick notes (IN-G-03).
- No behavior for a sweep error (IN-G-04).
- No behavior for a shared item that is not text (IN-G-05).

## 11. Requirements from the review of 2026-11-12

| ID | Requirement | Source | Status |
|---|---|---|---|
| IN-RV-01 | The Intake System triages all captures. Triage is manual at first. | IN-D-17 | NEW |
| IN-RV-02 | A later agent or automation does triage. The review pass is one form of it. | IN-D-17 | NEW. Design in development |
| IN-RV-03 | Each Intake note has a field for the routing result. The Knowledge System Orchestrator writes it. | X-D-08 | NEW. Refer to X-G-10 |
| IN-RV-04 | Field names: `intake-channel`, `url`, and `captured` with date and time. | IN-D-18 | NEW |
| IN-RV-05 | Work items are permitted. Items related to Charter or Spectrum get "needs review" when a step identifies them. | X-D-12 | NEW |
| IN-RV-06 | An item with "needs review" does not move to the next stage until Justin reviews it and records a decision. | X-D-13 | NEW |
| IN-RV-07 | Each note has one standard core frontmatter block. Agents add their own fields later. | X-D-09 | NEW. Fields PINNED |
| IN-RV-08 | The system uses no paid tools or subscriptions. The existing Claude plan is not included. | X-D-11 | NEW |

## 12. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: drop folder term, field names, new requirements IN-RV-01 to IN-RV-08. |
