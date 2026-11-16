---
id: CO-20261115-018
type: change-order
title: Memory for autonomous LLM agents, Du
status: open
created: 2026-11-15T23:48
updated: 2026-11-15T23:48
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-013 Memory for autonomous LLM agents, Du]]"
brain-version: CO-20261115-014
change-types: [create, relate]
affected:
  - "[[MOC-20261115-002 Building AI agents]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The Brain has no record on how an LLM agent keeps and uses memory. Source [[SRC-20261115-013 Memory for autonomous LLM agents, Du|SRC-20261115-013]] is a survey preprint (Du, arXiv, 2026-03-08) and the first non-vendor source on agents. This Change Order adds one Concept (the survey's write-manage-read loop, three dimensions, and weak point of each design) and one Claim ("Long context is not agent memory", `low`, `weak`). It links both to the MOC "Building AI agents". The survey has no data of its own, so the Claim stays weak.

## 1a. Brief against the Brain

Records read: MOC-20261115-002, CON-20261115-001, CON-20261115-003, CLM-20261115-005, CLM-20261115-006, Research Questions, and the open Change Orders CO-20261115-015, -016, -017 (with the drafts `CE *`).

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1, C2, C3 memory, loop, taxonomy | new | none | Author's framing (E1 to E3, quotes checked). In the new Concept only. |
| A2 | C4 hybrid stores are the norm | new | none | No count behind it (E4). In the Concept, marked as such. |
| A3 | C5 to C8, C17 weak point of each design | new | none | Risk statements, not results (E5 to E8, E18, quotes checked). In the Concept only. |
| A4 | C11, C17 long context is not memory | new | none | Direct quotes (E11, E18). New Claim X2, `low`, `weak`. |
| A5 | C14, C12, C13 metric stack, forgetting, efficiency | new | none | A proposal and two gap statements (E15, E12, E14). In the Concept only. |
| A6 | C9 memory design matters more than the LLM | new | none | Indirect evidence from separate systems (E9). No row. Named in the Claim caveats. |
| A7 | C10, C15 MemoryArena and Reflexion figures | new | none | Figures from other works, unchecked (E10, E16). No row. |
| A8 | C16 invest in memory like the LLM | new | none | A hedged suggestion of one author (E17). No row. |

No Claim Candidate contradicts a Brain record. The paper does not address the autonomy claim (CLM-006) or the simplest-design claim (CLM-005). It does not make them stronger. C5 (reflective error) resembles "compounding errors" in CLM-006, but the Brief shows no link. I propose no row.

Overlap: CO-20261115-017 also proposes a Concept on context engineering and a Claim on context rot. The records are different. The MOC row X3 edits the same sections as CO-017 X3 (see X3).

