---
title: Program Overview and Document Map
id: PRG-00
system: Program
type: program-overview
status: reviewed
version: 0.3
created: 2026-11-12
---

# Program Overview and Document Map

## 1. Purpose

This document set consolidates the planning documents in the Google Drive folder `Intake`.

The set is the proposed source of truth for two development efforts:

1. **The Knowledge System.** This is the "brain" and its agents.
2. **The Intake System.** This is the capture path into the ORION vault.

The two efforts have separate document sets. This document connects them.

The set is a draft. The Knowledge Owner must review it before it becomes the approved baseline.

On 2026-11-12, Justin reviewed this document section by section. Section 11 records the results. The other 14 documents contain the results that apply to them. Their detail sections are not reviewed yet.

## 2. Consolidation rules

Claude wrote this set on 2026-11-12 from 16 source documents. Claude applied these rules:

- The set records what the source documents say. It does not add new design.
- The set does not resolve a conflict. It records each position and the decision that is necessary.
- The set does not use the document date to select a position. A newer document replaces an older document only when a source says so.
- Each statement shows its source code in square brackets. Example: `[KVC §2.2]`.
- Each item has a status label. Refer to section 9.
- A note that starts with "Review note" is an observation from this review. It is not source content.
- A decided term (section 8.1) governs. Text that records what a source says keeps the source term.
- A decision from the review of 2026-11-12 overrides a source.

## 3. Source document register

### 3.1 Documents reviewed

| Code | Source document | Date in source | Status in source | Assigned to |
|---|---|---|---|---|
| INB | `Obsidian Intake System — Project Brief.md` | 2026-11-05 | discovery-complete | Intake System |
| INC | `Obsidian Intake v1 — Session Context.md` | 2026-11-10 | paused | Intake System |
| KVC | `Project Charter - Knowledge Vault.md` | 2026-11-11, version 1.0 | planning | Knowledge System |
| K00 | KMO package `README.md` | No date | Starting specification | Knowledge System |
| K01 | `01_PROJECT_CONTEXT.md` | No date | Not given | Knowledge System |
| K02 | `02_SYSTEM_SPECIFICATION.md` | No date | Not given | Knowledge System |
| K03 | `03_DECISIONS_AND_GOVERNANCE.md` | No date | Not given | Knowledge System |
| K04 | `04_IMPLEMENTATION_PLAN.md` | No date | Not given | Knowledge System |
| K05 | `05_OPEN_ITEMS_AND_RECOMMENDATIONS.md` | No date | Not given | Knowledge System |
| K06 | `06_WORKFLOW_AND_KNOWLEDGE_LIFECYCLE.md` | No date | Not given | Knowledge System |
| K07 | `07_DATA_MODEL_STARTER.md` | No date | Design draft | Knowledge System |
| KCM | KMO package `CLAUDE.md` | No date | Not given | Knowledge System |
| KA-R | `.claude/agents/reporter.md` | No date | Not given | Knowledge System |
| KA-E | `.claude/agents/editor.md` | No date | Not given | Knowledge System |
| KA-M | `.claude/agents/managing-editor.md` | No date | Not given | Knowledge System |
| KA-C | `.claude/agents/knowledge-curator.md` | No date | Not given | Knowledge System |
| VSH | Vault-setup chat handoff. A code block in the chat "Johnny Decimal system guide". | 2026-11-10 | Handoff. VSH says that it is the source of truth over the chat that made it. | Intake System; Program |

"KMO" means Knowledge Management Office. It is the system name in the K-series documents.

This review added VSH on 2026-11-12. IN-03, section 10.1 contains its details.

The K-series documents have no date. The example IDs and time stamps in K07 use 2026-11-12.

### 3.2 Documents that the sources name and their status

| Item | Named in | Status after the review of 2026-11-12 |
|---|---|---|
| Vault-setup chat handoff, 2026-11-10 | INC | Reviewed. Code VSH. Justin also has a copy on his desktop. |
| `capture` skill file | INC | Exists on Justin's desktop. Not reviewed. Upload it in development. |
| `claude/intake-project-brief.md` | INC | Probably the same document as INB. Not confirmed (IN-A-04). |
| ORION root `CLAUDE.md` (house rules) | INC, VSH | v0.2, reviewed by Justin 2026-11-12 (X-D-23). Content from VSH: Johnny.Decimal rules, never reuse IDs, logging. |
| Master project instructions in `01.23` | INC, VSH | Not built. |
| `.claude/skills/` procedures | K02 §14 | PLANNED. A development deliverable (KS-D-13). |
| "Approved template" for each agent output | KA-R, KA-E, KA-M | PLANNED. A development deliverable (KS-D-13). |

