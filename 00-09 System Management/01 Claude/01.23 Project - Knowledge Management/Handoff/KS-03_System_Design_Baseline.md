---
title: Knowledge System — System Design Baseline
id: KS-03
system: Knowledge System
type: system-design
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [KVC, K01, K02, K03, K05, K06, KCM]
---

# Knowledge System — System Design Baseline

## 1. Design status

The sources contain two designs. This document records each design. It does not combine them.

- **Charter design.** Source: KVC.
- **KMO design.** Sources: K01 to K07, KCM, and the agent files.

The data model is in KS-04. The agent details are in KS-05.

Review result (2026-11-12): the baseline is a defined combination. Where the designs differ, the KMO design governs, unless a decision says otherwise (KS-D-01). Section 2.1 gives the result for each dimension. Section 14 lists the KVC content that carries forward.

## 2. Design comparison

| Dimension | Charter design | KMO design | Conflict |
|---|---|---|---|
| Build sequence | Manual workflow first. Agent after a pilot. | Agents from Phase 2. | KS-C-04 |
| Agents | One: Triage Assistant. | Four specialist agents and one Orchestrator. | KS-C-17 |
| Record types | Inbox stub, Brief, Atomic Note, topic map, raw file. | 14 record types. | KS-C-06 |
| Path to accepted knowledge | The human reviews a Brief. The human promotes claims. | Assessment, then Change Order, then approval, then a controlled update. | KS-C-16 |
| AI write access to accepted knowledge | None. | Through the approved process. | KS-C-05 |
| Identification | Title in the file name. | Stable ID with a prefix. | KS-C-08 |
| Tools | Obsidian with Templater and Dataview. | Claude Code. Obsidian-compatible files. | KS-C-14 |
| Interface | Dashboard note with Dataview queues. | Knowledge HQ web application, later. | KS-C-15 |
| Retrieval | Queries, links, and MOCs. | Knowledge Curator in retrieval mode. | KS-C-19 |
| Maintenance | Human cycle: weekly, monthly, quarterly. | Knowledge Curator in maintenance mode. | Refer to section 13 |

### 2.1 Review results for each dimension

| Dimension | Result | Reference |
|---|---|---|
| Build sequence | No manual pilot. KMO sequence. | KS-D-02 |
| Agents | Four specialist agents and the Orchestrator. The Reporter supersedes the Triage Assistant. | KS-D-12 (DEFAULT) |
| Record types | Keep 14 for now. Review in development. | KS-D-04 (PINNED) |
| Path to accepted knowledge | KMO path: Assessment, Change Order, approval, update. | DEFAULT |
| AI write access to the Brain | Permitted after approval. Each change recorded. | KS-D-03 |
| Identification | Stable IDs. | DEFAULT |
| Tools | Claude Code. Obsidian dependence is open. | KS-D-05 (PINNED) |
| Interface | Knowledge HQ after the core workflow. | DEFAULT |
| Retrieval | Knowledge Curator in retrieval mode. | DEFAULT |
| Maintenance | Knowledge Curator. The human cycle overlap is open. | DEFAULT |

## 3. Components

### 3.1 Knowledge Owner [K03 §2]

The user is the Knowledge Owner. The Knowledge Owner:

- Sets system priorities.
- Approves the data model.
- Approves agent permissions.
- Approves substantive Brain changes.
- Resolves disputed decisions.
- Decides when to add features or change the architecture.

### 3.2 Orchestrator [K02 §3.1, K03 §2]

The Orchestrator is the workflow manager. At the start, the Claude Code main session is the Orchestrator [K03 D-10]. Deterministic scripts come after the workflow is stable.

The Orchestrator does not decide if a claim is true. Refer to KS-05 for its duties.

### 3.3 Specialist agents [K02 §3.2–3.5]

| Agent | Function | Output |
|---|---|---|
| Reporter | Gets and analyzes source material. | Reference Brief |
| Editor | Evaluates how new information relates to the Brain. | Knowledge Assessment |
| Managing Editor | Reviews proposed changes. | Change Order |
| Knowledge Curator | Maintains quality, structure, links, and retrieval. | Knowledge Health Report; answers |

### 3.4 Triage Assistant [KVC §7 Phase 5]

The Triage Assistant is a Claude-based agent. It takes inbox stubs and produces first-draft Briefs. KVC adds it only after the manual pilot.

Status: the Reporter supersedes the Triage Assistant (KS-D-12, DEFAULT). Confirm in development.

### 3.5 The Brain [K02 §3.6]

