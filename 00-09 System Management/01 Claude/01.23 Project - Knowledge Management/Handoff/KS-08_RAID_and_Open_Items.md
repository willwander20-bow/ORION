---
title: Knowledge System — RAID Log and Open Items Register
id: KS-08
system: Knowledge System
type: raid-log
status: draft-for-review
version: 0.3
created: 2026-11-12
sources: [KVC, K00, K01, K02, K03, K04, K05, K06, K07, KCM, KA-R, KA-E, KA-M, KA-C]
---

# Knowledge System — RAID Log and Open Items Register

## 1. How to use this register

This register is the work list for the first review.

- Section 2: risks.
- Section 3: assumptions.
- Section 4: conflicts. The sources disagree. Each conflict needs a decision.
- Section 5: gaps. No source gives the information.
- Section 6: open decisions that the sources list.
- Section 7: dependencies.

This register does not recommend a solution. Record each decision in KS-07, Part C.

Cross-system items are in PRG-00, sections 6 and 7.

Section 8 gives the status of each item after the review of 2026-11-12.

## 2. Risks

### 2.1 Risks from the sources

| ID | Risk | Control in the source | Source |
|---|---|---|---|
| KS-R-01 | AI-written Briefs contain errors that spread to later records. | Human review gate. Locators that a person can check against the raw text. Early spot checks. | KVC §8 |
| KS-R-02 | Fabricated citations make the Brain unreliable. | Exact source locators and validation. | K05 §2 |
| KS-R-03 | Content retrieval fails: paywalls, video transcripts, PDFs, books. Agents guess from titles or snippets. | `content-retrieved` field. Stored raw file. Record the access failure and stop. | KVC §8; K05 §2 |
| KS-R-04 | Too much engineering delays real use. Time goes into infrastructure and not into value. | Manual first. Minimum fields. Pilot before expansion. One workflow at a time. | KVC §8; K05 §2 |
| KS-R-05 | Too many notes and too much output. The user cannot review the work. | Selective promotion. One claim for each note. Short Briefs. Processing levels. | KVC §8; K05 §2 |
| KS-R-06 | Too many links, or weak links from keywords, make the graph less useful. | Typed links for key relationships only. A rationale for each interpretive link. | KVC §8; K05 §2 |
| KS-R-07 | Duplicate claims make search and maintenance difficult. | Duplicate check. Aliases. Stable IDs. | KVC §8; K05 §2 |
| KS-R-08 | Information becomes stale. | `published` and `last-verified` dates. Stale query. | KVC §8 |
| KS-R-09 | Tags and topics drift. | Controlled vocabularies. Cleanup on a cycle. | KVC §8 |
| KS-R-10 | Prompt injection through fetched content. | Use all fetched content as data. Keep the agent write scope narrow. | KVC §8 |
| KS-R-11 | Data loss. | Backup decision in Phase 0. | KVC §8 |
| KS-R-12 | The schema differs between manual notes and AI notes. | One Schema note as the source of truth. | KVC §8 |
| KS-R-13 | Scores look more certain than the evidence. | A reason and limits with each score. | K05 §2 |
| KS-R-14 | Silent status changes remove governance. | Approval for substantive changes. | K05 §2 |
| KS-R-15 | A Change Order refers to old knowledge. | Check the Brain version before implementation. | K05 §2 |
| KS-R-16 | The interface shows fake or empty activity. | Build the data workflow first. | K05 §2 |

### 2.2 Risks added in this review

These risks come from the review. No source lists them. No control exists.

| ID | Risk | Basis |
|---|---|---|
| KS-R-17 | The build starts on one design while the other design stays in the documents. Rework follows. | KS-C-01 |
| KS-R-18 | The Knowledge System and the Intake System build the same capture function. | X-C-01, X-C-08 |
| KS-R-19 | The design is larger than the time that the user has. The user stops. | K01 §4 says that the user does not want a large system. INB records limited free time and a risk of lost interest. Refer to KS-C-35. |
| KS-R-20 | Agent files that no person tested become the standard by default. | KS-C-25 |

## 3. Assumptions

This review made these assumptions to consolidate the documents. Confirm each one.