Review note: the voice review record said that the root `CLAUDE.md` is on Justin's desktop. Justin said that the handoff and the `capture` skill file are on his desktop. This table uses Justin's statement.

## 4. Document map

| ID | Document | Content |
|---|---|---|
| PRG-00 | `00_Program_Overview.md` | This document. Boundary, cross-system conflicts, cross-system gaps. |
| KS-01 | `KS-01_Project_Charter.md` | Purpose, problem, scope, success criteria, roles, constraints. |
| KS-02 | `KS-02_Requirements_Specification.md` | Functional and non-functional requirements with source and status. |
| KS-03 | `KS-03_System_Design_Baseline.md` | Components, workflows, governance, permissions, storage. |
| KS-04 | `KS-04_Data_Model.md` | Objects, fields, value lists. Two schemas side by side. |
| KS-05 | `KS-05_Agent_Specifications.md` | Orchestrator, four specialist agents, Triage Assistant. |
| KS-06 | `KS-06_Roadmap_and_Phase_Plan.md` | Two phase plans, test approach, long-term stages. |
| KS-07 | `KS-07_Decision_Log.md` | Decisions and design statements with source. |
| KS-08 | `KS-08_RAID_and_Open_Items.md` | Risks, assumptions, conflicts, gaps, open decisions, dependencies. |
| IN-01 | `IN-01_Project_Charter.md` | Purpose, problem, scope, done criteria, constraints. |
| IN-02 | `IN-02_Requirements_Specification.md` | Requirements for channels, inbox, sweep, note format. |
| IN-03 | `IN-03_System_Design_Baseline.md` | Architecture as recorded, accounts, channels, sweep, metadata. |
| IN-04 | `IN-04_Roadmap_and_Status.md` | Status on 2026-11-10, phases, deliverables, next steps. |
| IN-05 | `IN-05_Decision_Log.md` | Decisions with source. |
| IN-06 | `IN-06_RAID_and_Open_Items.md` | Risks, assumptions, conflicts, gaps, open decisions, dependencies. |

## 5. The two efforts

### 5.1 Knowledge System

Sources: KVC and the KMO package (K00 to K07, KCM, and four agent files).

The two source sets describe two different designs for the same goal.

- **Charter design [KVC].** A manual-first Obsidian vault. Three layers: Source, Brief, Atomic Note. One agent, the Triage Assistant, comes after a manual pilot.
- **KMO design [K00–K07].** An agent workflow in Claude Code. One Orchestrator and four specialist agents. Fourteen object types. Change Orders control each change to the Brain.

No source says which design is the baseline. This is the primary conflict in the set. Refer to KS-C-01 in KS-08.

### 5.2 Intake System

Sources: INB and INC.

The Intake System is partly built. Two of three capture channels operate. The sweep from Google Drive into ORION is not built [INC].

INC records decisions that change INB. The Intake set shows these changes.

### 5.3 Boundary as the sources record it

- The Intake System ends when a capture is a note in `00.01 System Inbox` in ORION [INC].
- The Knowledge System starts at an inbox stub [KVC §6.1] or at a Source record [K06 §2].
- No source defines the step between these two points.

### 5.4 Scope that has no owner

INB and INC move this scope to a "future sorting project":

- Triage, sorting, and priority of captures [INB].
- Retrieval and resurfacing of captures [INB].
- The review pass. Claude fills in metadata and a one-line summary [INB, INC].
- The weekly triage habit of approximately 15 minutes [INC].
- The backlog migration itself [INB].

No document exists for the sorting project. The user request of 2026-11-12 defines two efforts only. This scope belongs to neither effort at this time. Refer to X-G-02.

### 5.5 Review result

On 2026-11-12, Justin made these decisions. Section 11 gives the full list.

