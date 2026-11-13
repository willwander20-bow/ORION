# Decisions and Governance

## 1. Decisions made

  -----------------------------------------------------------------------
  ID                      Decision                Reason
  ----------------------- ----------------------- -----------------------
  D-01                    Use a four-agent model  Each agent has a
                                                  distinct responsibility

  D-02                    Add a Knowledge Curator The Brain needs ongoing
                                                  maintenance and
                                                  retrieval

  D-03                    Use an Orchestrator     One role must
                                                  coordinate tasks and
                                                  workflow state

  D-04                    Keep the user as        The user has final
                          Knowledge Owner         control over
                                                  substantive knowledge

  D-05                    Use the Brain as the    Proposed knowledge must
                          approved knowledge      remain separate from
                          collection              accepted knowledge

  D-06                    Use Reference Briefs as This creates a
                          Reporter output         consistent source
                                                  record

  D-07                    Use Knowledge           This records how a
                          Assessments as Editor   source relates to the
                          output                  Brain

  D-08                    Use Change Orders as    This creates a
                          Managing Editor output  controlled change
                                                  proposal

  D-09                    Do not let agents       This prevents
                          approve substantive     self-approval and
                          Brain changes           silent changes

  D-10                    Start with Claude Code  This avoids premature
                          main session as         workflow code
                          Orchestrator            

  D-11                    Use Markdown and YAML   This supports Obsidian
                          first                   and keeps data portable

  D-12                    Do not build more       The four roles must
                          agents yet              prove their value first

  D-13                    Build the data model    The workflow depends on
                          before advanced         clear records
                          automation              

  D-14                    Build Knowledge HQ      The interface must show
                          after the core workflow real system data

  D-15                    Make the future         It gives the user one
                          Mailroom the default    clear place to submit
                          intake path             material

  D-16                    Keep intake context     The reason for saving a
                          optional                source can help assess
                                                  relevance

  D-17                    Keep intake channels    Phone sharing and
                          open for later          browser capture can use
                          expansion               the same intake queue
  -----------------------------------------------------------------------

## 2. Role and authority

### Knowledge Owner

The user is the Knowledge Owner.

The Knowledge Owner:

-   Sets system priorities.
-   Approves the data model.
-   Approves agent permissions.
-   Approves substantive Brain changes.
-   Resolves disputed decisions.
-   Decides when to add features or change the architecture.

### Orchestrator

The Orchestrator:

-   Coordinates work.
-   Tracks workflow state.
-   Checks output structure.
-   Enforces permissions.
-   Routes tasks.
-   Records errors.
-   Does not approve knowledge changes.

### Specialist agents

Specialist agents perform their assigned analysis.

They may create proposals and reports. They may not approve their own
proposals.

## 3. Permission model

  ----------------------------------------------------------------------------------
  Action            Reporter       Editor     Managing     Knowledge    Orchestrator
                                                Editor       Curator 
  ------------- ------------ ------------ ------------ ------------- ---------------
  Read source            Yes    If needed    If needed     If needed      For triage
  material                                                           

  Create Source Propose data           No           No            No      Yes, after
  record                                                                  validation

  Create                 Yes           No           No            No              No
  Reference                                                          
  Brief                                                              

  Create                  No          Yes           No            No              No
  Knowledge                                                          
  Assessment                                                         

  Create Change           No           No          Yes   May propose              No
  Order                                                  maintenance 
                                                                  CO 

  Read Brain      No, unless          Yes          Yes           Yes For routing and
                  context is                                                 context
                    supplied                                         

  Change                  No           No           No            No    Only through
  accepted                                                                  approved
  Brain claim                                                                process

  Update                  No           No           No   Limited, if         May run
  navigation                                              authorized   deterministic
  index                                                                       script

  Approve                 No           No           No            No              No
  substantive                                                        
  change                                                             

  Record                  No           No           No            No  Yes, from user
  approval                                                               instruction
  ----------------------------------------------------------------------------------

The table is a policy target. Claude Code permissions and tools must
enforce it in practice.

## 4. Change approval rules

A Change Order must include:

-   Change Order ID.
-   Brain version reviewed.
-   Objects affected.
-   Proposed action.
-   Reason.
-   Evidence references.
-   Expected impact.
-   Risks and limits.
-   Required user decision.

The Knowledge Owner may:

-   Approve.
-   Reject.
-   Request changes.
-   Defer.
-   Request more research.

The Orchestrator records the decision.

The system must not treat silence as approval.

## 5. Low-risk Curator actions

The Knowledge Owner may later authorize the Curator to make limited
navigation changes without separate approval.

Possible actions:

-   Repair a broken internal link.
-   Refresh a generated index.
-   Update a MOC navigation list.
-   Create a report of orphaned notes.
-   Update graph statistics.

These actions must not change the meaning, evidence, or status of
knowledge.

Record each action in the audit log.

## 6. Change Order re-check

Every Change Order must state the Brain version used during review.

Before implementation:

1.  Read the current Brain version.
2.  Compare it with the version in the Change Order.
3.  If the version is the same, continue to approval and implementation.
4.  If the version is different, ask the Managing Editor to re-check the
    proposal.
5.  Do not apply a stale proposal.

## 7. Terms

Use these terms consistently.

  -----------------------------------------------------------------------
  Term                                Meaning
  ----------------------------------- -----------------------------------
  Source                              Original material, such as an
                                      article, paper, file, or video

  Evidence                            Information from a source that
                                      supports or challenges a claim

  Claim Candidate                     A claim extracted from a source but
                                      not yet accepted into the Brain

  Brain Claim                         A knowledge claim stored in the
                                      Brain

  Reference Brief                     The Reporter's structured analysis
                                      of a source

  Knowledge Assessment                The Editor's evaluation of a
                                      Reference Brief against the Brain

  Change Order                        A proposal to change the Brain

  MOC                                 Map of Content; a curated
                                      navigation page for a topic

  Research Question                   An unresolved question that guides
                                      future research

  Brain version                       A recorded version of the approved
                                      knowledge collection
  -----------------------------------------------------------------------
