---
title: Knowledge System — Project Charter
id: KS-01
system: Knowledge System
type: project-charter
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [KVC, K00, K01, K02, K03, K04, K05, KCM]
---

# Knowledge System — Project Charter

## 1. Document status

This charter is not approved.

It consolidates two source sets: the Knowledge Vault charter [KVC] and the KMO package [K00–K07, KCM]. The two sets describe different designs. Where they agree, this charter gives one statement. Where they differ, this charter gives each position and a conflict ID.

Section 13 lists the decisions that block approval.

Review result (2026-11-12): the baseline is a defined combination of the two designs. The KMO design governs where the designs differ, unless a decision says otherwise (KS-D-01). The sections below keep both positions as a record.

## 2. Purpose

**Charter design [KVC §1].** Build an Obsidian vault that works as a personal "brain". Each fact traces back to a source. A human and an AI can understand what the vault contains without reading the underlying material.

**KMO design [K01 §1, K02 §1].** Build a personal knowledge system. The system turns unstructured source material into traceable, reviewed, useful knowledge.

**Common purpose (AGREED).** A personal store of knowledge in which each accepted claim has a path to its source and evidence.

## 3. Problem statement

The user saves information in many places. The user saves articles, links, files, and notes. The user does not always process them or use them again [K01 §2].

The system must help the user answer these questions [K01 §2]:

- Where did I read that?
- What did the source say?
- What evidence supported the claim?
- Did another source disagree?
- How does this information connect to what I already know?
- What should change in my knowledge base?
- Which claims need another review?

KVC has no problem statement. It gives a purpose only.

## 4. Objectives

### 4.1 Objectives that the two source sets share (AGREED)

1. Keep a path from each accepted claim to its source, with a locator [KVC §2.2, K02 §2.1].
2. Keep what a source says separate from what the Knowledge Owner accepts [KVC §2.2, K02 §1].
3. Keep the Knowledge Owner in control of each substantive change to accepted knowledge [KVC §2.2, K03 D-04].
4. Record a contradiction. Do not resolve it silently [KVC §6.5, K02 §2.4].
5. Find knowledge that is stale, disputed, or supported by one source only [KVC §7, KA-C].
6. Build in small stages. Test each stage with real sources [KVC §7, K04].
7. Store records as Markdown with YAML metadata [KVC §6, K03 D-11].

### 4.2 Capabilities that KMO adds [K01 §1]

The system must help the user:

1. Capture useful information.
2. Process sources.
3. Understand the information.
4. Check claims and evidence.
5. Compare new information with existing knowledge.
6. Maintain an approved knowledge base.
7. Find information later.
8. Apply knowledge to real questions and work.
9. Re-check knowledge when new evidence appears.

### 4.3 Long-term direction [K01 §8]

The system grows through four stages:

1. Research Assistant.
2. Knowledge Management System.
3. Knowledge Intelligence System.
4. Personal Knowledge Operating System.

The first goal is smaller: a reliable research and knowledge workflow [K01 §1]. KVC has no long-term stages. KVC has a second, later goal: the Triage Assistant [KVC §1].

## 5. Scope

### 5.1 In scope: Charter design [KVC §3]

- Folder structure, README, and Schema note.
- Templates made with Templater: inbox stub, Brief, Atomic Note, topic map.
- Dataview queues: inbox, awaiting review, single-source claims, stale claims, disputed claims.
- Controlled vocabularies.
- Manual workflow from capture to promotion.
- Pilot with 15 to 20 real sources. A schema revision follows.
- Design and build of the Triage Assistant agent (Phase 5).

### 5.2 In scope: KMO design [K02 §3, K04]

- Orchestrator role. The Claude Code main session has this role at the start.
- Four specialist agents: Reporter, Editor, Managing Editor, Knowledge Curator.
- The Brain: the collection of approved knowledge.
- Data model with templates for 14 record types.
- Processing workflow with Reference Briefs, Knowledge Assessments, and Change Orders.
- Workflow state, validation, audit records, and Brain version checks.
- Later phases: Knowledge HQ interface, intake expansion, knowledge intelligence features.

