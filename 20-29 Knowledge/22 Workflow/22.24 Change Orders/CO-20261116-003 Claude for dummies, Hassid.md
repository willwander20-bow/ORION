---
id: CO-20261116-003
type: change-order
title: Prompting rules in a Claude beginner guide, Hassid
status: open
created: 2026-11-16T00:30
updated: 2026-11-16T00:32
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-001 Claude for dummies, Hassid]]"
brain-version: CO-20261116-002
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

The source [[SRC-20261116-001 Claude for dummies, Hassid|Claude For Dummies]] is a free beginner guide by a newsletter author who sells a paid newsletter. Most of it is opinion, product facts that change (prices, plans), or unsourced figures. This Change Order proposes one Concept that records the author's five prompting rules, with their limits, and one small new MOC "Using Claude" to hold it. It makes no Claim. The Brain has no MOC on working with Claude, and the existing MOCs do not fit.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1, C2: next-word prediction; trained to agree | new | none | Beginner simplification with no technical source. No Claim. |
| A2 | C3: reads 200 pages without losing track | research-gap | [[CLM-20261115-007 Longer context can lower model performance]] | The author's untested statement differs in tone from the context-rot Claim, but it is no direct evidence against it. No row. |
| A3 | C4, C18: voice, "best since ChatGPT" | new | none | Opinion. No record. |
| A4 | C5, C6, C7, C20: prices, plan access, own endorsement | new | none | Sales-linked, date-bound facts, not checked against Anthropic. No record. |
| A5 | C8, C9, C10: no real-time data; bad at math; sounds sure when wrong | new | none | Plausible limits, but beginner advice with no data. No Claim. |
| A6 | C11 to C15: five prompting rules | new | none | Advice from one opinion source. Fits one Concept, not a Claim. Row X1. |
| A7 | C15 and context window | supports | [[CON-20261115-005 Context engineering]] | Rule 5 links a long chat to the context window. Link only, in the new Concept. |
| A8 | C16: a page is about 500 tokens | new | none | Rough author estimate. No record. |
| A9 | C17, C19: 80% of Claude Code; 98.75% of humans | research-gap | none | Figures with no basis. Not recorded. |
| A10 | Claude Code (Brief §6) | extends | [[CON-20261115-007 Claude Code instructions and memory]] | The guide gives one line on Claude Code, with no memory detail. No change. |

