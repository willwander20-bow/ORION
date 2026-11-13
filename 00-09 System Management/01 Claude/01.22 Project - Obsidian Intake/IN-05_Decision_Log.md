---
title: Intake System — Decision Log
id: IN-05
system: Intake System
type: decision-log
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [INB, INC]
---

# Intake System — Decision Log

## 1. Status

Part A lists the items that INC marks CONFIRMED or DECIDED. The decision dates are not in the sources. INC has the date 2026-11-10.

Part B lists items that the sources state as fixed requirements with no decision mark.

New decisions go in Part C. Part C overrides Parts A and B where they differ.

## 2. Part A: decisions in INC

| ID | Decision | Mark in INC | Reason in source | Effect |
|---|---|---|---|---|
| IN-D-01 | The phone is Android. | CONFIRMED | Not given | Closes INB question 1. |
| IN-D-02 | The review pass moves out of v1 into the sorting project. | DECIDED | "It was overlooked in the handoff, not cut." | The charter must list it by name in "Out of scope". Refer to IN-C-01. |
| IN-D-03 | The inbox is separate from the vault. Phone channels put files in a Google Drive folder. The PC moves them into ORION. | DECIDED in practice | Not given | Closes INB question 2. Obsidian is a destination, not a capture tool. Refer to IN-C-05. |
| IN-D-04 | Google Keep is rejected for v1. | Rejected | No official Keep API for personal accounts. The unofficial library needs a full-account master token. | Review again only if Google opens a personal API. |
| IN-D-05 | A custom Android intake app is parked as v2. | Parked | Build it only if three to four weeks of real use show gaps. | The gaps become the spec. |
| IN-D-06 | The voice trigger phrase is "use the capture skill: …". | CONFIRMED by test | Shorter phrases did not reliably start the skill. | The user rejected a dedicated unusual word. Refer to IN-C-07. |

## 3. Part B: fixed requirements with no decision mark

| ID | Statement | Source |
|---|---|---|
| IN-D-07 | The scope is capture only. | INC, "Requirements (from handoff)" |
| IN-D-08 | Done means: all three intakes work with no bugs, and Justin is satisfied. | INC |
| IN-D-09 | The final deliverable is the backlog migration plan. The migration is a different project. | INC |
| IN-D-10 | Phone-first capture. PC-hosted system. Separate vaults. No full-vault sync. No paid sync. | INB, INC |
| IN-D-11 | Capture records the time stamp and the source only. | INC |
| IN-D-12 | Capture must work if Claude is down. | INC |
| IN-D-13 | The sweep never deletes a file. It moves the original to `_processed`. | INC |
| IN-D-14 | The `capture` skill writes the text verbatim. Corrections occur in triage. | INC |

## 4. Open decisions

Refer to IN-06, section 6.

## 5. Part C: decisions from the review

Record each new decision here.

| ID | Date | Decision | Reason | Items closed | Documents to update |
|---|---|---|---|---|---|
| IN-D-15 | 2026-11-12 | The Intake System is developed second, after the Knowledge System. | X-D-01 | | IN-01, IN-04 |
| IN-D-16 | 2026-11-12 | The Intake System has two purposes. It is the one place for all captures: notes, thoughts, links, and all other items. It also supplies sources to the Knowledge System. | Justin: Intake "is pulling double duty". | X-D-03 | IN-01 |
| IN-D-17 | 2026-11-12 | The Intake System owns triage. Triage is manual at first. An agent or automation comes later. This reverses IN-D-02. The review pass returns to Intake scope as one form of triage automation. | Justin | IN-C-01, IN-G-10 in part, X-G-02 in part | IN-01, IN-02, IN-04 |
| IN-D-18 | 2026-11-12 | Field names: `intake-channel` replaces `source`. `url` replaces `link`. `captured` stores date and time. The built `capture` skill writes `source`. Change it in development. | X-D-10 | IN-C-03 in part | IN-02, IN-03 |
| IN-D-19 | 2026-11-12 | Work content rule (X-D-12) replaces "personal only". | Justin wants work reminders and items that he captures when he is not at work. | IN-CON-05, IN-GN-12 | IN-01, IN-02 |
| IN-D-20 | 2026-11-12 | The Google Drive folder `ORION Vault Inbox` is the "drop folder". "Inbox" means `00.01 System Inbox`. | X-D-17 | | IN-02, IN-03, IN-04 |
| IN-D-21 | 2026-11-12 | The share channel carries no user note. Accepted for now. Review it again in development. | X-D-18 | IN-G-16 PINNED | |
| IN-D-22 | 2026-11-12 | Time budget: 5 to 10 hours each week. | X-D-14 | IN-Q-05 | IN-04 |
| IN-D-23 | 2026-11-12 | The KMO capture scope moves to the Intake System as candidate channels: Mailroom intake, phone share, browser extension, quick note, file upload, URL submission. | X-D-04 | X-C-08 | IN-01 |
| IN-D-24 | 2026-11-12 | The standard document set replaces the one-page charter. | Justin approved the document map. | IN-C-09, IN-Q-02 | IN-01 |
| IN-D-25 | 2026-11-12 | The cross-system decisions X-D-11 (no paid tools) and X-D-13 (needs-review gate) apply to the Intake System. | PRG-00, section 11 | | IN-01, IN-02 |

## 6. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Added Part C decisions IN-D-15 to IN-D-25 from the review. |
