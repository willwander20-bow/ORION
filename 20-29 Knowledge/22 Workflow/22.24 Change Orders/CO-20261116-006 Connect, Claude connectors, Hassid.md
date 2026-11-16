---
id: CO-20261116-006
type: change-order
title: Connect, Claude connectors, Hassid
status: applied
created: 2026-11-16T06:00
updated: 2026-11-16T06:07
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-013 Connect, Claude connectors, Hassid]]"
brain-version: CO-20261116-005
change-types: [create, relate]
affected:
  - "[[MOC-20261116-001 Using Claude]]"
priority: low
decision: approved
decided: 2026-11-16T06:07
decision-note: "006 A 007 B  008 B"
applied: 2026-11-16T06:07
brain-version-after: CO-20261116-006
---

## 1. Summary

The Brain has no record on Claude connectors. This Change Order adds one Concept with dated advice from one promotional author: how to connect an app, start with few connectors, and give read-only access first. It makes no Claim. A second row adds the Concept to the MOC Using Claude.

## 1a. Brief against the Brain

Note: [[SRC-20261116-013 Connect, Claude connectors, Hassid]] (Brief under "# Reference Brief").

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| C1 | Connector is an MCP server with a public URL | new | none | The Brain has no connector or MCP record. Kept as the author's definition in the Concept. |
| C2 | Setup steps in the chat box | new | none | Process advice. Kept in the Concept. |
| C3 | Directory has over 200 connectors | new | none | Unsourced count. Not kept. |
| C4 | Connectors use tokens before the user types | new | [[CON-20261115-005 Context engineering]] | Related to context cost. Author's opinion, no measure. Kept in the Concept as advice. |
| C5 | Read-only first, write access later | new | none | Kept in the Concept as advice. |
| C6 | Start with three connectors | new | none | Kept in the Concept as advice. |
| C7 | 3 to 4 hours to ship a connector | new | none | Unsupported estimate. Not kept. |
| C8 | No connectors for creative work | new | none | Reason not checked. Kept as a caveated line. |
| C9 | Nine favorite connectors | new | none | Opinion list from a promotional author. Not kept. |
| C10 | DM offer to paid subscribers | research-gap | none | Sales content. Not a knowledge claim. |