Threshold: yes. The Change Order makes two records. The Orchestrator runs the Editor on the same Brief and merges its second look as section 1b.

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: low. Recommended action: investigate. Brain version: CO-20261116-002.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C11, C12, C13, C14 | new | — | The Brain has no record on how to write a prompt. These four are the author's prompting rules (specific input; examples; say what you want; start short). Each can stand as a Claim. All rest on the author's opinion. E11 to E14 show no data, and E13 uses "always". Beginner source, objectivity 2. Evidence is `weak` at best. |
| A2 | C12 | supports | [[CON-20261115-005 Context engineering]] | The concept gives vendor advice to use "a few diverse, canonical" examples, not long lists of rules. C12 says examples are the single best prompting tip. Both favour examples. Scope differs: the vendor writes about agent system prompts, and the guide writes about a beginner's chat prompt. The author gives no data and the vendor concept is also advice, so this adds little strength. |
| A3 | C11 | qualifies | [[CON-20261115-005 Context engineering]] | The concept advises system prompts "at the right level of specificity". C11 says that a more specific input gives a more specific output, with no limit stated. The difference is scope and conditions: the guide is about chat prompts and gives no case where too much detail harms. The Brain record does not say what "right level" means. This is not a contradiction. |
| A4 | C15 | supports | [[CLM-20261115-007 Longer context can lower model performance]] | The guide tells the user to open a fresh chat and paste the key context when a chat gets confused. The Brief (E15, §6 "Context window") says the page links the confusion to a full context window. This is the same practical concern as the Claim: a long context can make results worse. It is advice and not a test, and it does not name a cause or a size. It adds a practical sign of the effect at best. It does not raise the Claim's `weak` evidence by much. |
| A5 | C3 | qualifies | [[CLM-20261115-007 Longer context can lower model performance]] | C3 says Claude reads a 200-page document in one go "without losing track". The Claim says performance can fall as context grows. These can both be true: the Claim says "can", and it names no model or size, and C3 gives no test. The difference is scope and conditions (an unnamed model, one task type, April 2026). C3 does not weaken the Claim by itself. It is a promotional capability statement with "without losing track" as the author's judgment (E3). I do not rate it a contradiction. |
| A6 | C3, C15 | qualifies | [[CLM-20261115-008 Long context is not agent memory]] | The Claim says long context does not replace memory for selective retrieval over long histories. C3 states that one long document is handled in a single pass. C15 shows that the same author tells users to restart and re-paste context. These are different tasks (reading one document against keeping memory across steps). The guide gives no test of either. I rate this as scope only. No change is needed. |
| A7 | C7 | extends | [[CON-20261113-004 Set up an AI-maintained wiki]] | The concept's caveat says the setup uses Claude Cowork (folder access, scheduled tasks) "as of 2026-06-25" and that the tools can have changed. C7 adds that, as of 2026-04-19, Cowork needs a paid plan and the desktop app (E7). The source's date is earlier than the Brain's, and plan rules can change after April 2026 (Brief §10). This is a product fact that is date-bound. The Brain records no Claim from product pages that change (see CON-20261115-007). |
| A8 | — | new-concept | [[CON-20261115-007 Claude Code instructions and memory]] | Brief §6 and §5 describe Skills as reusable prompts that run by name, and Cowork as Claude working for minutes to hours on a chosen folder. The Brain has no Concept for Skills or Cowork. CON-20261115-007 says that a multi-step procedure belongs in "a skill or path-scoped rule", so the term is used but not defined. The guide's definitions are for beginners and the "pros use Skills" claim has one demo (negotiation prep) and no test (Brief §10). Any Concept would be date-bound and the vendor's own docs would be a better base. |
| A9 | C2 | research-gap | [[Research Questions]] (row 1) and [[CON-20261115-006 Agent memory]] | C2 says Claude is trained to be helpful and agree with the user. The Brain's open question asks whether an AI-written knowledge base compounds its errors. The Agent memory concept names "self-reinforcing error" as the main risk of reflective memory. An agreeing model could make that risk bigger, because it may confirm what a note already says. That link is my inference. The guide does not make it, gives no evidence for C2 beyond the author's statement (E2), and does not test it. It is a point to check, not a finding. |
| A10 | C10, C8, C9 | new | — | The Brain has no Claim on the weak areas of the tool: confident wrong answers (C10), no knowledge of today's events (C8), and unreliable arithmetic (C9). Each can stand as its own Claim. All are the author's statements with no error rate and no test (E8 to E10). The Brief notes that C8 may not hold when Claude has web tools. C10 relates to [[CLM-20261115-006 Agent autonomy raises cost and error risk]] (compounding errors), but that Claim is about autonomous agents and the guide says nothing about agents. I do not link them as support. |
| A11 | C5, C6, C16, C17, C18, C19, C20 | new | — | Prices (C5), the advice to pay monthly (C6), tokens per page (C16), "Cowork does 80%" (C17), the superlative (C18), "98.75%" (C19), and the author's own endorsement (C20). I advise that none should become a Brain Claim. C5 and C6 are date-bound and promotional. C16 is a rough figure. C17 and C19 have no basis (Brief §4, §10). C18 and C20 are opinion by an author who sells a newsletter. C4 (voice experience) is also opinion with an April 2026 date. They are listed for completeness. |

### Recommended action

`investigate`.

Reason: The source adds no finding that is strong enough to change a Brain record. The only new area is prompt writing (A1). It rests on one promotional beginner guide, and it is guide 1 of 15, so other guides may give more or better evidence. The prompt rules should not become Claims on this source alone. C4 to C7 and C16 to C20 should not enter the Brain (A11). If the Orchestrator and Justin want a record, the least risky choice is one weak, low-confidence Claim set for A1 and A10 after more guides are read, with the caveats from Brief §10.

Question for `Research Questions.md`: Do the beginner prompting rules (be specific, give examples, state what you want, start short, restart a confused chat) improve Claude's output, and under what conditions?

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-16, as Rulebook §4.5 item 3 requires. **They differ on the recommended action.** The Editor says `investigate` (relevance `low`): add a question to Research Questions and change no Brain record. The Managing Editor proposes a Concept and a MOC. The Orchestrator does not choose between them (KS-D-54).

**They agree on:** no Claim from this source; none of the prices, plans, "80%", "98.75%", or endorsement items enter the Brain; the evidence is one promotional beginner guide (objectivity 2).

