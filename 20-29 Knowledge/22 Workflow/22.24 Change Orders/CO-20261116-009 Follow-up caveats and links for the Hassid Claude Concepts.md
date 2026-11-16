---
id: CO-20261116-009
type: change-order
title: Follow-up caveats and links for the Hassid Claude Concepts
status: open
created: 2026-11-16T06:09
created-by: managing-editor
updated: 2026-11-16T06:09
schema-version: "0.13"
assessment:
source: "[[SRC-20261116-014 Vibecoding with Claude Code, Hassid]]"
brain-version: CO-20261116-008
change-types: [qualify, relate]
affected:
  - "[[CON-20261116-002 Set up Claude Cowork with Skills and Projects]]"
  - "[[CON-20261116-001 Prompting rules in a Claude beginner guide]]"
  - "[[CON-20261116-004 Vibecoding with Claude Code]]"
  - "[[CON-20261116-005 Habits to reduce token use in Claude]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

Justin approved CO-20261116-007 and CO-20261116-008 and asked for the extra rows that the Editor found in their section 1b. This Change Order adds short dated caveats to two Concepts (CON-20261116-002 and CON-20261116-001) and the missing links in two new Concepts (CON-20261116-004 and CON-20261116-005). It cites [[SRC-20261116-014 Vibecoding with Claude Code, Hassid]] and [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid]]. The caveats show that the advice differs by tool, task, and date, and that the same author gives all of it. No Claim, no status change, no change to `confidence` or `evidence-strength`, no MOC change.

## 1a. Brief against the Brain

This is a follow-up. It uses the Editor findings in section 1b of CO-20261116-007 (014) and CO-20261116-008 (015). The Managing Editor checked each finding against the Brain records and the Brief quotes kept in them.

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| 014-A2 | C3 (one clean folder for Claude Code) | qualifies | CON-20261116-002 | Cowork advice against folders and Claude Code advice for one folder apply to different tools. Not a contradiction. |
| 014-A4 | C4 (interview-first prompt) | qualifies | CON-20261116-002 | Interview-first prompt and the rule "Never ask me a question before giving me a potential answer." suit different tasks. |
| 015-A8 | C12 (About Me files under 2,000 words) | qualifies | CON-20261116-002 | Step 3 (turn About Me into a skill) and the size limit are dated advice for different setups. |
| 014-A5 | C9 (fresh chat per task, refer to files) | qualifies | CON-20261116-001 | Rule 5 says "paste in the key context". The source says refer to files. A refinement for a folder setup. |
| 015-A3 | C11 (summarize and start fresh every 15-20 messages) | extends | CON-20261116-001 | Adds a second reason (cost) and a trigger. Same author, so not independent. |
| (links) | Related concepts | relate | CON-20261116-004, CON-20261116-005 | Links to CON-20261116-001 and CON-20261116-002 are missing (015: CO-008 point 3). |

Threshold: no. No record is made. No Claim, status, `confidence`, or `evidence-strength` changes. The Change Order edits 4 records (fewer than 5). The Editor second look (1b) is not needed. Justin chose these rows from the Editor findings.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | qualify | [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]] | Add 3 dated caveats (folders, interview-first prompt, About Me size). |
| X2 | qualify | [[CON-20261116-001 Prompting rules in a Claude beginner guide]] | Add 1 dated caveat on rule 5 and links to 004 and 005. |
| X3 | relate | [[CON-20261116-004 Vibecoding with Claude Code]] | Add links to 001 and 002 in Related concepts. |
| X4 | relate | [[CON-20261116-005 Habits to reduce token use in Claude]] | Add link to 001 in Related concepts. |

### X1

- Current: Caveats end with "- The Brain makes no Claim from this advice. It is opinion from one source, dated 2026-07-01."
- Proposed: Add these three bullets to Caveats, before that last bullet:
  - "Folders (checked 2026-11-16): [[CON-20261116-004 Vibecoding with Claude Code]] advises one clean folder for Claude Code. Step 2 here advises against folder setups in Cowork. The two apply to different tools. They do not contradict. The same author gives both."
  - "Questions first (checked 2026-11-16): the interview-first prompt in [[CON-20261116-004 Vibecoding with Claude Code]] makes Claude ask questions before it builds. The onboarding rule here says "Never ask me a question before giving me a potential answer." The tasks differ (building an app, onboarding). The Brief gives no information on a test of either."
  - "About Me size (checked 2026-11-16): [[CON-20261116-005 Habits to reduce token use in Claude]] advises About Me files under 2,000 words (2026-04-12). Step 3 here turns an About Me file into a skill (2026-07-01). This is dated advice for different setups. It is not a contradiction. The author is promotional (objectivity 2 of 5), and the same author gives all of it."
