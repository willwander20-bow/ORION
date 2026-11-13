---
title: Intake System — RAID Log and Open Items Register
id: IN-06
system: Intake System
type: raid-log
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [INB, INC]
---

# Intake System — RAID Log and Open Items Register

## 1. How to use this register

This register is the work list for the first review.

- Section 2: risks.
- Section 3: assumptions.
- Section 4: conflicts. The sources disagree, or a source disagrees with itself.
- Section 5: gaps. No source gives the information.
- Section 6: open decisions that the sources list.
- Section 7: dependencies.

This register does not recommend a solution. Record each decision in IN-05, Part C.

Cross-system items are in PRG-00, sections 6 and 7.

Section 8 gives the status of each item after the review of 2026-11-12.

## 2. Risks

### 2.1 Risks from the sources

| ID | Risk | Control in the source | Source |
|---|---|---|---|
| IN-R-01 | The user loses interest after two weeks. | Ship the MVP fast. Use small sessions. | INB |
| IN-R-02 | Capture friction increases. | Keep capture-time fields to a minimum. Test speed. | INB |
| IN-R-03 | Sync breaks or causes conflicts. | Decide the sync method first. Test it before more work depends on it. | INB |
| IN-R-04 | The review pass does not occur. | Define a trigger. Do not depend on memory. | INB. The review pass is out of v1. The risk moves to the sorting project. |
| IN-R-05 | Scope grows into sorting and retrieval. | Park that scope for the sorting project. | INB |
| IN-R-06 | Optimization does not stop. | Keep v1 small. | INC |
| IN-R-07 | File ownership causes problems when the sweep moves files to `_processed`. Two accounts own files. | "Watch for ownership issues." | INC |
| IN-R-08 | The free tier of the Android sync app is not sufficient. | Test it. INC gives medium confidence. | INC |
| IN-R-09 | The voice trigger does not start the skill. Claude then asks questions or writes to the wrong location. | Use the full phrase. | INC |
| IN-R-10 | Claude is not available. The voice channel fails. | Fallback: Android voice typing into the quick-note channel. | INC. The fallback channel is not tested. |
| IN-R-11 | Speech-to-text errors stay in the capture. | Corrections occur in triage. | INC |
| IN-R-12 | A file name contains characters that Windows does not permit. | The sweep removes them. | INC |

### 2.2 Risks added in this review

These risks come from the review. No source lists them. No control exists.

| ID | Risk | Basis |
|---|---|---|
| IN-R-13 | Captures collect in `00.01 System Inbox` with no next step. The inbox becomes a new "graveyard". | No sorting process exists (X-G-02). INB problem 2. |
| IN-R-14 | The sweep fails and the user does not know. Captures stay in Drive. | IN-G-04 |
| IN-R-15 | The project closes without a test of each channel with each source app. | IN-G-01, IN-G-05 |

## 3. Assumptions

This review made these assumptions to consolidate the documents. Confirm each one.

| ID | Assumption | Basis |
|---|---|---|
| IN-A-01 | Where INC marks an item DECIDED or CONFIRMED, INC replaces INB. | INC records the decision. |
| IN-A-02 | Where INC does not mention an INB item, the INB item is still valid. | No source removes it. |
| IN-A-03 | "Intake System" is the working name. | The user request of 2026-11-12. Refer to IN-C-10. |
| IN-A-04 | `claude/intake-project-brief.md` in INC is the same document as INB. | Same date and topic. Not confirmed. |
| IN-A-05 | The status in INC is the latest status. | This review received no later source. This review did not test the system. |

## 4. Conflicts

