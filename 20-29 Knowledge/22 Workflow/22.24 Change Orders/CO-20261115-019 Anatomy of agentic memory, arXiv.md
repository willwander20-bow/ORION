---
id: CO-20261115-019
type: change-order
title: Anatomy of agentic memory, arXiv
status: open
created: 2026-11-15T23:49
created-by: managing-editor
updated: 2026-11-15T23:50
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-014 Anatomy of agentic memory, arXiv]]"
brain-version: CO-20261115-014
change-types: [qualify, extend, relate]
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

[[SRC-20261115-014 Anatomy of agentic memory, arXiv|SRC-014]] is a second academic paper on agent memory (arXiv preprint, v2, 2026-05-20). It does not need a new record. This Change Order adds its evidence to the two records that CO-20261115-018 proposes: the Concept "Agent memory" and the Claim "Long context is not agent memory". It also adds one evidence line and one gap to the MOC "Building AI agents". The paper qualifies the Claim: on small benchmarks a full-context baseline can match memory systems.

**Dependency.** Rows X1 and X2 edit draft records that are not yet in the Brain. Apply CO-018 first. Then rebase this Change Order on the final IDs.

## 1a. Brief against the Brain

Records read: MOC-20261115-002, CON-20261115-001, CON-20261115-003, CLM-20261115-005, CLM-20261115-006, the drafts `MS Agent memory` and `MS Long context is not agent memory`, and CO-20261115-018. CO-015 to -017 were checked for the same MOC (CO-017 X3 edits it).

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| B1 | C1 four-family taxonomy | extends | draft Concept "Agent memory" (CO-018 X1) | A second taxonomy, by memory structure, next to Du's three dimensions. The authors' own scheme (E1). Add to the Concept as a second view. Do not merge the two. |
| B2 | C2, C9 saturation, full-context baselines often suffice | qualifies | draft Claim "Long context is not agent memory" (CO-018 X2) | The Claim says long context does worse than memory systems. This paper says that on small benchmarks full context can match them (E2, E9). A condition, not a contradiction: the Claim is about selective retrieval and active management, and the two papers use different tests. |
| B3 | C3, C4 F1 against LLM judge | extends | draft Concept (CO-018 X1) | F1 and judge rank six systems differently (E3). Judge ranks are stable across three prompts (E4). Supports Du's call for metrics beyond one score (E15 of SRC-013). Two papers by different authors; the Brain does not show that they are independent. |
| B4 | C5, C6 backbone sensitivity | extends | draft Concept (CO-018 X1) | Format errors in memory writes rise on a 3B model, two systems only (E5). Consistent with the weak points in Du's list, but a different measure. C6 is indirect (E6). Not a support for any Du statement. |
| B5 | C7, C8 latency and build cost | qualifies | draft Concept (CO-018 X1) | The Concept says that no reviewed benchmark reports efficiency with effectiveness (Du, E14). This paper reports latency and cost for six systems (E7, E8). Add as a limit on that sentence. It is the authors' own test, with unchecked table cells. |
| B6 | C10 recommendations | new | none | Recommendations, untested (E10). Overlaps Du's metric stack. In the Concept as one line only. |
| B7 | C1 to C10 | research-gap | MOC-20261115-002 | The MOC has no source on evaluation of agent memory. Two papers now point to weak evaluation. Neither gives a result that the Brain can use as a Claim. |

No Claim Candidate contradicts a Brain record. Tables 2 to 5 are `Summary:` only and unchecked. Quotes were checked 3 of 3. I make no new Claim from the figures.

