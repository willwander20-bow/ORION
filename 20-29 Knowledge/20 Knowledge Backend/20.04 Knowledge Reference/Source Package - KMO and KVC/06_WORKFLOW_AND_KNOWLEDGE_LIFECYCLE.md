# Workflow and Knowledge Lifecycle

## 1. Intake paths

All intake paths must feed one queue.

Future input paths may include:

-   Knowledge HQ Mailroom.
-   Direct submission from an agent workspace.
-   Conversation with the Orchestrator.
-   Phone share action.
-   Browser extension.
-   File upload.
-   Text note.

The Mailroom is the default future intake point.

The Orchestrator owns Intake and Triage. Do not create a separate Intake
agent at this stage.

## 2. Intake and triage

For each submission, the Orchestrator must:

1.  Record the submission.
2.  Record the submitter's optional context.
3.  Identify the source type.
4.  Check whether the source already exists.
5.  Check whether the source can be accessed.
6.  Assign or confirm a Source ID.
7.  Select a processing level.
8.  Set the workflow state.
9.  Route the task.

If the source is inaccessible, record the problem. Ask for a file or
another link when required.

## 3. Processing levels

  -----------------------------------------------------------------------
  Level                   Use                     Output
  ----------------------- ----------------------- -----------------------
  Archive only            The user wants to keep  Source record
                          the source              

  Quick brief             The user wants a fast   Short Reference Brief
                          review                  

  Full review             The source may change   Full Brief, Assessment,
                          or extend the Brain     and possible Change
                                                  Order
  -----------------------------------------------------------------------

The Orchestrator may recommend a level. The user can override it.

## 4. Full processing path

``` text
User submission
      |
      v
Orchestrator: Intake and Triage
      |
      v
Source record and Source ID
      |
      v
Reporter
      |
      v
Reference Brief
      |
      v
Orchestrator: Validate and save
      |
      v
Editor
      |
      v
Knowledge Assessment
      |
      v
Orchestrator: Validate and save
      |
      v
Managing Editor
      |
      v
Change Order, if justified
      |
      v
Orchestrator: Validate and save
      |
      v
Knowledge Owner review
      |
      +---- Reject / Defer / Request more work
      |
      v
Approve
      |
      v
Controlled Brain update
      |
      v
Audit record and new Brain version
      |
      v
Knowledge Curator review
```

If no Brain change is justified, the Managing Editor records a No Change
result. Do not create an unnecessary Change Order.

## 5. Knowledge lifecycle

Use this lifecycle as the working model:

**Acquire → Understand → Evaluate → Curate → Apply → Reassess**

### Acquire

Capture a source and its context.

### Understand

Create a Reference Brief. Identify statements, claims, evidence,
methods, concepts, and limits.

### Evaluate

Compare the Brief with the Brain. Identify support, conflict,
qualification, and new knowledge.

### Curate

Review proposed changes. Approve, reject, or defer them. Update the
Brain through a controlled process.

### Apply

Retrieve and use knowledge to answer questions or support work.

### Reassess

Review knowledge when new evidence appears, when context changes, or
when a claim becomes stale.

This is a feedback loop. Reassessment can start a new research task.

## 6. Curator operating modes

### Maintenance mode

The Curator checks the Brain on a schedule or after important changes.

It may review:

-   Unsupported claims.
-   Claims with old evidence.
-   Disputed claims.
-   Duplicate concepts.
-   Orphaned claims.
-   Broken links.
-   Weak relationships.
-   MOC coverage.
-   Unresolved questions.
-   Possible downstream impact.

It produces a Knowledge Health Report.

### Retrieval mode

The Curator answers a question by searching:

1.  MOCs and topic navigation.
2.  Relevant Brain Claims and concepts.
3.  Related processes and relationships.
4.  Supporting and challenging evidence.
5.  Reference Briefs and original sources.
6.  Related Research Questions.

It must state the status of each important claim.

It must not change knowledge status during retrieval.

## 7. MOC rules

A Map of Content is a curated navigation page.

A MOC should:

-   Explain the topic.
-   Link to important concepts.
-   Link to relevant claims.
-   Link to processes and methods.
-   Link to evidence or source collections when useful.
-   Link to open research questions.
-   Identify important gaps or disputes.

A MOC is not a dump of every keyword match.

The Curator must explain why a new link is useful.

## 8. Downstream impact

When a claim changes, the system should inspect related objects.

For each possible impact, record:

-   The changed claim.
-   The related object.
-   The relationship type.
-   The reason for review.
-   Whether the impact is direct or possible.
-   The recommended action.

Do not automatically mark a related claim as false.

## 9. Workflow states

Suggested task states:

-   Received.
-   Triaged.
-   Queued.
-   In Progress.
-   Awaiting Validation.
-   Awaiting Review.
-   Awaiting Approval.
-   Approved.
-   Rejected.
-   Deferred.
-   Completed.
-   Failed.

The final state list and transition rules remain open.

## 10. Failure rules

The Orchestrator must stop the workflow when a required stage fails.

It must record:

-   What failed.
-   Which input was used.
-   Which agent or process failed.
-   What output was missing or invalid.
-   Whether a retry is safe.
-   What the user must do next.

Do not silently skip a failed stage.
