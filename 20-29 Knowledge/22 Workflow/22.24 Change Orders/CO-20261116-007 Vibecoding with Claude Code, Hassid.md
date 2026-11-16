---
id: CO-20261116-007
type: change-order
title: Vibecoding with Claude Code, Hassid
status: applied
created: 2026-11-16T06:00
updated: 2026-11-16T06:07
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-014 Vibecoding with Claude Code, Hassid]]"
brain-version: CO-20261116-006
change-types: [create, relate]
affected:
  - "[[MOC-20261116-001 Using Claude]]"
priority: low
decision: approved
decided: 2026-11-16T06:07
decision-note: "006 A 007 B  008 B"
applied: 2026-11-16T06:07
brain-version-after: CO-20261116-007
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

Source: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid)]] (Brief in the Source note). The Brain has no practical Claude Code workflow for a non-coder. This Change Order adds one Concept that keeps the author's workflow as dated opinion, with the "bypass permissions" step kept as a risk. It adds two small lines to the MOC Using Claude. It makes no Claim. The author is promotional, so prices, model names, and sales figures stay out.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1, C2 (worth learning; mockups and small tools) | new | none | No Brain record covers vibecoding. Opinion only. |
| A2 | C3 (seven-step setup, bypass permissions) | new | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | Cowork setup is a different product and flow. The bypass step is a risk. |
| A3 | C4, C5 (interview prompt, one piece at a time) | extends | [[CON-20261116-001 Prompting rules in a Claude beginner guide]] | Similar to prompting advice, but for building software. The Brief did not capture the prompt text. No edit. |
| A4 | C6 (design file) | new | none | Indirect evidence. Author's claim only. |
| A5 | C7 (do not build what is quicker to consume) | new | none | Rule of thumb. |
| A6 | C8, C9 (usage habits) | supports | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | Fresh chats and files over pasting echo the Cowork token remark. Both are unmeasured opinion. No edit. |
| A7 | C10 (plan prices, models) | research-gap | none | Time-dependent and unverified. Not kept. |
| A8 | C11 (handoff file) | new | none | Procedural advice. |
| A9 | C12 (author not paid; promotes own services) | new | none | Source-quality fact. Kept as a caveat. |