- The Knowledge System baseline is a defined combination of the two designs. The KMO package is the later evolution of the Charter design (KS-D-01).
- The Knowledge System is developed first. The Intake System is developed second (X-D-01).
- Until the Intake System exists, Justin gives sources to the Reporter by hand (X-D-02).
- The Intake System owns capture for both systems (X-D-04).
- The Intake System owns triage. Triage is manual at first. Automation comes later (X-D-05).
- The Intake System has two purposes. It is the one place for all captures. It also supplies sources to the Knowledge System (IN-D-16).
- The scope in section 5.4 now has an owner, except retrieval and resurfacing of captures that are not knowledge.

## 6. Cross-system conflicts

Each conflict needs a decision from the Knowledge Owner.

Section 11.2 gives the status of each conflict after the review of 2026-11-12.

| ID | Topic | Position 1 | Position 2 | Why it matters |
|---|---|---|---|---|
| X-C-01 | Ownership of capture and intake | The Intake System owns capture. Phone channels put files in a Drive folder. A sweep moves them to `00.01 System Inbox` [INC]. | KVC has its own `01 Inbox` with one stub for each capture and a 30-second capture target [KVC §4, §5]. KMO makes a future Mailroom "the default intake path" and requires one intake queue [K03 D-15, K06 §1]. | Three intake designs exist. The two efforts can build the same function two times. |
| X-C-02 | Meaning of "triage" | Intake: the human sorts captures later. It is a different project [INB, INC]. | KVC: the Triage Assistant drafts a Brief from an inbox stub [KVC §7]. KMO: the Orchestrator classifies a submission and selects a processing level [K06 §2]. | One word has three meanings. Requirements that use the word are not clear. |
| X-C-03 | Location of the Knowledge System | ORION is the vault. Path: `C:\Users\Justin\Obsidian\ORION`. It uses Johnny.Decimal [INC]. The user request refers to "my Vault". | KVC tells the user to save the charter "in the new vault". KVC defines its own top-level folders [KVC §5, §10]. KMO says to "create the project folder" and to confirm where the Brain lives [K04 Phase 0]. | The folder structure, the numbering, and the Claude Code setup depend on this. |
| X-C-04 | Claude Code instruction files | The ORION root `CLAUDE.md` holds ORION house rules. The work package has its own `CLAUDE.md` [INC]. | The KMO `CLAUDE.md` tells the main Claude Code session "You are the Orchestrator" [KCM]. | If the two efforts share one root, the two files give the session two different roles. |
| X-C-05 | First-pass analysis of a capture | The review pass: Claude fills in metadata and a one-line summary for each new capture [INB]. INC moves it to the sorting project. | The Triage Assistant drafts a Brief [KVC §7]. The Reporter makes a Quick brief [K06 §3]. | Three functions do similar work on the same input. No source relates them. |
| X-C-06 | Field names and values at the handoff | Intake note fields: `captured` (date and time), `source` (capture channel), `link` [INC]. | KVC stub fields: `type`, `url`, `captured` (date only), `status`, `note` [KVC §6.1]. KMO Source fields: `url`, `accessed_at`, `submission_context` [K07 §3]. | The same data has three names. `source` has two meanings. Refer to section 8. |
| X-C-07 | Paid tools | Intake constraint: no paid tools or subscriptions for sync, "and preferably for everything" [INB]. | KVC lists Obsidian Sync as a backup option [KVC §7 Phase 0]. Obsidian Sync is a paid service. | No source says that the Intake constraint applies to the Knowledge System. |
| X-C-08 | Later capture channels | Intake builds quick note, share, and voice channels [INB, INC]. | KMO Phase 8 lists phone share action, browser extension, quick note capture, file upload, and URL submission [K04]. | KMO Phase 8 repeats Intake scope. |

## 7. Cross-system gaps

Section 11.2 gives the status of each gap after the review of 2026-11-12.