### 5.3 Out of scope "for now": Charter design [KVC §3]

- Automatic creation of Atomic Notes by AI.
- Edits to existing notes by AI.
- Public publishing or sharing of the vault.
- Migration of existing notes. The decision comes after the pilot.
- Fully automated agent runs with no human present.

### 5.4 Not in the first phases: KMO design [K02 §2.7, K02 §14, K03 D-12, K04 Phase 7]

- Knowledge HQ interface.
- Phone capture and browser extension.
- Scheduled monitoring.
- A graph database as the first storage.
- A complex backend.
- More than four specialist agents.
- A 3D office or game-like simulation as the first interface.

### 5.5 Scope conflicts

| Topic | Conflict ID |
|---|---|
| AI writes to accepted knowledge after approval (KMO) or never (KVC) | KS-C-05 |
| One agent (KVC) or four agents and an Orchestrator (KMO) | KS-C-17 |
| Capture and intake inside this system or in the Intake System | X-C-01 |
| Later capture channels in KMO Phase 8 | X-C-08 |

### 5.6 Scope changes from the review

- Capture and intake move to the Intake System (X-D-04). This includes KS-IK-01 to KS-IK-04 and KS-IK-07.
- The manual pilot is removed (KS-D-02).
- The capture channels in KMO Phase 8 move to the Intake System (KS-D-14).
- Until the Intake System exists, Justin gives sources to the Reporter by hand (KS-D-06).
- Agents can write to the Brain after approval (KS-D-03). This replaces the KVC rule in section 5.3.

## 6. Deliverables

| Deliverable | Charter design | KMO design |
|---|---|---|
| Decisions list | Topics, naming rules, plugins on one page [KVC Phase 0] | Folder, backup, naming and ID rules [K04 Phase 0] |
| System notes | README, Schema note, Vocabularies note | `CLAUDE.md`, package documents |
| Templates | 4 templates | Templates for 14 record types |
| Review queues | Dashboard note with 7 Dataview queries | Pending review queue in Knowledge HQ (Phase 7) |
| Pilot result | Friction log and revised schema | Human-reviewed test set of 6 or more sources |
| Agents | Triage Assistant instructions | 4 subagent files and Orchestrator rules |
| Maintenance routine | Weekly, monthly, quarterly tasks | Knowledge Curator and Knowledge Health Report |
| Interface | None other than the Dashboard note | Knowledge HQ web application |

## 7. Success criteria

### 7.1 Charter design [KVC §4]

- The user can capture a source in less than 30 seconds.
- The user can make a complete Brief by hand in less than 5 minutes.
- The user can trace any claim to its source and location in 2 clicks.
- A query shows exactly which Briefs await review.
- After the pilot, the user continues to use the system by choice.
- After the agent starts work, its drafts need edits, not a rewrite. The user reviews each item before promotion.

### 7.2 KMO design [K02 §15, K01 §8]

Measure if the system:

- Preserves source traceability.
- Produces useful Reference Briefs.
- Identifies meaningful knowledge changes.
- Avoids fabricated citations.
- Finds contradictions.
- Helps the user retrieve information.
- Keeps the Brain understandable.
- Reduces the time that is necessary to find and apply knowledge.

Agent count and document count are not success measures [K02 §15].

Numeric quality targets come only after the first human-reviewed test set exists [K04].

### 7.3 Review note

The KVC criteria have numbers. The KMO measures have no numbers. Refer to KS-G-15.

The 30-second capture criterion belongs to capture. Refer to X-C-01.

Review result: the 30-second criterion moves to the Intake System (X-D-04). KS-D-02 retires the 5-minute manual Brief criterion and the pilot criterion.

## 8. Roles