No Claim is justified. All items are advice from one promotional source, with no data. Threshold: yes (makes a record).

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261116-005.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C2, C3, C4, C5, C11 | new-process | — (sibling: [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]]) | No Brain record covers building software with Claude Code. The source gives a seven-step setup, an interview-first prompt, a one-piece-at-a-time loop, and a HANDOFF.md step. This can stand as a process Concept in [[MOC-20261116-001 Using Claude]], in the same form as the Cowork setup: dated advice from one author, no test. It is not a Claim. The Brief did not capture the full mega prompt, so the steps are incomplete. |
| A2 | C3 | qualifies | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | The Cowork record says "Folders are leaking" and advises against folder setups. This source says to make one clean folder and to select it. This is not a contradiction. The conditions differ: Cowork general use against Claude Code building one app. The same author gives both pieces of advice. Say which tool each applies to. |
| A3 | C4 | supports | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | The Cowork record gives the "AskUserQuestion" trick: Claude asks structured questions before it works. The mega prompt (Claude interviews the user before it builds) is the same technique in another product. Same author, so this is not independent evidence. Nobody tested it. |
| A4 | C4 | qualifies | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | The Cowork record has the onboarding rule "Never ask me a question before giving me a potential answer." The mega prompt makes Claude ask questions first. Both cannot be one rule for all tasks, but they apply to different tasks (onboarding prompt against building an app). This is a difference in conditions, not a contradiction. |
| A5 | C9 | qualifies | [[CON-20261116-001 Prompting rules in a Claude beginner guide]] | Rule 5 says to open a fresh chat and paste in the key context. The source says a fresh chat per task, but to reference files instead of pasting text. Both reduce a long chat. The difference is how the context moves into the new chat. The source works in a project folder, where files exist. This is a refinement for the folder setting. Same author. |
| A6 | C8, C9 | supports | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | The Cowork record says "Message 30 costs 31x more tokens than message 1" (author's figure, no calculation). The source says Claude Code uses usage faster than normal chat and gives fresh-chat and plan-first habits. The direction is the same. The source gives no figures, and it is the same author. Weak support. |
| A7 | C5 | supports | [[CON-20261116-001 Prompting rules in a Claude beginner guide]] | "Describe the end result" fits rule 3 (say what you want) and the goal-based view in the other guide by the same author. It does not fit rule 2 (give examples) as the "best thing". It adds to the open disagreement on examples. It gives no test. Three guides by one author are not three independent sources. |
| A8 | C5 | research-gap | [[Research Questions]] (goal-based prompting row, raised by SRC-20261116-007) | The goal-based question is open. This source gives one more statement of the same view by the same author, with no test. It adds no new evidence. Add this source to the existing row. Do not add a new question. |
| A9 | C6 | new-concept | — | The Brain has no record on a design.md file (a file that describes a brand's design system so that Claude copies its style). The Brief supports only that such files exist (E6, indirect). The effect on the look is the author's claim, not shown. A Concept is possible, but it has low value and weak evidence. |
| A10 | C1, C7 | new | — | Both are the author's opinion ("will never make you rich"; do not build what takes longer to build than to consume). Neither has data. Neither can stand as a Brain Claim. Keep them, if at all, as lines in a process Concept. |
| A11 | C8 | new-relationship | [[CON-20261115-005 Context engineering]] | The source says Claude Code uses usage fast. The Context engineering concept says context is finite and that more tokens give diminishing returns. The link is that usage cost rises with context size, but the source gives no mechanism. This link comes from my reading of both records. The Brief does not state it. A link at most. [[CLM-20261115-007 Longer context can lower model performance]] is not strengthened: the source is about cost, not performance. |
| A12 | C3 | research-gap | [[CON-20261115-007 Claude Code instructions and memory]] | The source says nothing of CLAUDE.md or auto memory. It uses design.md and HANDOFF.md files for the same purpose (give Claude context). The Brief gives no information on how these relate to the vendor's mechanism. No link without more evidence. |
| A13 | C10 | new | — | Plan prices ($20, $100 a month) and the model advice (Sonnet, Opus 4.8 High) are the author's figures, unverified, and time-bound. The Brain keeps no product details of this kind (see MOC Disputes and gaps). Do not record them. |
| A14 | C12 | new | — | The author says he is not paid by Claude and he promotes his own paid newsletter, community, and consulting. This is a self-report. It is a source-quality note, not knowledge. The MOC "Evidence for and against" can state the source quality in one line. |

### Recommended action

`advance`, with a small scope: findings A1 (new process Concept), A2, A4, and A5 (the qualifications, as caveats), and A8 (add this source to the existing Research Questions row). Reason: the process is new and fits an existing MOC, and the qualifications keep the Cowork and prompting records accurate. A3, A6, and A7 are weak support and add only a line each. A9, A10, A13, and A14 should not become records. The Brain should make no Claim. Every item is opinion from one author who sells services (objectivity 2). A change that edits a Claim's `confidence` or `evidence-strength` is not justified: none of the findings touches a Claim.

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-16, as Rulebook §4.5 item 3 requires. Both say `advance` with a small scope, both propose a process Concept and MOC lines, and both make no Claim. They agree that prices, model advice, and the author's opinions stay out, and that the "bypass permissions" step is a risk, not advice.

**They differ on:**
1. **Qualifications of existing records (Editor A2, A4, A5).** The Editor says three points qualify existing Brain records, as differences in conditions, not contradictions: (a) this source says to make one clean folder, while CON-20261116-002 advises against folder setups in Cowork; (b) the mega prompt makes Claude ask questions first, while CON-20261116-002 has an onboarding rule "Never ask me a question before giving me a potential answer."; (c) "fresh chat per task, refer to files instead of pasting" refines rule 5 of CON-20261116-001. This Change Order edits neither record (1a A2, A3, A5, A6: "No edit"). The new Concept does not say which tool each piece of advice applies to.
2. **Research row (Editor A8).** The Editor says to add this source to the existing goal-based prompting row of `Research Questions.md`. This Change Order does not. The Orchestrator did not change that row.
3. **A design file Concept (Editor A9).** The Editor says a Concept on design files is possible but has low value. Neither view proposes it.

**Shared with CO-20261116-006 and CO-20261116-008:** each of the three adds lines to the same two lists of MOC-20261116-001. The lines are additive. All three were drafted at Brain version CO-20261116-005. The Orchestrator rebases the later ones after the first is applied (Rulebook §6 step 3, KS-D-54).

**Options for Justin**
- **A.** Approve X1 to X3 as written (the Managing Editor's proposal).
- **B.** Approve X1 to X3 and ask for more rows: caveats on CON-20261116-002 and CON-20261116-001 for the Editor's A2, A4, A5. The Orchestrator asks the Managing Editor for a new draft.
- **C.** Approve X1 only (the Concept) and skip the MOC lines.
- **D.** Reject this Change Order.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Vibecoding with Claude Code | New Concept (process), dated opinion, bypass step as risk. |
| X2 | relate | [[MOC-20261116-001 Using Claude]] | Add a line under "Processes and methods". |
| X3 | relate | [[MOC-20261116-001 Using Claude]] | Add a line under "Evidence for and against". |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CON Vibecoding with Claude Code.md`. Title "Vibecoding with Claude Code", status `accepted`, kind `process`. No confidence or evidence-strength (Concept). No Claim.
- Evidence: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid)]] · E1 to E12
- Reason: A1, A2, A4, A5, A8, A9. Keeps the workflow as dated opinion. Quotes in the Brief are not checked against the page.

### X2

- Current: the "Processes and methods" list has one line (Cowork setup).
- Proposed: add "- [[CON-<new ID> Vibecoding with Claude Code|Vibecoding with Claude Code]] (one author's dated workflow; no test; bypass permissions step is a risk)"
- Evidence: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid)]] · E3
- Reason: A2. Each new record needs a MOC link. The Orchestrator sets the ID when it applies.

### X3

- Current: "Evidence for and against" lists the two sources SRC-001 and SRC-002 (other runs may add more).
- Proposed: add "- For (opinion): [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid, 2026-06-17)]]. Same promotional author, `source-quality: medium`, objectivity 2 of 5. Extraction `partial`; quotes from a model summary. No data."
- Evidence: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid)]] · E12
- Reason: A9. Keeps source quality visible.

## 3. Impact

Direct: one new Concept; two lines in the MOC Using Claude (and its `change-orders` list gets this Change Order). Possible: other sibling Change Orders edit the same MOC lines. The Orchestrator orders the MOC rows. The Editor did not review links to CON-20261116-001 and CON-20261116-002.

## 4. Risks and limits

- Promotional source, no data, partial extraction, unchecked quotes.
- Risk of the "bypass permissions" step is stated in the Concept. It is not advice.
- If no action is taken, the Brain stays without a Claude Code workflow. The loss is small.

## 5. Priority

`low`. Small scope, no urgency, one weak source. No risk from delay.

## 6. Decision required

Approve X1 to X3? Rows can be decided one by one. X2 and X3 need X1. Should the Orchestrator check the Brief quotes against the page before apply?

## 7. Decision record

2026-11-16T06:08. Justin: "006 A 007 B  008 B". Decision: `approved`, all rows, as written (option B of the Orchestrator comparison: approve X1 to X3 and ask for caveat rows on CON-20261116-002 and CON-20261116-001. The caveat rows are not part of this Change Order; they go in a new Change Order for Justin's decision).

## 8. Implementation record

2026-11-16T06:08. X1 to X3 done. Rebased from CO-20261116-005 to CO-20261116-006 (Rulebook §6 step 3, KS-D-54). This Change Order was drafted in parallel and did not know the record of CO-20261116-006, so the strict exception does not apply. The comparison told Justin that the Orchestrator would rebase, and Justin approved. Checked: the MOC sections Processes and methods and Evidence for and against exist, and the rows only add lines after the lines of CO-20261116-006. New record CON-20261116-004 Vibecoding with Claude Code (moved from `.staging\proposed`). `change-orders` and `updated` set on MOC-20261116-001. Brain version before: CO-20261116-006. After: CO-20261116-007.