Threshold: yes. The Change Order makes two records. The Orchestrator runs the Editor second look and merges it as section 1b.

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261115-014.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C2, C3 | new-concept | — | The Brain has no concept for agent memory as a design topic. The write-manage-read loop (C2) and the three dimensions (C3: temporal scope, substrate, control policy) can stand as one Concept. The Brief says both are the author's proposals and untested (E2, E3). They are a framing, not a result. |
| A2 | C3 | refines | [[CON-20261115-003 Workflows and agents]] | That concept says memory is part of the "augmented LLM" (Anthropic) and separates state from memory (Udacity). The paper splits memory further into working, episodic, semantic, and procedural types. This adds detail to one term in the concept. It does not change the definitions. |
| A3 | C2, C3 | new-relationship | [[CON-20261115-001 Agent memory protocol for file-based memory]] | The protocol covers one substrate (files) and one control policy (rules the agent follows, which matches "prompted self-control"). The taxonomy places it as one cell among many. This link is by my reading of both texts. The Brief does not make it. |
| A4 | C5, C6, C7 | extends | [[CLM-20261115-006 Agent autonomy raises cost and error risk]] | That claim says that autonomy brings "compounding errors" and gives no mechanism (Brain: no figures, one sentence). The paper names mechanisms in memory: self-reinforcing error in reflective memory (C5), silent orchestration failures (C6), and learned forgetting of safety-critical data (C7). They add mechanisms and do not add measurement. E5 to E7 are risk arguments, stated as concerns (E7: "an open concern, not an observed result"). They do not make the claim much stronger. |
| A5 | C5 | extends | [[Research Questions]] (row 1) | Row 1 asks if errors compound in an AI-written knowledge base. C5 is a reasoned argument for the same risk in agent memory, with no data (E5). It is background for that question. It does not answer it. |
| A6 | C17 | new | — | Summarization drift (each compression pass drops low-frequency details; larger windows delay but do not remove it) can stand as its own Claim. Evidence is E18, a statement with an illustration, no data. The "windows delay it" part is a summary, not a quote. |
| A7 | C11 | qualifies | [[CLM-20261115-001 Search plain files first, then add indexes]] | That claim says to start with plain search and add an index only if search is slow or imprecise. The paper says that the retrieval bottleneck is relevance, and that "long context is not memory" (E11). Both can hold. The paper is about agent memory at scale, the Brain claim about a personal file base, so this is a difference in scope. It is not a contradiction. The paper gives a reason why "imprecise" may be the common failure, but it gives no data. |
| A8 | C16 | qualifies | [[CLM-20261115-005 Start with the simplest agent design]] | That claim advises the simplest workable design. C16 suggests investing in memory as a first-class component. The two differ in scope and in advice type. One says when to add complexity. The other says that a specific component may pay off. This is not a contradiction. The paper hedges C16 as a suggestion (E17). It gives no cost-benefit data. The "simplest first" claim stays. |
| A9 | C9 | extends | [[CLM-20261115-005 Start with the simplest agent design]] | The Udacity evidence in that claim (E9) has a section titled "Design choices that matter more than model choice". C9 says memory design often has a larger effect than the backbone gap. Indirect evidence (E9): ablations from separate systems, not a controlled comparison. The Brain does not show if the two authors are independent. Treat as weak. |
| A10 | C1, C4, C8 | new | — | C1 (memory makes an agent adaptive), C4 (hybrid stores are the norm in production), and C8 (parametric memory is hard to audit, and deployed agents prefer inspectable stores) are statements of the author. C4 and C8 have no count or survey (E4, E8). Candidates for a Claim only with low confidence. C8 also fits the Brain's file-over-app direction, but the Brief gives no link, so I do not claim one. |
| A11 | C14 | new-process | — | The four-layer metric stack (task effectiveness, memory quality, efficiency, governance) can stand as a Process or Concept. It is a proposal and is not tested in the paper (E15). |
| A12 | C12, C13 | research-gap | [[MOC-20261115-002 Building AI agents]] | The paper says that selective forgetting and efficiency are poorly evaluated (E12 to E14). The scope is only the four benchmarks that it reviewed. This marks gaps for the MOC's open questions. The MOC has no memory item now. |
| A13 | C10, C15 | new | — | C10 (MemoryArena: near-perfect LoCoMo scores fall to 40-60%) and C15 (Reflexion 91% vs 80% pass@1) are figures that the paper takes from other works, and the Reporter did not check them (E10, E16). They are weak as Claims, because the Brief gives no benchmark conditions. I advise against Claims on them without the original works. |
| A14 | — | extends | [[MOC-20261115-002 Building AI agents]] | The MOC has no memory topic and its "Against: none yet" stays unchanged. This source is a third voice on agents, and the first that is an academic preprint, not a vendor. It is `source-quality: medium`, authority 2 of 5. |

### Recommended action

`advance`. Reason: A1, A2, A4, A6, and A11 are possibly reasons to change the Brain, mainly a new Concept (A1) and edits to the existing agent records (A2, A4). All must be at low confidence and `weak` evidence. A1 is the strongest, as it fills a gap in the Brain. A5, A7, A8, A9, and A12 can be notes in existing records or open questions in the MOC. I advise against Claims on A13. I advise caution on A10: the evidence is a statement with no count.

No finding contradicts a Brain record. A7 and A8 differ in scope and are not contradictions.

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. Both say `advance`. They agree on the action. They differ on how many existing records to edit.

**They agree on:** a new Concept for agent memory (X1); a Claim "long context is not agent memory", `low` and `weak` (X2); a link in MOC-20261115-002 (X3); no contradiction; no Claim on the two figures that the paper takes from other works (they are unchecked).

**They differ on:**
1. **CLM-20261115-006 (autonomy raises cost and error risk).** The Editor says the paper extends it: it names mechanisms for compounding errors (A4). The Managing Editor says the paper does not strengthen it, and it makes no row.
2. **CLM-20261115-005 (start simple) and CLM-20261115-001 (search first).** The Editor says the paper qualifies both: it gives a different scope and advice (A7, A8) and a link to the Udacity evidence (A9). This Change Order edits neither Claim.
3. **A second Claim.** The Editor says summarization drift (A6) can stand as its own Claim. The Managing Editor makes one Claim only.
4. **Links to existing Concepts.** The Editor lists links to CON-20261115-003 (A2) and CON-20261115-001 (A3). This Change Order links neither. CO-20261115-017 already has a row for CON-20261115-001.
5. **Research Questions.** The Editor ties C5 to row 1 (A5) as background. No row is added.

