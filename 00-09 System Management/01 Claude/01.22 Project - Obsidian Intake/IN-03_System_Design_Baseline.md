---
title: Intake System — System Design Baseline
id: IN-03
system: Intake System
type: system-design
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [INB, INC]
---

# Intake System — System Design Baseline

## 1. Status

This document records the design on 2026-11-10 [INC]. Part of the system is built. This review did not test any part.

INC says: "Nothing below is locked unless marked LOCKED, CONFIRMED or DECIDED."

## 2. Architecture as recorded

INC marks this architecture "DECIDED in practice".

```
PHONE (Android)                    GOOGLE DRIVE                 PC (Windows)
---------------                    ------------                 ------------
Voice  → Claude `capture` skill ─┐
Share  → "Save to Drive"        ─┼→ ORION Vault Inbox ─ sweep → ORION vault
Quick note → phone vault + sync ─┘   └ _processed               └ 00.01 System Inbox
```

- The phone channels put files into a Google Drive folder.
- A sweep on the PC moves the content into ORION.
- The inbox is separate from the vault.
- "Obsidian is a destination, not a capture tool." [INC]

Review result: after the Intake System exists, the Knowledge System Orchestrator routes candidate items from the inbox (X-D-03). The Intake note holds the routing result (X-D-08).

## 3. Components and status

| Component | Function | Status [INC] |
|---|---|---|
| `ORION Vault Inbox` (Google Drive folder) | Holds each capture until the sweep runs. | BUILT |
| Voice channel | Spoken capture through Claude. | BUILT |
| Share channel | Capture of a link from any app. | BUILT. Tested with YouTube only. |
| Quick-note channel | Typed capture on the phone. | Not tested |
| `_processed` subfolder | Holds originals after the sweep. | Not made |
| Sweep | Moves captures from Drive into ORION. | Not built |
| `00.01 System Inbox` (ORION folder) | The landing location. | Named as the landing location. The source does not say if the folder exists. |

## 4. Accounts [INC]

| Account | Use | Owns |
|---|---|---|
| `ja.willxiv@gmail.com` | Personal account. The phone and the PC use it. | The folder `ORION Vault Inbox`. Files that the user shares from the phone. |
| `willwander.20@gmail.com` | Outward-facing account. This is the Google account that connects to Claude. It has write access to the drop folder through sharing. | Files that Claude writes. |

Notes from INC:

- The sweep must move files that either account owns. Ownership problems are possible when the sweep moves a file to `_processed`.
- An old folder named `ORION` is at the top of the `willwander.20` Drive. It dates from February 2025. Its purpose is unknown. INC says that this does not block the work.

## 5. Drop folder [INC]

| Item | Value |
|---|---|
| Folder name | `ORION Vault Inbox` |
| Location | Google Drive |
| Owner | `ja.willxiv` |
| Folder ID | `1gdKpwMQyThsU7PsAJxMy8yJUNKNWy3jr` |
| Subfolder to make | `_processed` |

## 6. Channels

### 6.1 Voice — BUILT

Procedure:

1. Hold the phone power button. The Claude assistant opens.
2. Say "use the capture skill:" and then the text.

Behavior of the `capture` skill:

- It writes one plain `.md` file to the drop folder by folder ID.
- It does not write to Obsidian.
- It does not offer a calendar entry or an alarm.
- It does not ask questions.
- It does not add tags.

Test record: the file `claude-2026-11-10-203915.md` "came back clean" [INC].

Trigger phrase (CONFIRMED by test): "use the capture skill: …". INC says that "capture" alone and "capture skill" alone do not reliably start the skill in the phone assistant overlay. The user rejected a dedicated unusual word such as "Squirrel". Refer to IN-C-07.

History: the first test failed. The voice input wrote "Captured" for "Capture". The skill did not start. Claude then asked questions, tried Obsidian, and offered a calendar entry.

The power-button chat is a regular chat. It is outside the Claude Project for this work.

Fallback when Claude is down: Android voice typing into the quick-note channel.

### 6.2 Share — BUILT (YouTube tested)

Procedure:

1. In any app, select Share.
2. Select "Save to Drive".
3. Select `ORION Vault Inbox`.

Planned tests: one TikTok share and one Chrome page share [INC].

### 6.3 Quick note — NOT TESTED

