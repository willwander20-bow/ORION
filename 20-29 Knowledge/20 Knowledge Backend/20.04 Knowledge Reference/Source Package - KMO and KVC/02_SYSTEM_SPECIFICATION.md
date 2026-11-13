# System Specification

**System name:** Knowledge Management Office (KMO)\
**User interface concept:** Knowledge HQ\
**Primary user:** One Knowledge Owner\
**Initial environment:** Claude Code with Markdown and YAML records\
**Knowledge workspace:** Obsidian-compatible folder structure

## 1. System mission

The KMO must turn unstructured source material into traceable, reviewed,
useful knowledge.

The system must preserve the distinction between:

-   A source.
-   A statement made by a source.
-   Evidence presented by a source.
-   An interpretation of evidence.
-   A knowledge claim accepted into the Brain.
-   A personal interpretation or working hypothesis.

The system must not treat these items as the same thing.

## 2. Governing principles

### 2.1 Traceability

Every accepted claim must link to its supporting and challenging
evidence.

Every evidence record must link to a source and a source location when
available.

Never invent a source, quotation, page number, timestamp, URL, or
locator.

### 2.2 Separation of duties

Each agent has a defined role.

An agent must not perform work that belongs to another role unless the
Orchestrator assigns a specific, limited task.

### 2.3 Human approval

The Knowledge Owner approves substantive changes to the Brain.

Agents may prepare proposals. Agents must not approve their own
proposals.

### 2.4 Non-destructive operation

Do not delete knowledge because a new source disagrees with it.

Record the disagreement. Identify the affected claims. Prepare a review
proposal.

Keep the history of approved changes.

### 2.5 Evidence before confidence

Do not treat a high score as proof.

Use qualitative explanations with every score.

Keep source quality separate from evidence quality and knowledge
relevance.

### 2.6 Clear uncertainty

Use explicit states for accepted, proposed, under review, disputed,
uncertain, and superseded knowledge.

Do not present a proposed claim as accepted knowledge.

### 2.7 Small, testable stages

Build the core workflow first.

Do not build the full Knowledge HQ interface, phone capture, browser
extension, or scheduled monitoring before the core workflow works.

## 3. System components

### 3.1 Orchestrator

The Orchestrator is the workflow manager.

It must:

-   Accept new work.
-   Record the user's submission context.
-   Assign a Source ID.
-   Detect likely duplicates.
-   Classify the submission.
-   Select a processing path.
-   Invoke the correct agent.
-   Provide each agent with the required context.
-   Check output structure and required fields.
-   Save outputs in the correct location.
-   Track workflow state.
-   Record errors and retries.
-   Enforce agent permissions.
-   Stop the workflow when a required output is missing or invalid.
-   Request human review when required.

The Orchestrator does not decide whether a knowledge claim is true.
Specialist agents do their assigned analysis. The Knowledge Owner makes
final approval decisions.

Start with the Claude Code main session as the Orchestrator. Add
deterministic scripts after the workflow is stable.

### 3.2 Reporter

The Reporter processes source material.

It must:

-   Access the source when possible.
-   Record source metadata.
-   Identify the source's purpose and central premise.
-   Extract important statements and claims.
-   Identify evidence that supports each claim.
-   Record methods, facts, figures, concepts, definitions, and
    limitations.
-   Record exact source locations when available.
-   Assess source quality.
-   Assess evidence quality for each claim.
-   State extraction limits and uncertainty.
-   Produce a Reference Brief.

The Reporter must not modify the Brain.

### 3.3 Editor

The Editor evaluates a Reference Brief against the Brain.

It must:

-   Read the Reference Brief.
-   Retrieve relevant Brain claims and concepts.
-   Identify new knowledge.
-   Identify support, contradiction, qualification, refinement, or
    extension.
-   Identify new concepts, methods, processes, and relationships.
-   Identify research gaps.
-   Assess relevance and significance.
-   Recommend an action.

The Editor must not modify the Brain. It must not create or approve a
Change Order.

### 3.4 Managing Editor

The Managing Editor reviews Knowledge Assessments.

It must:

-   Check the Assessment against the current Brain.
-   Check whether the proposed change is supported by evidence.
-   Check for duplicate or conflicting claims.
-   Check direct and indirect impact.
-   Identify affected claims, processes, concepts, and relationships.
-   Consolidate proposals where appropriate.
-   Create a Change Order.
-   Set a priority and explain it.
-   Identify questions that require the Knowledge Owner.