| ID | Gap | Why it matters |
|---|---|---|
| X-G-01 | No interface definition between the Intake System and the Knowledge System. No source says which record moves, who moves it, or when. | Neither effort can define its start or end condition fully. |
| X-G-02 | The sorting project has no document and no owner effort. Refer to section 5.4. | INB problems 2 and 4 are "saved content is a graveyard" and "read-later never gets read". The Intake System does not solve them. They depend on this scope. |
| X-G-03 | No rule selects which captures become knowledge Sources. Captures include to-dos, gift ideas, birthdays, and places [INB]. | Most captures are not research sources. The Knowledge System needs a filter. |
| X-G-04 | The backlog has no destination after intake. INB records "hundreds of saved YouTube videos and TikToks". KVC defers migration of existing notes. KMO does not mention a backlog. | A large backlog can flood the Knowledge System. K05 lists "too much output" as a risk. |
| X-G-05 | The share channel cannot carry a user note. The share file contains only the URL [INC]. KVC and KMO want an optional note on why the user saved the item [KVC §6.1, K03 D-16]. | The context is lost at capture for shared items. |
| X-G-06 | The Knowledge System has no stated constraint for cost, time budget, phone use, or work content. The Intake System states all four [INB]. | The constraints of one effort possibly apply to the other. No source confirms this. |
| X-G-07 | No source gives calendar dates, effort estimates, or priority between the two efforts. KVC Phase 0 gives "30 min" only. | The sources are not sufficient to make a schedule or a sequence. |
| X-G-08 | No shared conventions exist for YAML field style, date and time format, file names, or work package IDs. The Intake project has ID `W0011~00.01` [INC]. The Knowledge System has no ID. | Records from the two efforts will not match. |
| X-G-09 | This review did not receive seven items that the sources name. Refer to section 3.2. | This set is possibly incomplete for those items. |
| X-G-10 | NEW. The Orchestrator writes the routing result on the Intake note (X-D-08). No permission rule covers an agent write outside the Brain. | Knowledge System agents write into the Intake System. |

## 8. Term collisions

These terms have different meanings in different sources.

| Term | Meaning in Intake sources | Meaning in KVC | Meaning in KMO |
|---|---|---|---|
| source | The capture channel. Values: `claude`, `share`, `quick` [INC]. | The original material: URL, video, PDF, book, class. | The original material. Also a record type with ID prefix `SRC`. |
| triage | Human sorts captures. Future project. | The Triage Assistant drafts Briefs. | The Orchestrator classifies submissions. |
| inbox | `ORION Vault Inbox` in Google Drive. `00.01 System Inbox` in ORION. The inbox of the phone quick-note vault. | Folder `01 Inbox`. Status value `inbox`. | "Mailroom", "inbox tray", "intake queue". |
| brief | INB is a "Project Brief". | A note about one source. | "Reference Brief". The Reporter makes it. |
| type | Kind of capture: idea, to-do, recipe, place [INB]. | Kind of note: `inbox`, `brief`, `claim`, `concept`, `synthesis`. | Kind of object: `source`, `brain_claim`, `evidence`. |
| status | `new`, `reviewed`, `archived` [INB]. | Brief: `drafted`, `reviewed`, `promoted`, `rejected`. Atomic Note: `draft`, `accepted`, `disputed`. | Claim: up to eight values. Task: twelve values. |
| reviewed | The review pass by Claude is complete [INB]. | The human reviewed the Brief [KVC §6.4]. | "Under review" is a claim status. "Awaiting Review" is a task state. |
| capture | The act of saving a thought or link. Also the name of the `capture` skill. | "Capture a source" into `01 Inbox`. | "Capture useful information" is system purpose 1 [K01]. |
| the store of accepted knowledge | Not used. | Folder `03 Knowledge`. "Atomic notes". | "The Brain". |
| the human | "Justin". | "I", "me". | "Knowledge Owner", "the user". |

### 8.1 Decided terms

Decided on 2026-11-12. The rule applies to system terms only. Plain English text and Knowledge HQ labels can use words such as "inbox" and "Mailroom".

| Concept | Decided term | Replaces | Decision |
|---|---|---|---|
| How a capture entered the Intake System | intake channel. Field: `intake-channel`. | `source` in Intake documents | X-D-10 |
| The original material: article, video, PDF, book | source | No change | X-D-10 |
| A web address | `url` | `link`, `source-url` | X-D-10 |
| The time of capture | `captured`, with date and time | Date only in KVC | X-D-10 |
| The store of accepted knowledge | the Brain (for now) | `03 Knowledge`; "knowledge base" | KS-D-08 |
| The structured report about one source | Reference Brief | Brief | KS-D-09 |
| Sorting of captures in the Intake System | triage | No change | X-D-06 |
| The Orchestrator step that selects how to process an item | routing | "Intake and triage" in KMO | X-D-06 |
| The landing folder in ORION | inbox (`00.01 System Inbox`) | `01 Inbox` (KVC); Mailroom; intake queue | X-D-17 |
| The Google Drive folder `ORION Vault Inbox` | drop folder | inbox | X-D-17 |
| The two efforts | Knowledge System; Intake System (working names) | No change | X-D-17 |