Plan [INC]:

- A small phone-only Obsidian vault that contains an inbox only.
- A free Android sync app sends the folder one-way to `ORION Vault Inbox`. Examples: FolderSync, Autosync for Google Drive.
- The plan keeps the Obsidian widget.

INC gives medium confidence that the free tiers are sufficient. INC says that a test is necessary.

INB said that the Obsidian widget "likely covers most of this" for a quick note straight into the vault.

## 7. Note format

### 7.1 Files in the Drive inbox, by channel

| Channel | File name | Extension | Frontmatter | Content | Owner |
|---|---|---|---|---|---|
| Voice | `claude-YYYY-MM-DD-HHMMSS` | `.md` | `captured` (omitted if unknown), `source: claude` | The spoken text, verbatim | `willwander.20` |
| Share | The title of the shared item | None | None | The URL | `ja.will` |
| Quick note | Not defined | Not defined | Not defined | Not defined | Not defined |

The built `capture` skill writes `source`. IN-D-18 renames the field to `intake-channel`. The skill change is a development task.

"Verbatim" means that speech-to-text errors stay in the text. Example from INC: "by dog treats". Corrections occur in triage.

### 7.2 Note in `00.01 System Inbox` [INC]

- One note for each capture.
- Minimal frontmatter: `captured`, `intake-channel`, and `url` when the capture is a URL. Names per IN-D-18.
- The raw content follows the frontmatter.

Rules for the field values:

| Field | Rule |
|---|---|
| `captured` | Use the frontmatter value. If none is present, use the file creation time. Store date and time (X-D-10). |
| `intake-channel` (was `source`) | `claude` when the file name starts with `claude-`. `share` when the content is only a URL. `quick` when the file comes from the phone quick-note vault. |
| `url` (was `link`) | The URL of a share. |
| Note title | For a share: the file name, after removal of characters that Windows does not permit. |

The sources do not define the note title for voice captures and quick notes. The sources do not define the format of `captured`. Refer to IN-G-03.

## 8. Sweep [INC]

The sweep is not built. Its requirements are IN-SW-01 to IN-SW-13 in IN-02.

INC plans a "sweep spec for Claude Code". The spec is not written.

## 9. Metadata

### 9.1 Fields in v1 [INC]

`captured`, `intake-channel`, `url`. Names per IN-D-18. INC used `source` and `link`.

"Capture stays dumb: timestamp + source only." [INC]

### 9.2 Draft field table in INB

INB says: "go wide now, cut during implementation". INC moved the review pass out of v1. The fields that depend on the review pass have no owner at this time.

| Field | Example values | How INB fills it | In v1 [INC] |
|---|---|---|---|
| captured | Date and time | Automatic | Yes |
| source | quick note, share, voice, YouTube, TikTok, Chrome, news feed | Automatic where possible | Yes, with different values (IN-C-03) |
| link | URL | Automatic for shares | Yes |
| type | idea, to-do, look into, learn, watch, read, buy, gift, recipe, place, quote | Dropdown at capture, or review pass | No (IN-C-02) |
| category | recipes, places, buy, house, business, games, people, media | Review pass | No |
| area | personal, house, business | Review pass | No |
| purpose | read later, reference | Review pass | No |
| person | The person that the capture is about | Review pass | No |
| date | Event date, for example a birthday | Review pass | No |
| time-to-consume | ~5 min, ~20 min, 1 hr+ | Review pass | No |
| status | new, reviewed, archived | Automatic, then review pass | Not stated (IN-C-02) |
| tags | Free-form topics | Review pass | No |
| summary | One line | Review pass (Claude) | No |
| priority | Quick rating | Optional | No |

## 10. Vault and project structure [INC]