| ID | Topic | Position 1 | Position 2 | Why it matters |
|---|---|---|---|---|
| IN-C-01 | Review pass | In scope. Deliverable 6 is "Review pass design and custom instructions" [INB]. | Moved out of v1 to the sorting project (DECIDED) [INC]. | INC resolves the scope. INB is out of date. The review-pass fields in INB have no owner. |
| IN-C-02 | Metadata at capture | Fourteen fields. Optional dropdowns at capture for `type`. `status: new` is automatic [INB]. | "Capture stays dumb: timestamp + source only." The note has `captured`, `source`, and `link` [INC]. | No source says that `type` and `status` are removed. INC does not list `link` in "timestamp + source only". |
| IN-C-03 | Values of `source` | quick note, share, voice, YouTube, TikTok, Chrome, news feed [INB]. | `claude`, `share`, `quick` [INC]. | The origin app is not recorded. A typed fallback for voice gets the value `quick`. |
| IN-C-04 | Phase sequence | Quick note is Phase 1 (MVP). Voice is Phase 3 (wish list) [INB]. | Voice and share work. Quick note is not tested. Done needs all three [INC]. | The MVP definition changed without a record. |
| IN-C-05 | Obsidian as a capture tool | "Obsidian is a destination, not a capture tool" [INC, architecture]. | The quick-note plan uses a phone Obsidian vault and the Obsidian widget for capture [INC, quick note]. INB: quick note "straight into the vault". | INC disagrees with itself. The quick-note decision is open (IN-Q-03). |
| IN-C-06 | Operation without Claude | "Capture must work if Claude is down" [INC]. | The voice channel needs Claude. The fallback uses the quick-note channel. That channel is not tested [INC]. | The requirement is not satisfied at this time. |
| IN-C-07 | Voice trigger phrase | Only "use the capture skill: …" is reliable. "Capture" alone and "capture skill" alone are not reliable [INC]. | The skill description in the Claude session of 2026-11-12 lists these triggers: "capture skill", "use the capture skill", "capture" or a voice mishearing of it, and "inbox this". | The installed skill and the document do not match. Position 2 is an observation from this review. It is not from a source document. |
| IN-C-08 | Capture from the computer | Capture "from phone and computer" [INB]. "From phone or PC" [INC, Section 1 draft]. | All three channels are phone channels. No computer channel is defined [INC]. | The scope statement includes a function that has no design. |
| IN-C-09 | Form of the charter | A one-page charter in one pass. This is an open decision and a view from Claude [INC]. | The user request of 2026-11-12 asks for a standard document set. IN-01 is longer than one page. | Justin must confirm the form. Section 1 is not locked. |
| IN-C-10 | Project name and ID | "Obsidian Intake System" [INB]. | "Obsidian Intake v1 (W0011~00.01)" [INC]. The user request uses "Intake system". | File names and the work package use the name. |
| IN-C-11 | Problem statement and scope | Problems 2 and 4 are about finding content again and resurfacing [INB]. | Retrieval and resurfacing are out of scope [INB, INC]. | The project can be complete while two of five problems stay. Refer to X-G-02. |
| IN-C-12 | Handoff sequence | Hand off to Claude Code after the charter, the capture-note format, and two `CLAUDE.md` files exist [INC]. | The next-session sequence writes the sweep spec at step 3 and the charter at step 4 [INC]. | The order of the documents is not clear. |

## 5. Gaps

| ID | Gap | Why it matters |
|---|---|---|
| IN-G-01 | The done criteria are not measurable. "Satisfied" has no criteria. "Seconds" has no number. "Works" has no test list. | No person can confirm that the project is complete. |
| IN-G-02 | No user stories. INB lists them as deliverable 2. | |
| IN-G-03 | No capture spec. Three rules have no definition. One: the note file name for voice captures and quick notes. Two: the behavior for two files with the same name. Three: the format and time zone of `captured`. | The sweep needs these rules. |
| IN-G-04 | No sweep behavior for an error. Not defined: log, retry, protection against a second run on the same file, a notice to the user. | Refer to IN-R-14. |
| IN-G-05 | No behavior for a shared item that is not a text URL. Examples: an image, a PDF, a file. The share test used YouTube only. | INB says "anything with a share button works". The sweep accepts two text formats only. |
| IN-G-06 | The quick-note channel has no file format. The sources do not say how the sweep identifies a file "from the phone quick-note vault". | Rule IN-SW-12 depends on this. |
| IN-G-07 | The `_processed` folder is not made. No retention rule exists for it. | Files collect there with no limit. |
| IN-G-08 | The sweep move across two file owners is not tested. | Refer to IN-R-07. |
| IN-G-09 | No backlog migration plan. No inventory of the backlog locations. | INC calls the plan the final deliverable. |
| IN-G-10 | No next step exists for a note after it lands in `00.01 System Inbox`. The weekly triage habit is "planned separately". No plan exists. | Refer to X-G-02 and IN-R-13. |
| IN-G-11 | No time budget and no dates. | Refer to X-G-07. |
| IN-G-12 | The news feed app is not identified. | INB says that this does not block. |
| IN-G-13 | This review did not receive five documents that INC names. They are: the vault-setup handoff; the `capture` skill file; the root `CLAUDE.md`; the work package `CLAUDE.md`; the master instructions in `01.23`. INC says that the last two are not built. | Refer to PRG-00, section 3.2. |
| IN-G-14 | The purpose of the old `ORION` folder in the `willwander.20` Drive is unknown. | INC says that this does not block. |
| IN-G-15 | No source states a security or privacy requirement. Captures go through Google Drive and Claude. | Captures include notes about people. |
| IN-G-16 | The share channel has no path for a user note. | Refer to X-G-05. |

