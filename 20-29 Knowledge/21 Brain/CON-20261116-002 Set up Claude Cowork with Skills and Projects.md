---
id: CON-20261116-002
type: concept
title: Set up Claude Cowork with Skills and Projects
status: accepted
created: 2026-11-16T05:48
updated: 2026-11-16T06:11
created-by: managing-editor
schema-version: "0.13"
kind: process
related:
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[CON-20261115-005 Context engineering]]"
last-reviewed:
change-orders:
  - "[[CO-20261116-004 I was wrong about Claude Cowork, Hassid]]"
  - "[[CO-20261116-009 Follow-up caveats and links for the Hassid Claude Concepts]]"
aliases:
  - Cowork setup, Skills and Projects
---

## Definition

One author's setup for Claude Cowork: use only two tools, Skills and Projects, keep settings few, and do not build folder and file systems. The author gave this advice on 2026-07-01 and says that his earlier advice was wrong. Cowork and its features change fast. Treat the steps as dated advice from one source, not as a test result.

## Explanation

The terms are the author's own (SRC-20261116-004). The quotes below were checked against the page.

Terms:

- Skill: "Skill = a capability you call." (E4)
- Project: "Project = a place you go to." (E4) The author says every chat in a Project has the context of that Project (E5).

Steps (from the author's 20-minute plan; the Brief did not capture the detail under each step):

1. Clear the settings. The author says too much context makes Claude go "into circles" (E8). He advises few settings and short global instructions.
2. Do not set up folders and files. The author says "Folders are leaking." and "Files are impossible to maintain." (E3) Opinion from personal use.
3. Build one Skill. If you have an "ABOUT ME" file, the author advises: "Keep it. But turn it into a skill:" (E19)
4. Create one Project for a client or a campaign.
5. Combine them. The author says: "Yes, you can use skills inside projects." (E6)

Prompting aids from the same page:

- The author calls the "AskUserQuestion" trick his number 1 trick and says it "will fix most of your prompt problems" (E9). It makes Claude ask structured questions before it works. "Most" is not measured.
- Onboarding prompt rule: "Never ask me a question before giving me a potential answer." (E10)
- Long threads: "Message 30 costs 31x more tokens than message 1." (E11) The author gives no calculation. The figure depends on the setup.

Caveats:

- One source. The author sells a paid newsletter, consulting, and workshops (objectivity 2 of 5; Brief §10). The author says that nobody pays him to write the post. This is a self-report.
- The page gives no test, no control, and no vendor documentation for the advice.
- The Brief gives no information on the "skill or project" test, the full onboarding prompt, or the file limit of Projects.
- Plans, prices, usage windows, and peak hours in the source are not kept here. They change fast and the Brief gives them as unchecked summaries.
- Folders (checked 2026-11-16): [[CON-20261116-004 Vibecoding with Claude Code]] advises one clean folder for Claude Code. Step 2 here advises against folder setups in Cowork. The two apply to different tools. They do not contradict. The same author gives both.
- Questions first (checked 2026-11-16): the interview-first prompt in [[CON-20261116-004 Vibecoding with Claude Code]] makes Claude ask questions before it builds. The onboarding rule here says "Never ask me a question before giving me a potential answer." The tasks differ (building an app, onboarding). The Brief gives no information on a test of either.
- About Me size (checked 2026-11-16): [[CON-20261116-005 Habits to reduce token use in Claude]] advises About Me files under 2,000 words (2026-04-12). Step 3 here turns an About Me file into a skill (2026-07-01). This is dated advice for different setups. It is not a contradiction. The author is promotional (objectivity 2 of 5), and the same author gives all of it.
- The Brain makes no Claim from this advice. It is opinion from one source, dated 2026-07-01.

## Related claims

- None yet.

## Related concepts

- [[CON-20261113-004 Set up an AI-maintained wiki|Set up an AI-maintained wiki]]: that setup also uses Claude Cowork, but with a folder of notes. This source advises against folder setups. The two sources differ in purpose (a notes wiki against general Cowork use). The Brief gives no information on the wiki method. A link, not a conflict.
- [[CON-20261115-005 Context engineering|Context engineering]]: the author's token and "too much context" remarks concern what enters the context of Claude. A link, not a dependency.

## Sources

- [[SRC-20261116-004 I was wrong about Claude Cowork, Hassid|I was wrong about Claude (Cowork setup) (Hassid, 2026-07-01)]] · E3, E4, E5, E6, E8, E9, E10, E11, E19 · quotes checked against the page