| Item | Value |
|---|---|
| Vault | ORION |
| Vault path | `C:\Users\Justin\Obsidian\ORION` |
| Structure | Johnny.Decimal |
| Landing location | `00-09 System Management\00 System Backend\00.01 System Inbox` |
| Project record | Work Package `W0011~00.01 Obsidian Intake v1`, in `W0000-9999 Work Package\` |
| Parent | `00.01`. INC says: re-parent later. Change only the part after `~`. No placeholder IDs. |
| Master project instructions | `01 Claude\01.23 Project - Obsidian Intake`. Not built. CHANGED: the Intake folder is `01.22` (X-D-22). `01.23` belongs to Knowledge Management. |
| Build tool | Claude Code at the vault root |
| Root `CLAUDE.md` | ORION house rules |
| Work package `CLAUDE.md` | Imports the master in `01.23` with `@import`. INC says: test `@import`. |
| Folder creation | The Templater script "Build Folders From List". Input: an indented list. |

### 10.1 More detail from the vault-setup handoff [VSH]

System zeros in `00-09 System Management\00 System Backend\`:

| ID | Name |
|---|---|
| 00.00 | System JDex |
| 00.01 | System Inbox |
| 00.02 | System Tasks |
| 00.03 | System Links |
| 00.04 | System Reference |
| 00.05 | System Assets |
| 00.07 | System Templates |
| 00.08 | System AI |
| 00.09 | System Archive |

VSH lists no `00.06`.

Claude's office in `00-09 System Management\01 Claude\`:

| ID | Name |
|---|---|
| 01.00 | JDex |
| 01.01 | Inbox |
| 01.11 | Profile |
| 01.12 | Memory |
| 01.13 | Work Log |
| 01.14 | Outbox |
| 01.15 | Storage Folder. The default save location of the desktop app. |
| 01.21 | Project - Bill Tracker |
| 01.23 | Project - Obsidian Intake. Planned. Not built. CHANGED: Intake is `01.22`. `01.23` is Project - Knowledge Management (X-D-22). |

Other facts from VSH:

- The Templater script "Build Folders From List" is in `00.07 System Templates\Templater`. It makes folders only. It makes no notes.
- The parent of the work package is `00.01 System Inbox`, because intake feeds the inbox. Re-parent it when the larger system gets its own ID.
- The root `CLAUDE.md` holds the house rules for all of ORION: Johnny.Decimal rules, never reuse IDs, logging.
- Working method: Claude drafts the charter one section at a time. Justin corrects each section. Then they lock it.
- VSH is the source of truth over the chat that made it. The chat holds the reasons for the decisions.

Facts from the same chat, outside the VSH code block:

- The chat proposed five work package subfolders: `10 Scope`, `20 Plan & Schedule`, `30 Decisions Log`, `40 Risks & Issues`, `50 Closeout`. The charter goes in `10 Scope`. The sources do not say if Justin made the folders.
- `W0000` to `W0010` stay free for system use. `W0011` is the first real work package.

VSH items that INC closed later:

| VSH item | INC result |
|---|---|
| A fallback for a PC that is asleep: "likely a Google Doc/Drive inbox" | The drop folder is built. |
| Unknown: can power-button chats sit inside the Claude Project? | No. The power-button chat is a regular chat. |

Review note: X-D-15 recommends that the Knowledge System lives in ORION. The root house rules then apply to it. The Orchestrator `CLAUDE.md` goes in the Knowledge System area.

## 11. Content scope [INB]

| Group | Content |
|---|---|
| Brain dump | Ideas, to-dos, items to examine, notes |
| Life lists | Birthdays, facts about people, movies, books, gift ideas |
| Saved content: read later | Articles from news feeds and from the browser |
| Saved content: reference | YouTube and TikTok videos for learning. "Keep as sources, not homework." |
| Confirmed categories | Recipes and cocktails. Places: restaurants, day trips, shops. Items to buy: gifts, fragrances. House: projects, instructions, parts. Business: ideas, marketing examples, tools. Games and date nights. Quotes and posts. |
| Capture sources | YouTube, TikTok, Chrome, phone home-screen news feed, and any other app with a share button |

The news feed app is not identified (IN-Q-06).

## 12. Rejected options and parked options [INC]

| Option | Result | Reason | Condition to review again |
|---|---|---|---|
| Google Keep | Rejected for v1 | No official Keep API for personal accounts. The unofficial library needs a full-account master token. | Google opens a personal API. |
| Custom Android intake app | Parked as v2 | Not necessary for v1. | Three to four weeks of real use with the Drive inbox show gaps. Those gaps become the spec. |
| A dedicated unusual trigger word, for example "Squirrel" | Rejected by the user | The user accepts the full phrase. | None |

## 13. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: drop folder term, field names, routing note, VSH details in section 10.1. |