## 6. Open decisions that the sources list

| ID | Question | Source |
|---|---|---|
| IN-Q-01 | Lock or edit the Section 1 text. | INC, open decision 1 |
| IN-Q-02 | Yes or no: a one-page charter written in one pass. | INC, open decision 2 |
| IN-Q-03 | The quick-note channel approach, after a test. | INC, open decision 3 |
| IN-Q-04 | What are the measurable criteria for "satisfied"? | INB, question 5 |
| IN-Q-05 | What is the time budget in hours for each week? | INB, question 6 |
| IN-Q-06 | Which app is the home-screen news feed? | INB, question 7 |
| IN-Q-07 | What is the final parent of the work package? | INC ("re-parent later") |

## 7. Dependencies

| ID | Dependency | Needed for | Status |
|---|---|---|---|
| IN-DEP-01 | Google Drive with two accounts and a shared folder | Drop folder | BUILT |
| IN-DEP-02 | Google Drive for desktop on the PC | Sweep | Not confirmed |
| IN-DEP-03 | Claude phone assistant, the `capture` skill, and the Drive connection | Voice channel | BUILT |
| IN-DEP-04 | Android share function "Save to Drive" | Share channel | BUILT |
| IN-DEP-05 | A free Android sync app | Quick-note channel | Not tested |
| IN-DEP-06 | Windows Task Scheduler. The PC must be on. | Sweep | Not built |
| IN-DEP-07 | Claude Code | Build of the sweep | Not started |
| IN-DEP-08 | ORION structure: `00.01 System Inbox`; Templater script "Build Folders From List" | Landing location | Not confirmed |
| IN-DEP-09 | The sorting project | Use of captured notes | No document (X-G-02) |

## 8. Status after the review of 2026-11-12

### 8.1 New risks

| ID | Risk | Control |
|---|---|---|
| IN-R-16 | Old captures use `source` and `link`. New captures use `intake-channel` and `url`. The inbox holds two field sets. | No control yet. |
| IN-R-17 | Intake development waits for the Knowledge System. The built channels fill the drop folder with no sweep. | No control yet. |

### 8.2 New assumption

| ID | Assumption | Basis |
|---|---|---|
| IN-A-06 | The 5 to 10 hours each week is for both efforts together. | Justin gave one number. |

### 8.3 New gaps

| ID | Gap |
|---|---|
| IN-G-17 | The routing result field is on the Intake note. No rule gives the Knowledge System write access to it. Refer to X-G-10. |
| IN-G-18 | No source gives the steps, cadence, or destinations of manual triage. |

### 8.4 Status of existing items

| ID | Status | Reference | Note |
|---|---|---|---|
| IN-C-01 | RESOLVED | IN-D-17 | The review pass is back in scope. |
| IN-C-02 | PINNED | X-D-09 | Capture stays dumb. Core frontmatter in development. |
| IN-C-03 | RESOLVED in part | IN-D-18 | Field name decided. Values open. |
| IN-C-04 | OPEN | | |
| IN-C-05 | OPEN | IN-Q-03 | |
| IN-C-06 | OPEN | | |
| IN-C-07 | OPEN | | Upload the `capture` skill file to compare. |
| IN-C-08 | OPEN | | |
| IN-C-09 | RESOLVED | IN-D-24 | |
| IN-C-10 | PINNED | X-D-17 | |
| IN-C-11 | RESOLVED in part | IN-D-17 | Retrieval and resurfacing still open. |
| IN-C-12 | OPEN | | Deferred to Intake development. |
| IN-G-10 | OPEN | IN-D-17 | Now in scope. Refer to IN-G-18. |
| IN-G-11 | RESOLVED in part | IN-D-22 | Dates still open. |
| IN-G-13 | RESOLVED in part | X-D-19 | VSH reviewed. Upload the `capture` skill file. |
| IN-G-15 | RESOLVED in part | X-D-12 | Company items only. |
| IN-G-16 | PINNED | IN-D-21 | |
| IN-R-04 | REOPENED | IN-D-17 | The review pass is in Intake scope again. |
| IN-R-13 | REDUCED | IN-D-17 | Triage now has an owner. |
| IN-Q-02 | RESOLVED | IN-D-24 | |
| IN-Q-05 | RESOLVED | IN-D-22 | |

Items not in this table have no change.

## 9. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Added status after the review: new risks, assumption, gaps, and status of each changed item. |