The Managing Editor must not execute a Change Order.

### 3.5 Knowledge Curator

The Knowledge Curator maintains the quality and structure of the Brain.

It has two operating modes.

**Maintenance mode**

-   Find unsupported claims.
-   Find stale claims.
-   Find disputed claims.
-   Find duplicate concepts.
-   Find orphaned claims.
-   Find broken links.
-   Find weak or missing relationships.
-   Review MOCs.
-   Identify possible downstream impact.
-   Prepare maintenance reports and proposals.

**Retrieval mode**

-   Search the Brain.
-   Search source records and evidence.
-   Use MOCs to navigate topics.
-   Synthesize answers from approved knowledge.
-   Show supporting and challenging evidence.
-   State uncertainty and status.
-   Identify open research questions.
-   Report structural issues discovered during retrieval.

The Curator may make low-risk navigation changes if the Knowledge Owner
approves that permission. Examples include fixing broken navigation
links and updating an index.

The Curator must not change the meaning or status of accepted knowledge
without approval.

### 3.6 Brain

The Brain is the authoritative collection of approved knowledge.

It may contain:

-   Claims.
-   Concepts.
-   Processes.
-   Relationships.
-   Maps of Content (MOCs).
-   Research questions.
-   Evidence links.
-   Review history.

Use Markdown and YAML at first. Keep the storage model portable.

### 3.7 Knowledge HQ

Knowledge HQ is a future user interface.

It may show:

-   The four agents and their departments.
-   Agent status and current task.
-   Recent activity.
-   Pending work.
-   Review queues.
-   Source and knowledge search.
-   Knowledge health.
-   The Mailroom.

The interface must use real workflow records and event logs. Do not
display invented activity.

## 4. Processing workflow

Default full workflow:

1.  Intake and triage.
2.  Create or confirm Source record.
3.  Reporter creates Reference Brief.
4.  Orchestrator validates and saves the Brief.
5.  Editor creates Knowledge Assessment.
6.  Orchestrator validates and saves the Assessment.
7.  Managing Editor reviews the Assessment and current Brain.
8.  Managing Editor creates a Change Order when a Brain change is
    justified.
9.  Orchestrator validates and saves the Change Order.
10. Knowledge Owner reviews the Change Order.
11. If approved, the controlled implementation process updates the
    Brain.
12. The system records the approval, change, and new Brain version.
13. The Knowledge Curator checks affected links, MOCs, and dependent
    claims.

Not every source needs the full workflow. The Orchestrator may select:

-   Full processing.
-   Quick processing.
-   Archive only.
-   No processing, with a reason.

The Orchestrator must explain why it selects a path when the choice is
not obvious.

## 5. Source and evidence handling

Record the source's identity and access details.

Where available, record:

-   Title.
-   Author or publisher.
-   URL or file path.
-   Publication date.
-   Access date.
-   Source type.
-   Version or edition.
-   Language.
-   Content hash.
-   Extraction method.
-   Access problems.

For each evidence item, record:

-   Evidence ID.
-   Source ID.
-   Related claim candidate or Brain Claim.
-   Evidence type.
-   Exact excerpt or faithful summary.
-   Locator.
-   Relevance.
-   Directness.
-   Method or basis.
-   Reliability.
-   Corroboration.
-   Limitations.
-   Extraction confidence.

If a source is inaccessible, report that fact. Do not pretend to have
read it.

If a source has missing information, mark the field as unknown or not
available. Do not infer it.

## 6. Assessment and scoring

Keep these evaluations separate.

### Source Quality

The Reporter evaluates:

-   Authority.
-   Transparency.
-   Accuracy.
-   Objectivity.
-   Currency.

### Evidence Quality

The Reporter evaluates each claim's evidence:

-   Relevance.
-   Directness.
-   Methodology or basis.
-   Reliability.
-   Corroboration.
-   Limitations.

### Knowledge Relevance

The Editor evaluates:

-   Novelty.
-   Significance.
-   Applicability.
-   Relevance to the Brain.

### Brain Impact

The Managing Editor evaluates:

