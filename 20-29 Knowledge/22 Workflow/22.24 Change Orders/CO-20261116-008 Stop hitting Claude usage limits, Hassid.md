---
id: CO-20261116-008
type: change-order
title: Stop hitting Claude usage limits, Hassid
status: open
created: 2026-11-16T06:00
updated: 2026-11-16T06:02
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-015 Stop hitting Claude usage limits, Hassid]]"
brain-version: CO-20261116-005
change-types: [create, relate]
affected:
  - "[[MOC-20261116-001 Using Claude]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

## 1. Summary

Add one Concept to the Brain: a short list of habits that one newsletter author gives to cut token use in Claude. Link it from the Using Claude MOC. The Brain makes no Claim, because the article is promotional, gives no method for its figures, and is dated 2026-04-12. The sales claims, plan prices, and unsourced percentages are left out.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| C1 | Claude re-reads the whole chat with each message | extends | CON-20261116-002 (message 30 costs 31x) | Same author, same idea; new Concept gives the habits that follow. No Claim. |
| C2 | Rolling 5-hour window | new | none | Unsourced, product detail, time-bound. Kept only as the author's statement in the Concept. |
| C3 | 98.5% of tokens spent re-reading history | research-gap | none | Unsourced figure, unclear case. Not kept. |
| C4 | 20-message session burns about 105,000 tokens | research-gap | none | No method. Not kept. |
| C5 | Sonnet or Haiku for simple tasks, Opus for deep work | new | none | Advice, no data. In the Concept. |
| C6 | Similar prompts are partly cached ("Anthropic confirmed") | new | none | Hearsay, no link. In the Concept as the author's report. |
| C7 | CLAUDE.md loads every time, Skills on demand | supports | CON-20261115-007 | Vendor page describes CLAUDE.md loading at session start; this is a one-line author remark. No row. |
| C8 | Web search, connectors, Explore add tokens | new | none | No measure. In the Concept. |
| C9 | Project files are cached | new | none | Rules not documented. In the Concept. |
| C10 | Convert files to text before upload | new | none | Advice. In the Concept. |
| C11 | Summarize and restart every 15-20 messages | extends | CON-20261116-001 (rule 5, fresh chat) | Same advice with a number. In the Concept. |
| C12 | Keep About Me files under 2,000 words | new | none | Personal practice. In the Concept. |
| C13 | Author pays for the $100 plan | new | none | Plan price and personal fact. Not kept. |
| C14 | Claude cannot generate images | research-gap | none | Time-bound product fact (April 2026). Not kept. |

CLM-20261115-007 (context can lower performance) is about quality, not cost. The Brief does not speak to it. No row.