Review note: `01.01 Inbox` in Claude's office is a standard Johnny.Decimal name [VSH]. It is not part of the two systems. The term rule does not change it.

## 9. Conventions in this set

### 9.1 Status labels

| Label | Meaning |
|---|---|
| BUILT | A source says that the item exists and operates. This review did not test it. |
| DECIDED | A source marks the item as decided, confirmed, or locked, or lists it in a decision table. |
| STATED | A source states the item as design or as a requirement. The source does not mark it as a decision. |
| DRAFT | A source marks the item as a draft, a suggestion, or a recommendation. |
| OPEN | A source lists the item as an open question. |
| AGREED | The two Knowledge System source sets state the same thing. |
| RESOLVED | A decision from the review closes the item. |
| PINNED | Justin deferred the decision to development. |
| DEFAULT | The default rule in KS-D-01 closes the item. Confirm it in development. |
| RETIRED | A decision removes the item. |
| MOVED | A decision moves the item to the other effort. |
| CHANGED | A decision changes the item. The new text is in the decision. |
| PLANNED | The item does not exist yet. It is a development deliverable. |
| NEW | The item comes from the review of 2026-11-12. |
| CHARTER | Only KVC states the item. |
| KMO | Only the KMO package states the item. |
| CONFLICT | Sources disagree. The register ID follows the label. |
| GAP | No source gives the necessary information. |

### 9.2 ID prefixes

| Prefix | Meaning |
|---|---|
| X- | Cross-system item. This document holds it. |
| KS- | Knowledge System item. |
| IN- | Intake System item. |
| -C- | Conflict. |
| -G- | Gap. |
| -Q- | Open decision. |
| -R- | Risk. |
| -A- | Assumption. |
| -D- | Decision. |
| -DEP- | Dependency. |

### 9.3 Working names

"Knowledge System" and "Intake System" are working names. They come from the user request of 2026-11-12. The final names are open decisions. Refer to KS-C-02 and IN-C-10.

### 9.4 Language standard

The set uses the writing rules of ASD-STE100, Simplified Technical English:

- Short sentences. One topic for each paragraph.
- Active voice.
- One term for one concept.
- No vague words.

Limit: this review did not use an STE checker tool. It did not compare each word with the STE dictionary.

Text in quotation marks and text in code blocks comes from the sources. That text keeps its original words.

## 10. Review sequence

Status on 2026-11-12:

| Step | Item | Status |
|---|---|---|
| 1 | Assign the scope that has no owner (X-G-02, X-C-01) | Done, except retrieval and resurfacing |
| 2 | Select the Knowledge System baseline (KS-C-01) | Done (KS-D-01) |
| 3 | Decide the Knowledge System location (X-C-03) | Done (X-D-20) |
| 4 | Define the interface between the systems (X-G-01, X-C-06) | Partly done. Rest PINNED for Intake development. |
| 5 | Set shared conventions (X-G-08, section 8) | Terms done (section 8.1). Field style PINNED. |
| 6 | Resolve the Knowledge System conflicts in KS-08 | Partly done. KS-08, section 8 gives the status. |
| 7 | Resolve the Intake System open decisions in IN-06 | Partly done. IN-06, section 8 gives the status. |
| 8 | Record each decision in the decision logs | Done for 2026-11-12 |
| 9 | Change the status of each document to `approved` | Not started |

## 11. Review results, 2026-11-12

### 11.1 Cross-system decisions