| Role | Description | Source |
|---|---|---|
| Knowledge Owner | The user. Sets priorities. Approves the data model, agent permissions, and substantive changes. Resolves disputes. | K03 §2 |
| Orchestrator | Coordinates work. Tracks state. Checks output. Enforces permissions. Does not approve knowledge changes. | K03 §2 |
| Reporter | Processes a source. Makes a Reference Brief. | K02 §3.2 |
| Editor | Compares a Reference Brief with the Brain. Makes a Knowledge Assessment. | K02 §3.3 |
| Managing Editor | Reviews the Assessment. Makes a Change Order. | K02 §3.4 |
| Knowledge Curator | Maintains Brain quality and structure. Supports retrieval. | K02 §3.5 |
| Triage Assistant | Takes inbox stubs. Makes first-draft Briefs. | KVC §7 Phase 5 |

KVC uses "I" and "me" for the human. This set uses "Knowledge Owner". Refer to KS-A-04.

The Triage Assistant and the Reporter have similar functions. Refer to KS-C-17.

## 9. Constraints

| ID | Constraint | Source | Status |
|---|---|---|---|
| KS-CON-01 | The system is for personal use. It has one primary user. | K01 §4, K02 | STATED |
| KS-CON-02 | Records use Markdown and YAML. The storage stays portable. | K03 D-11, KCM | DECIDED |
| KS-CON-03 | Do not lock the system to Obsidian-specific features unless the user approves. | K01 §5 | PINNED (KS-D-05) |
| KS-CON-04 | The vault must work fully without AI. | KVC §1 | RETIRED (KS-D-02) |
| KS-CON-05 | The manual workflow comes first. Agent instructions come after the pilot. | KVC §2.2, §7 | RETIRED (KS-D-02) |
| KS-CON-06 | Do not build a large system before the core workflow works. | K01 §4 | STATED |
| KS-CON-07 | No unnecessary agents. No more agents without user approval. | K01 §4, K03 D-12 | DECIDED |
| KS-CON-08 | No large quantity of AI-generated paperwork that the user cannot review. | K01 §4 | STATED |
| KS-CON-09 | No graph database as the first storage. | K01 §4, K02 §14 | STATED |
| KS-CON-10 | No dashboard that looks active but does not show real system activity. | K01 §4 | STATED |
| KS-CON-11 | Claude Code works in small, guided steps and stops at decision points. | K01 §5, KCM | STATED |
| KS-CON-12 | Documents use ASD-STE100 style. | K00 | STATED |
| KS-CON-13 | No paid tools or subscriptions. The existing Claude plan is not included. | X-D-11 | NEW |
| KS-CON-14 | Work content rule. Items related to Charter or Spectrum get "needs review". | X-D-12 | NEW |
| KS-CON-15 | An item with "needs review" stops until Justin decides. | X-D-13 | NEW |
| KS-CON-16 | Time budget: 5 to 10 hours each week. | X-D-14 | NEW |
| KS-CON-17 | The Knowledge System is developed before the Intake System. | X-D-01 | NEW |

The review of 2026-11-12 added KS-CON-13 to KS-CON-17. No dates exist. Refer to X-G-07.

## 10. Assumptions

Refer to KS-08, section 3.

## 11. Phases

The two source sets have two phase plans. KVC has Phases 0 to 6. KMO has Phases 0 to 9. Refer to KS-06.

The sources give no calendar dates.

## 12. Risks

Refer to KS-08, section 2.

## 13. Decisions that block approval of this charter

| Order | Decision | Reference | Status |
|---|---|---|---|
| 1 | Which system owns capture, triage, and sorting | X-C-01, X-G-02 | RESOLVED (X-D-04, X-D-05) |
| 2 | Which design is the baseline | KS-C-01 | RESOLVED (KS-D-01) |
| 3 | Where the system lives | X-C-03 | RESOLVED (KS-D-16) |
| 4 | The system name | KS-C-02 | PINNED. Store name "the Brain" (KS-D-08). |
| 5 | If AI can write to accepted knowledge after approval | KS-C-05 | RESOLVED (KS-D-03) |
| 6 | If the manual pilot comes before agent work | KS-C-04 | RESOLVED (KS-D-02) |
| 7 | Confirm the items that the default rule closes | KS-08, section 8 | NEW. Open |

## 14. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: baseline, scope changes, constraints, blocking decisions. |
