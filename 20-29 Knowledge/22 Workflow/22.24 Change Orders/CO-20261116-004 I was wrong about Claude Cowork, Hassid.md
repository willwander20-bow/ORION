---
id: CO-20261116-004
type: change-order
title: Cowork setup with Skills and Projects, Hassid
status: applied
created: 2026-11-16T00:32
updated: 2026-11-16T05:49
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-004 I was wrong about Claude Cowork, Hassid]]"
brain-version: CO-20261116-003
change-types: [create, relate]
affected:
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
priority: low
decision: approved
decided: 2026-11-16T05:49
decision-note: "I approve. This new claim does not impact the brain. I agree with a flat structure for cowork"
applied: 2026-11-16T05:49
brain-version-after: CO-20261116-004
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The source [[SRC-20261116-004 I was wrong about Claude Cowork, Hassid|I was wrong about Claude (Cowork setup)]] is a free Cowork setup guide, dated 2026-07-01, by a newsletter author who sells consulting and workshops. Most of it is opinion, product facts that change fast (plans, prices, usage windows), or unchecked figures. This Change Order proposes one small process Concept with the author's Skills and Projects setup, marked as dated advice from one source, and one back-link from the existing wiki process. It makes no Claim. The source is the same author as SRC-20261116-001. CO-20261116-003 (open) makes the MOC "Using Claude". This Change Order depends on it.

## 1a. Brief against the Brain

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 | C1, C2: Cowork is many Claude; tasks of 30+ minutes | new | none | Product description from the author. Not recorded as a Claim. |
| A2 | C3: folders leak, files are hard to maintain | qualifies | [[CON-20261113-004 Set up an AI-maintained wiki]] | The wiki method keeps files and folders in Cowork. The author advises against folder setups, for general Cowork use. Opinion, no test. Noted as a link in the new Concept. No change to the wiki record. |
| A3 | C4, C5, C6, C19: Skill, Project, combine, ABOUT ME as skill | new | none | Setup advice from one source. Fits one small process Concept. Row X1. |
| A4 | C7, C8: limits; too much context | supports | [[CON-20261115-005 Context engineering]] | Opinion that matches the idea in the Brain only in direction. Link only. The auto-fire limit is unchecked and is left out. |
| A5 | C9, C10: AskUserQuestion; onboarding prompt | new | none | Prompting aids from one source. Included in X1 as aids with caveats. |
| A6 | C11, C12, C13: token cost, token habits, Sonnet savings | research-gap | [[CLM-20261115-007 Longer context can lower model performance]] | The 31x figure is the author's, with no method. The 30 to 70 percent figure is an unchecked summary. No Claim. Only the 31x quote appears in X1 as the author's figure. |
| A7 | C14: 5-hour window, peak hours | new | none | Date-bound product fact, partly an unchecked summary. Not kept. |
| A8 | C15: dictation | new | none | Tool advice with the author's numbers. No record. |
| A9 | C16, C17, C18: praise, "not paid", consulting offer | new | none | Opinion and sales text. Used only as caveats in X1. |