The Brain is the authoritative collection of approved knowledge. It can contain: claims, concepts, processes, relationships, MOCs, research questions, evidence links, and review history.

The nearest KVC equivalent is the folder `03 Knowledge` with its Atomic Notes. Refer to KS-C-07.

### 3.6 Knowledge HQ [K01 §6, K02 §3.7]

Knowledge HQ is a future visual interface. It can look like a modern office. Each agent or department can have a profile and a workspace.

It can show: the four agents, agent status, current task, recent activity, pending work, review queues, search, knowledge health, and the Mailroom.

"The office is a user interface. It is not proof that agents run all the time." [K01 §6]

The system must record real task data and event data before the interface can show accurate activity.

### 3.7 Mailroom [K01 §7]

The Mailroom is the future default intake point in Knowledge HQ. Refer to X-C-01.

Status: RETIRED as an intake path. The Intake System owns capture (X-D-04). The name can stay as a label in Knowledge HQ (X-D-17).

## 4. Information structure

### 4.1 Charter design: three layers [KVC §2.1]

```
SOURCE        →  BRIEF                    →  ATOMIC NOTE
(the thing)      (note about the source)     (one claim, linked to others)
```

| Layer | What it is | What it owns |
|---|---|---|
| Source | The actual material: URL, video, PDF, book, class. | Nothing. It is evidence. |
| Brief | A short note about one source: summary, key points, candidate claims, quality rating, locators. | What the source says. |
| Atomic Note | One claim, concept, or synthesis. It links to related notes and to the Briefs that support it. | What the Knowledge Owner accepts as true or concludes. |

KVC selects the term "brief" on purpose. The usual Zettelkasten term is "literature note". KVC says that "brief" is clear in search, in queries, and in AI instructions [KVC §2.1].

### 4.2 KMO design: object links [K02 §8]

- A Reference Brief contains Claim Candidates.
- Evidence supports or challenges a Claim Candidate.
- Evidence comes from a Source.
- A Knowledge Assessment evaluates Claim Candidates.
- A Knowledge Assessment references existing Brain Claims.
- A Change Order proposes changes to Brain objects.
- A Brain Claim links to the Evidence for it and against it.
- Concepts link to related concepts, claims, processes, and questions.
- A Research Question links to claims, concepts, sources, and assessments.
- A MOC links to relevant knowledge objects.

The two designs use different evidence chains. Refer to KS-C-23.

## 5. Workflow: Charter design

### 5.1 Status pipeline and owners [KVC §6.4]

| Transition | Who |
|---|---|
| `inbox` → `drafted` | The Knowledge Owner or the agent |
| `drafted` → `reviewed` | The Knowledge Owner only |
| `reviewed` → `promoted` | The Knowledge Owner only |
| any → `rejected` | The Knowledge Owner only |

The field `drafted-by` records if a human or AI made the first pass.

### 5.2 Rules [KVC §6.5]

- Use typed links (`supports`, `contradicts`, `extends`) only for important relationships. All other links are ordinary links.
- Promote selectively. Only useful or surprising claims become Atomic Notes.
- Search before you make a note. If an Atomic Note exists, add the new source to it.
- Record a contradiction. Set `status: disputed`. Fill in `contradicts`. Write which sources conflict.
- The fields `last-verified` and `published` drive a "stale claims" query.

### 5.3 Rule for content placement [KVC §10]

When it is not clear if content belongs in a Brief or in an Atomic Note, ask: "Is this what the source says, or what I accept?"

## 6. Workflow: KMO design

### 6.1 Routing steps and full workflow

Routing steps for each submission [K06 §2]. KMO calls this step "intake and triage". The decided term is "routing" (X-D-06).

1. Record the submission.
2. Record the optional context from the submitter.
3. Identify the source type.
4. Check if the source exists already.
5. Check if the source is accessible.
6. Assign or confirm a Source ID.
7. Select a processing level.
8. Set the workflow state.
9. Route the task.

If the source is not accessible, the Orchestrator records the problem. It asks for a file or a different link when necessary.

Full workflow [K02 §4, K06 §4]:

1. Routing.
2. The Orchestrator makes or confirms the Source record.
3. The Reporter makes a Reference Brief.
4. The Orchestrator validates and saves the Brief.
5. The Editor makes a Knowledge Assessment.
6. The Orchestrator validates and saves the Assessment.
7. The Managing Editor reviews the Assessment and the current Brain.
8. The Managing Editor makes a Change Order when a Brain change is justified.
9. The Orchestrator validates and saves the Change Order.
10. The Knowledge Owner reviews the Change Order.
11. If the Knowledge Owner approves, the controlled implementation process updates the Brain.
12. The system records the approval, the change, and the new Brain version.
13. The Knowledge Curator checks the affected links, MOCs, and dependent claims.

