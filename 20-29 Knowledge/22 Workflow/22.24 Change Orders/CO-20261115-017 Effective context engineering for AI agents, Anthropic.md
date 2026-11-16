---
id: CO-20261115-017
type: change-order
title: Effective context engineering for AI agents, Anthropic
status: applied
created: 2026-11-15T23:46
updated: 2026-11-15T23:58
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-010 Effective context engineering for AI agents, Anthropic]]"
brain-version: CO-20261115-016
change-types: [create, relate]
affected:
  - "[[MOC-20261115-002 Building AI agents]]"
  - "[[CON-20261115-003 Workflows and agents]]"
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
priority: low
decision: approved
decided: 2026-11-15T23:58
decision-note: "Approve all changes. Run maintainence"
applied: 2026-11-15T23:58
brain-version-after: CO-20261115-017
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The Brain has no record on how to manage what goes into an LLM's context. Source [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|SRC-20261115-010]] (Anthropic Engineering, 2025-09-29) gives a vendor's view: curate the tokens, use just-in-time retrieval, and use compaction, note-taking, or sub-agents for long tasks. This Change Order adds one Concept and one Claim (context rot, with weak evidence), and links them to the MOC "Building AI agents" and to two related Concepts. The source gives advice and no data, so the Claim has low `confidence` and weak `evidence-strength`.

## 1a. Brief against the Brain

Labels A1 to A9 match C1 to C9 of the Brief. Records read: MOC-20261115-002, CON-20261115-003, CON-20261115-001, CLM-20261115-005, CLM-20261115-006, MOC-20261113-002, Research Questions, and the two open Change Orders CO-20261115-015 and CO-20261115-016.

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1 context engineering follows prompt engineering | new | none | A vendor view (E1, quote checked). In the new Concept only. No Claim. |
| A2 | C2 context rot: performance falls as context grows | new | none | A factual statement with a checked fragment and no named study (E2). New Claim X2, `low` and `weak`. |
| A3 | C3 context is finite, an attention budget | new | none | Summary only (E3). Support for X2 and the Concept. |
| A4 | C4 a few diverse, canonical examples | new | none | Guidance with no test (E4). In the Concept only. |
| A5 | C5 self-contained tools that do not overlap | extends | CON-20261115-003 | Agrees in kind with the source's advice there on tool documentation (E7 of SRC-008). Different source. A link, not a dependency. In the Concept only. |
| A6 | C6 just-in-time retrieval; Claude Code hybrid | new | none | Vendor description of its own product (E5). In the Concept only. |
| A7 | C7 compaction, note-taking, sub-agents | new | CON-20261115-001 | Structured note-taking resembles the file-based memory protocol. The Brief gives no information on whether they are the same. Link only (X5). |
| A8 | C8 sub-agents use clean windows and return summaries | new | none | Summary, not a quote (E7 limits). In the Concept only. |
| A9 | C9 smallest set of high-signal tokens | supports | CLM-20261115-005 | Agrees in spirit with "start simple", but it concerns tokens, not design. I propose no row and no evidence line there. |

No Claim Candidate contradicts a Brain record. The source says nothing on "augmented LLM" memory beyond what the Concept links. The Brief did not read the linked article "Building effective agents" (Brief §9), which the Brain already holds as SRC-008. The Brain does not show whether the two Anthropic articles are independent.