Threshold: yes. The Change Order makes a record. The Orchestrator runs the Editor on the same Brief and merges its second look as section 1b.

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: medium. Recommended action: advance. Brain version: CO-20261116-002.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C3 | qualifies | [[CON-20261113-004 Set up an AI-maintained wiki]] | The Brain process (steps 2 to 4) has Cowork organize raw material into `sources` and `wiki` folders, with a nightly task over the files. C3 says folders leak old outputs into context and files are hard to maintain, so he drops folder and file setups in Cowork. This is not a direct contradiction. The conditions differ: C3 is about the working context of Cowork chats and Projects, and the Brain process is a wiki that an AI keeps over a person's files. The Brief does not say which use the author means by "files". Evidence is one opinion from personal use, with no test (E3). It adds a caveat to a process that is itself one-source. |
| A2 | C3 | qualifies | [[CON-20261113-003 AI-maintained wiki over files]] | This concept lists the stated reason for a map and index over files (the AI need not re-read all files each session) as untested. C3 is a second untested opinion that points the other way for Cowork use. Neither side has data. Scope difference: a wiki index versus loose files in Cowork. |
| A3 | C8, C19 | supports | [[CLM-20261115-007 Longer context can lower model performance]] | C8 ("too much context makes Claude go in circles") matches the direction of the Brain claim that more context can lower performance. The match is only in effect. The author gives one personal case (E8), not studies, so this does not make the Claim much stronger. The Claim stays `weak`. |
| A4 | C8 | supports | [[CON-20261115-005 Context engineering]] | The principle in the Brain ("the smallest set of high-signal tokens") matches the advice for few settings and short global instructions. Also matches the instruction-length and conflict advice in [[CON-20261115-007 Claude Code instructions and memory]]. The two are different products and a different kind of source (vendor advice versus a practitioner). The match is in the advice, not in tested results. |
| A5 | C11, C12 | extends | [[CON-20261115-005 Context engineering]] | The Brain concept covers compaction (summarize and continue) and sub-agents as ways around context limits. C12 gives user-level habits for the same problem: restart instead of a follow-up, fresh session every 20 messages, batch tasks. It adds a cost view (history re-read at each message) that the concept does not have. The figures (31x, 98.5 percent) are tool summaries or unchecked, and the Brief shows no method (E11, E20). |
| A6 | C11 | new | — | The Brain has no claim on token cost of long conversations. CLM-005 and CLM-006 say agent autonomy raises cost, but that is a different cause. C11 can stand as its own Claim: in a long thread, history is re-read, so cost rises with each message. Evidence is one author, `medium` confidence in the Brief, figures unchecked. A Claim would be `low` confidence and `weak`, and should avoid the 31x figure. |
| A7 | C12, C13 | new | — | Model choice for cost (Sonnet or Haiku for simple tasks frees 30 to 70 percent of budget): no Brain record. C13 comes from a tool summary, with no method, `low` in the Brief. Not strong enough for a Claim by itself. |
| A8 | C4, C5, C6, C7 | new-concept | — | The Brain has no concept for Cowork Skills and Projects. The author defines a Skill as a capability you call and a Project as a place you go to, where each chat has the Project context. This is the author's framing and may not match vendor definitions (E4 limits). Related: [[CON-20261115-007 Claude Code instructions and memory]] says multi-step procedures belong in a skill, and describes CLAUDE.md as context, not enforcement. The Brief does not say if a Cowork Skill is the same thing as a Claude Code skill. Product facts dated Jul 2026. The auto-fire item (C7) is a tool paraphrase. |
| A9 | C19 | new-relationship | [[CON-20261115-007 Claude Code instructions and memory]] | Turning an "ABOUT ME" file into a skill matches the page advice to move procedures out of always-loaded files into a skill. The two differ: the author's file is a personal profile, and the page's advice is for multi-step procedures. The link is a possible one, from two different products. |
| A10 | C1, C2 | new-relationship | [[CON-20261115-003 Workflows and agents]] | C1 ("many Claude at once") and C2 (tasks of 30+ minutes) could relate to the sub-agent and orchestrator-workers patterns in the Brain. This is my inference. The author gives no technical description, and the Brief does not say that Cowork uses either pattern. Treat as a possible link only. Not a basis for a Claim. |
| A11 | C9, C10 | new-process | — | The AskUserQuestion trick and the onboarding prompt (ask many questions, never ask without a proposed answer) are a prompting method with no Brain record. Closest: the ground rule "when in doubt, ask a short question" in [[CON-20261113-004 Set up an AI-maintained wiki]], which is a lighter form. Evidence is a prompt rule with no result data (E9, E10). "Most prompt problems" is not measured. The method details were partly not captured (Brief §12). |
| A12 | C14, C15 | new | — | Rolling 5-hour usage window with weekday peak hours, and dictation speed (150 against about 60 words per minute). Product limits are volatile. Peak hours and the typing rate are tool summaries. Low value for the Brain. |
| A13 | C16, C17, C18 | new | — | Opinion and sales text ("best thing since ChatGPT", "nobody pays me", consulting offer). Not claims for the Brain. They are evidence of the author's incentive (objectivity 2). |
| A14 | C3, C4 | research-gap | [[CON-20261113-004 Set up an AI-maintained wiki]] | The Brain has no test of whether a folder-and-file setup or a Skills-and-Projects setup gives better results in Cowork. The source gives no test. Gap relates to the existing row on an AI-maintained wiki in [[Research Questions]] but is not the same question. |