**They differ on:**
1. **A Concept of five prompting rules (X1).** The Managing Editor keeps the five rules in one Concept with caveats. The Editor says the rules rest on opinion from one guide (1 of 15) and advises waiting for more guides. If a record is wanted, it says the least risky choice is one `low`/`weak` Claim after more guides are read.
2. **A new MOC "Using Claude" (X2) and a line in MOC-20261115-002 (X3).** The Editor does not propose a MOC. The MOC would have one Concept. Justin kept a one-Concept MOC earlier (MOC-20261115-003), saying it "will get built out".
3. **Links to existing records.** The Editor lists links to Context engineering and to the long-context Claims (A2 to A6) and to the memory records (A8, A9). This Change Order has none of them.

**Options for Justin**
- **A.** Approve X1 to X3 as written (the Managing Editor's proposal). The records then exist for the guides that follow.
- **B.** Reject X1 to X3 and add the Editor's question to Research Questions. The Orchestrator adds the row and no Brain record is made. Later guides can start the Concept.
- **C.** Defer: keep the Change Order open until more of the 15 guides are read, then decide X1 to X3 together.
- **D.** Reject this Change Order.

**Dependencies:** CO-20261116-004 (Cowork setup) X2 and CO-20261116-005 (prompting preview) X1 and X2 edit or list the drafts of this Change Order. If A is not chosen, those rows are void or need a new draft.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Prompting rules in a Claude beginner guide | New Concept with the five rules and their limits |
| X2 | create | new: Using Claude | New small MOC that lists the Concept |
| X3 | relate | [[MOC-20261115-002 Building AI agents]] | Add one line under Related MOCs that links to the new MOC |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\UC Prompting rules in a Claude beginner guide.md`. Title: Prompting rules in a Claude beginner guide. Status `accepted` (Concept). No `confidence` or `evidence-strength` (Concepts carry neither). The Brain makes no Claim.
- Evidence: [[SRC-20261116-001 Claude for dummies, Hassid|Claude For Dummies]] · E11, E12, E13, E14, E15
- Reason: §1a A6 and A7. The rules are explicit in the source and fit Justin's use of Claude. They are opinion with no test, so a Concept with caveats is the lightest record that is honest. All five quotes were checked against the raw page.

### X2

- Current: none
- Proposed: Draft: `.staging\proposed\UC Using Claude.md`. Title: Using Claude. Status `active`. It lists the X1 Concept. The draft links to the Concept as `CON-DRAFT`. The Orchestrator replaces that with the real ID when it gives IDs.
- Evidence: [[SRC-20261116-001 Claude for dummies, Hassid|Claude For Dummies]] · E11 to E15, and Brief §10 for the source limits
- Reason: §1a A6. X1 needs a MOC link (Schema §5.11). No existing MOC fits: Building AI agents is about design, and Content for AI readers is about writing for AI readers. The MOC is small and limited to prompting and working with Claude, so later sources on that topic can use it. It does not cover plans, prices, or one author.

### X3

- Current: under Related MOCs, one line, the link to AI-maintained knowledge bases.
- Proposed: add the line "[[MOC-20261NEW Using Claude|Using Claude]]: working with Claude as a tool (prompting, chats). This MOC is about building agents. A link, not a dependency." (The Orchestrator sets the real ID.)
- Evidence: Brain record only.
- Reason: §1a A10. This makes the new MOC reachable from an existing MOC. The change is optional. Justin can approve X1 and X2 without it.

## 3. Impact

Direct:

- Two new Brain records: one Concept and one MOC.
- One existing MOC gets one new line (X3).
- No Claim is made or changed. No `confidence` or `evidence-strength` changes.

Possible:

- Later sources on prompting can add to the Concept or lead to Claims, if they give independent evidence.
- The Concept can show a rule that later sources contradict.

## 4. Risks and limits

- The source is one newsletter guide. Its author sells a paid newsletter and promotes his own guides (objectivity 2 of 5). No data supports any rule.
- Extraction is `partial`. The first-week exercises and the "how pros use Claude" section are not covered. The Brief gives no information on them.
- Product facts (prices, plan access, Cowork, Skills) are dated 2026-04-19 and are not kept in the Brain.
- Risk if no action is taken: low. The Brain loses a short note of the rules. The source stays in `22.21 Sources` and can be used later. "No Change" is also a valid choice for Justin.

## 5. Priority

`low`. Small scope (two new records, one line edited), no Claim, no urgency, and no cost from delay.

## 6. Decision required

Does Justin approve the Concept "Prompting rules in a Claude beginner guide" (X1) and the new MOC "Using Claude" (X2), with the link line in Building AI agents (X3)? The rows can be decided one by one. X2 needs X1. X3 needs X2.

## 7. Decision record

## 8. Implementation record