Threshold: yes. X1 adds a condition to a Claim.

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261115-014.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1 | new-concept | — | The Brain has no taxonomy of agent memory. The four families (lightweight semantic, entity-centric, episodic and reflective, structured and hierarchical) can stand as one Concept, as the authors' own scheme (E1). The authors say it can miss recent systems. |
| A2 | C1 | extends | [[CON-20261115-003 Workflows and agents]] | That Concept gives one author's split of state (current run) and memory (persists across runs). The paper defines agentic memory as storage, retrieval, and update outside the model weights (§3 of the Brief) and sorts it by structure. The two do not conflict. They differ in focus: that Concept gives terms, this source gives types. |
| A3 | C3, C4 | new | — | In the authors' test, F1 and an LLM judge rank six memory systems differently (AMem 5th by F1, 4th by judge, E3). Judge ranks stay stable across three prompts (E4). The test uses one setup, one judge model, and the dataset name was not captured. It can stand as a Claim with `weak` evidence. C4 only limits C3 (the judge ranking is not an artifact of one prompt), so it goes in the same Claim. |
| A4 | C2 | new | — | A benchmark can be small enough that a full-context baseline matches memory systems (E2). The authors rate this risk with their own heuristic. They propose a Delta gap but do not compute it. So the Claim is about their rating, not a measured result. Evidence is `weak`. Keep it separate from A3 because it is a different question (benchmark size, not metric). |
| A5 | C5 | new | — | A weak backbone (Qwen-2.5-3B) gave more format errors in memory writes than gpt-4o-mini: SimpleMem 4.82% against 1.20%, Nemori 30.38% against 17.91% (E5). The test has two systems and two backbones. The Brain has no record on how memory quality depends on the model. |
| A6 | C5 | supports | [[CLM-20261115-006 Agent autonomy raises cost and error risk]] | That Claim says autonomy brings "the potential for compounding errors" with no data. The paper's "Silent Failure" (fluent answers, memory corrupted by failed writes) is a measured error rate in one part of an agent. Scope differs: the Claim is about agents in general. The paper is about memory writes only. So the support is partial and indirect. It does not change `evidence-strength` by much. |
| A7 | C6 | new | — | The authors say append-only systems resist a weak backbone better than graph-based and episodic ones. The Brief marks the evidence as indirect: Table 4 covers only SimpleMem and Nemori (E6). The statement goes beyond the data. If it enters the Brain, it needs `low` confidence. It can also be left out. |
| A8 | C7, C8 | extends | [[CLM-20261115-006 Agent autonomy raises cost and error risk]] | That Claim says autonomy means higher cost and gives no figures. The paper gives measured cost figures for memory components: MemoryOS about 32 s per turn, AMem about 15 h build, Nemori about 7.04M build tokens against 1.31M for SimpleMem (E7, E8). Scope differs: these are memory-system costs, not autonomy costs. Setup and hardware were not captured, and the Brief says table columns were aligned by inference. Treat the numbers as unchecked. A new Claim "memory systems differ greatly in latency and build cost" is a possible way to hold them. |
| A9 | C9 | supports | [[CLM-20261115-005 Start with the simplest agent design]] | The paper says gains are inconsistent across benchmarks and that simple full-context or retrieval baselines often suffice (E9). This agrees with a preference for simple designs. Scope differs: the paper is about memory systems, the Claim is about agent design. The cited prior work was not read, and E9 is a motivating statement. This is a third vendor-neutral voice (academic) but it adds little strength. |
| A10 | C9 | supports | [[CLM-20261115-001 Search plain files first, then add indexes]] | That Claim says to start with plain search and add an index only if needed. The paper says simple baselines often suffice against memory systems. The match is partial: "retrieval baseline" and "plain `rg` search" are not the same, and the paper tests no plain-file setup. Weak support only. |
| A11 | C3, C9 | research-gap | [[Research Questions]] (row 2) | Row 2 asks if an AI-maintained index beats reading raw files, and under what conditions. The paper gives indirect data on conditions: memory gains depend on benchmark size and backbone, and a full-context baseline can match memory systems on small benchmarks. It does not test a personal file vault. This shows what to measure but does not answer row 2. |
| A12 | C5 | research-gap | [[Research Questions]] (row 1) | Row 1 asks if errors compound in an AI-written knowledge base. The paper's "Silent Failure" is an example of memory that is corrupted without a visible sign on a weak backbone. It is a different system (agent memory stores, not a Markdown wiki), so it does not answer row 1. It suggests that write validation matters. |
| A13 | C10 | new-relationship | [[CON-20261115-001 Agent memory protocol for file-based memory]] | The authors recommend validation layers, constrained decoding, and models of write latency for weak backbones (E10). The protocol's step 4 (do not silently rewrite decisions, sources, personal facts) is a rule about what an agent writes. Both control what an agent writes to memory, by different means (a written rule against a technical check). The link is a possible relation, not evidence. The paper tests no recommendation. |

