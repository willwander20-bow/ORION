---
title: Knowledge System — Roadmap and Phase Plan
id: KS-06
system: Knowledge System
type: roadmap
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [KVC, K01, K04, KCM]
---

# Knowledge System — Roadmap and Phase Plan

## 1. Status

The sources contain two phase plans. They have different sequences and different tests. Refer to KS-C-18.

No source gives calendar dates or effort estimates. The only time value is "30 min" for KVC Phase 0. Refer to KS-G-16.

No source says that a phase started.

Review results (2026-11-12):

- The KMO phase plan is the baseline (KS-D-01).
- The manual pilot (KVC Phase 4) is removed (KS-D-02).
- KMO Phase 8 loses its capture channels (KS-D-14).
- The Knowledge System comes before the Intake System (X-D-01).
- Time budget: 5 to 10 hours each week (X-D-14).

## 2. Phase plan: Charter design [KVC §7]

### Phase 0: Decisions (30 minutes)

- Confirm the folder structure and the naming conventions.
- Confirm plugins: Templater and Dataview required; Meta Bind optional.
- Select the first topic list. Start with 5 to 8 topics.
- Decide backup and sync (Obsidian Sync, git, or cloud folder) before the user adds content.

**Done when:** a one-page list of topics, naming rules, and plugins exists.

### Phase 1: Foundation

- Make the folders.
- Write the README with one-line definitions of source, brief, atomic note, and MOC.
- Write the Schema note.
- Write the Vocabularies note.

**Done when:** a stranger can read the README and the Schema note and understand how to use the vault.

### Phase 2: Templates

- Inbox stub template.
- Brief template.
- Atomic Note template.
- Topic map (MOC) template.
- Test each template with one real example.

**Done when:** each template produces valid frontmatter and the fixed body sections with one command.

### Phase 3: Queues

Seven Dataview queries on a Dashboard note. Refer to KS-03, section 9.1.

**Done when:** each query returns correct results on test data.

### Phase 4: Pilot (manual). RETIRED (KS-D-02)

- Process 15 to 20 real sources fully by hand.
- Keep a friction log: fields that the user skips; sections that are not clear; slow steps; missing vocabulary values.
- Review the log. Then revise the schema and the templates.

**Done when:** the schema has one revision from real use, and the manual flow feels sustainable.

KVC says: "This is the most important phase. Do not write agent instructions until it is complete."

### Phase 5: Triage Assistant (agent)

Refer to KS-05, section 8.

**Done when:** agent drafts need edits, not a rewrite, and review time for each Brief is clearly less than the time to write by hand.

### Phase 6: Maintenance

Weekly, monthly, and quarterly tasks. Refer to KS-03, section 13.1.

## 3. Phase plan: KMO design [K04]

Build rule: "Build one reliable path through the system before you add advanced features."

### Phase 0: Project foundation

1. Make the project folder.
2. Add the package.
3. Make `CLAUDE.md`.
4. Confirm the Claude Code version and the available tools.
5. Confirm where the Brain and the source files live.
6. Set a backup and version-control approach.
7. Agree on naming rules and ID rules.

**Exit test:** Claude Code can read the project instructions and explain the system roles correctly.

### Phase 1: Data model and templates

Make templates for: Source, Evidence, Claim Candidate, Reference Brief, Knowledge Assessment, Change Order, Brain Claim, Concept, Process, Relationship, Research Question, MOC, Workflow Task, Audit Event.

Define: required fields, allowed values, ID patterns, status values, links between objects, version rules.

**Exit test:** the user can make and read one complete sample record of each core type.

### Phase 2: Reporter

1. Make the Reporter subagent.
2. Give it the Reference Brief template.
3. Test it with one official document.
4. Test it with one article.
5. Test it with one source that has weak evidence.
6. Review its citations and locators.
7. Improve the instructions.

**Exit test:** the Reporter makes traceable Briefs and does not invent source details.

### Phase 3: Editor

1. Make a small test Brain.
2. Make the Editor subagent.
3. Give it the Knowledge Assessment template.
4. Test a source that adds new knowledge.
5. Test a source that supports an existing claim.
6. Test a source that challenges an existing claim.
7. Test a duplicate source.

**Exit test:** the Editor identifies useful relationships and explains its reasons.

### Phase 4: Managing Editor

1. Make the Managing Editor subagent.
2. Give it the Change Order template.
3. Test each main Change Order type.
4. Test a proposal that affects more than one claim.
5. Test a stale Brain version.
6. Review if the user can understand each proposal.

**Exit test:** the Managing Editor makes clear proposals and never changes the Brain.