| ID | Assumption | Basis |
|---|---|---|
| KS-A-01 | KVC and the KMO package describe the same intended system. | The user request of 2026-11-12 puts them in one effort. No source says this. |
| KS-A-02 | "Knowledge System" is the working name. | The user request. Refer to KS-C-02. |
| KS-A-03 | Intake content in KVC and KMO stays in this set, with a conflict mark, until the boundary decision. | X-C-01 |
| KS-A-04 | "Knowledge Owner" in KMO and "I" in KVC are the same person: Justin. | Context. |
| KS-A-05 | "Brief" is near to "Reference Brief". "Atomic Note" is near to "Brain Claim" and "Concept". Folder `03 Knowledge` is near to "the Brain". | Similar definitions. The match is not exact. Refer to KS-04, section 2. |
| KS-A-06 | The KMO package is newer than KVC. | Example time stamps in K07 only. This review did not use this to resolve a conflict. |
| KS-A-07 | "My Vault" in the user request means ORION. | INC names ORION as the vault. |

## 4. Conflicts

### 4.1 Primary conflict

| ID | Topic | Position 1: Charter design [KVC] | Position 2: KMO design | Why it matters |
|---|---|---|---|---|
| KS-C-01 | Baseline design | A manual-first vault with three layers and one later agent. | An agent workflow with an Orchestrator, four agents, 14 record types, and Change Orders. | Conflicts KS-C-04 to KS-C-24 are results of this conflict. A decision here closes or changes most of them. |

### 4.2 Conflicts between the Charter design and the KMO design

