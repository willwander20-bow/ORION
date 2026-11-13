# Open Items and Recommendations

## 1. Decisions still required

Do not assume answers to these questions.

### Storage and file structure

-   What is the final Brain folder structure?
-   Should all records be Markdown with YAML frontmatter?
-   Should structured data also be stored as JSON?
-   Will Git be used for version history?
-   What backup method will protect the Brain?

**Recommendation:** Start with Markdown and YAML. Add JSON Schema for
validation after the fields stabilize. Use Git if the user is
comfortable with its workflow.

### IDs

-   Should IDs use date-based sequences or generated unique values?
-   Should IDs be created by a script?
-   Should file names include the ID?

**Recommendation:** Use stable IDs that do not depend on titles. Use a
script when the ID rules are agreed.

### Brain structure

-   Should claims, concepts, processes, and relationships each have
    separate folders?
-   Should the Brain use topic folders, object-type folders, or a
    hybrid?
-   How should MOCs be organized?

**Recommendation:** Use object-type folders at first. Use MOCs for topic
navigation. Avoid deep folder trees.

### Claim granularity

-   How small should one Brain Claim be?
-   Can one claim contain several linked statements?
-   When should a claim be split?

**Recommendation:** Each Brain Claim should express one main assertion.
Split claims when parts can be true or false independently.

### Acceptance criteria

-   What evidence is sufficient for acceptance?
-   Can a claim be accepted with one strong source?
-   Does the rule change by topic?
-   How should expert consensus affect acceptance?

**Recommendation:** Do not use one universal numeric threshold. Define
topic-specific rules only when needed. Require a written rationale for
each acceptance decision.

### Status and lifecycle

-   Which statuses will be final?
-   Which status changes are allowed?
-   When does a claim become stale?
-   Who can mark a claim as disputed or superseded?

**Recommendation:** Start with Proposed, Under Review, Accepted,
Disputed, Superseded, Deprecated, and Archived. Define transition rules
before automation.

### Search

-   Which search method should be used first?
-   Is Obsidian search sufficient for the first version?
-   When is semantic search useful?
-   Should source and evidence search use the same index?

**Recommendation:** Start with Obsidian and file search. Add semantic
search only after a test shows that keyword search is not enough.

### Implementation

-   Which Claude model should each agent use?
-   Which tools can each agent access?
-   Which tasks should use scripts?
-   Which tasks should use hooks?
-   How will agent activity be logged?

**Recommendation:** Confirm current Claude Code features and tool names
during Phase 0. Do not copy assumed tool names into configuration.

## 2. Risks

  -----------------------------------------------------------------------
  Risk                    Why it matters          Control
  ----------------------- ----------------------- -----------------------
  Too much output         The user may not review Use concise Briefs and
                          the work                tiered processing

  False confidence        Scores may look more    Require reasons and
                          certain than the        limits
                          evidence                

  Fabricated citations    The Brain becomes       Require exact source
                          unreliable              locators and validation

  Duplicate knowledge     Search and maintenance  Use duplicate checks
                          become difficult        and stable IDs

  Silent status changes   The Brain loses         Require approval for
                          governance              substantive changes

  Stale Change Orders     Proposals may refer to  Re-check Brain version
                          old knowledge           before implementation

  Overbuilt architecture  Time goes into          Build one workflow at a
                          infrastructure instead  time
                          of value                

  Dashboard before data   The interface may show  Build the data workflow
                          fake or empty activity  first

  Weak relationships      Keyword links can       Require a rationale for
                          create false            interpretive links
                          connections             

  Inaccessible sources    Agents may guess from   Record access failure
                          titles or snippets      and stop when required
  -----------------------------------------------------------------------

## 3. Recommendations

### 3.1 Add a processing level

Use three levels:

-   **Archive only:** Save metadata and source material.
-   **Quick brief:** Capture the central point, key claims, and likely
    relevance.
-   **Full review:** Complete Reporter, Editor, and Managing Editor
    workflow.

This prevents low-value sources from creating excessive work.

### 3.2 Keep submission context

Allow the user to add a short note such as:

-   Why did I save this?
-   What question do I have?
-   What do I disagree with?
-   What project does this relate to?

Keep this context separate from source content. It is the user's note,
not a source claim.

### 3.3 Add a Research Question Registry

Store unresolved questions as first-class objects.

Link each question to:

-   Related Brain Claims.
-   Concepts.
-   Sources.
-   Reference Briefs.
-   Assessments.
-   Change Orders.

This prevents important unknowns from disappearing into notes.

### 3.4 Treat retrieval as a core feature

Do not wait until the end to design search.

The system must support source retrieval, knowledge retrieval, and
evidence retrieval.

### 3.5 Add an audit trail early

At minimum, record:

-   Task ID.
-   Agent.
-   Input IDs.
-   Output IDs.
-   Start and end time.
-   Result.
-   Error, if any.
-   Brain version used.
-   Approval decision, if any.

This data will later support Knowledge HQ.

### 3.6 Keep the Curator's permissions narrow

The Curator should report substantive issues and prepare proposals.

Allow automatic changes only for low-risk navigation tasks that the
Knowledge Owner has approved.

### 3.7 Design for temporal knowledge

A claim may be true only for a specific period, place, version, or set
of conditions.

Add fields for context and time when relevant.

Do not assume every claim is universally true.

### 3.8 Do not create more agents yet

Test the four agents with real sources.

Add another agent only when a repeated task has a clear boundary and a
real need for separate responsibility.