### Recommended action

`advance`. Findings A1 and A2 (a caveat on CON-20261113-004 and CON-20261113-003: one source advises against folder and file setups in Cowork; scope differs) are possibly a reason to change the Brain. A5 and A6 (token cost of long threads) are a possible small extension of Context engineering and a possible low-confidence `weak` Claim. If advanced, keep every statement as the author's view, and leave out the unchecked figures (31x, 98.5 percent, 30 to 70 percent). A8 as a Concept is optional: the evidence is the author's framing only, and the details change with each product version. I do not recommend a Claim from A3, A4, A7, and A9 to A13. A3 and A4 can be a mention in the evidence list at most. A14 can be a row in `Research Questions.md`: "In Claude Cowork, does a setup with only Skills and Projects give better results than a setup with folders and files, shown by a test or a vendor source? (One author, no test, a commercial interest.)"

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-16, as Rulebook §4.5 item 3 requires. Both say `advance`. They agree on the action and differ in what to add. This Change Order depends on CO-20261116-003: X2 lists the new Concept in the MOC "Using Claude", which exists only as a draft there.

**They agree on:** a small, dated, caveated record; no Claim from the product setup details; the unchecked figures (31x, 98.5 percent, 30 to 70 percent, peak hours, 60 words per minute) stay out; no contradiction with a Brain record.

**They differ on:**
1. **The main finding (Editor A1, A2).** The author advises against folder and file setups in Cowork, because folders leak old outputs into context. The Brain wiki setup (CON-20261113-004) and its method (CON-20261113-003) rest on folders and files in Cowork. The Editor says this qualifies both and may justify a caveat. This Change Order adds only a link in CON-20261113-004 (X3) and no caveat. The Editor calls it a difference in scope, not a contradiction.
2. **Token cost of long threads (Editor A5, A6).** The Editor says this can extend Context engineering (CON-20261115-005) and can stand as a `low`/`weak` Claim. This Change Order makes neither.
3. **The Concept (X1).** The Editor calls the Concept on Skills and Projects optional: the evidence is the author's framing, and details change with each product version. The Managing Editor proposes it as a small process Concept.
4. **A prompting method (Editor A11).** The Editor lists the "ask me questions" trick as a possible Process. This Change Order has none.