The Orchestrator does not start a later stage when an earlier output is invalid [KCM].

Step 11 does not name the actor. Refer to KS-G-02.

### 6.2 Processing levels

| Level | Use | Output | Source |
|---|---|---|---|
| Archive only | The user wants to keep the source. | Source record | K06 §3 |
| Quick brief | The user wants a fast review. | Short Reference Brief | K06 §3 |
| Full review | The source can change or extend the Brain. | Full Brief, Assessment, and possible Change Order | K06 §3 |
| No processing, with a reason | Not described. | Not described. | K02 §4 only |

K06 says: the Orchestrator recommends a level, and the user can override it. K02 says: the Orchestrator selects the path. K05 lists the levels as a recommendation. Refer to KS-C-29.

Review result: the Orchestrator uses a routing rulebook that Justin controls. It records a routing result on each item. Refer to KS-RV-04 to KS-RV-08 in KS-02.

### 6.3 Knowledge lifecycle [K06 §5]

**Acquire → Understand → Evaluate → Curate → Apply → Reassess**

| Stage | Description |
|---|---|
| Acquire | Capture a source and its context. |
| Understand | Make a Reference Brief. Identify statements, claims, evidence, methods, concepts, and limits. |
| Evaluate | Compare the Brief with the Brain. Identify support, conflict, qualification, and new knowledge. |
| Curate | Review proposed changes. Approve, reject, or defer them. Update the Brain through a controlled process. |
| Apply | Retrieve and use knowledge to answer questions or support work. |
| Reassess | Review knowledge when new evidence appears, when context changes, or when a claim becomes stale. |

The lifecycle is a loop. A reassessment can start a new research task.

### 6.4 Impact on related objects [K02 §9, K06 §8]

When a claim changes, the system examines related objects. The system must distinguish:

- Direct contradiction.
- Direct support.
- Qualification.
- Possible downstream effect.
- Confirmed downstream effect.

For each possible impact, the system records:

- The changed claim.
- The related object.
- The relationship type.
- The reason for review.
- If the impact is direct or possible.
- The recommended action.

A link does not prove that one claim depends on another claim. The system must not mark a related claim as false automatically.

K04 lists "impact propagation" as a possible Phase 9 capability. Refer to KS-C-31.

## 7. Governance and permissions

### 7.1 Permission table: KMO design [K03 §3]

The cell text in this table is a copy from the source.

| Action | Reporter | Editor | Managing Editor | Knowledge Curator | Orchestrator |
|---|---|---|---|---|---|
| Read source material | Yes | If needed | If needed | If needed | For triage |
| Create Source record | Propose data | No | No | No | Yes, after validation |
| Create Reference Brief | Yes | No | No | No | No |
| Create Knowledge Assessment | No | Yes | No | No | No |
| Create Change Order | No | No | Yes | May propose maintenance CO | No |
| Read Brain | No, unless context is supplied | Yes | Yes | Yes | For routing and context |
| Change accepted Brain claim | No | No | No | No | Only through approved process |
| Update navigation index | No | No | No | Limited, if authorized | May run deterministic script |
| Approve substantive change | No | No | No | No | No |
| Record approval | No | No | No | No | Yes, from user instruction |

K03 says: "The table is a policy target. Claude Code permissions and tools must enforce it in practice."

The agent tool lists do not match this table fully. Refer to KS-C-36.

### 7.2 Permissions: Triage Assistant [KVC §7 Phase 5]

The agent can:

- Read inbox stubs.
- Fetch content and save it as a raw file.
- Make a Brief from the template with `status: drafted` and `drafted-by: ai`.
- Fill in frontmatter with values from the controlled vocabularies only.
- Write the summary, the key points with locators, and the candidate claims.
- Add a "Possibly related" list of existing notes.
- Set `content-retrieved` honestly: `full`, `partial`, or `none`.

The agent must not:

- Mark a note as `reviewed` or `promoted`.
- Make or edit Atomic Notes.
- Edit existing Briefs that it did not make.
- Invent new topics, source types, or quality values.
- State a claim as established. Claims stay "candidate".

### 7.3 Change approval [K03 §4]

The Knowledge Owner can approve, reject, request changes, defer, or request more research. The Orchestrator records the decision. Silence is not approval.

### 7.4 Brain version check [K03 §6]

Each Change Order states the Brain version that the review used. Before implementation:

