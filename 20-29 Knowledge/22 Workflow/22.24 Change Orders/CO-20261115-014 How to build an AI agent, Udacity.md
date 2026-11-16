---
id: CO-20261115-014
type: change-order
title: How to build an AI agent, Udacity
status: applied
created: 2026-11-15T22:45
updated: 2026-11-15T22:53
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-006 How to build an AI agent, Udacity]]"
brain-version: CO-20261115-013
change-types: [extend, add-evidence, relate]
affected:
  - "[[CON-20261115-003 Workflows and agents]]"
  - "[[CLM-20261115-005 Start with the simplest agent design]]"
  - "[[MOC-20261115-002 Building AI agents]]"
priority: low
decision: approved
decided: 2026-11-15T22:52
decision-note: "Approve 2"
applied: 2026-11-15T22:53
brain-version-after: CO-20261115-014
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

Source: [[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]]. This is a vendor page on the same topic as SRC-20261115-008 (Anthropic). It adds a second definition of "agent" (three layers, with state management), a state-versus-memory distinction, and a second statement of the "simplest design first" advice. No new record is justified. This Change Order adds the material to the records that CO-draft SRC-20261115-008 proposes, so it depends on that Change Order. The affected records do not exist in the Brain yet. Justin gave no reason for the source.

## 1a. Brief against the Brain

The Brain has no record on agent design today. The records in the SRC-20261115-008 draft (CON-20261115-003, CLM-20261115-005, CLM-20261115-006, MOC-20261115-002) are not in the Brain until Justin approves that Change Order. The labels below compare the Brief with those drafts.

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1, C2 three-layer definition; one LLM call is not an agent | extends | CON-20261115-003 (proposed) | The Concept defines an agent as an LLM that directs its own process and tools. This source adds a second, different definition (three layers). |
| A2 | C3 reasoning loop: plan, act, observe, revise | extends | CON-20261115-003 (proposed) | In the three-layer definition (A1). No own record. |
| A3 | C4, C5 tools ground the agent; tools bring engineering needs | new | none | Common sense with no data (E4). Not recorded. The Anthropic draft covers tool design under ACI. |
| A4 | C6 state differs from memory | extends | CON-20261115-003 (proposed); CON-20261115-001 (weak link) | Not in the Anthropic drafts. Terminology choice by the author (E5 limits). In the Concept as the source's use. |
| A5 | C7 stop conditions prevent infinite loops | new | none | A design suggestion with no evidence (E6). Not recorded. |
| A6 | C8 minimal Python agent, simulated | new | none | Simulated code. The Brief gives no information on a real run (E7). Not recorded. |
| A7 | C9 production checklist | new | none | A list with no ranking (E8). Not recorded. |
| A8 | C10 simplest architecture that works | supports | CLM-20261115-005 (proposed) | Same advice as the Anthropic source. Opinion, no data (E9). The first half of C10 only. |
| A9 | C10 design matters more than model choice | new | none | The Brief calls it an unmeasured comparison (E9 limits). Not recorded. |
| A10 | C11 single agent by default; multi-agent only when roles are separable | supports | CLM-20261115-005 (proposed) | Same direction: add complexity only when needed. Opinion (E10). Not a test of the autonomy claim. |
| A11 | C12 early failures come from systems issues | new | none | Indirect evidence: examples may be hypothetical, no named case (E11). Not recorded. |

No Claim Candidate contradicts a draft record. CLM-20261115-006 (autonomy raises cost and error risk) gets no row: the Brief reports multi-agent drawbacks (complexity, more failure points, harder evaluation; E10), not the cost of autonomy. The two vendor sources may not be independent of each other. The Brief gives no information on whether either source used the other. The Brief gives no information on personal knowledge systems.

Threshold: no. No record is made. No Claim text, status, `confidence`, or `evidence-strength` changes. 3 records change (below 5). If Justin approves, the Editor second look is not required by the threshold. The SRC-20261115-008 Change Order must be decided first.

## 2. Proposed changes

Dependency: all rows target records that the Change Order for SRC-20261115-008 proposes. Apply this Change Order only after that Change Order is applied. If Justin rejects a record there, the matching row here is void. Record IDs are the draft IDs. The Orchestrator sets the final IDs and file names.

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | extend | CON-20261115-003 Workflows and agents (proposed) | Add the three-layer definition, state versus memory, and update the caveat |
| X2 | add-evidence | CLM-20261115-005 Start with the simplest agent design (proposed) | Add two evidence lines and change one caveat |
| X3 | relate | MOC-20261115-002 Building AI agents (proposed) | Add the second source to the evidence and gaps lines |

### X1

- Current (Explanation, end of the bullet list): none. Current caveat: "One source. The authors work for a vendor of models and tools. The article gives no data in the parts read."
- Proposed: add two bullets before "Caveats":
  - "Another definition (Udacity Team article, a vendor of courses): an agent has three layers that work together: a reasoning loop (plan, act, observe, revise), tool use, and state management. The article calls one LLM call with a system prompt a chatbot or prompt wrapper, not an agent (E1, E2, E3). This definition names state management. The definition above does not. Other authors can use the words in other ways."
  - "State and memory (Udacity article, E5): state is the execution status of the current run. Memory is information that can persist across runs. The article says most agents need state and not all need memory. This is the author's use of the terms."
  
  Replace the first caveat with: "Two sources. Both authors work for vendors (models and tools; courses). The Brain does not show that they are independent. Neither article gives data in the parts read. The Udacity Brief has summaries only, no checked quotes."
  
  Add to Sources: "[[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]] · E1, E2, E3, E5 · § Introduction; § Layer 1: Reasoning loop; § Layer 3: State management · summaries of a fetch result, not checked against the page"