-   Impact on accepted claims.
-   Impact on processes.
-   Impact on concepts and relationships.
-   Risk if the change is not made.
-   Scope of review required.

Use a 1--5 scale only when it helps. Allow `Unknown` and
`Not applicable`.

Every score must include a reason. Do not use an average score as a
decision rule.

## 7. Confidence

Use these confidence values:

-   High.
-   Moderate.
-   Low.
-   Indeterminate.

Confidence describes how sure the agent is about its analysis or
extraction.

Confidence is not the same as evidence strength.

An agent must explain low or indeterminate confidence.

## 8. Relationship model

The system must support these links:

-   A Reference Brief contains Claim Candidates.
-   A Claim Candidate is supported or challenged by Evidence.
-   Evidence comes from a Source.
-   A Knowledge Assessment evaluates Claim Candidates.
-   A Knowledge Assessment references existing Brain Claims.
-   A Change Order proposes changes to Brain objects.
-   A Brain Claim links to supporting and challenging Evidence.
-   Concepts link to related concepts, claims, processes, and questions.
-   A Research Question links to claims, concepts, sources, and
    assessments.
-   A MOC links to relevant knowledge objects.

Use explicit relationship types. Add a short rationale to interpretive
relationships.

## 9. Impact propagation

When a claim is challenged or changed, identify related objects.

The system must distinguish:

-   Direct contradiction.
-   Direct support.
-   Qualification.
-   Possible downstream effect.
-   Confirmed downstream effect.

A link does not prove that one claim depends on another.

The Curator or Managing Editor must explain why a downstream item may be
affected. Do not change its status automatically.

## 10. Knowledge lifecycle

Knowledge is not static.

The system must support:

-   Proposed.
-   Under review.
-   Accepted.
-   Disputed.
-   Qualified.
-   Superseded.
-   Deprecated.
-   Archived.

The final list and transition rules require approval. See
`05_OPEN_ITEMS_AND_RECOMMENDATIONS.md`.

A new source may cause a review. It must not silently change an accepted
claim.

## 11. Search and retrieval

Search is a core system feature.

Plan for three retrieval layers:

1.  **Source retrieval:** Find a source, file, URL, or Reference Brief.
2.  **Knowledge retrieval:** Find claims, concepts, processes, MOCs, and
    research questions.
3.  **Evidence retrieval:** Find the evidence that supports or
    challenges a claim.

A useful answer should show:

-   The answer.
-   The relevant Brain objects.
-   Their status.
-   Supporting evidence.
-   Challenging evidence.
-   Important limits.
-   Related open questions.

Do not present an unsupported synthesis as an accepted Brain claim.

## 12. Audit and version control

Record:

-   Who or which agent created an object.
-   When it was created and updated.
-   Which source records it references.
-   Which workflow task created it.
-   Which Brain version was used during review.
-   Which Change Order changed it.
-   Who approved the change.
-   What changed.
-   Why it changed.

A Change Order must identify the Brain version used during its review.

If the Brain changes before approval, the Orchestrator must request a
re-check before implementation.

## 13. Error handling

The Orchestrator must stop progression when:

-   Required output is missing.
-   An ID is invalid or duplicated.
-   A required source locator is fabricated or cannot be verified.
-   An agent tries to perform an action outside its permission.
-   The source cannot be accessed and the task requires source content.
-   A Change Order uses an outdated Brain version.
-   A human approval is required but not recorded.

Record the error and the next action. Do not silently skip a failed
stage.

## 14. Initial technical approach

Use:

-   Claude Code main session as Orchestrator.
-   Markdown for human-readable records.
-   YAML frontmatter for metadata.
-   JSON Schema for validation when the object model is stable.
-   Custom subagents in `.claude/agents/`.
-   Reusable procedures in `.claude/skills/`.
-   Hooks only when an event-based action is useful.
-   Scripts for deterministic tasks such as ID creation and validation.

Do not begin with a graph database. Do not build a complex backend
before the workflow proves useful.

## 15. Success measures

Measure whether the system:

-   Preserves source traceability.
-   Produces useful Reference Briefs.
-   Identifies meaningful knowledge changes.
-   Avoids fabricated citations.
-   Finds contradictions.
-   Helps the user retrieve information.
-   Keeps the Brain understandable.
-   Reduces the time needed to find and apply knowledge.

Do not use agent count or document count as a success measure.