### Recommended action

`advance`. Findings A1, A3, A5, and A8 are possible reasons to change the Brain: a Concept on the memory taxonomy, and Claims with `low` confidence and `weak` evidence. A2 and A9 can be added to existing records only as limited evidence. A4 and A7 are optional and weak. A10 to A13 are links and notes, not reasons for a change by themselves.

Reason: the Brain has no record on this topic, and the source fits Justin's stated reason. The risk is low if the Change Order marks the evidence as one preprint, with unchecked table figures.

Do not raise `confidence` or `evidence-strength` of CLM-20261115-005, -006, or -001 based on A6, A9, A10. The support is indirect and differs in scope.

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. Both say `advance`. They agree on the action.

**This Change Order depends on CO-20261115-018.** X1 and X2 edit the draft Claim and the draft Concept of CO-018, which are not in the Brain yet. The Editor reviewed the Brain only, so it saw a source with no memory records and proposed new ones (A1, A3 to A5, A7). The Managing Editor proposes additions to the CO-018 drafts instead. These are two ways to read the same gap, not a conflict.

**They agree on:** no contradiction; the evidence is one preprint with the authors' own tests; the numbers in Tables 2 to 5 are unchecked, so no Claim rests on them; no raise of `confidence` or `evidence-strength` for any existing Claim; no Research Questions row.

**They differ on:**
1. **Existing Claims.** The Editor says the paper supports CLM-20261115-001, -005, and -006 (A6, A8 to A10), with a warning that the support is indirect and differs in scope. This Change Order edits none of them. It adds the full-context condition to the draft Claim of CO-018 instead (X1).
2. **Possible new Claims.** The Editor lists four new findings (F1 against LLM judge, saturation, backbone format errors, append-only robustness: A3 to A5, A7) and calls A7 optional and beyond the data. The Managing Editor keeps the first three in the CO-018 Concept (X2) and makes no Claim.
3. **Link to CON-20261115-001.** The Editor lists a link (A13). This Change Order has none. CO-20261115-017 X5 and the Du Change Order have related rows.

**Options for Justin**
- **A.** Approve X1 to X3 as written, after CO-018 (the Managing Editor's proposal).
- **B.** Approve X3 only (the MOC line). X1 and X2 are void if CO-018 X1 and X2 are not approved.
- **C.** Approve X1 to X3 and ask for the extra links and edits in items 1 and 3. The Orchestrator asks the Managing Editor for a new draft.
- **D.** Reject this Change Order.

**Order of apply:** CO-018 first, then this Change Order after a rebase onto the final IDs (Rulebook §6 step 3). CO-017, -018, and -019 all edit MOC-20261115-002.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | qualify | draft Claim "Long context is not agent memory" (CO-018 X2) | Add one condition and one evidence line |
| X2 | extend | draft Concept "Agent memory" (CO-018 X1) | Add a second taxonomy, an evaluation paragraph, one limit, one source |
| X3 | relate | [[MOC-20261115-002 Building AI agents]] | Add one evidence line, one question, one gap |

### X1

Edits a record that CO-018 X2 makes. Apply after CO-018.

- Current (Context and conditions): "The Brief gives no information on newer long-context models."
- Proposed, add after it: "A second paper (SRC-20261115-014) reports that some benchmarks are small enough for a full-context baseline to match memory systems, and rates HotpotQA and MemBench at high saturation risk. The authors call the rating a heuristic and did not compute the gap. The claim above applies to tasks that need selective retrieval over long histories, not to small benchmarks."
- Proposed, add to Evidence: "[[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory (Jiang et al., arXiv, 2026-05-20)]] · E2, E9 · qualifies · quote: "inconsistent across benchmarks" (checked against the page); the saturation ratings are a summary, unchecked."
- Not changed: `confidence: low`, `evidence-strength: weak`. The new evidence qualifies and is indirect. It neither raises nor lowers either value.
- Evidence: [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory]] · E2, E9
- Reason: B2. The Brief reports that "simple full-context or retrieval baselines often suffice" as the authors' view. The Brief does not say which tasks. A difference of conditions is `qualify`, not `challenge`.

### X2

Edits a record that CO-018 X1 makes. Apply after CO-018.

