# Project Context

## 1. Project purpose

The user wants to build a personal knowledge system.

The system must help the user:

1.  Capture useful information.
2.  Process sources.
3.  Understand the information.
4.  Check claims and evidence.
5.  Compare new information with existing knowledge.
6.  Maintain an approved knowledge base.
7.  Find information later.
8.  Apply knowledge to real questions and work.
9.  Re-check knowledge when new evidence appears.

The long-term goal is a personal knowledge operating system. The first
goal is smaller. Build a reliable research and knowledge workflow before
you build advanced automation.

## 2. The problem

The user's saved information is spread across many places. The user
often saves articles, links, files, and notes. The user does not always
process or reuse them.

The user needs a system that can answer questions such as:

-   Where did I read that?
-   What did the source say?
-   What evidence supported the claim?
-   Did another source disagree?
-   How does this information connect to what I already know?
-   What should change in my knowledge base?
-   Which claims need another review?

The system must preserve a path from each knowledge claim to its source
and evidence.

## 3. Desired system

The system has four specialist agents and one orchestrator.

  -----------------------------------------------------------------------
  Role                                Main function
  ----------------------------------- -----------------------------------
  Reporter                            Acquires and analyzes source
                                      material

  Editor                              Evaluates how new information
                                      relates to the Brain

  Managing Editor                     Reviews proposed changes and
                                      creates Change Orders

  Knowledge Curator                   Maintains knowledge quality,
                                      structure, links, and retrieval

  Orchestrator                        Coordinates tasks, controls
                                      workflow, and checks outputs
  -----------------------------------------------------------------------

The user is the Knowledge Owner. The user has final approval for
substantive changes to the Brain.

The **Brain** is the approved knowledge collection. It is the
authoritative record of accepted knowledge.

A **Reference Brief** is a structured report about one source.

A **Knowledge Assessment** explains how a Reference Brief relates to the
Brain.

A **Change Order** is a proposal to change the Brain. It is not an
approved change.

## 4. User goals and constraints

The system is for personal use.

The user wants:

-   Strong source traceability.
-   Clear separation between source statements, evidence, and accepted
    knowledge.
-   Useful connections between topics.
-   Search across sources and knowledge.
-   Clear records of uncertainty and disagreement.
-   Human control over important changes.
-   A guided build process.
-   A system that can grow in stages.

The user does not want:

-   A large system before the core workflow works.
-   Unnecessary agents.
-   Excessive automation before the data model is stable.
-   A large amount of AI-generated paperwork that the user cannot
    review.
-   A complex graph database as the first storage choice.
-   A dashboard that looks active but does not show real system
    activity.

## 5. Preferred working method

The user prefers a guided, iterative approach.

Claude Code must:

1.  Explain the purpose of each step.
2.  State which file or folder it will create or change.
3.  Show commands before it asks the user to run them.
4.  Explain important code and configuration.
5.  Work in small stages.
6.  Test each stage with real examples.
7.  Stop at decision points and ask for input.
8.  Avoid large unexplained code dumps.

The user uses Obsidian for research. The system should support Markdown
and YAML so the user can read and edit records in Obsidian.

Do not lock the system to Obsidian-specific features unless the user
approves that choice.

## 6. Knowledge HQ concept

The user wants a future visual interface called **Knowledge HQ**.

It may look like a modern office. Each department or agent can have a
profile and workspace.

The interface may include:

-   A central Mailroom or inbox tray.
-   Agent and department views.
-   Current work and status.
-   Recent activity.
-   Pending reviews.
-   System health.
-   Search and retrieval.
-   Source submission.
-   Links to Reference Briefs, Assessments, and Change Orders.

The office is a user interface. It is not proof that agents run all the
time.

The system must record real task and event data before the interface can
show accurate activity.

## 7. Intake concept

The future Mailroom should accept:

-   URLs.
-   File links.
-   Uploaded files.
-   Text notes.
-   Short instructions.
-   Optional context about why the user saved the item.

The Orchestrator should triage each submission and route it to the
correct workflow.

The user may later submit content from a phone share action or browser
extension. These are later features. Do not build them in the first
phase.

The user may also submit work through an agent's office or a
conversational interface. These paths should feed the same intake queue.

## 8. Long-term system direction

The system should grow through four stages:

1.  Research Assistant.
2.  Knowledge Management System.
3.  Knowledge Intelligence System.
4.  Personal Knowledge Operating System.

Do not build the later stages before the earlier stages work.

The measure of success is not the number of agents or notes. The measure
is whether the user can find, understand, evaluate, and apply reliable
knowledge.
