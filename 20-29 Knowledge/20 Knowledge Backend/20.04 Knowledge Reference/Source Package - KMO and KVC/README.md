# Knowledge Management Office

**Package purpose:** Give Claude Code the context, system design,
decisions, and first agent instructions for this project.

## Start here

1.  Read `01_PROJECT_CONTEXT.md`.
2.  Read `02_SYSTEM_SPECIFICATION.md`.
3.  Read `03_DECISIONS_AND_GOVERNANCE.md`.
4.  Read `04_IMPLEMENTATION_PLAN.md`.
5.  Read `05_OPEN_ITEMS_AND_RECOMMENDATIONS.md`.
6.  Read `06_WORKFLOW_AND_KNOWLEDGE_LIFECYCLE.md`.
7.  Read `07_DATA_MODEL_STARTER.md`.
8.  Read `CLAUDE.md`.
9.  Read the four agent files in `.claude/agents/`.

Do not build the full system at once. Start with the data model and one
end-to-end test.

## Package map

  ------------------------------------------------------------------------------
  File                                       Purpose
  ------------------------------------------ -----------------------------------
  `01_PROJECT_CONTEXT.md`                    User goals, problem, vision,
                                             constraints, and working
                                             preferences

  `02_SYSTEM_SPECIFICATION.md`               Full system specification

  `03_DECISIONS_AND_GOVERNANCE.md`           Decisions, roles, permissions, and
                                             approval rules

  `04_IMPLEMENTATION_PLAN.md`                Phased build plan

  `05_OPEN_ITEMS_AND_RECOMMENDATIONS.md`     Open decisions, risks, and
                                             recommendations

  `06_WORKFLOW_AND_KNOWLEDGE_LIFECYCLE.md`   Intake, processing, approval,
                                             retrieval, and maintenance

  `07_DATA_MODEL_STARTER.md`                 Starter object model, IDs,
                                             statuses, and templates

  `CLAUDE.md`                                Instructions for the main Claude
                                             Code session

  `.claude/agents/reporter.md`               Reporter agent instructions

  `.claude/agents/editor.md`                 Editor agent instructions

  `.claude/agents/managing-editor.md`        Managing Editor agent instructions

  `.claude/agents/knowledge-curator.md`      Knowledge Curator agent
                                             instructions
  ------------------------------------------------------------------------------

## Important status note

This package records the design discussed so far. It is a starting
specification, not a claim that the system already exists.

Some implementation details remain open. Do not invent decisions to fill
those gaps. Ask the Knowledge Owner before you make a decision that
changes the system's data model, permissions, or workflow.

## Writing standard

Use ASD-STE100 style:

-   Use short sentences.
-   Use one instruction per sentence where possible.
-   Use active voice.
-   Use common words.
-   Use one term for one concept.
-   Define technical terms before you use them.
-   Avoid vague words such as "etc.", "easy", and "obvious".
-   State who does each action.
-   State when a task needs human approval.