**Options for Justin**
- **A.** Approve X1 to X3 as written (the Managing Editor's proposal), after CO-20261116-003.
- **B.** Approve X3 only (the link) and reject X1 and X2. No new record.
- **C.** Approve X1 to X3 and ask for one more row: a caveat on CON-20261113-004 and CON-20261113-003 for the Editor's A1 and A2. The Orchestrator asks the Managing Editor for a new draft.
- **D.** Reject this Change Order.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Set up Claude Cowork with Skills and Projects | New process Concept with the setup and its limits |
| X2 | relate | MOC "Using Claude" (new in CO-20261116-003 X2) | List the new Concept under Processes and methods |
| X3 | relate | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add one line under Related concepts that links to the new Concept |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\P4 Set up Claude Cowork with Skills and Projects.md`. Title: Set up Claude Cowork with Skills and Projects. Status `accepted` (Concept, `kind: process`). No `confidence` or `evidence-strength` (Concepts carry neither). The Brain makes no Claim. The text names the date 2026-07-01 and does not keep plans, prices, or peak hours.
- Evidence: [[SRC-20261116-004 I was wrong about Claude Cowork, Hassid|I was wrong about Claude (Cowork setup)]] · E3, E4, E5, E6, E8, E9, E10, E11, E19
- Reason: §1a A3, A5, A6. The steps are explicit in the source and fit Justin's use of Cowork. They are opinion with no test, so a small Concept with caveats is the lightest honest record. Each quote used was checked against the raw page. The 31x figure is given as the author's own.

### X2

- Current: none (the MOC does not exist yet; it is X2 of CO-20261116-003)
- Proposed: under "Processes and methods" of the MOC "Using Claude", replace "None yet." with: "[[CON-NEW Set up Claude Cowork with Skills and Projects|Set up Claude Cowork with Skills and Projects]] (one author's dated setup advice; no test)". The Orchestrator sets the real ID.
- Evidence: Brain record only.
- Reason: §1a A3. X1 needs a MOC link (Schema §5.11). If Justin does not approve X2 of CO-20261116-003, the MOC does not exist. Then the Orchestrator re-runs this row. The Editor did not review the link to a MOC that is not yet applied.

### X3

- Current: under Related concepts, no link to Cowork setup advice.
- Proposed: add the line "[[CON-NEW Set up Claude Cowork with Skills and Projects|Set up Claude Cowork with Skills and Projects]]: a general Cowork setup from another source. It advises against folder setups. A link, not a conflict." (The Orchestrator sets the real ID.)
- Evidence: [[SRC-20261116-004 I was wrong about Claude Cowork, Hassid|I was wrong about Claude (Cowork setup)]] · E3
- Reason: §1a A2. The wiki process uses Cowork with folders. A reader of one should see the other. The change is optional. Justin can approve X1 and X2 without it.

## 3. Impact

Direct:

- One new Concept.
- One MOC (not yet applied) gets one line (X2). One existing Concept gets one line (X3).
- No Claim is made or changed. No `confidence` or `evidence-strength` changes.

Possible:

- Later sources on Cowork can add to the Concept, or lead to Claims, if they give independent evidence.
- The Concept can show a step that later sources, or a newer Cowork version, contradict.

## 4. Risks and limits

- One source, from an author who sells consulting, workshops, and a paid newsletter (objectivity 2 of 5). No test supports any step.
- Extraction is `partial`. The "skill or project" test, the full onboarding prompt, and the 20-minute plan details were not captured. The Brief gives no information on them.
- The source says that its earlier advice was wrong. The advice can change again. Cowork features are dated 2026-07-01 and change fast.
- Some figures in the Brief are tool summaries and not checked (E13, E14 peak hours, E20, auto-fire in E7). They are not used.
- X2 depends on CO-20261116-003. X3 depends on X1.
- Risk if no action is taken: low. The Brain loses a short dated note of one setup. The source stays in `22.21 Sources`. "No Change" is also a valid choice for Justin.

## 5. Priority

`low`. Small scope (one new record, two one-line edits), no Claim, no urgency, and no cost from delay. The advice can age quickly.

## 6. Decision required

Does Justin approve the process Concept "Set up Claude Cowork with Skills and Projects" (X1), with its entry in the MOC "Using Claude" (X2) and the link line in "Set up an AI-maintained wiki" (X3)? The rows can be decided one by one. X2 needs X1 and the approval of X2 in CO-20261116-003. X3 needs X1.

## 7. Decision record

2026-11-16T05:49. Justin: "I approve. This new claim does not impact the brain. I agree with a flat structure for cowork". Decision: `approved`, all rows, as written (option A of the Orchestrator comparison, where one exists). Justin did not ask for the caveat that the Editor suggested (CO-004, finding A1): he agrees with a flat structure for Cowork.

## 8. Implementation record

2026-11-16T05:49. Rebased from CO-20261116-002 to CO-20261116-003 (Rulebook §6 step 3 exception, KS-D-54): this Change Order depends on CO-20261116-003, which made the MOC that X2 edits. The Orchestrator checked that the MOC section "Processes and methods" and its text "None yet." were present. X1: new CON-20261116-002 Set up Claude Cowork with Skills and Projects (moved from `.staging\proposed`). X2: one bullet in MOC-20261116-001 replaces "None yet." under Processes and methods. X3: one link line in CON-20261113-004. The row names the section "Related concepts", but that record has no such heading; its links to other Concepts are under "Related claims", so the line was added there (a difference from the row, recorded). `change-orders` and `updated` set on the changed records.

Brain version after: CO-20261116-004.