- Evidence: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid, 2026-06-17)]] · E3, E4 (through CON-20261116-004); [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|Usage limits (Hassid, 2026-04-12)]] · E13 (through CON-20261116-005); [[SRC-20261116-004 I was wrong about Claude Cowork, Hassid|Cowork setup]] · E3, E10, E19
- Reason: Editor 014-A2, 014-A4, 015-A8 (section 1b of CO-20261116-007 and CO-20261116-008). Justin asked for these rows.

### X2

- Current: Caveats end with "- The Brain makes no Claim from these rules. They are advice from one opinion source."
- Proposed: Add this bullet to Caveats, before that last bullet: "Rule 5 elsewhere (checked 2026-11-16): [[CON-20261116-004 Vibecoding with Claude Code]] advises a fresh chat for each task and to refer to files in place of pasting text (a refinement for a folder setup). [[CON-20261116-005 Habits to reduce token use in Claude]] gives a second reason (cost) and a trigger (summarize and start fresh every 15 to 20 messages). The same author gives all three. This is not independent support. The 15 to 20 figure is his choice."
  Add to Related concepts: "- [[CON-20261116-004 Vibecoding with Claude Code|Vibecoding with Claude Code]] and [[CON-20261116-005 Habits to reduce token use in Claude|Habits to reduce token use in Claude]]: both refine or extend rule 5. A link, not a dependency."
- Evidence: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid, 2026-06-17)]] · E8, E9; [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|Usage limits (Hassid, 2026-04-12)]] · E12 (each through the Brain record)
- Reason: Editor 014-A5 and 015-A3. Justin asked for a caveat or link.

### X3

- Current: Related concepts list [[CON-20261115-007 Claude Code instructions and memory]] and [[CON-20261115-005 Context engineering]]. No link to 001 or 002.
- Proposed: Add two lines to Related concepts:
  - "[[CON-20261116-001 Prompting rules in a Claude beginner guide|Prompting rules in a Claude beginner guide]]: step 5 (fresh chats per task, refer to files) refines rule 5 there (paste in the key context). The same author. A link, not a dependency."
  - "[[CON-20261116-002 Set up Claude Cowork with Skills and Projects|Set up Claude Cowork with Skills and Projects]]: the Cowork advice is against folder setups. Step 1 here is one clean folder for Claude Code. Different tools. The interview-first prompt (step 2) differs from the Cowork onboarding rule (different tasks). Not a contradiction. A link, not a dependency."
- Evidence: [[SRC-20261116-014 Vibecoding with Claude Code, Hassid|Vibecoding (Hassid, 2026-06-17)]] · E3, E4, E8, E9
- Reason: Editor 014-A2, 014-A4, 014-A5. Justin asked for the links.

### X4

- Current: Related concepts list [[CON-20261115-005 Context engineering]], [[CON-20261116-002 Set up Claude Cowork with Skills and Projects]], and [[CON-20261115-007 Claude Code instructions and memory]]. No link to 001.
- Proposed: Add one line to Related concepts: "[[CON-20261116-001 Prompting rules in a Claude beginner guide|Prompting rules in a Claude beginner guide]]: rule 5 there (fresh chat when Claude is confused) gets a second reason (cost) and a trigger (15 to 20 messages) here. The same author, so not independent. A link, not a dependency."
- Evidence: [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|Usage limits (Hassid, 2026-04-12)]] · E12
- Reason: Editor 015-A3 (CO-20261116-008 point 3: the Concept does not link CON-20261116-001). Justin asked for the link.

## 3. Impact

Direct:

- CON-20261116-002 and CON-20261116-001 get dated caveats. A reader sees that the advice differs by tool, task, and date.
- CON-20261116-004 and CON-20261116-005 link to the Concepts that they refine or extend.
- `updated` and `change-orders` change in the four records. The Orchestrator sets them at apply.

Possible:

- A later Curator link check finds fewer gaps between these four Concepts.

## 4. Risks and limits

- Risk if no action is taken: a reader sees "folders are leaking" in one Concept and "one clean folder" in another, with no note that the tools differ. A reader can take dated advice as a contradiction or as independent support.
- All the advice comes from one promotional author (objectivity 2 of 5). The Brief gives no information on a test of any item. The caveats do not add evidence. They show scope and date.
- The 2,000-word and 15 to 20 message figures are the author's choices. The caveats do not endorse them.
- This Change Order does not read the Source pages. The Brain records keep the checked quotes.

## 5. Priority

`low`. The change is small (4 records, text only). No Claim or rating changes. No deadline. The risk of delay is a confusing read of the Concepts, not a wrong Claim.

## 6. Decision required

Approve, change, or reject this Change Order. Justin can decide X1 to X4 one by one. Question: do you approve X1 to X4 as written?

## 7. Decision record

## 8. Implementation record