| ID | Topic | Position 1: Charter design [KVC] | Position 2: KMO design | Why it matters |
|---|---|---|---|---|
| KS-C-02 | System name | "Knowledge Vault". | "Knowledge Management Office (KMO)". Store: "the Brain". Interface: "Knowledge HQ". | Folder names, file names, and instructions use the name. |
| KS-C-03 | Location | A new vault with its own folders [§5, §10]. | A project folder. The Brain location is open [K04 Phase 0]. | Refer to X-C-03. |
| KS-C-04 | Build sequence | Manual first. "The vault must work fully without AI." Pilot before agent instructions [§1, §2.2, §7]. | The Reporter agent comes in Phase 2. No manual pilot [K04]. | The sequence sets the first work of the build. |
| KS-C-05 | AI write access to accepted knowledge | AI does not make Atomic Notes. AI does not edit existing notes [§3]. | After approval, "the controlled implementation process updates the Brain" [K02 §4]. The Orchestrator changes a Brain claim "only through approved process" [K03 §3]. | This is a permission rule. It changes the agent tool setup. |
| KS-C-06 | Number of record types | Four templates: inbox stub, Brief, Atomic Note, topic map [§3]. Principle: "Fewer, better notes." | Templates for 14 record types [K04 Phase 1]. | The quantity of records for each source is very different. |
| KS-C-07 | Terms | "Brief", "Atomic Note", "candidate claims", "topic map", `03 Knowledge`. | "Reference Brief", "Brain Claim", "Claim Candidate", "MOC", "the Brain". | Each source requires one term for one concept. |
| KS-C-08 | Identification | The title is in the file name: `Brief - Title.md`. Links use the title [§5, §6.3]. | "Use stable IDs. Do not use titles as IDs." [K07 §1]. File names with IDs are open [K05]. | Links break if the method changes later. |
| KS-C-09 | Claim status values | `draft`, `accepted`, `disputed` [§6.3]. | Four different lists in K02 §2.6, K02 §10, K05 §1, and KA-C. Refer to KS-04, section 5.1. | Queries, agents, and rules depend on one list. |
| KS-C-10 | Confidence | `high`, `medium`, `low`. A field on the Atomic Note [§6.3]. | High, Moderate, Low, Indeterminate. It is the confidence of the agent in its own analysis [K02 §7]. K07 also puts `confidence` on the Brain Claim. | The meaning of the field on a claim is not clear. |
| KS-C-11 | Quality evaluation | One rating and one rationale line [§6.2]. | Four evaluations with 5, 6, 4, and 5 dimensions [K02 §6]. | Effort for each source. Review load. |
| KS-C-12 | Brief structure and effort | Six body sections. A human completes one in less than 5 minutes [§4, §6.2]. | Thirteen sections [K07 §6]. No time target. | The 5-minute criterion and the 13 sections cannot both be true for manual work. |
| KS-C-13 | Folder structure | Numbered folders. Briefs in folders by source type [§5]. | Open. K05 recommends folders by object type. | Refer also to X-C-03 for Johnny.Decimal. |
| KS-C-14 | Dependence on Obsidian | Templater and Dataview are required [§7 Phase 0]. Links use wikilinks. | "Do not lock the system to Obsidian-specific features unless the user approves" [K01 §5]. | Templates, queues, and links depend on this. |
| KS-C-15 | Interface | A Dashboard note with Dataview queues in Phase 3. | Knowledge HQ web application in Phase 7 [K03 D-14]. | Two interfaces for review queues. |
| KS-C-16 | Path to accepted knowledge | The human reviews the Brief and promotes claims. Status: `reviewed`, `promoted`, `rejected` [§6.4]. | Knowledge Assessment, then Change Order, then one of five owner decisions [K03 §4]. | This is the core workflow. |
| KS-C-17 | Agent model | One agent: Triage Assistant. It drafts Briefs [§7 Phase 5]. | Four agents and an Orchestrator [K03 D-01, D-03]. "Do not build more agents yet" [D-12]. | The Triage Assistant and the Reporter overlap. |
| KS-C-18 | Phase plan and tests | Phases 0 to 6. Pilot with 15 to 20 sources. Evaluation of 20 agent Briefs. | Phases 0 to 9. Test set of 6 or more source types. | Refer to KS-06. |
| KS-C-19 | Retrieval | The user finds knowledge with queries, links, and MOCs. No agent. | Search is a core feature. The Curator writes answers from the Brain [K02 §11]. | Scope of the first release. |
| KS-C-20 | Staleness fields | `last-verified`; a query with a threshold. | `last_reviewed_at`, `review_due_at`, `valid_from`, `valid_to`. | Refer to KS-04, section 7. |
| KS-C-21 | Stored source text | Raw text in `Raw - Title.md` next to the Brief. Locators must point into it [§5]. | No raw text file. The Source has `file_path` and `content_hash` [K07 §3]. K02 §13 requires that a locator can be verified. | A locator check needs stored text. |
| KS-C-22 | Relationships | Three typed link fields in the note frontmatter [§6.3]. | A Relationship record with ID, rationale, evidence, confidence, and status [K07 §10]. | Record quantity and review load. |
| KS-C-23 | Evidence chain | Atomic Note → Brief (with locator) → Source. | Brain Claim → Evidence record → Source. The Reference Brief is not in the chain. | The path for "trace in 2 clicks" is different. |
| KS-C-24 | Field name style | Hyphen. Date only. Wikilinks. | Underscore. Date with time and zone. IDs. | Refer to KS-04, section 6. |

### 4.3 Conflicts inside the KMO package