1. Read the current Brain version.
2. Compare it with the version in the Change Order.
3. If the version is the same, continue to approval and implementation.
4. If the version is different, ask the Managing Editor to check the proposal again.
5. Do not apply a stale proposal.

The sources do not define what a Brain version is. Refer to KS-G-01. The time of the check is not clear. Refer to KS-C-34.

### 7.5 Low-risk Curator actions [K03 §5]

The Knowledge Owner can authorize the Curator later to make limited navigation changes without separate approval. Possible actions:

- Repair a broken internal link.
- Refresh a generated index.
- Update a MOC navigation list.
- Make a report of orphaned notes.
- Update graph statistics.

These actions must not change the meaning, evidence, or status of knowledge. The audit log records each action.

No source records that the Knowledge Owner gave this authorization. Refer to KS-G-12.

### 7.6 Review result: write access and review gate

- An agent writes to the Brain only after Justin approves the change (KS-D-03).
- The Change Order is the full record of each applied change. Each Brain note links to each Change Order that changed it.
- No source names the agent that applies an approved change. KS-G-02 stays open.
- An item with "needs review" stops at any stage until Justin decides (X-D-13).
- Items related to Charter or Spectrum get "needs review" (X-D-12).
- The Orchestrator writes the routing result on Intake notes. No permission rule covers this write. Refer to X-G-10.

## 8. Assessment, score, and confidence

### 8.1 Evaluations: KMO design [K02 §6]

| Evaluation | Who | Dimensions |
|---|---|---|
| Source Quality | Reporter | Authority, transparency, accuracy, objectivity, currency |
| Evidence Quality | Reporter, for each claim | Relevance, directness, methodology or basis, reliability, corroboration, limitations |
| Knowledge Relevance | Editor | Novelty, significance, applicability, relevance to the Brain |
| Brain Impact | Managing Editor | Impact on accepted claims; impact on processes; impact on concepts and relationships; risk if the change is not made; scope of review |

Use a 1 to 5 scale "only when it helps". `Unknown` and `Not applicable` are permitted. Each score must have a reason. An average score is not a decision rule.

### 8.2 Evaluation: Charter design [KVC §6.2]

One field, `source-quality`, with values `high`, `medium`, `low`, `unrated`. One field, `quality-rationale`, with one line of text.

Refer to KS-C-11.

### 8.3 Confidence

KMO values: High, Moderate, Low, Indeterminate. Confidence shows how sure the agent is about its analysis or extraction. It is not evidence strength [K02 §7].

KVC values: `high`, `medium`, `low`. The field is on the Atomic Note [KVC §6.3].

Refer to KS-C-10.

## 9. Queues and interface

### 9.1 Charter design: Dashboard note [KVC §7 Phase 3]

Seven Dataview queries on one Dashboard note:

1. Inbox (status is `inbox`).
2. Briefs that await review (status is `drafted`).
3. Reviewed but not promoted.
4. Atomic Notes with only one source.
5. Disputed claims.
6. Stale claims (`last-verified` older than a set threshold).
7. Briefs with `content-retrieved` of `partial` or `none`.

### 9.2 KMO design: Knowledge HQ [K04 Phase 7]

Possible first version: dashboard, Mailroom, agent profiles, recent activity, pending review queue, search, knowledge health.

Refer to KS-C-15.

## 10. Search and retrieval

### 10.1 KMO design [K02 §11, K06 §6]

Three retrieval layers:

1. **Source retrieval.** Find a source, file, URL, or Reference Brief.
2. **Knowledge retrieval.** Find claims, concepts, processes, MOCs, and research questions.
3. **Evidence retrieval.** Find the evidence that supports or challenges a claim.

In retrieval mode, the Curator searches in this order: MOCs; Brain Claims and concepts; processes and relationships; evidence; Reference Briefs and original sources; Research Questions.

### 10.2 Charter design

KVC has no retrieval function. The user finds knowledge with queries, links, topic tags, and MOCs [KVC §5, §7].

Refer to KS-C-19.

## 11. Audit, version control, and error handling

The audit requirements are KS-AU-01 to KS-AU-05 in KS-02. The stop conditions are KS-ER-01 to KS-ER-09 in KS-02.

Suggested workflow task states [K06 §9]: Received, Triaged, Queued, In Progress, Awaiting Validation, Awaiting Review, Awaiting Approval, Approved, Rejected, Deferred, Completed, Failed.

K06 says that the final state list and the transition rules are open. Refer to KS-Q-18.

## 12. Storage structure and technical approach