**Options for Justin**
- **A.** Approve X1 to X3 as written (the Managing Editor's proposal).
- **B.** Approve X1 and X3, reject X2: no Claim from a single-author preprint.
- **C.** Approve X1 to X3 and ask for more rows: the links in item 4, and edits to CLM-20261115-005, -006, and -001 for the Editor's A4, A7 to A9. The Orchestrator asks the Managing Editor for a new draft.
- **D.** Reject this Change Order.

**Overlap:** X3 edits the same MOC-20261115-002 sections as CO-20261115-017 X3. The texts do not conflict. The second Change Order applied needs a rebase of `brain-version` (Rulebook §6 step 3) and a joint check of the "Against" and gap lines. The final IDs of the new records are set on apply, in both drafts and in X3.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Agent memory | New Concept: loop, taxonomy, weak points, evaluation, caveats |
| X2 | create | new: Long context is not agent memory | New Claim: `low`, `weak` |
| X3 | relate | [[MOC-20261115-002 Building AI agents]] | Add the Concept, the Claim, the source, one question, one gap |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\MS Agent memory.md`. Title "Agent memory", Concept (`kind: definition`), status `accepted`. Concepts carry no `confidence` or `evidence-strength`.
- Evidence: [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents]] · E1, E2, E3, E4, E5, E6, E7, E8, E12, E14, E15, E18
- Reason: A1 to A5. The Concept gives the author's terms and marks each as the author's proposal. Quotes were checked on the raw page (15 of 15). E4 and E15 carry no count or are summaries, and the Concept says so.

### X2

- Current: none
- Proposed: Draft: `.staging\proposed\MS Long context is not agent memory.md`. Title "Long context is not agent memory", Claim, status `accepted`, `confidence: low`, `evidence-strength: weak`.
- Evidence: [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents]] · E11, E18 (quotes checked), E10 (figure from other work, in the context section)
- Reason: A4. A survey with no primary data and a short lesson as the quote. `weak` is the honest value. I made no Claim from A1 to A3 and A5 to A8: they are definitions, proposals, or unchecked figures, and the Concept holds the first three.

### X3

- Current (MOC-002, Key concepts): "- [[CON-20261115-003 Workflows and agents|Workflows and agents]] (definitions and five patterns from one vendor article)" as the only bullet.
- Proposed, new Key concepts bullet: "- [[Agent memory]] (the write-manage-read loop and three dimensions; one survey preprint)". Draft title.
- Proposed, new Important claims bullet: "- [[Long context is not agent memory]] (evidence `weak`, one survey preprint)". Draft title.
- Proposed, new Evidence "For" line: "- For: [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents (Du, arXiv, 2026-03-08)]]. Survey preprint, one author, no sign of peer review, `source-quality: medium`, currency 4 of 5. No primary data. Extraction `partial`: the Brief covers the Abstract and sections 1, 2.4, 3, 4, 5, and 10."
- Proposed, new Open research questions bullet: "- Is a long context window enough for agent memory, or do agents need a memory system? (The survey cites other works and ran no test.)"
- Proposed, new Disputes and gaps bullet: "- One source on this topic is not from a vendor (a survey preprint). It covers memory only. It does not test the other claims on this page."
- Evidence: [[SRC-20261115-013 Memory for autonomous LLM agents, Du|Memory for Autonomous LLM Agents]] · E3, E11
- Reason: A1, A4. The new records need a MOC link. The change is additive. Overlap: CO-20261115-017 X3 adds bullets to the same MOC sections (Key concepts, Important claims, Evidence, Open questions, Disputes). The two changes do not conflict in text, but the Orchestrator must apply them one after the other and rebase the second. The existing "Two sources, both from vendors" bullet is not edited here. It stays true for those two sources. Whoever applies second must check the wording of the Disputes bullets together.

## 3. Impact

Direct:
- Two new Brain records (one Concept, one Claim).
- MOC-002 gets four bullets and one evidence line. No existing sentence changes.
- The Source note `change-orders` field gets this Change Order.

Possible:
- Sources 011 and 014 (agent memory) may extend the Concept or add Claims. They will need to link to it.
- The Concept and the Claim may link later to the Concept and Claim of CO-017 (context engineering, context rot). The Brain shows no dependency now.
- The Curator can count the Claim as one-source, `weak`.

## 4. Risks and limits

- A survey preprint, version 1, one author at an affiliation that the Reporter could not assess. The Acknowledgments contain unfinished template text.
- The figures come from other works and were not checked. No row uses them as a fact.
- Extraction `partial`: sections 6 to 9 and the last part of the page were not read.
- The draft links use draft titles (`[[Agent memory]]`, `[[Long context is not agent memory]]`). The Orchestrator must set the final IDs in both drafts and in X3. The order of apply with CO-017 sets the next free ID.
- If no action is taken: the Brain has no record on agent memory. The Building AI agents MOC stays without a non-vendor source. No harm follows.

## 5. Priority

`low`. The change is additive and touches one existing record. Agent design is in scope, but no decision depends on it and a delay carries no risk. The evidence is weak.

## 6. Decision required

Approve the Change Order, approve rows one by one, or reject it?

- X1 and X2 belong with X3 (new records need the MOC link). X2 can be dropped alone: the Concept then needs its link to X2 removed, and X3 loses its Claim bullet.
- Question: do you want a Claim on long context and memory with `weak` evidence, or only the Concept until a source gives data?

## 7. Decision record

## 8. Implementation record