| ID | Topic | Position 1 | Position 2 | Why it matters |
|---|---|---|---|---|
| KS-C-25 | Time of agent instructions | "Do not write detailed agent prompts until the main output templates are clear" [K04 Phase 1]. Phases 2, 3, 4, and 6 each say "Create the … subagent". | Four detailed agent files are in the package. | The status of the agent files is not clear: draft input or approved design. |
| KS-C-26 | Change Order content | Nine items [K03 §4]. | Thirteen items [KA-M]. Fifteen items [K07 §8]. | Refer to KS-04, section 4.8. |
| KS-C-27 | No Change result | "Do not create an unnecessary Change Order." The Managing Editor records a No Change result [K06 §4]. | "No Change" and "Investigate" are Change Order types [K07 §8, KA-M]. | The record for a "no change" outcome is not defined. |
| KS-C-28 | When the Managing Editor runs | Only when the Editor recommends Advance, or on Orchestrator request [KA-M, KCM]. | In each full workflow [K02 §4, K06 §4]. | Cost and output quantity for each source. |
| KS-C-29 | Processing levels | Three levels. The Orchestrator recommends. The user can override [K06 §3]. K05 §3.1 lists the levels as a recommendation. | Four paths, with "No processing, with a reason". The Orchestrator selects [K02 §4]. | The number of levels, the status, and the owner of the selection are not the same. |
| KS-C-30 | Research Question time | A template in Phase 1 [K04]. A record definition [K07 §11]. The Editor and the Curator use it. | "Research Question Registry" is a possible Phase 9 capability [K04]. K05 §3.3 lists it as a recommendation. | In or out of the first build. |
| KS-C-31 | Impact review time | A required behavior [K02 §9]. The Managing Editor and the Curator do it [KA-M, KA-C]. | "Impact propagation" is a possible Phase 9 capability [K04]. | In or out of the first build. |
| KS-C-32 | Curator and Change Orders | Change Orders are Managing Editor output [K03 D-08]. | The Curator output is "a Knowledge Health Report or a proposed Change Order" [KA-C]. The permission table says "May propose maintenance CO" [K03 §3]. | The path for a Curator proposal is not defined. |
| KS-C-33 | Curator schedule | The Curator checks the Brain "on a schedule or after important changes" [K06 §6]. | "Scheduled Curator review" is a Phase 8 feature [K04]. | Refer also to KVC §3: unattended agent runs are out of scope for now. |
| KS-C-34 | Time of the Brain version check | "Before implementation." If the version is the same, "continue to approval and implementation" [K03 §6]. | "If the Brain changes before approval, the Orchestrator must request a re-check before implementation" [K02 §12]. | No rule covers a Brain change that occurs after approval and before implementation. |
| KS-C-35 | Stated limits and design size | The user does not want a large system, unnecessary agents, or AI paperwork that the user cannot review [K01 §4]. | The design has five roles, 14 record types, four evaluations, and ten phases. | The design possibly breaks its own constraints. The Knowledge Owner must confirm the size. |
| KS-C-36 | Permission table and tool lists | The Reporter does not read the Brain unless context is supplied. The Curator can update navigation if authorized [K03 §3]. | The Reporter has Read, Grep, and Glob with no path limit. The Curator has no write tool [KA-R, KA-C]. | The tool lists do not enforce the table. K03 calls the table "a policy target". |

### 4.4 Conflict inside KVC

| ID | Topic | Position 1 | Position 2 | Why it matters |
|---|---|---|---|---|
| KS-C-37 | Source types and folders | `source-type` has seven values. One value is `podcast` [§6.2]. | `02 Sources` has six folders. No folder exists for podcasts [§5]. | A podcast Brief has no defined folder. |

## 5. Gaps