| ID | Decision | Closes or changes |
|---|---|---|
| X-D-01 | Develop the Knowledge System first. Develop the Intake System second. | X-G-07 in part |
| X-D-02 | Until the Intake System exists, Justin gives sources to the Reporter by hand. Example: a link in a chat. Confirm the method in development. | X-G-01 in part |
| X-D-03 | After the Intake System exists, the sweep brings captures into the inbox. Then the Orchestrator routes candidate items to the Knowledge System. | X-G-01 in part |
| X-D-04 | The Intake System owns capture for both systems. The Mailroom as an intake path and the KVC `01 Inbox` retire. The capture channels in KMO Phase 8 move to the Intake System. | X-C-01, X-C-08 |
| X-D-05 | The Intake System owns triage of all captures. Triage is manual at first. An agent or automation comes later. This reverses IN-D-02. | X-G-02 in part, X-C-05 |
| X-D-06 | "Triage" means sorting in the Intake System only. The Orchestrator step that selects a processing level is "routing". | X-C-02 |
| X-D-07 | The Orchestrator owns a routing rulebook. Each rule applies to one kind of source. Example outcomes: always do a full review; always ask Justin; never process. If no rule applies, the Orchestrator asks Justin and records the answer as a new rule. An item with a URL or attached material is a routing candidate. An item with text only stays in the Intake System. Design in development. | X-G-03, X-G-04 in part |
| X-D-08 | After the Orchestrator examines an item, it records a routing result on the item. Example values: full brief, quick brief, archive only, skipped, needs review. The Orchestrator examines only items with no routing result. Items with "needs review" form a review queue. The field is on the Intake note. It is part of the interface. Values in development. | X-G-01 in part |
| X-D-09 | Each note in both systems has one standard core frontmatter block. Each agent adds its own fields when the note moves through its stage. Field names and details in development. Justin prefers hyphens, and can select his own field names. | X-G-08 in part, X-C-06 in part |
| X-D-10 | Field names at the interface: `intake-channel` replaces the Intake field `source`. `url` replaces `link` and `source-url`. `captured` stores date and time. | X-C-06 |
| X-D-11 | No paid tools or subscriptions in either system. The existing Claude plan is not included in this rule. | X-C-07, X-G-06 in part |
| X-D-12 | Work content rule for both systems. The systems belong to Justin. General professional knowledge, for example project management, is permitted. Work items are permitted, for example personal reminders and items that Justin captures when he is not at work. When an agent or a step identifies an item as related to Charter or Spectrum, it sets the item to "needs review". | X-G-06 in part |
| X-D-13 | Needs-review gate for both systems and all stages. An item with "needs review" does not move to the next stage, and no agent hands it off, until Justin reviews it and records a decision. | New system-wide rule |
| X-D-14 | Time budget: 5 to 10 hours each week. | X-G-07 in part |
| X-D-15 | The Knowledge System location is PINNED for development. Justin's first intent: inside ORION, as its own area. Claude's recommendation (medium confidence; root `CLAUDE.md` not seen): inside ORION, as its own area. Put the Orchestrator `CLAUDE.md` in that area, not at the vault root. Limit agent write access to that area. | X-C-03, X-C-04 |
| X-D-16 | The two efforts are separate initiatives with separate documents. | Confirms the document map |
| X-D-17 | Decided terms: refer to section 8.1. The effort names stay working names until development. | Section 8 |
| X-D-18 | The share channel carries no user note. Justin accepts this for now. He can add a note later or capture through Obsidian. Review it again in Intake development. | X-G-05 |
| X-D-19 | Source register: VSH is reviewed. The `capture` skill file is on Justin's desktop. Skills and output templates are development deliverables. | X-G-09 in part |
| X-D-20 | 2026-11-12, Phase 0. The Knowledge System lives in ORION, in a new area `20-29 Knowledge`. The Orchestrator `CLAUDE.md` and `.claude/agents/` go at the root of the area. Claude Code starts in the area folder for Knowledge System work. Then the area `CLAUDE.md` and the ORION root `CLAUDE.md` both load. Agent write access is limited to the area. Structure: `20 Knowledge Backend` (`20.00` JDex, `20.04` Reference, `20.07` Templates, `20.09` Archive); `21 Brain` (flat, KS-D-10); `22 Workflow` (Sources, Reference Briefs, Knowledge Assessments, Change Orders, logs). The area has no `20.01` inbox (X-D-17). | X-C-03, X-C-04, X-D-15, X-G-08 in part |
| X-D-21 | 2026-11-12, Phase 0. The project documents for the Knowledge System go in `01 Claude\01.23 Project - Knowledge Management`. This replaces `01.99 Knowledge Management`. The Knowledge System has no work package. The area ID `20-29` identifies it. | X-G-08 in part, KS-D-11 |
| X-D-22 | 2026-11-12, Phase 0. Justin renamed the Intake project folder to `01 Claude\01.22 Project - Obsidian Intake`. This removes the double use of `01.21`. `01.23` now belongs to Knowledge Management. Where an IN document gives `01.23` for Intake, read `01.22`. | ID collision found in Phase 0 |
| X-D-23 | 2026-11-12, Phase 0. Justin reviewed the ORION root `CLAUDE.md` (now v0.2). Work log file name: `YYYY-MM-DD Claude Work Log.md`, so that it is not confused with an Obsidian Daily Note. Claude does not delete notes; it moves them to the `.09` archive. Each new area, category, or ID needs Justin's approval. Before Claude uses an ID, it searches the whole vault. The other house rules are sufficient for now. | X-C-04 |
| X-D-24 | 2026-11-12, Phase 0. ID ranges in each category, for all of ORION: `.00` to `.09` standard zeros; `.11` to `.19` reserved for more defaults; content starts at `.21`. Root `CLAUDE.md` §1.1a. The existing folders already follow this rule. | Vault-wide rule |