- Current (Definition and Explanation): the Concept gives one taxonomy (three dimensions) and "no reviewed benchmark reports efficiency with effectiveness".
- Proposed, add to Explanation, new bullets:
  - "Second taxonomy (SRC-20261115-014, E1): four families by memory structure: lightweight semantic, entity-centric and personalized, episodic and reflective, structured and hierarchical. The authors' own scheme. It uses different axes than the three dimensions above. The Brief does not map one to the other."
  - "Evaluation, second paper (E3, E4, E2): F1 and an LLM judge rank six tested systems differently. Judge ranks stay stable across three prompts (one judge model). Some benchmarks are small enough for a full-context baseline to match memory systems. Both are the authors' own tests; the table figures are unchecked."
  - "Weak backbone (E5): format errors in memory writes rose on Qwen-2.5-3B against gpt-4o-mini for two systems (SimpleMem 1.20% to 4.82%, Nemori 17.91% to 30.38%). The authors say append-only systems are more robust. The Brief marks that statement as going beyond the two systems shown (E6)."
- Proposed, add at the end of the sentence "no reviewed benchmark reports efficiency with effectiveness": "In its own test of six systems, a second paper reports latency and build cost next to F1 (E7, E8); table cells unchecked."
- Proposed, add to Sources: "[[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory (Jiang et al., arXiv, 2026-05-20)]] · E1, E4, E5 · quotes checked · E2, E3, E6, E7, E8 · summaries, unchecked".
- Proposed, add to Caveats: "The second paper is a preprint (arXiv v2) with a small empirical study (six systems, two backbones). The Brief did not read its appendices."
- Evidence: [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory]] · E1 to E8
- Reason: B1, B3, B4, B5. The Concept already covers the topic. A new record would duplicate it. Concepts carry no `confidence`.

### X3

Overlaps CO-017 X3 and CO-018 X3: all three edit the same MOC sections. Apply one after the other and rebase.

- Current (Evidence for and against): the MOC lists vendor sources only (CO-018 X3 adds the Du survey).
- Proposed, new "For" line: "- For: [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory (Jiang et al., arXiv, 2026-05-20)]]. Survey preprint with a small empirical study, `source-quality: medium`, currency 4 of 5. Extraction `partial`: the Brief covers the abstract, introduction, taxonomy, Section 4, and conclusion. Most numbers are unchecked summaries."
- Proposed, new Open research questions bullet: "- Do memory systems beat a full-context baseline on large tasks, and which metric shows it? (Two papers call evaluation weak. Neither gives a result that settles it.)"
- Proposed, new Disputes and gaps bullet: "- Two memory papers by different authors agree that evaluation is weak. The Brain does not show that they are independent of each other. Both are preprints."
- Evidence: [[SRC-20261115-014 Anatomy of agentic memory, arXiv|Anatomy of Agentic Memory]] · E2, E3, E9, E10
- Reason: B7. Needed so the MOC shows the source. The change is additive. No existing sentence changes.

## 3. Impact

Direct:
- Two draft records from CO-018 get more text (after CO-018 applies).
- MOC-002 gets three bullets.
- The Source note `change-orders` field gets this Change Order.

Possible:
- The Curator can count the Claim as qualified by a second source.
- Source SRC-011 (Claude Code memory) may need a link to the same Concept.

## 4. Risks and limits

- Most evidence is `Summary:` of tables. Figures are unchecked. Extraction is `partial`.
- The paper is a preprint. The Brain does not show peer review.
- X1 and X2 depend on CO-018. If Justin rejects CO-018 X2, drop X1. If he rejects X1 of CO-018, X2 here has no target. Then I suggest a new Concept from this source.
- If no action is taken: the Claim in CO-018 has no counter-condition. No other harm follows.

## 5. Priority

`low`. The change is additive and small. No decision depends on it, and delay carries no risk.

## 6. Decision required

Approve the Change Order, approve rows one by one, or reject it?

- Decide CO-018 first. X1 needs CO-018 X2. X2 needs CO-018 X1.
- X3 stands alone, but overlaps CO-017 X3 and CO-018 X3 in text.
- Question: do you want the full-context qualification inside the Claim (X1), or kept only in the Concept?

## 7. Decision record

## 8. Implementation record