| ID | Gap | Affected source | Why it matters |
|---|---|---|---|
| KS-G-01 | The Brain version has no definition. No source says how the system makes, numbers, or stores a version. | K02, K03, K07, KA-M | The version check is a hard stop in the workflow. Git use is open (KS-Q-10). |
| KS-G-02 | The "controlled implementation process" has no actor and no steps. The Managing Editor and the Curator cannot change the Brain. | K02 §4 | No source says who writes an approved change. |
| KS-G-03 | The output templates do not exist. Each agent file refers to an "approved template". | KA-R, KA-E, KA-M | The agents cannot operate as written. |
| KS-G-04 | The data model is incomplete. No fields for Concept, Process, Workflow Task, or Audit Event. No YAML for Reference Brief, Knowledge Assessment, or Change Order. No ID prefix for MOC. No record for the Knowledge Health Report or the No Change result. | K07 | K04 Phase 1 needs these. |
| KS-G-05 | No list of relationship types. K02 §8 requires "explicit relationship types". | K02, K07 | |
| KS-G-06 | The KMO package has no topic field and no controlled vocabulary for topics. No rule assigns a record to a MOC. | K07 | KVC makes topics a core principle. |
| KS-G-07 | The KMO package has no rule for untrusted fetched content. The Reporter has WebFetch and WebSearch. | KA-R, KCM | KVC lists prompt injection as a risk (KS-R-10). |
| KS-G-08 | The "Quick brief" has no content definition. | K06 §3 | |
| KS-G-09 | No status values for Source, Reference Brief, Knowledge Assessment, or Change Order in the KMO package. | K07 | The shared metadata has one `status` field with the example `proposed`. |
| KS-G-10 | No end state for an inbox stub after a Brief exists. No end state for a reviewed Brief that has nothing to promote. | KVC §6.4 | The queues "Inbox" and "Reviewed but not promoted" depend on this. |
| KS-G-11 | No method enforces agent permissions. | K03 §3 | Refer to KS-C-36. |
| KS-G-12 | No record of the Curator low-risk authorization. No location for such a record. | K03 §5 | |
| KS-G-13 | The audit log has no location and no format. | K03 §5, K05 §3.5 | |
| KS-G-14 | The package has no `.claude/skills/` folder. K02 §14 names it. | K02 | |
| KS-G-15 | The KMO success measures have no numbers. | K02 §15 | K04 defers numbers until the first test set. |
| KS-G-16 | No dates, no effort estimates, and no time budget. | All | Refer to X-G-07. |
| KS-G-17 | No rule says when the 1 to 5 scale "helps". K07 fields use text values such as `unknown`. The Claim Candidate has one `evidence_quality` field for six dimensions. | K02 §6, K07 | |
| KS-G-18 | No plan for existing notes or for the Intake backlog. KVC defers the decision until after the pilot. | KVC §3 | Refer to X-G-04. |
| KS-G-19 | No source states a security or privacy requirement. KVC examples include the topics Money and Mental Health. | All | Agents read and process the content. |
| KS-G-20 | No retry limit and no retry rule. K06 §10 records only "whether a retry is safe". | K06 | |

## 6. Open decisions that the sources list

"Recommendation" shows what the source recommends. A recommendation is not a decision.

| ID | Question | Source | Recommendation in the source |
|---|---|---|---|
| KS-Q-01 | What is the first topic list? (5 to 8 topics) | KVC §9 | None |
| KS-Q-02 | How long does a claim stay "fresh" for each topic? | KVC §9 | None |
| KS-Q-03 | Do the folders use Johnny.Decimal numbers? | KVC §9 | None. Refer to X-C-03. |
| KS-Q-04 | Books and long courses: one Brief for each book, or one for each chapter or lesson? | KVC §9 | None |
| KS-Q-05 | Is the raw text of copyrighted material stored, or only excerpts and locators? | KVC §9 | None |
| KS-Q-06 | Which agent route: Claude Code or a skill, or an API script? | KVC §9 | None. KMO selects Claude Code [K03 D-10]. |
| KS-Q-07 | Folder structure and naming conventions. | KVC Phase 0 | None |
| KS-Q-08 | Plugins: Templater, Dataview, Meta Bind. | KVC Phase 0 | Templater and Dataview required |
| KS-Q-09 | Backup and sync method. | KVC Phase 0; K05 §1 | None. Refer to X-C-07. |
| KS-Q-10 | Storage: final Brain folder structure; all records in Markdown with YAML; JSON also; Git for version history. | K05 §1 | Start with Markdown and YAML. Add JSON Schema after the fields are stable. Use Git if the user is comfortable with it. |
| KS-Q-11 | IDs: date sequence or generated value; made by a script; ID in the file name. | K05 §1 | Stable IDs that do not depend on titles. A script after the rules are agreed. |
| KS-Q-12 | Brain structure: separate folders for claims, concepts, processes, relationships; topic folders, object-type folders, or both; MOC organization. | K05 §1 | Object-type folders at first. MOCs for topics. No deep folder trees. |
| KS-Q-13 | Claim size: how small; several linked statements in one claim; when to split. | K05 §1 | One main assertion. Split when parts can be true or false independently. |
| KS-Q-14 | Acceptance: sufficient evidence; one strong source; rules by topic; expert consensus. | K05 §1 | No universal number. Topic rules only when necessary. A written rationale for each acceptance. |
| KS-Q-15 | Status and lifecycle: final values; permitted changes; when a claim is stale; who marks a claim disputed or superseded. | K05 §1 | Seven start values. Define the rules before automation. |
| KS-Q-16 | Search: first method; is Obsidian search sufficient; when semantic search is useful; one index or two. | K05 §1 | Start with Obsidian and file search. |
| KS-Q-17 | Implementation: model for each agent; tools for each agent; tasks for scripts; tasks for hooks; activity log. | K05 §1 | Confirm Claude Code features and tool names in Phase 0. |
| KS-Q-18 | Final workflow task states and transition rules. | K06 §9 | Twelve suggested states |
| KS-Q-19 | Where the Brain and the source files live. | K04 Phase 0 | None. Refer to X-C-03. |
| KS-Q-20 | Does the Knowledge Owner authorize low-risk Curator actions? | K03 §5 | None |