Threshold: yes. The Change Order makes two records (a Concept and a Claim). The Orchestrator runs the Editor second look and merges it as section 1b.

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261115-014.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1, C9 | new-concept | — | No Brain Concept covers "context engineering": curating the tokens given to the model at each turn, with the aim of the smallest set of high-signal tokens. The Brief gives the definition with wording not fully captured (§12). A Concept note can state it as the source's view. C1 is the vendor's own opinion (E1, direct, no outside support). C9 is a fragment quote (E8). |
| A2 | C2, C3 | new | — | "Context is finite and performance can fall as it grows (context rot)" can stand as its own Claim. No Brain record states it. Evidence is weak: E2 is a quote that names studies but the Brief did not capture them, E3 is a paraphrase. No numbers (Brief §10). A Claim would need `evidence-strength: weak`. |
| A3 | C5 | extends | [[CON-20261115-003 Workflows and agents]] | The Concept holds the agent-computer interface (ACI): tool design and documentation (source 1, E7). C5 adds specific tool advice: self-contained, token-efficient, no overlap in function. It matches ACI in topic and adds detail. The scope is the same (agent tools). Evidence is guidance only (E4), no test. |
| A4 | C4 | new | — | "Use a few diverse, canonical examples, not long lists of edge-case rules" has no Brain match. The Brain has no record on prompt content. It can stand as a Claim, or sit with A3 as one guidance Claim on context design. Weak: guidance only (E4), summary not checked. |
| A5 | C6 | extends | [[CLM-20261115-001 Search plain files first, then add indexes]] | Both advise light loading and exploring on demand. CLM-001: for a plain-file knowledge base, search with `rg` first and add an index only if needed. C6: an agent keeps light references (file paths) and loads data at run time, and Claude Code mixes up-front loading with exploration. The scopes differ: CLM-001 is about retrieval design for a knowledge base. C6 is about what enters the context window of an agent at run time. C6 does not test CLM-001's "slow or imprecise" rule. It adds no data to it. Not `supports`: the evidence is vendor description of its own product (E5). |
| A6 | C7 | new-process | — | Three techniques for long tasks: compaction (summarize and continue; tool-result clearing is a light form), structured note-taking, and sub-agent architectures. No Brain Process covers them. The Brief describes each in a sentence and has no comparison data (E6). A Process Concept would list the three as options, not as ordered steps. |
| A7 | C7 | new-relationship | [[CON-20261115-001 Agent memory protocol for file-based memory]] | Structured note-taking (the agent writes persistent notes outside the context window and reloads them later) is a file-based memory for the same reason the protocol gives rules for one. The protocol covers how the agent reads and writes it (map file, citations, no silent rewrites, log at the end). The source gives the purpose (work beyond the context limit). Neither says how the other should work, and the source has no rules for the notes. Also related: the Udacity definition of state and memory in [[CON-20261115-003 Workflows and agents]] (memory persists across runs). A link, not a dependency. |
| A8 | C8 | qualifies | [[CLM-20261115-005 Start with the simplest agent design]] | The Claim advises the simplest design and more complexity only when needed. C8 describes sub-agents (clean context windows, condensed summaries to a coordinating agent) as a way around context limits. This adds one condition under which more structure is used. It is not a contradiction: the source does not say to build sub-agents first (the Brief does not say how it ranks the three techniques). The Claim's evidence also includes Udacity E10: multi-agent only when specialization helps and cost is justified. C8 gives a different reason (context limits). Evidence for C8 is a summary, not a quote (E7 limits). |
| A9 | C8 | qualifies | [[CLM-20261115-006 Agent autonomy raises cost and error risk]] | The Claim says that agent autonomy raises cost and the risk of compounding errors. C8 describes a sub-agent structure where condensed summaries go to a coordinating agent. The Brief does not say if this adds cost or limits error spread. The two do not conflict. I note it as an open point: the source gives no cost data for any technique. Low weight. |
| A10 | C9 | refines | [[CLM-20261115-005 Start with the simplest agent design]] | "Smallest set of high-signal tokens" is a size principle for context. "Simplest design" is a principle for system structure. Both prefer less. They are different objects (tokens vs. architecture), so C9 does not support the Claim. It states a parallel principle. Keep separate. |
| A11 | C2, C3, C7 | research-gap | [[MOC-20261115-002 Building AI agents]] | The MOC says the Brain has no newer source than 2024-12-19. This source is 2025-09-29, so it narrows that gap, but it is about 14 months old and gives no data. No Brain source tests context rot or compares the three techniques. The MOC's open question covers the simplest-design advice and the cost of autonomy, not context limits. |

### Recommended action

`advance`. Findings A1, A2, A6, and A7 are possible reasons to change the Brain (a new Concept, a new Claim, a new Process, and a link to the memory protocol). A3, A5, and A8 are possible small additions to existing records. Each new Claim needs `evidence-strength: weak`, `confidence: low`, and the caveats of one vendor source, partial extraction, and summary evidence. A4 and A10 are optional. I advise against Claims that rest only on E3 to E6, because the Brief has not checked their wording. A9 needs no change.

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. Both say `advance`. They agree on the action and differ in how much to add to existing records.

**They agree on:** a new Concept for context engineering (X1); one Claim on context rot, `low` and `weak`, because the evidence is one vendor article with no named study (X2); a link to the memory protocol CON-20261115-001 (X5); no contradiction with any Brain record; a gap against the existing MOC.