### 12.1 Charter design: vault structure [KVC §5]

```
00 System/
   README          (what this vault is; one-line definitions of source, brief, atomic note)
   Schema          (every field, allowed values, what each template section means)
   Vocabularies    (topics, source types, quality ratings)
   Templates/
01 Inbox/          (one stub per capture)
02 Sources/
   Videos/         (briefs + raw text, by source type)
   Articles/
   Books/
   PDFs/
   Courses/
   Other/
03 Knowledge/      (atomic notes; flat or lightly foldered)
04 Maps/           (topic MOCs: Money, Claude, Fitness, Mental Health, ...)
99 Archive/
```

Notes from KVC:

- The vault organizes Sources and Briefs by type, not by topic.
- Topics live in frontmatter tags and in Maps (MOCs), not in folders.
- The raw extracted text is next to its Brief. Example: `Brief - Title.md` and `Raw - Title.md`.
- The user can adapt the folder names to Johnny.Decimal numbers. The separation of inbox, sources, knowledge, and maps must stay.

Plugins: Templater and Dataview are required. Meta Bind is optional. KVC Phase 0 confirms this list [KVC §7].

### 12.2 KMO design: technical approach [K02 §14]

- Claude Code main session as Orchestrator.
- Markdown for records that a human reads.
- YAML frontmatter for metadata.
- JSON Schema for validation when the object model is stable.
- Custom subagents in `.claude/agents/`.
- Procedures in `.claude/skills/`.
- Hooks only when an event-based action is useful.
- Scripts for deterministic tasks such as ID creation and validation.

The Brain folder structure is open [K05 §1]. K05 recommends object-type folders, MOCs for topics, and no deep folder trees. Refer to KS-C-13.

### 12.3 Implementation options for the Triage Assistant [KVC §7 Phase 5]

1. Claude Code or a skill that points at the vault. The Schema note is the instruction. Batch use: "process everything in the inbox."
2. A small script that uses the Claude API. It monitors the inbox, fetches content, and writes Briefs.

The selection is open. Refer to KS-Q-06.

### 12.4 Review result: structure

- The Brain does not use Johnny.Decimal inside its area. It is mostly flat. Folders by record type at most. No topic folders (KS-D-10).
- This matches the main slip box of a Zettelkasten. Structure comes from links and from MOCs.
- The location is the ORION area `20-29 Knowledge` (KS-D-16). Categories: `20 Knowledge Backend`, `21 Brain`, `22 Workflow`. The Orchestrator `CLAUDE.md` and `.claude/agents/` are at the area root.
- The Charter design folders `01 Inbox` and `02 Sources/<source type>/` do not apply. `01 Inbox` retires (X-D-04). Source-type folders conflict with KS-D-10.

## 13. Maintenance

### 13.1 Charter design: human cycle [KVC §7 Phase 6]

- **Weekly.** Clear the inbox and the review queue.
- **Monthly.** Review stale claims. Merge duplicate notes. Remove tags that are not used.
- **Quarterly.** Review the schema and the vocabularies. Archive rejected material.

### 13.2 KMO design: Knowledge Curator [K06 §6]

In maintenance mode, the Curator checks the Brain "on a schedule or after important changes". It produces a Knowledge Health Report.

K04 lists "scheduled Curator review" in Phase 8. Refer to KS-C-33.

No source relates the human cycle to the Curator. The two functions overlap.

## 14. KVC content that carries forward

Under KS-D-01, KVC content with no KMO equivalent stays in the baseline. This review identified these items. Confirm the list in development.

| Item | KVC source |
|---|---|
| Controlled vocabularies for topics, source types, and quality values | §2.2 |
| An agent does not invent vocabulary values | §7 Phase 5 |
| Fetched web content is untrusted data. Agents ignore instructions inside it. | §7 Phase 5 |
| The schema is a contract. One Schema note is the source of truth for human and agent work. | §2.2, §10 |
| Search before you make a note. Add a new source to an existing claim. | §6.5 |
| Promote selectively. | §6.5 |
| The test: "Is this what the source says, or what I accept?" | §10 |
| Record how much source content was retrieved (`content-retrieved`). | §6.2 |
| Record if a human or AI made the first draft (`drafted-by`). | §6.2 |
| Topics in metadata and MOCs, not in folders | §5 |
| A review queue that shows exactly which items await review | §4 |

Items that the default rule does not settle:

- Stored raw source text (KS-C-21). OPEN.
- The human maintenance cycle and the Curator overlap. OPEN.

## 15. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: results by dimension, routing term, write access, structure, KVC carry-forward list. |