## 7. Dependencies

| ID | Dependency | Needed for | Status |
|---|---|---|---|
| KS-DEP-01 | Intake System and the sorting scope | Supply of new material | Interface not defined (X-G-01) |
| KS-DEP-02 | Claude Code: version, tools, subagents | KMO design | To confirm in Phase 0 [K04] |
| KS-DEP-03 | Obsidian plugins: Templater, Dataview | Charter design | To confirm in Phase 0 [KVC] |
| KS-DEP-04 | Backup and version control | Both designs. Possibly the Brain version. | OPEN (KS-Q-09, KS-Q-10) |
| KS-DEP-05 | ORION vault structure and house rules | Location decision | Not reviewed (PRG-00, section 3.2) |
| KS-DEP-06 | Web access for source retrieval | Reporter; Triage Assistant | Not confirmed |

## 8. Status after the review of 2026-11-12

### 8.1 New risks

| ID | Risk | Control |
|---|---|---|
| KS-R-21 | With no manual pilot, real use does not test the schema before agents use it. | The KMO test set of six sources gives a partial test. No other control. |
| KS-R-22 | The design is large for 5 to 10 hours each week: 14 record types, five roles, 10 phases. The first full workflow is months away. Justin can lose interest. | Trim the record types in development (KS-D-04). |
| KS-R-23 | ChatGPT made the KMO package with no knowledge of the vault. Other items possibly assume an app, not a vault. | Review the KMO items against the vault in development (KS-D-04, KS-D-05). |

### 8.2 New gaps

| ID | Gap |
|---|---|
| KS-G-21 | The routing rulebook has no format, no location, and no first rules (X-D-07). |
| KS-G-22 | The method to give a source to the Reporter by hand is not defined (X-D-02). |
| KS-G-23 | No list exists of the standard core frontmatter fields (X-D-09). |

### 8.3 Status of existing items