Threshold: yes (it makes a record).

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261116-005.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1, C11 | new-concept | — | No Brain record covers token cost or usage limits in Claude. C1 (each message re-reads the chat, so long chats cost more) and C11 (summarize and restart every 15-20 messages) form a set of habits that can stand as a Concept in [[MOC-20261116-001 Using Claude]]. The mechanism is the author's statement. The Brief cites no Anthropic documentation. It should stay advice, not a Claim. |
| A2 | C1 | new | — | [[CLM-20261115-007 Longer context can lower model performance]] looks related but is not a match. CLM-007 is about model quality (recall falls as context grows). C1 is about token cost per message. They are different properties. Do not file C1 as support for CLM-007. |
| A3 | C11 | extends | [[CON-20261116-001 Prompting rules in a Claude beginner guide]] | Rule 5 there says to open a fresh chat when Claude is confused, with the cause given as context size. C11 adds a second reason (cost) and a trigger (every 15-20 messages). Both come from the same author, so this is not independent confirmation. The 15-20 threshold is his choice (E12). |
| A4 | C11 | supports | [[CON-20261115-005 Context engineering]] | Compaction there (summarize a chat that nears the limit and continue) is the same practice as "summarize and start fresh". The Anthropic source describes it for agents and the limit of the window. The Hassid source applies it by hand and for cost. Different scope. The vendor source is stronger. It does not strengthen the 15-20 figure. |
| A5 | C1, C8 | supports | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | Step 1 there (clear the settings, too much context) and E11 ("Message 30 costs 31x more tokens") match C1 and C8 (unused web search, connectors, and similar features add tokens to every response). This is the same author with the same view, not a second source. The Brain correctly keeps the 31x figure as unchecked. C4 (105,000 tokens) and C3 (98.5%) use other measures. They cannot be compared with the 31x figure. |
| A6 | C7 | supports | [[CON-20261115-007 Claude Code instructions and memory]] | The Concept says (vendor documentation) that CLAUDE.md files are concatenated into context at launch. C7 says CLAUDE.md "loads every single time". These match. The vendor page is the better evidence. The Hassid claim adds nothing on top of it. |
| A7 | C7 | extends | [[CON-20261115-007 Claude Code instructions and memory]] | C7 also says that Skills load on demand. The Concept says to put multi-step procedures in a skill or in a path-scoped rule that loads on demand, but it gives no skill-loading rule. The source gives the author's statement only. It needs a check against Anthropic documentation before the Brain relies on it. |
| A8 | C12 | qualifies | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | Not a contradiction. Step 3 there (E19) says to turn an ABOUT ME file into a skill. C12 says to keep each ABOUT ME file under 2,000 words. The difference is in conditions: two pieces of advice from the same author, on different dates and for different setups (Cowork with Skills against a general Chat). The Brain should show both as dated opinion. |
| A9 | C9 | extends | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | The Concept covers Projects for context (E5). C9 adds a cost reason (files uploaded once are cached). The caching rules are not documented in the source (E9 limits). |
| A10 | C6, C9 | new | — | "Similar prompts are partly cached" and "Project files are cached" can be a separate caching topic. The evidence is weak: "Anthropic confirmed" has no link, and the caching rules are not shown. Do not make a Claim. Keep it as advice in the Concept, with a caveat. |
| A11 | C5, C10 | new | — | Matching the model to the task (Sonnet or Haiku for simple work, Opus for deep work) and converting files to text before upload are both advice with no data. The Brain has no record on either. They can sit in the A1 Concept as the author's advice. |
| A12 | C2, C13, C14 | new | — | The rolling 5-hour window, the plan prices, and "Claude cannot generate images" are product facts dated 2026-04-12. [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] already leaves plans, prices, and usage windows out of the Brain because they change fast. The same rule applies. Do not record them. |
| A13 | C3, C4 | research-gap | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | The two figures (98.5% of tokens on re-reading, 105,000 tokens per 20 messages) have no method, model, or case. The Brain has no figure that confirms them. They must not enter the Brain as facts. The gap is a source from Anthropic on how usage is counted. |

### Recommended action

`advance`. Findings A1, A3, A4, A5, A6, A7, A8, A9 (and A10, A11 as content for the Concept) may justify a change. Reason: the Using Claude area has no record on token cost, and the source links to three Brain records. The change should stay small and follow the existing precedent: advice from one opinion source goes into a Concept, labeled with its caveats, with no Brain Claim and no `confidence` above low. Keep the product facts (A12) and the unsourced figures (A13) out of the Brain. Justin can also ask for a Research Questions row on whether Anthropic documents how usage is counted for long chats. This is optional because the figures need no Brain record.

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-16, as Rulebook §4.5 item 3 requires. Both say `advance` with a small scope, both propose one process Concept with caveats, and both make no Claim. They agree that the figures (98.5 percent, 105,000 tokens), the plan prices, the 5-hour window, and "Claude cannot generate images" stay out, and that CLM-20261115-007 (quality) is not a match for token cost.

**They differ on:**
1. **A qualification of CON-20261116-002 (Editor A8).** The Editor says "keep ABOUT ME files under 2,000 words" qualifies step 3 of the Cowork Concept ("turn an ABOUT ME file into a skill"). It is a difference in conditions and date, not a contradiction. This Change Order edits no existing record. The new Concept states the 2,000-word advice as personal practice (E13) and links the Cowork Concept as "not conflicting".
2. **Skills load on demand (Editor A7).** The Editor says this needs a check against Anthropic documentation before the Brain relies on it. The Concept quotes it as the author's statement (E7). The Orchestrator checked the Concept quotes against the raw page, and they match. The vendor check did not run.
3. **Links to existing records (Editor A3, A4, A5, A6, A9).** The Editor lists supports and extends links to CON-20261116-001, CON-20261115-005, CON-20261116-002, and CON-20261115-007. The Concept links CON-20261115-005, CON-20261116-002, CON-20261115-007, and CLM-20261115-007. It does not link CON-20261116-001 (rule 5, fresh chat), although 1a C11 names it.
4. **Research row (Editor A13).** The Editor suggests a question: does Anthropic document how usage is counted for long chats? The Orchestrator did not add it (the figures need no Brain record).

