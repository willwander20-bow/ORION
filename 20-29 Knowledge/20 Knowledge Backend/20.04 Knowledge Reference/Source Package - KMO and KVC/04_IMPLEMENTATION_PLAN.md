# Implementation Plan

## Build rule

Build one reliable path through the system before you add advanced
features.

Use real sources during testing. Do not create every folder, schema,
script, and interface at the same time.

## Phase 0: Project foundation

**Goal:** Create a clear project structure and working rules.

Tasks:

1.  Create the project folder.
2.  Add this package.
3.  Create `CLAUDE.md`.
4.  Confirm the Claude Code version and available tools.
5.  Confirm where the Brain and source files will live.
6.  Set a backup and version-control approach.
7.  Agree on naming and ID rules.

**Exit test:** Claude Code can read the project instructions and explain
the system roles correctly.

## Phase 1: Data model and templates

**Goal:** Define the records that move through the system.

Create starter templates for:

-   Source.
-   Evidence.
-   Claim Candidate.
-   Reference Brief.
-   Knowledge Assessment.
-   Change Order.
-   Brain Claim.
-   Concept.
-   Process.
-   Relationship.
-   Research Question.
-   MOC.
-   Workflow Task.
-   Audit Event.

Define:

-   Required fields.
-   Allowed values.
-   ID patterns.
-   Status values.
-   Links between objects.
-   Version rules.

Do not write detailed agent prompts until the main output templates are
clear.

**Exit test:** The user can create and read one complete sample record
of each core type.

## Phase 2: Reporter

**Goal:** Process one source into a useful Reference Brief.

Tasks:

1.  Create the Reporter subagent.
2.  Give it the Reference Brief template.
3.  Test it with one official document.
4.  Test it with one article.
5.  Test it with one source that has weak evidence.
6.  Review its citations and locators.
7.  Improve the instructions.

**Exit test:** The Reporter creates traceable Briefs and does not invent
source details.

## Phase 3: Editor

**Goal:** Compare a Reference Brief with the Brain.

Tasks:

1.  Create a small test Brain.
2.  Create the Editor subagent.
3.  Give it the Knowledge Assessment template.
4.  Test a source that adds new knowledge.
5.  Test a source that supports an existing claim.
6.  Test a source that challenges an existing claim.
7.  Test a duplicate source.

**Exit test:** The Editor identifies useful relationships and explains
its reasoning.

## Phase 4: Managing Editor

**Goal:** Turn useful Assessments into controlled Change Orders.

Tasks:

1.  Create the Managing Editor subagent.
2.  Give it the Change Order template.
3.  Test each main Change Order type.
4.  Test a proposal that affects more than one claim.
5.  Test a stale Brain version.
6.  Review whether the user can understand each proposal.

**Exit test:** The Managing Editor creates clear proposals and never
changes the Brain.

## Phase 5: Orchestration

**Goal:** Run the full workflow with clear state tracking.

Tasks:

1.  Define workflow states.
2.  Define validation checks.
3.  Add ID creation.
4.  Add output validation.
5.  Add workflow logs.
6.  Add duplicate checks.
7.  Add error and retry handling.
8.  Add approval recording.
9.  Add Brain version checks.

Start with the main Claude Code session as Orchestrator. Add scripts
only for repeatable tasks.

**Exit test:** One source moves through the full workflow without silent
failures or unauthorized changes.

## Phase 6: Knowledge Curator

**Goal:** Maintain Brain quality and support retrieval.

Tasks:

1.  Create the Curator subagent.
2.  Define MOC structure.
3.  Add orphan and broken-link checks.
4.  Add claim and evidence health reports.
5.  Add retrieval instructions.
6.  Add impact review instructions.
7.  Test with a deliberately inconsistent Brain.

**Exit test:** The Curator finds meaningful problems and explains why
they matter. It does not silently change knowledge.

## Phase 7: Knowledge HQ interface

**Goal:** Build a useful interface on top of a working system.

Possible first version:

-   Dashboard.
-   Mailroom.
-   Agent profiles.
-   Recent activity.
-   Pending review queue.
-   Search.
-   Knowledge health.

Use real task records and audit events.

A simple web application is sufficient. Do not build a 3D office or
game-like simulation as the first interface.

**Exit test:** The user can submit a source, see its status, open its
outputs, and review proposed changes.

## Phase 8: Intake expansion and automation

**Goal:** Reduce friction when the user captures information.

Possible features:

-   File upload.
-   URL submission.
-   Phone share action.
-   Browser extension.
-   Quick note capture.
-   Scheduled Curator review.
-   Event-triggered review.
-   External integrations.

All input methods must use the same intake queue and data model.

**Exit test:** New input channels do not create separate or inconsistent
records.

## Phase 9: Knowledge intelligence

Possible later capabilities:

-   Research Question Registry.
-   Proactive source monitoring.
-   Claim revalidation.
-   Cross-domain relationship discovery.
-   Impact propagation.
-   Personalized research.
-   Context-aware assistance.

Build each feature only when a real use case justifies it.

## Test set

Use at least six different sources:

1.  Official documentation.
2.  Academic paper.
3.  Weak blog with one useful point.
4.  Forum or Reddit discussion with conflicting views.
5.  Source that challenges an existing Brain Claim.
6.  Duplicate source.

Review these measures:

-   Source IDs and object IDs are valid.
-   Required fields are present.
-   Every evidence item has a source reference.
-   Source locators are real.
-   Fabricated citations: zero.
-   Claims distinguish source statements from evidence.
-   The Editor finds relevant Brain connections.
-   Change Orders identify affected objects.
-   The system stops when approval is required.
-   The user can understand and use the outputs.

Set numeric quality targets only after the first human-reviewed test set
exists.