| ID | Status | Reference | Note |
|---|---|---|---|
| KS-C-01 | RESOLVED | KS-D-01 | |
| KS-C-02 | RESOLVED in part | KS-D-08 | Store: "the Brain". System name PINNED. |
| KS-C-03 | RESOLVED | KS-D-16 | Area `20-29 Knowledge`. |
| KS-C-04 | RESOLVED | KS-D-02 | Pilot removed. |
| KS-C-05 | RESOLVED | KS-D-03 | |
| KS-C-06 | PINNED | KS-D-04 | |
| KS-C-07 | RESOLVED in part | KS-D-08, KS-D-09, PRG-00 §8.1 | Agent names PINNED. |
| KS-C-08 | DEFAULT | KS-D-01 | Stable IDs. |
| KS-C-09 | OPEN | KS-Q-15 | KMO has four lists. The default rule cannot select one. |
| KS-C-10 | DEFAULT | KS-D-01 | |
| KS-C-11 | DEFAULT | KS-D-01 | |
| KS-C-12 | DEFAULT | KS-D-01 | 13 sections. The 5-minute criterion is retired (KS-D-02). |
| KS-C-13 | RESOLVED | KS-D-10 | |
| KS-C-14 | PINNED | KS-D-05 | |
| KS-C-15 | DEFAULT | KS-D-01 | No interim review queue is defined. |
| KS-C-16 | DEFAULT | KS-D-01 | |
| KS-C-17 | DEFAULT | KS-D-12 | |
| KS-C-18 | DEFAULT | KS-D-01, KS-D-14 | |
| KS-C-19 | DEFAULT | KS-D-01 | |
| KS-C-20 | DEFAULT | KS-D-01 | |
| KS-C-21 | OPEN | KS-Q-05 | The KMO locator check needs stored text. The default rule does not settle it. |
| KS-C-22 | DEFAULT | KS-D-01 | |
| KS-C-23 | DEFAULT | KS-D-01 | |
| KS-C-24 | PINNED | X-D-09 | Hyphens preferred. |
| KS-C-25 | RESOLVED | KS-D-13 | The agent files are draft input. Templates come in development. |
| KS-C-26 | OPEN | | KMO internal. |
| KS-C-27 | OPEN | | KMO internal. |
| KS-C-28 | OPEN | | KMO internal. |
| KS-C-29 | RESOLVED in part | KS-D-07 | Final levels in development. |
| KS-C-30 | OPEN | | KMO internal. |
| KS-C-31 | OPEN | | KMO internal. |
| KS-C-32 | OPEN | | KMO internal. |
| KS-C-33 | OPEN | | KMO internal. |
| KS-C-34 | OPEN | | KMO internal. |
| KS-C-35 | PINNED | KS-D-04 | Refer to KS-R-22. |
| KS-C-36 | OPEN | | KMO internal. |
| KS-C-37 | RESOLVED | KS-D-10 | No source-type folders. |
| KS-G-02 | OPEN | KS-D-03 | Recording rule decided. No agent named to apply changes. |
| KS-G-03 | PLANNED | KS-D-13 | |
| KS-G-06 | RESOLVED in part | KS-D-01 | KVC vocabularies carry forward. Values open. |
| KS-G-07 | RESOLVED | KS-D-01 | KVC rule carries forward. Add it to the agent files in development. |
| KS-G-14 | PLANNED | KS-D-13 | |
| KS-G-16 | RESOLVED in part | X-D-14 | Dates still open. |
| KS-G-18 | RESOLVED in part | X-D-03 | The backlog comes through the Intake System. |
| KS-G-19 | RESOLVED in part | X-D-12 | Company items. No other privacy rule. |
| KS-R-17 | CLOSED | KS-D-01 | |
| KS-R-18 | CLOSED | X-D-04 | |
| KS-R-19 | REPLACED | KS-R-22 | |
| KS-A-01 | CONFIRMED | KS-D-01 | |
| KS-A-06 | CONFIRMED | KS-D-01 | |
| KS-A-07 | CONFIRMED | KS-D-16 | The Knowledge System is in ORION. |
| KS-Q-03 | RESOLVED | KS-D-10 | |
| KS-Q-06 | DEFAULT | KS-D-01 | Claude Code (K03 D-10). |
| KS-Q-08 | PINNED | KS-D-05 | |
| KS-Q-09 | RESOLVED | X-D-11, X-D-25 | Git with a private GitHub remote. Free. |
| KS-Q-10 | RESOLVED in part | X-D-25 | Git is used for version history. JSON Schema stays open. |
| KS-R-11 | REDUCED | X-D-25 | Each session pushes to GitHub. |
| KS-Q-12 | RESOLVED in part | KS-D-10 | |
| KS-Q-19 | RESOLVED | KS-D-16 | Source files go in `22 Workflow`. |
| KS-DEP-05 | RESOLVED | KS-D-16, X-D-23 | ORION structure reviewed in Phase 0. The root `CLAUDE.md` exists (v0.4). |
| KS-DEP-04 | RESOLVED | X-D-25 | Git installed 2026-11-13. Vault repository with a GitHub remote. |
| KS-G-11 | OPEN | KS-D-19 | The Orchestrator `CLAUDE.md` states the write scope. No setting enforces it yet. |
| KS-C-36 | OPEN | KS-D-18 | The agent files are installed with no changes. The Reporter tool list still has no path limit. Fix in Phase 2. |

### 8.4 Phase 0 checklist