- Evidence: [[SRC-20261115-006 How to build an AI agent, Udacity|Udacity article]] · E1, E2, E3, E5
- Reason: §1a A1, A2, A4. A second definition shows that the term varies between authors. State versus memory is not covered by the Anthropic drafts. No own record: the evidence is four summaries of one vendor page, so the material fits as the source's terms inside the Concept.

### X2

- Current (Evidence): three lines, all from SRC-20261115-008 (E3, E4, E5). Current caveat: "One source. The authors work for a vendor of models and tools. `source-quality: medium`. Advice can favor the vendor's approach."
- Proposed: add two evidence lines:
  - "[[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]] · E9 · § Design choices that matter more than model choice · supports · summary, not checked against the page; the article recommends the simplest architecture that works; opinion with no data."
  - "[[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]] · E10 · § When to go multi-agent, and when not to · supports · summary, not checked against the page; the article advises one agent by default and more agents only when roles are separable, specialization measurably helps, and orchestration cost is justified; opinion with no data."
  
  Replace the first caveat with: "Two sources, both from vendors (models and tools; courses). The Brain does not show that they are independent. Neither gives data. The second source has no checked quotes."
  
  The claim text, `confidence: low`, and `evidence-strength: weak` do not change.
- Evidence: [[SRC-20261115-006 How to build an AI agent, Udacity|Udacity article]] · E9, E10
- Reason: §1a A8, A10. A second source gives the same advice, but it is vendor opinion, partly unchecked, and may not be independent. Weak evidence does not raise `evidence-strength`. Both values stay as they are.

### X3

- Current (Evidence for and against): "Against: none yet." Current gaps line: "One source, from a vendor of models and tools. No data. No source on the other side."
- Proposed: add under "For": "[[SRC-20261115-006 How to build an AI agent, Udacity|How to build an AI agent (Udacity Team, updated 2026-08-18)]]. Teaching article by a course vendor, `source-quality: medium`. Gives a three-layer definition of an agent and advice for a single agent by default. No data, no named cases, no original date. The Brief has summaries only." Replace the gaps line with: "Two sources, both from vendors. The Brain does not show that they are independent. No data in either. No source on the other side."
- Evidence: Brain record only (the line points to the source and to X1 and X2).
- Reason: §1a A1, A8, A10. The MOC must show the second source and its limits.

## 3. Impact

Direct:
- 3 proposed records change (1 Concept, 1 Claim, 1 MOC), once they exist. No new record. No existing record changes.
- The Concept gets a second definition and one more distinction. The Claim gets a second source with no change in strength.

Possible:
- A later Curator check can ask whether the state versus memory distinction should link to CON-20261115-001 (memory protocol). No row here: the link rests on the word "memory" only.
- The Udacity sections not recorded (A3, A5, A6, A7, A9, A11) can be used later if a second source supports them.

## 4. Risks and limits

- The Brief has `Summary:` rows only. The Orchestrator could not read the raw page (curl returned 403). The evidence is an unchecked WebFetch summary. All new wording follows the Brief and states the source's view.
- Vendor page. Udacity sells courses and the article ends with a promotion. Some advice can serve the course business. No data, no citations, no named real-world cases. The code in the article is simulated.
- No original publication date. The page shows only "Last Updated on August 18, 2026".
- The two sources may not be independent. Two vendors giving the same advice is weaker than two independent tests.
- Dependency: the rows have no target until the SRC-20261115-008 Change Order is approved and applied. If the draft titles or IDs change, the Orchestrator must update the targets.
- Justin gave no reason for the source.
- Risk if no action: none to the Brain. The Brain keeps one source on the topic, and the source note stays in `22.21`.

## 5. Priority

`low`. Impact: small additions to three records, no change in `confidence` or `evidence-strength`. Urgency: none. Scope: 3 rows. Risk of delay: low. The rows wait for the other Change Order.

## 6. Decision required

Does Justin approve X1 to X3, after the Change Order for SRC-20261115-008 is applied? The rows can be decided one by one. X1 and X2 are independent of each other. X3 is useful only if X1 or X2 is approved. A cheaper option: approve no row and keep the source note only, because the page adds little beyond the Anthropic article.

## 7. Decision record

2026-11-15T22:52. Justin: "Approve all 5 rows approve 2 and Im entering these for background knowledge for creating A I agents and systems". Decision: `approved`. All three rows, X1 to X3, as written.

## 8. Implementation record

2026-11-15T22:53. Rebased by the Orchestrator (Rulebook §6 step 3, KS-D-54): `brain-version` changed from CO-20261115-012 to CO-20261115-013, because this Change Order was drafted knowing the proposed records of CO-20261115-013, and CO-013 was applied first. Check before the apply: each "Current" text of X1, X2, and X3 was found in the records (all found). Files: CON-20261115-003 (two definitions, a caveat, a source line), CLM-20261115-005 (two evidence lines, a caveat), MOC-20261115-002 (a For line, a gaps line). `change-orders` and `updated` set

Brain version after: CO-20261115-014.
