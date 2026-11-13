---
title: Intake System — Project Charter
id: IN-01
system: Intake System
type: project-charter
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [INB, INC]
---

# Intake System — Project Charter

## 1. Document status

This charter is not approved.

It consolidates the project brief of 2026-11-05 [INB] and the session context of 2026-11-10 [INC].

INC says that the project charter is "paused" and that "the build got ahead of the paperwork". INC gives a charter outline and a draft of Section 1. This document uses that outline and that draft.

INC also records an open decision: a charter of one page, written in one pass. This document is longer than one page. Refer to IN-C-09.

Review result (2026-11-12): Justin approved the document set in place of a one-page charter (IN-D-24). Section 4.4 gives the scope changes.

## 2. Problem and purpose

### 2.1 Draft from INC (NOT LOCKED)

INC marks this text "NOT locked". Justin must lock it or edit it (IN-Q-01).

> **Problem:** Two kinds of things get lost.
> 1. **Fleeting thoughts.** Ideas, to-dos, gift ideas and "I need to remember to..." show up all day, mostly while I'm away from a desk, and they vanish before they get captured.
> 2. **Saved content.** Links, articles and videos (YouTube, TikTok, news feeds) get saved into whichever app I'm in, scattered across bookmarks and saved lists that never get opened again.
>
> **Purpose:** One reliable front door into ORION. Anything, whether a thought, a link or a video, captured in seconds from phone or PC, lands as a note in 00.01 System Inbox with a timestamp and source. Capturing is not committing: capture now, decide later.
>
> **Principle:** Capture stays dumb and dependable. No tagging, filing or judging at the point of capture.

### 2.2 Problem statement in INB

INB lists five problems:

1. **Thoughts vanish.** Ideas, to-dos, and "look this up" moments disappear before capture.
2. **Saved content is a graveyard.** Hundreds of saved YouTube videos and TikToks. Easy to save, impossible to find again.
3. **Everything is scattered.** Each app has its own saved list. Bookmark managers such as Raindrop "didn't stick".
4. **Read-later never gets read.** Saved articles do not come back when free time exists.
5. **Friction kills capture.** If capture takes more than a few seconds, it does not occur.

### 2.3 Review note

Problems 2 and 4 are about retrieval and resurfacing. The scope in section 4 excludes retrieval and resurfacing. The Intake System alone does not solve problems 2 and 4. Refer to IN-C-11.

Review result: triage is now in Intake scope (IN-D-17). Retrieval and resurfacing still have no owner (X-G-02).

## 3. Objectives and definition of done

### 3.1 Objective [INB]

One inbox catches everything (thoughts, notes, links, videos) in seconds, from any app, by text, share button, or voice. Each capture lands in the computer vault with sufficient metadata to find and sort it later.

### 3.2 Definition of done

| Item | Source | Status |
|---|---|---|
| All three intakes operate from end to end. | INB, INC | STATED |
| Captures land in the computer vault without manual copy. | INB | STATED |
| No known bugs. | INB, INC | STATED |
| Justin is satisfied. | INB, INC | GAP. The criteria are not defined (IN-G-01). |
| The backlog migration plan is written and handed off. | INB, INC | STATED |

## 4. Scope

### 4.1 In scope

- Capture methods ("intakes" or "channels") from phone and computer [INB].
- Delivery of captures to the intake folder of the computer vault [INB].
- A migration plan for the existing backlog. Plan only [INB].

INC states: "Scope = CAPTURE ONLY."

### 4.2 Out of scope

| Item | Destination | Source |
|---|---|---|
| The review pass | CHANGED. Back in scope as one form of triage automation (IN-D-17). | INC; IN-D-17 |
| Triage, sorting, priority | CHANGED. In scope (IN-D-17). | INB, INC; IN-D-17 |
| Retrieval, resurfacing | No owner. Refer to X-G-02. | INB, INC |
| Execution of the backlog migration | Separate project. It uses the plan from this project. | INB, INC |
| A recipe section in the vault | Not planned. Recipes go into intake for now. | INB |
| Work content | CHANGED. Permitted under the work content rule. Items related to Charter or Spectrum get "needs review" (IN-D-19). | INB; X-D-12 |
| Google Keep as a channel | Rejected for v1. | INC (DECIDED) |
| A custom Android intake app | Parked as v2. | INC (DECIDED) |

