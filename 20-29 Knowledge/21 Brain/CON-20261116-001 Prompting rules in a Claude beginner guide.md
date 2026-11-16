---
id: CON-20261116-001
type: concept
title: Prompting rules in a Claude beginner guide
status: accepted
created: 2026-11-16T05:45
updated: 2026-11-16T06:11
created-by: managing-editor
schema-version: "0.13"
kind: concept
related:
  - "[[CON-20261115-005 Context engineering]]"
last-reviewed:
change-orders:
  - "[[CO-20261116-003 Claude for dummies, Hassid]]"
  - "[[CO-20261116-005 Prompt engineering 101, Hassid]]"
  - "[[CO-20261116-009 Follow-up caveats and links for the Hassid Claude Concepts]]"
aliases:
  - Five prompting rules for Claude
---

## Definition

In one free beginner guide by a newsletter author, five rules for writing prompts to Claude: be specific, give examples, say what you want and not what you do not want, start short and add detail, and start a new chat when Claude gets confused. The rules are the author's advice. The guide gives no test of them.

## Explanation

The terms are the author's own (SRC-20261116-001). The quotes below were checked against the page.

1. Be specific: "The more specific your input, the more specific the output." (E11)
2. Give examples: the author calls this "the single best thing you can do." (E12; opinion, no comparison data)
3. Say what you want: the author says it is "always more effective than telling it what to avoid." (E13; "always" is a strong word, with no data)
4. Start short, add detail in follow-ups: "Start with 2 sentences." (E14)
5. If Claude gets confused, "open a fresh chat and paste in the key context." (E15) The Brief notes that the page links the cause to the context window.

Caveats:

- Two sources by one author. The author sells a paid newsletter and promotes his own guides (Brief §10). The source-quality score for objectivity is 2 of 5.
- The guide is for beginners and gives no data, no test, and no named study for any rule.
- The Brief gives no information on whether the rules hold for all tasks or all Claude versions. The guide is dated 2026-04-19.
- Another guide by the same author ([[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101]], free preview of a paid post) says the opposite on rule 2: it says removing examples improved results and that a clear goal works better. It gives the study as 'EPFL/Apple/Mistral', with no title, link, or figures. The two guides do not agree on examples. The same preview adds, with unnamed studies, advice to avoid tag questions such as 'right?', to skip 'step by step', and to give about 3 rules at most.
- Rule 5 elsewhere (checked 2026-11-16): [[CON-20261116-004 Vibecoding with Claude Code]] advises a fresh chat for each task and to refer to files in place of pasting text (a refinement for a folder setup). [[CON-20261116-005 Habits to reduce token use in Claude]] gives a second reason (cost) and a trigger (summarize and start fresh every 15 to 20 messages). The same author gives all three. This is not independent support. The 15 to 20 figure is his choice.
- The Brain makes no Claim from these rules. They are advice from one opinion source.

## Related claims

- None yet.

## Related concepts

- [[CON-20261115-005 Context engineering|Context engineering]]: rule 5 concerns a long chat that fills the context window. Context engineering covers what enters the context of an LLM. A link, not a dependency.
- [[CON-20261116-004 Vibecoding with Claude Code|Vibecoding with Claude Code]] and [[CON-20261116-005 Habits to reduce token use in Claude|Habits to reduce token use in Claude]]: both refine or extend rule 5. A link, not a dependency.

## Sources

- [[SRC-20261116-001 Claude for dummies, Hassid|Claude For Dummies (Hassid, 2026-04-19)]] · E11, E12, E13, E14, E15 · quotes checked against the page
- [[SRC-20261116-002 Prompt engineering 101, Hassid|Prompt Engineering 101 (Hassid, 2026-08-19, free preview of a paid post)]] · E1, E2, E4, E5 · access partial