Threshold: yes (it makes a record).

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261116-005.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1 | new-concept | — | No Brain record defines a connector or MCP. The author's definition ("an MCP server with a public URL") is a developer-level statement. It is not checked against Anthropic documentation (Brief §11, accuracy 3). It can stand as a definition inside a Concept with the caveat that it is one author's wording. |
| A2 | C2, C5, C6, C8, C9 | new-process | — | The setup (+, Connectors, add the app, turn on in a new chat), the "start with three" rule, the read-only-first rollout, and "not for creative work" form one process. No Brain record covers it. Evidence is advice from one user. "One week" and "three" have no support (E5, E6). The interface steps are dated 2026-05-13 and can change. The list of favorite connectors (C9) is a personal list from an author with promotional aims, and the Brief did not confirm item 3. Keep it out of any Brain text, or keep it as a labeled opinion. |
| A3 | C4 | extends | [[CON-20261115-005 Context engineering]] | The Concept advises that tools be "token-efficient" and that context is a finite resource. C4 applies the same idea to connectors: each one adds tokens before the user types. The match is the mechanism (tokens that enter the context), not a shared word. The Concept's source is the model vendor; C4 is one practitioner's statement with no measurement (E4). The evidence is weak and adds little. [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] holds a similar token remark from the same author, so it is not independent support. |
| A4 | C4 | research-gap | [[CLM-20261115-007 Longer context can lower model performance]] | The Claim says that long context can lower performance (low confidence, weak evidence). Nobody shows in the Brief how many tokens a connector adds, or if that lowers output quality. The link from "connectors on" to "worse output" is an inference, not a source statement. This is a gap. |
| A5 | — | new-relationship | [[MOC-20261116-001 Using Claude]] | The MOC covers use of Claude as a tool (prompts, chat management, Cowork setup). Connectors are another part of use. The source belongs under "Processes and methods" and "Evidence for" as opinion. The MOC lists no connector topic now. The relationship is by topic and by author (same author as the MOC's other sources). |
| A6 | C3, C7 | new | — | "200+ connectors" and "3 to 4 hours to build" are the author's figures, with no date or source (E3, E7; E7 is hedged with "maybe"). They are time-bound and cannot stand as Brain Claims. The Brain already holds the rule that dated product details are not kept ([[MOC-20261116-001 Using Claude]], Disputes and gaps). I recommend that these figures do not enter the Brain. |
| A7 | C1 | extends | [[CON-20261115-007 Claude Code instructions and memory]] | Both records concern how Claude gets outside information into its context. That Concept covers files that load at start (CLAUDE.md, auto memory). Connectors are a third route: live app access. The Brief gives no detail on how connectors load or on the section on building one in Claude Code. The link is weak and by topic only. Do not state it as a dependency. |

No finding contradicts a Brain record. [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] advises against folder setups; the Brief says nothing about folders, so there is no conflict. C10 is sales content and gives no finding.

### Recommended action

advance. The source supports a new Concept (kind `process`) for connectors, and lines in [[MOC-20261116-001 Using Claude]] (findings A1, A2, A5). A3 can be a cross-link only. The Brain should not hold a Claim: evidence is one source, objectivity 2, with unchecked statements. Keep the Concept dated 2026-05-13, give the caveats from Brief §10, and omit the favorites list, the 200+ figure, and the 3 to 4 hour estimate (A6). The change is small but creates a new record, so it reaches the threshold.

Optional, for A4, a row in `Research Questions.md`: Do active connectors lower the quality of Claude's answers by adding tokens to the context, and how many tokens does each one add?

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-16, as Rulebook §4.5 item 3 requires. Both say `advance`, both propose a dated process Concept and a MOC line, and both make no Claim. The two views do not differ on the action.

**They agree on:** one new Concept on connectors (kind `process`); the favorites list, the "200+" count, and the "3 to 4 hours" estimate stay out; no contradiction with a Brain record; the author is promotional (objectivity 2).

**Small differences (no decision needed):**
1. The Editor (A3, A7) sees weak links to Context engineering and to Claude Code instructions and memory. This Change Order links Context engineering and the Cowork setup in the Concept's "Related concepts" and does not link Claude Code instructions and memory. The Editor says that link is weak and by topic only.
2. The Editor (A4) suggests a Research Questions row: do active connectors lower answer quality by adding tokens? The Orchestrator added that row (no Change Order needed, Schema §2.5).

**Shared with CO-20261116-007 and CO-20261116-008:** each of the three adds a line to the same two lists of MOC-20261116-001 (Processes and methods; Evidence for and against). The lines are additive. All three were drafted at Brain version CO-20261116-005. After the first one is applied, the Orchestrator rebases the next ones (Rulebook §6 step 3, KS-D-54): each row's "Current" text then differs only by the lines of the earlier Change Order.

**Options for Justin**
- **A.** Approve X1 and X2 as written.
- **B.** Approve X1 only (the Concept) and skip the MOC line. The Concept would have no link from a MOC.
- **C.** Reject this Change Order. The Source note stays as the record.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Connect Claude to apps with connectors | New Concept, kind process, no Claim |
| X2 | relate | [[MOC-20261116-001 Using Claude]] | Add the Concept to Processes and methods |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CON Connect Claude to apps with connectors.md`. Title: Connect Claude to apps with connectors. Status: accepted (Concept; no Claim, so confidence and evidence-strength do not apply).
- Evidence: [[SRC-20261116-013 Connect, Claude connectors, Hassid|Connect (Hassid)]] · E1, E2, E4, E5, E6, E8
- Reason: C1, C2, C4, C5, C6, C8. The Brain has no record on connectors. The Concept keeps the advice as opinion. It leaves out the directory count, the favorites list, and the time estimate (C3, C7, C9), which have no source or are promotion. The Orchestrator checked the quotes in the draft against the raw page on 2026-11-16.

### X2

- Current: Processes and methods lists only [[CON-20261116-002 Set up Claude Cowork with Skills and Projects|Set up Claude Cowork with Skills and Projects]].
- Proposed: Add under Processes and methods: `- [[<new Concept ID and title>|Connect Claude to apps with connectors]] (one author's dated advice; no test)`. Add the source under Evidence for (opinion): `- For (opinion): [[SRC-20261116-013 Connect, Claude connectors, Hassid|Connect (Hassid, 2026-05-13)]]. Free guide, same author, objectivity 2 of 5, extraction partial. Gives setup and safety advice. No data.` Add the Change Order to `change-orders`.
- Evidence: [[SRC-20261116-013 Connect, Claude connectors, Hassid|Connect (Hassid)]] · E2
- Reason: Each new record needs a MOC link. This row is separate so the Orchestrator can order it with the MOC edits of the sibling runs.

## 3. Impact

Direct: one new Concept and two small lines in the MOC Using Claude. No Claim, no change to existing text, status, or confidence.

Possible: the MOC grows with each Hassid guide. The Concept may need review when connector features change.

## 4. Risks and limits

- The author is promotional (objectivity 2). All points are opinion. The Concept says so.
- The page text came from WebFetch. Quotes need the raw-page check.
- If no action is taken, the Brain stays without a connector record. The loss is small.

## 5. Priority

low. Scope is one Concept. The advice is dated and from one source. There is no urgency and no risk in delay.

## 6. Decision required

Approve X1 and X2? Each row can be decided alone, but X2 needs X1. Alternative: No Change, and keep the source note only.

## 7. Decision record

2026-11-16T06:08. Justin: "006 A 007 B  008 B". Decision: `approved`, all rows, as written (option A of the Orchestrator comparison).

## 8. Implementation record

2026-11-16T06:08. X1 and X2 done. Version check passed (Brain version equals brain-version). New record CON-20261116-003 Connect Claude to apps with connectors (moved from `.staging\proposed`). `change-orders` and `updated` set on MOC-20261116-001. Brain version before: CO-20261116-005. After: CO-20261116-006.