Review result: the Intake System owns triage (IN-D-17). No separate sorting project exists.

### 4.3 Scope change between the sources

INB put the review pass and its metadata in scope. INC moved the review pass out. Refer to IN-C-01 and IN-C-02.

### 4.4 Scope changes from the review

- Triage of all captures is in scope. Manual first. An agent or automation later (IN-D-17).
- The Intake System has two purposes: the one place for all captures, and the supply of sources to the Knowledge System (IN-D-16).
- After the Intake System exists, the sweep brings captures into the inbox. The Knowledge System Orchestrator then routes candidate items (X-D-03).
- The Intake note holds the routing result that the Orchestrator writes (X-D-08).
- The KMO capture channels are candidate channels for this system (IN-D-23).
- Development starts after the Knowledge System (IN-D-15).

## 5. Channels

| Channel | Method | Status on 2026-11-10 [INC] |
|---|---|---|
| Voice | Phone power button → Claude assistant → "use the capture skill: …" | BUILT |
| Share | Any app → Share → "Save to Drive" → drop folder | BUILT. Tested with YouTube only. |
| Quick note | Plan: a small phone-only Obsidian vault with one-way sync to the drop folder | Not tested |
| Sweep (transport, not a channel) | PC script moves files from the drop folder into ORION | Not built |

Details are in IN-03.

## 6. Note format

Each capture becomes one note in `00.01 System Inbox`. The note has minimal frontmatter (`captured`, `intake-channel`, and `url` for a URL; names per IN-D-18) and then the raw content [INC].

Details are in IN-03, section 7.

## 7. Constraints

| ID | Constraint | Source | Status |
|---|---|---|---|
| IN-CON-01 | No paid tools or subscriptions for sync. Preferably none for all other functions. | INB, INC | STATED |
| IN-CON-02 | Capture occurs mostly on the phone. The system is on the computer. | INB, INC | STATED |
| IN-CON-03 | The phone vault and the computer vault stay separate. No full-vault sync. | INB, INC | STATED |
| IN-CON-04 | Free time is limited. Work occurs in short sessions, frequently on mobile. | INB | STATED |
| IN-CON-05 | Personal only. No work content. | INB | CHANGED (IN-D-19). Refer to IN-CON-09. |
| IN-CON-06 | The phone is Android. | INC | DECIDED |
| IN-CON-07 | Capture must work if Claude is down. "Claude is the courier, not the mailbox." | INC | CONFLICT IN-C-06 |
| IN-CON-08 | Keep v1 small. | INC | STATED |
| IN-CON-09 | Work content rule. Work items are permitted. Items related to Charter or Spectrum get "needs review". | X-D-12 | NEW |
| IN-CON-10 | An item with "needs review" stops until Justin decides. | X-D-13 | NEW |
| IN-CON-11 | Time budget: 5 to 10 hours each week. | X-D-14 | NEW |
| IN-CON-12 | Development starts after the Knowledge System. | X-D-01 | NEW |

IN-CON-01 now applies to both systems. The existing Claude plan is not included (X-D-11).

## 8. Roles

| Role | Person or tool | Source |
|---|---|---|
| Owner and only user | Justin | INB, INC |
| Capture assistant on the phone | Claude, with the `capture` skill | INC |
| Builder of the sweep | Claude Code, at the ORION vault root | INC |
| Triage | Justin, by hand at first. An agent or automation later. | IN-D-17 |
| Router of knowledge candidates | Knowledge System Orchestrator, after the Intake System exists | X-D-03 |

## 9. Deliverables

Refer to IN-04, section 4.

## 10. Risks

Refer to IN-06, section 2.

## 11. Open questions that block approval of this charter

| Order | Decision | Reference | Status |
|---|---|---|---|
| 1 | Lock or edit the Section 1 text. | IN-Q-01 | OPEN. Section 1 does not include triage (IN-D-17). |
| 2 | The form of the charter | IN-Q-02, IN-C-09 | RESOLVED (IN-D-24) |
| 3 | Measurable criteria for "satisfied" and for "done" | IN-Q-04, IN-G-01 | OPEN |
| 4 | The quick-note channel approach | IN-Q-03 | OPEN |
| 5 | The owner of the sorting scope | X-G-02 | RESOLVED in part (IN-D-17) |
| 6 | The project name and ID | IN-C-10 | PINNED |

## 12. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: scope changes, constraints, roles, blocking questions. |