**Shared with CO-20261116-006 and CO-20261116-007:** each of the three adds lines to the same two lists of MOC-20261116-001. The lines are additive. All three were drafted at Brain version CO-20261116-005. The Orchestrator rebases the later ones after the first is applied (Rulebook §6 step 3, KS-D-54).

**Options for Justin**
- **A.** Approve X1 to X3 as written (the Managing Editor's proposal).
- **B.** Approve X1 to X3 and ask for more: a caveat on CON-20261116-002 for A8, and a link to CON-20261116-001. The Orchestrator asks the Managing Editor for a new draft.
- **C.** Approve X1 only (the Concept) and skip the MOC lines.
- **D.** Reject this Change Order.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Habits to reduce token use in Claude | New Concept, `kind: process` |
| X2 | relate | [[MOC-20261116-001 Using Claude]] | Add the Concept under "Processes and methods" |
| X3 | relate | [[MOC-20261116-001 Using Claude]] | Add the source under "Evidence for and against" |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CON Habits to reduce token use in Claude.md`. Title: "Habits to reduce token use in Claude". Type `concept`, status `accepted`. A Concept has no `confidence` or `evidence-strength`.
- Evidence: [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|Stop hitting Claude usage limits]] · E1, E2, E5, E6, E7, E8, E9, E10, E11, E12, E13
- Reason: §1a C1, C2, C5 to C12. Figures C3, C4, C13, C14 are left out on purpose.

### X2

- Current: (under "Processes and methods") the line for CON-20261116-002 only.
- Proposed: add the line: `- [[CON-YYYYMMDD-NNN Habits to reduce token use in Claude|Habits to reduce token use in Claude]] (one author's token-saving habits; no test, no data)` (the Orchestrator sets the ID).
- Evidence: [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|Stop hitting Claude usage limits]] · E1, E12
- Reason: §1a C1, C11. Each new record needs a MOC link. Small row, so the Orchestrator can order it with the sibling MOC rows.

### X3

- Current: the "Evidence for and against" list has two lines, both about prompting.
- Proposed: add: `- For (opinion): [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|How to stop hitting Claude usage limits (Hassid, 2026-04-12)]]. Same author, free post, source-quality medium, objectivity 2 of 5. Habits for token use; no method for its figures. Extraction partial.`
- Evidence: [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|Stop hitting Claude usage limits]] · E1
- Reason: §1a C1. The MOC lists the evidence for each of its records.

## 3. Impact

- Direct: one new Concept. One MOC changes, in two small places. No existing Concept or Claim changes.
- Possible: sibling runs for SRC-20261116-008 to -014 can also edit the MOC. The Orchestrator orders the rows. The MOC "Disputes and gaps" text may need a line on token-cost advice (not proposed here).
- Possible: the Concept overlaps in part with CON-20261116-002 (31x cost remark) and CON-20261116-001 (rule 5). The three could be merged later.

## 4. Risks and limits

- The Brief quotes came from a fetch tool. The Orchestrator checked them and the Concept quotes against the raw page on 2026-11-16 (Hard rule 9a).
- One promotional source. The advice can be out of date: dated 2026-04-12, and limits and plans change.
- Risk if no action: low. The Brain loses a short list of habits that is easy to get again from the source.
- No Claim is proposed. The Brief gives no test, so a Claim would be `low` and `weak` with little value.

## 5. Priority

`low`. One small Concept, no change to a Claim, no urgency, and no risk from delay.

## 6. Decision required

Approve, change, or reject each row? X1 can be decided apart from X2 and X3. X2 and X3 need X1 (the MOC link points to it).

## 7. Decision record

## 8. Implementation record