**They differ on:**
1. **Techniques as a Process.** The Editor lists compaction, note-taking, and sub-agents as a possible new Process (A6). The Managing Editor keeps them inside the Concept.
2. **Sub-agents and existing Claims.** The Editor says the sub-agent pattern qualifies CLM-20261115-005 and CLM-20261115-006 (A8, A9), and that "smallest set of high-signal tokens" refines CLM-20261115-005 (A10). This Change Order edits neither Claim. The Managing Editor sees A9 as a loose fit ("tokens, not design") and proposes no row.
3. **Examples and tools (A4, A3).** The Editor calls these optional additions to existing records. The Managing Editor puts them in the Concept only.
4. **Claim evidence.** The Editor advises against Claims that rest on the unchecked summaries (E3 to E6). X2 rests on E2, a checked quote with no named study, so it is consistent with that advice.

**Options for Justin**
- **A.** Approve X1 to X5 as written (the Managing Editor's proposal).
- **B.** Approve X1, X4, X5 and reject X2: the Brain holds no Claim from one vendor article with no study. X3 then changes to leave out the Claim.
- **C.** Approve all rows and ask for one more: edits to CLM-20261115-005 and CLM-20261115-006 for the Editor's A8 to A10. The Orchestrator asks the Managing Editor for a new draft.
- **D.** Reject this Change Order.

**Note on IDs:** the new records use draft IDs (`CON-20261115-004`, `CLM-20261115-007`). CO-20261115-015 also has a new Concept that can take `CON-20261115-004`. The Orchestrator sets the final IDs on apply and changes the links.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Context engineering | New Concept: terms, advice, three techniques, caveats |
| X2 | create | new: Longer context can lower model performance | New Claim: context rot, `low`, `weak` |
| X3 | relate | [[MOC-20261115-002 Building AI agents]] | Add the Concept, the Claim, the source, and one gap |
| X4 | relate | [[CON-20261115-003 Workflows and agents]] | Add one link to the new Concept |
| X5 | relate | [[CON-20261115-001 Agent memory protocol for file-based memory]] | Add one link to the new Concept |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CE Context engineering.md`. Title "Context engineering", Concept (`kind: definition`), status `accepted`. Concepts carry no `confidence` or `evidence-strength`.
- Evidence: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering]] · E1, E2, E3, E4, E5, E6, E7, E8
- Reason: A1, A3 to A9. The Concept gives the source's terms and marks each as advice with no data. Quotes E1, E2, E7, and E8 were checked against the raw page (4 of 4). The rest are summaries.

### X2

- Current: none
- Proposed: Draft: `.staging\proposed\CE Longer context can lower model performance.md`. Title "Longer context can lower model performance", Claim, status `accepted`, `confidence: low`, `evidence-strength: weak`.
- Evidence: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering]] · E2 (quote checked, fragment), E3 (summary)
- Reason: A2, A3. One vendor source, studies not named, no figures. `weak` is the honest value. The claim text says "the source says" and `can`, not `does`. I did not make Claims from A1 or A4 to A9: they are advice with no data, and the Concept holds them.

### X3

- Current (MOC-002, Key concepts): "- [[CON-20261115-003 Workflows and agents|Workflows and agents]] (definitions and five patterns from one vendor article)" as the only bullet.
- Proposed, new Key concepts bullet: "- [[CON-20261115-004 Context engineering|Context engineering]] (what goes into an agent's context; one vendor article)". Draft title. The Orchestrator sets the final name.
- Proposed, new Important claims bullet: "- [[CLM-20261115-007 Longer context can lower model performance|Longer context can lower model performance]] (evidence `weak`, one vendor article, studies not named)". Draft title.
- Proposed, new Evidence "For" line: "- For: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering for AI agents (Anthropic Engineering, 2025-09-29)]]. Engineering article by the vendor of the models, `source-quality: medium`, currency 3 of 5. Advice on context, retrieval, and long tasks. No data. Extraction `partial`: the Brief rests on a fetch summary, with 4 quotes checked."
- Proposed, new Open research questions bullet: "- Does context rot hold for current models, and at what context sizes? (The source names no study and gives no figure.)"
- Proposed, new Disputes and gaps bullet: "- Three sources are vendor articles (two from the same vendor). The Brain does not show that they are independent. The Brief for the context article gives no information on the three techniques side by side."
- Evidence: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering]] · E2, E6
- Reason: A2, A7. The new records need a MOC link. The change is additive and edits no existing sentence. No open Change Order edits this MOC (CO-015 and CO-016 do not). Sources 011, 013, and 014 may touch it later.

### X4

- Current (CON-003, Related concepts): one bullet, to the memory protocol.
- Proposed, new last Related concepts bullet: "- [[CON-20261115-004 Context engineering|Context engineering]]: strategies for what enters the context of such a system, including retrieval and memory. A link, not a dependency." Add the same link to `related` in the frontmatter. Draft title.
- Evidence: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering]] · E5, E6
- Reason: A5, A6. The augmented LLM there has retrieval, tools, and memory. The new Concept concerns the same parts. No open Change Order edits CON-003.

### X5

- Current (CON-001, Related concepts): two bullets (CON-003 of the wiki and CON-004 of the setup).
- Proposed, new last Related concepts bullet: "- [[CON-20261115-004 Context engineering|Context engineering]]: one vendor describes structured note-taking, where an agent writes notes outside the context window and reloads them later. This protocol is a set of rules for such files. The Brief gives no information on whether the two are the same. A link, not a dependency." Add the same link to `related` in the frontmatter. Draft title.
- Evidence: [[SRC-20261115-010 Effective context engineering for AI agents, Anthropic|Effective context engineering]] · E6
- Reason: A7. No open Change Order edits CON-001.

## 3. Impact

Direct:
- Two new Brain records (one Concept, one Claim).
- MOC-002 gets four bullets and one evidence line. No existing sentence changes.
- CON-003 and CON-001 each get one link and one `related` entry. No step or caveat changes.
- The Source note `change-orders` field gets this Change Order.

Possible:
- Sources 011, 013, and 014 (agent memory) may extend the Concept or add Claims on notes and memory. They will need to link to it.
- The Curator can count the Claim as one-source, `weak`.
- The Knowledge System in this vault keeps notes outside the context window. The Brain makes no statement on that design. A link is not a dependency.

## 4. Risks and limits

- One vendor source on a topic where the vendor sells the products. It gives advice, not results.
- Extraction `partial`, confidence `low`. WebFetch gave a summary. Only E1, E2, E7, and E8 were checked, 4 of 4. Locators are headings, not paragraph numbers.
- The context rot Claim rests on a fragment that points to unnamed studies.
- The draft links use draft IDs. The Orchestrator must set the final IDs in all three drafts and in X3 to X5. The ID `CON-20261115-004` may collide with the Johnny.Decimal Concept of CO-20261115-015. Check before apply.
- If no action is taken: the Brain has no record on context. The Building AI agents MOC stays narrower. No harm follows.

## 5. Priority

`low`. The change is additive and local to three records plus two new ones. Agent design is in scope, but no decision depends on it and a delay carries no risk. The advice has no data, so there is no urgency.

## 6. Decision required

Approve the Change Order, approve rows one by one, or reject it?

- X1 and X2 belong together with X3 (new records need the MOC link). X4 and X5 are small links and can be decided alone. X2 can be dropped alone: the Concept then keeps the context rot statement in its Explanation without a Claim, but its link to X2 must be removed.
- Question: do you want a Claim on context rot with `weak` evidence, or only the Concept until a source gives data?

## 7. Decision record

2026-11-15T23:58. Justin: "Approve all changes. Run maintainence". Decision: `approved`, all rows, as written (option A of the Orchestrator comparison, where one exists).

## 8. Implementation record

2026-11-15T23:58. Rebased from CO-20261115-014 to CO-20261115-016, as for CO-016. CO-015 and CO-016 changed none of the records of this Change Order. Each section that the rows edit was present. Rows applied: X1: new CON-20261115-005 Context engineering (its draft link to the Concept changed from the draft ID CON-20261115-004, which CO-015 took). X2: new CLM-20261115-007 Longer context can lower model performance (`low`, `weak`). X3: five edits in MOC-20261115-002 (Key concepts, Important claims, For line, Open research questions, Disputes and gaps). X4: one link and one `related` entry in CON-20261115-003. X5: one link and one `related` entry in CON-20261115-001. `change-orders` and `updated` set on each changed record.

Brain version after: CO-20261115-017.
