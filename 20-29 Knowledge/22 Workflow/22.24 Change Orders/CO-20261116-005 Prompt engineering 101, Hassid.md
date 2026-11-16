---
id: CO-20261116-005
type: change-order
title: Prompting rules in a paid preview, Hassid (edits to CO-20261116-003 drafts)
status: open
created: 2026-11-16T00:32
updated: 2026-11-16T00:32
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-002 Prompt engineering 101, Hassid]]"
brain-version: CO-20261116-002
change-types: [create]
affected: []
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The source [[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101]] is the free preview of a paid post by the same author as SRC-20261116-001. It gives five rules, each tied to an unnamed study. It repeats the beginner rules of CO-20261116-003 in part, and it adds one conflict: it says goals beat examples, and the beginner guide says examples are the best thing to give. This Change Order edits two drafts of CO-20261116-003 to record that conflict and the source. It makes no record and no Claim. It needs CO-20261116-003 to be approved first.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| B1 | C1: tag questions ("right?") bias answers | new | none | Study unnamed, no figures. Opinion-grade. No Claim. Listed in the Concept caveat only (X1). |
| B2 | C2: plain question plus short role beats "step by step" | new | none | Study unnamed. Not in the CO-003 rules. No Claim. |
| B3 | C3: hallucinated citations in conference papers; verify sources | research-gap | none | The finding is about papers, not prompts. The link to prompting is the author's. No row. |
| B4 | C4, C7: models follow about 3 rules; split checks | new | none | Study unnamed. No Claim. |
| B5 | C5: removing examples improves results; goals work better | contradicts (draft) | draft Concept, rule 2 "Give examples" | Direct conflict with the other guide of the same author. Both are opinion-grade. Row X1. |
| B6 | C6: old techniques go stale | new | none | The author's view. No record. |
| B7 | C8: "One Prompt" template is paid | new | none | Paywalled and not visible. No record. |

Threshold: no. This Change Order makes no record, changes no Claim, and edits no existing Brain record (it edits 2 drafts of CO-20261116-003). It depends on CO-20261116-003, which reaches the threshold. The Orchestrator can skip the Editor second look for this Change Order.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | edits a draft of CO-20261116-003 (X1): Concept "Prompting rules in a Claude beginner guide" | Add a conflict caveat and a second source |
| X2 | create | edits a draft of CO-20261116-003 (X2): MOC "Using Claude" | Add the second source under Evidence |

### X1

- Current: Caveats list ends with "The Brain makes no Claim from these rules. They are advice from one opinion source." Sources lists one source. First caveat starts "One source."
- Proposed: add this caveat before the last one: "Another guide by the same author ([[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101]], free preview of a paid post) says the opposite on rule 2: it says removing examples improved results and that a clear goal works better. It gives the study as 'EPFL/Apple/Mistral', with no title, link, or figures. The two guides do not agree on examples. The same preview adds, with unnamed studies, advice to avoid tag questions such as 'right?', to skip 'step by step', and to give about 3 rules at most." Add to Sources: "[[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101 (Hassid, 2026-08-19, free preview of a paid post)]] · E1, E2, E4, E5 · access partial". Change "One source." in the first caveat to "Two sources by one author."
- Evidence: [[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101]] · E1, E2, E4, E5
- Reason: §1a B5 (and B1, B2, B4). The conflict on examples is useful to a reader of the rules. A caveat keeps it without a Claim, because the evidence is weak (one author, unnamed studies, partial access, source-quality low). The Editor did not review the link between these drafts and the source.

### X2

- Current: Evidence for and against, "Against: none."
- Proposed: "Against (opinion): [[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101]]. Same author, free preview of a paid post, `source-quality: low`, access partial. Says goals beat examples, which differs from rule 2." Add to Disputes and gaps: "The two guides by this author disagree on examples. Neither gives a test."
- Evidence: [[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101]] · E5
- Reason: §1a B5. The MOC must show the disagreement.

## 3. Impact

Direct:

- Two drafts of CO-20261116-003 change. No new record. No existing Brain record changes. No Claim is made. No `confidence` or `evidence-strength` changes.

Possible:

- A later independent source on examples in prompts can settle the conflict and can support a Claim.

## 4. Risks and limits

- The source is a free preview of a paid post. Five studies are named by institution only. The Brief did not check them. Access is partial and quality is low.
- The Brief used WebFetch for the outline. Section titles may be paraphrased. Only E7 was quote-checked.
- The rows add no fact beyond what the Brief reports. The Brief gives no information on the paywalled template.
- Risk if no action is taken: low. The Concept shows a rule that the same author disputes in another guide. "No Change" is a valid choice.

## 5. Priority

`low`. Small scope (two draft edits), no Claim, no urgency, and no cost from delay.

## 6. Decision required

Does Justin approve the conflict note and the second source in the Concept (X1) and in the MOC (X2)? Decide CO-20261116-003 first. If Justin does not approve X1 and X2 of CO-003, this Change Order has no target. The rows can be decided one by one.

## 7. Decision record

## 8. Implementation record