### 11.2 Status of cross-system items

| ID | Status | Reference | Note |
|---|---|---|---|
| X-C-01 | RESOLVED | X-D-04 | |
| X-C-02 | RESOLVED | X-D-06 | |
| X-C-03 | RESOLVED | X-D-20 | Area `20-29 Knowledge`. |
| X-C-04 | RESOLVED | X-D-20 | Root content per VSH: Johnny.Decimal rules, never reuse IDs, logging. The root file does not exist yet (section 3.2). |
| X-C-05 | RESOLVED | X-D-05, X-D-07, KS-D-12 | Triage in Intake. Reference Briefs by the Reporter. The Triage Assistant is superseded. |
| X-C-06 | RESOLVED | X-D-10 | Field style PINNED (X-D-09). |
| X-C-07 | RESOLVED | X-D-11 | |
| X-C-08 | RESOLVED | X-D-04 | |
| X-G-01 | PINNED | X-D-02, X-D-03, X-D-08, X-D-10 | Rest of the interface in Intake development. |
| X-G-02 | RESOLVED in part | X-D-05 | Open: owner of retrieval and resurfacing for captures that are not knowledge. The backlog migration stays a separate project. |
| X-G-03 | RESOLVED | X-D-07 | Requirement only. Design in development. |
| X-G-04 | OPEN | X-D-07 | The rulebook limits the load. The migration plan does not exist. |
| X-G-05 | PINNED | X-D-18 | |
| X-G-06 | RESOLVED in part | X-D-11, X-D-12, X-D-14 | Open: phone use for the Knowledge System. |
| X-G-07 | RESOLVED in part | X-D-01, X-D-14 | Open: dates and effort estimates. |
| X-G-08 | RESOLVED in part | X-D-09, X-D-20, X-D-21 | Knowledge System ID: area `20-29`. Field style still PINNED. |
| X-G-09 | RESOLVED in part | X-D-19 | Upload the `capture` skill file. |
| X-G-10 | OPEN | NEW | Permission for agent writes to Intake notes. |

### 11.3 Items pinned for development

| Item | Reference |
|---|---|
| ~~Knowledge System location and `CLAUDE.md` placement~~ Done in Phase 0 | X-D-20 |
| Review of the 14 record types against the vault | KS-D-04 |
| Dependence on Obsidian features | KS-D-05 |
| Core frontmatter, agent fields, field names, and field style | X-D-09 |
| Routing rulebook design and routing result values | X-D-07, X-D-08 |
| Manual submission method for the Reporter | X-D-02 |
| Share channel user note | X-D-18 |
| Agent names (Justin updates them by hand) | KS-D-09 |
| Effort names | X-D-17 |
| Skills and output templates | KS-D-13 |
| Remaining interface detail | X-G-01 |

## 12. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft from 16 source documents. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: decisions, decided terms, status of cross-system items, VSH added. |
| 2026-11-12 | 0.3 | Phase 0 started. Added X-D-20 to X-D-22: location, project folder, Intake folder ID. Root `CLAUDE.md` found absent. |