### Phase 5: Orchestration

Define workflow states and validation checks. Add: ID creation, output validation, workflow logs, duplicate checks, error and retry handling, approval records, Brain version checks.

**Exit test:** one source moves through the full workflow with no silent failure and no unauthorized change.

### Phase 6: Knowledge Curator

1. Make the Curator subagent.
2. Define the MOC structure.
3. Add checks for orphans and broken links.
4. Add health reports for claims and evidence.
5. Add retrieval instructions.
6. Add impact review instructions.
7. Test with a Brain that has deliberate errors.

**Exit test:** the Curator finds meaningful problems and explains why they matter. It does not silently change knowledge.

### Phase 7: Knowledge HQ interface

Possible first version: dashboard, Mailroom, agent profiles, recent activity, pending review queue, search, knowledge health.

**Exit test:** the user can submit a source, see its status, open its outputs, and review proposed changes.

### Phase 8: Intake expansion and automation

Possible features: file upload, URL submission, phone share action, browser extension, quick note capture, scheduled Curator review, event-triggered review, external integrations.

**Exit test:** new input channels do not make separate or inconsistent records.

This phase repeats Intake System scope. Refer to X-C-08.

Review result: the capture items move to the Intake System. Phase 8 keeps scheduled Curator review, event-triggered review, and external integrations (KS-D-14).

### Phase 9: Knowledge intelligence

Possible later capabilities: Research Question Registry, proactive source monitoring, claim revalidation, cross-domain relationship discovery, impact propagation, personalized research, context-aware assistance.

Build each feature only when a real use case justifies it.

## 4. Phase alignment

This table shows where the two plans cover the same work. The alignment is an observation of this review.

| Work | Charter design phase | KMO design phase |
|---|---|---|
| First decisions: folders, names, backup | 0 | 0 |
| Schema and templates | 1, 2 | 1 |
| Review queues | 3 | 7 (pending review queue in Knowledge HQ) |
| Manual pilot with real sources | 4 | No equivalent |
| Agent that drafts Briefs | 5 (Triage Assistant) | 2 (Reporter) |
| Comparison with existing knowledge | Human, in review | 3 (Editor) |
| Controlled change proposals | No equivalent | 4 (Managing Editor) |
| Workflow control and audit | No equivalent | 5 |
| Maintenance | 6 (human cycle) | 6 (Curator) |
| Interface | 3 (Dashboard note) | 7 (Knowledge HQ) |
| More capture channels | No equivalent | 8 |

## 5. Long-term stages [K01 §8]

1. Research Assistant.
2. Knowledge Management System.
3. Knowledge Intelligence System.
4. Personal Knowledge Operating System.

"Do not build the later stages before the earlier stages work."

No source maps the KMO phases to these four stages.

## 6. Test and evaluation

### 6.1 Charter design

- Manual pilot: 15 to 20 real sources [KVC Phase 4].
- Agent evaluation: the first 20 agent Briefs, compared with the human standard [KVC Phase 5].

### 6.2 KMO design [K04]

A test set of six or more different sources:

1. Official documentation.
2. Academic paper.
3. Weak blog with one useful point.
4. Forum or Reddit discussion with conflicting views.
5. Source that challenges an existing Brain Claim.
6. Duplicate source.

Measures:

- Source IDs and object IDs are valid.
- Required fields are present.
- Each evidence item has a source reference.
- Source locators are real.
- Fabricated citations: zero.
- Claims distinguish source statements from evidence.
- The Editor finds relevant Brain connections.
- Change Orders identify affected objects.
- The system stops when approval is necessary.
- The user can understand and use the outputs.

Numeric quality targets come only after the first human-reviewed test set exists.

## 7. Session prompts in the source charter

KVC §10 contains start prompts for a new Claude session for each phase. KVC §10 also contains four work rules for any Claude session. The work rules are in KS-02 as KS-NF-11, KS-NF-12, and KS-HA-01, and in KS-03, section 5.3.

This set does not copy the prompts. They assume the Charter design. KS-D-01 makes the KMO design the baseline. Do not use the KVC prompts without a review.

## 8. Schedule gaps

- No start date and no target date for any phase.
- No effort estimate for any phase other than KVC Phase 0.
- Time budget: 5 to 10 hours each week (X-D-14). The KMO plan has 10 phases, 14 record types, and five roles. On this budget, the first full workflow is months away. Refer to KS-R-22.
- No sequence between this effort and the Intake System effort. Refer to X-G-07.
- No milestone list.

## 9. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Applied the review of 2026-11-12: KMO plan as baseline, pilot retired, Phase 8 change, time budget. |
