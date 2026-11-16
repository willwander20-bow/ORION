---
id: CO-20261115-013
type: change-order
title: Building effective agents, Anthropic
status: open
created: 2026-11-15T22:45
updated: 2026-11-15T22:45
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-008 Building effective agents, Anthropic]]"
brain-version: CO-20261115-012
change-types: [create, relate]
affected:
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

Source: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents (Anthropic, 2024-12-19)]]. The Brain has no record on building AI agents. This Change Order makes one Concept (the source's terms: workflow, agent, five patterns) and two Claims at `low` confidence and `weak` evidence (simplest design first; autonomy raises cost and error risk). Each is worded as the source's view. It also makes a new MOC for the topic, and one link from an existing MOC. Justin gave no reason for the source. The claims are weak, but the topic is new and a second source on it is due.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1 workflow and agent definitions | new | none | The Brain has no definition of agent or workflow. [[CON-20261115-001 Agent memory protocol for file-based memory]] is about memory rules for an agent, not about agent design. |
| A2 | C2 simplest workable solution | new | none | No Brain record on agent design. |
| A3 | C3 frameworks obscure prompts | new | none | Folded into the A2 claim as context (E4). |
| A4 | C4 three principles | new | none | Simplicity goes into the A2 claim (E5). Transparency (E6) and ACI (E7) are not claims here: each quote is a bare instruction with no reason in the Brief. ACI goes into the Concept (E7). |
| A5 | C5 autonomy raises cost and error risk | new | none | No Brain record. A separate claim, because it gives a reason, not a recommendation. |
| A6 | C6 evaluator-optimizer works with clear criteria | new | none | Placed in the Concept as author judgment (E9). One sentence, no data, so no own claim. |
| A7 | C7 parallelization forms | new | none | Detail of a pattern. In the Concept (E10, E11). |
| A8 | C8 absolute filepaths tool change | new | none | One example with no result shown (E12). Not recorded. |
| A9 | C9 customer support and coding as applications | new | none | Indirect evidence (E13): the quote does not name the applications. Not recorded. |
| A10 | C10 five workflow patterns | new | none | In the Concept (E14, from the outline). |
| A11 | C11 augmented LLM as building block | new | [[CON-20261115-001 Agent memory protocol for file-based memory]] (weak link) | In the Concept (E15, outline only). The source's "memory" part of the augmented LLM is the only link to the protocol. A link, not a dependency. |

No Claim Candidate supports, qualifies, or contradicts an existing Brain record. The AI-maintained wiki records (CON-20261113-003, CON-20261113-004, CLM-20261115-001) cover a wiki that an AI keeps over files. The Brief gives no information on that use. [[MOC-20261113-002 AI-maintained knowledge bases]] is the nearest MOC but does not fit the topic: it is about wiki setup, not agent design. The Brief gives no information on personal knowledge systems.

Threshold: yes

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: low. Recommended action: advance. Brain version: CO-20261115-012.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1 | new-concept | — | The Brain has no definition of "workflow" and "agent". The source separates fixed code paths (workflow) from an LLM that directs its own process and tool use (agent). E1 is direct. The source says the definition is for this article. Treat the terms as the vendor's. |
| A2 | C10, C7, C11 | new-concept | — | The five workflow patterns, the two forms of parallelization, and the augmented LLM as building block are a catalogue of terms. No Brain record has them. E10 and E11 are paraphrases, and E14 and E15 are outline only. The Brief did not read the detail inside each pattern. A concept note would rest on titles and short summaries. |
| A3 | C2 | new | — | A stand-alone claim: start with the simplest workable solution and add complexity only when needed (E3, direct quote). The source gives no data, and the vendor has a commercial interest. No Brain claim says this. [[CLM-20261115-001 Search plain files first, then add indexes]] has the same shape (start simple, add an index only if needed). The topics differ (retrieval, not agent design) and both are single-source opinion. So I do not call it `supports`. |
| A4 | C3 | new | — | A stand-alone claim: frameworks can add layers that hide the prompts (E4). It is a general statement with no example or data. No Brain record covers frameworks. |
| A5 | C4 | new | — | Three design principles (simplicity, transparency, a well-built ACI) from the Summary (E5 to E7). They are principles, not measured. Transparency (show planning steps) is comparable to the Answer job in [[CON-20261113-004 Set up an AI-maintained wiki]] ("name the pages used"). That match is loose: one shows an agent's plan, the other cites pages. It is not a finding of type `supports`. |
| A6 | C5 | research-gap | [[Research Questions]] row 1; [[MOC-20261113-002 AI-maintained knowledge bases]] | The source says that agent autonomy means higher costs and the potential for compounding errors (E8). Row 1 asks whether the errors of an AI-written knowledge base compound. The source is about agents in general, not knowledge bases. It gives no figures. It names the risk and does not answer the question. It is weak evidence and does not move row 1. It also bears on the nightly self-running task in [[CON-20261113-004 Set up an AI-maintained wiki]], but the Brief does not link the two. |
| A7 | C6 | new | — | A stand-alone claim: the evaluator-optimizer pattern works well when clear evaluation criteria exist (E9). It is author judgment, the sentence continues in the source, and the Brief marks confidence `medium`. The Brain's Tidy job in CON-004 lists problems but is not a generate-and-feedback loop, so I do not link them. |
| A8 | C8, C9 | new | — | C8 is one tool-change example with no result shown (E12). C9 names two promising applications (customer support, coding). E13 is indirect: the quote does not name them. Neither is a good Brain claim as stated. I list them for completeness. |

### Recommended action

`advance`, narrow. Findings A1 and A2 are possibly a reason to change the Brain: a Concept for the workflow and agent terms and the pattern names, stated as the vendor's definitions. A3 to A5 and A7 can be single-source claims at low confidence, or Justin can leave them out. A6 and A8 do not need a Brain change. Reason: the terms are direct and not in the Brain, and a definition is a small, low-risk addition. The claims are opinion with no data, so none should carry more than `weak` evidence strength. Justin must first decide whether agent design belongs in the Brain. This Assessment does not decide that. If he says no, the right action is `no-action`.


### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. Both say `advance`, but they differ in how much to add, and the Editor raises a question of scope.

**They agree on:** a Concept that defines "workflow" and "agent" and names the patterns (as the vendor's definitions); a claim to start with the simplest workable design (with the point on frameworks as context); `low` confidence and `weak` evidence for any claim; no existing Brain record is supported, qualified, or contradicted.

**They differ on:**
1. **How many records.** The Managing Editor proposes four new records (the Concept, two claims, a new MOC) and one link. The Editor says "advance, narrow": the Concept, and the claims only as optional single-source opinion.
2. **The autonomy claim (X3).** The Managing Editor makes a claim from "agent autonomy raises cost and error risk". The Editor calls it a research gap (it bears on Research Questions row 1) that needs no Brain change: no figures, and it is about agents in general.
3. **The new MOC (X4).** A new MOC needs 3 or more records. With the Editor's narrow set (2 records), it is not justified.
4. **Scope.** The Editor says you gave no reason for the source, so you must first decide if agent design belongs in the Brain. If it does not, the action is no change.

**Options for Justin**
- **A.** Approve all five rows (the Managing Editor's proposal).
- **B.** Narrow (the Editor's view): approve X1 (the Concept) and X2 (the claim to start simple). Reject X3 and X4. Link the two records from MOC-20261113-002 (X5), or leave them for a new MOC when a third record arrives.
- **C.** Reject this Change Order: agent design is out of scope. The Source note stays as a record. CO-20261115-014 (the Udacity source) then has no target and is void.

CO-20261115-014 (SRC-20261115-006, Udacity) adds to the records here. It can apply only after this Change Order.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Workflows and agents (Concept) | Terms and five patterns, as the source defines them |
| X2 | create | new: Start with the simplest agent design (Claim) | The source's advice, `low`, `weak` |
| X3 | create | new: Agent autonomy raises cost and error risk (Claim) | The source's statement, `low`, `weak` |
| X4 | create | new: Building AI agents (MOC) | MOC for the topic, with X1 to X3 |
| X5 | relate | [[MOC-20261113-002 AI-maintained knowledge bases]] | One link to the new MOC |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CON-20261115-003 Workflows and agents.md`. "Workflows and agents", Concept, `accepted`. The Concept has no `confidence` or `evidence-strength` fields. Its caveats state one source, vendor authors, partial extraction.
- Evidence: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents]] · E1, E2, E7, E9, E10, E11, E14, E15
- Reason: §1a A1, A4, A6, A7, A10, A11. A shared vocabulary lets the Claims use fixed terms. The Concept gives the definitions as the source's own.

### X2

- Current: none
- Proposed: Draft: `.staging\proposed\CLM-20261115-005 Start with the simplest agent design.md`. "Start with the simplest agent design", Claim, `accepted`, `confidence: low`, `evidence-strength: weak`.
- Evidence: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents]] · E3, E4, E5
- Reason: §1a A2, A3, A4. The Brief rates C2 `high` as the source's statement, but the source is one vendor with no data and its tooling is dated. `low` and `weak` are the right values.

### X3

- Current: none
- Proposed: Draft: `.staging\proposed\CLM-20261115-006 Agent autonomy raises cost and error risk.md`. "Agent autonomy raises cost and error risk", Claim, `accepted`, `confidence: low`, `evidence-strength: weak`.
- Evidence: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents]] · E8
- Reason: §1a A5. One sentence with no figures. It is the stated reason for X2, and a separate claim lets Justin decide it on its own.

### X4

- Current: none
- Proposed: Draft: `.staging\proposed\MOC-20261115-002 Building AI agents.md`. "Building AI agents", MOC, `active`.
- Evidence: [[SRC-20261115-008 Building effective agents, Anthropic|Building effective agents]] · E1, E3, E8 (through X1 to X3)
- Reason: §1a A1 to A5. X1 to X3 are 3 records on one topic, which meets the rule for a new MOC. No existing MOC fits: MOC-20261113-002 is about wiki setup. If Justin rejects X4, the three records have no MOC. Then X1 to X3 must wait or move under X5's MOC, which does not fit.

### X5

- Current: Related MOCs in [[MOC-20261113-002 AI-maintained knowledge bases]] lists two MOCs: Note durability and Content for AI readers.
- Proposed: Add one line: "[[MOC-20261115-002 Building AI agents|Building AI agents]]: a wiki that an AI keeps is one use of an agent. That topic covers how agents are designed. A link, not a dependency." Link written with the draft title. The Orchestrator sets the final name.
- Evidence: Brain record only (the link relies on X4).
- Reason: Navigation. The link says that the topics are near. The Brief gives no information on the wiki use, so the link makes no claim about it. This row is optional and depends on X4.

## 3. Impact

Direct:
- 4 new Brain records (1 Concept, 2 Claims, 1 MOC). 1 existing MOC edited (one line).
- The Brain gets its first topic on building agents.

Possible:
- A second source on the same topic (SRC-20261115-006, a vendor page) can add evidence to X2 and X3 and can test the Concept. The Editor can then check agreement between two vendor sources. They may not be independent.
- A later Curator check can ask if CON-20261115-001 (memory protocol) should link to X1 in a Related concepts line. No row here: the link rests only on the word "memory" (E15, outline only).

## 4. Risks and limits

- One vendor source, no data. The page says that much of the tooling has changed since December 2024. The patterns can be old. Both Claims carry this caveat.
- Extraction is `partial`: the Brief covers the outline and about a dozen short passages. E10, E11, E14, E15 are paraphrases of a fetch result. E2 starts mid-sentence. The Orchestrator confirmed 11 of 11 quotes on the raw page.
- Two of the five patterns' details, the appendices, and tool design are not recorded. A8 and A9 are left out on purpose.
- Justin gave no reason for the source. The records may not serve a current need.
- Risk if no action: none to the Brain's existing content. The topic stays absent. The source stays in `22.21` and can be used later.

## 5. Priority

`low`. Impact: new topic, no change to existing claims. Urgency: none. Scope: 4 new records and 1 edit. Risk of delay: low. A second source on the topic is expected, so Justin can decide X1 to X5 once after both sources have gone through.

## 6. Decision required

Does Justin approve X1 to X5? The rows can be decided one by one. X4 is needed if X1 to X3 are approved. X5 depends on X4. A cheaper option: approve only X1 and X4, and hold X2 and X3 until the second source adds evidence.