| Step | Status |
|---|---|
| Area and folders (`20`, `21`, `22`) | Done. `22.21` to `22.25` made (KS-D-22). |
| Import the KMO package | Done (KS-D-18) |
| ORION root `CLAUDE.md` | Done. v0.4 (X-D-23, X-D-24). |
| Orchestrator `CLAUDE.md` and `.claude/agents/` | Done. v0.3 (KS-D-20, KS-D-23). |
| Confirm the Claude Code version and tools | Done in part. The desktop app loads both `CLAUDE.md` files and lists the four agents. The Claude Code CLI is not installed. |
| Backup and version control | Done 2026-11-13 (X-D-25). Git and a private GitHub remote. Root `CLAUDE.md` §5. |
| Naming rules, ID rules, core frontmatter | Done (KS-D-21). Closes KS-C-08, KS-C-24, KS-Q-11, KS-G-23. |
| Exit test | PASSED 2026-11-12 (KS-D-23). |

### 8.6 Phase 1 status

| ID | Status | Reference |
|---|---|---|
| KS-C-06 | RESOLVED | KS-D-25. Seven note types. |
| KS-C-35 | RESOLVED | KS-D-25 |
| KS-C-22 | RESOLVED | KS-D-25. Typed link fields. |
| KS-C-27 | RESOLVED | KS-D-25. "No Change" is an Assessment value. |
| KS-C-30 | RESOLVED in part | KS-D-25. One list note now. |
| KS-G-25 | RESOLVED | KS-D-25. Approval fields in the Change Order. |
| KS-R-22 | REDUCED | KS-D-25. 3 to 4 notes for each source. |
| KS-C-09 | RESOLVED | KS-D-26. Five Brain Claim values. |
| KS-C-21 | RESOLVED | KS-D-26. Companion text file when available. |
| KS-Q-05 | RESOLVED | KS-D-26 |
| KS-Q-15 | RESOLVED in part | KS-D-26. Values set. Transition rules come with the templates. |
| KS-Q-18 | RESOLVED in part | KS-D-26. Source status is the workflow state. |
| Templates | APPROVED | KS-D-27. All seven in `20.07`, Schema v0.6. Next: the Phase 1 exit test, one sample record of each type. |
| KS-G-01 | RESOLVED | KS-D-27. Brain version = ID of the last applied Change Order (Schema §5.6). |
| KS-G-04 | RESOLVED | KS-D-27. Fields for all seven types. |
| KS-G-05 | RESOLVED | KS-D-27. Relationship types: `supports`, `contradicts`, `refines`, `extends`, `related`. |
| KS-C-26 | RESOLVED | KS-D-27. Change Order content: the template sections and Schema §5.8. |
| KS-G-08 | RESOLVED | KS-D-27. Quick brief = Brief sections 1, 3, 7, 8, 10 (Schema §5.5). |

The review list of 2026-11-12 (six items) is closed by KS-D-27.

### 8.5 Items from the Phase 0 exit test

| ID | Item | Status |
|---|---|---|
| KS-R-24 | The four agents are available as subagents now. Only a text rule (area `CLAUDE.md` §4) stops early use. | OPEN. Control: the phase table in §4. |
| KS-G-24 | No format or location for Justin's decision on a "needs review" item. No criteria for "relates to Charter or Spectrum". | OPEN. Phase 1. |
| KS-G-25 | No format or location for the approval record of a Change Order. | OPEN. Phase 1, with KS-G-02. |
| KS-C-39 | Root §3 requires a work log in `01.13`. Area §5.1 forbids writes outside `20-29` without approval. | RESOLVED (KS-D-24). The Knowledge System logs in `22.25 Workflow Log`. |
| KS-C-38 | KA-C allows low-risk navigation changes after authorization. Area `CLAUDE.md` §5.2 requires a Change Order for each Brain change. | OPEN. Decide with KS-Q-20 in Phase 6. |

Items not in this table have no change.

## 9. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Added status after the review: new risks and gaps, status of each changed item. |
| 2026-11-12 | 0.3 | Phase 0: location resolved (KS-D-16). Git and root `CLAUDE.md` findings. |
| 2026-11-12 | 0.4 | Phase 0: package import, `CLAUDE.md` drafts, Phase 0 checklist (§8.4). |
| 2026-11-13 | 0.5 | Backup and version control done (X-D-25). KS-Q-09, KS-DEP-04 resolved. |
| 2026-11-13 | 0.6 | Phase 1 templates approved (KS-D-27). §8.6 review list closed. |
