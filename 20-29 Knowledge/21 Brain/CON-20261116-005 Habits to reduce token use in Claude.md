---
id: CON-20261116-005
type: concept
title: Habits to reduce token use in Claude
status: accepted
created: 2026-11-16T06:07
updated: 2026-11-16T06:07
created-by: managing-editor
schema-version: "0.13"
kind: process
related:
  - "[[CON-20261115-005 Context engineering]]"
  - "[[CON-20261116-002 Set up Claude Cowork with Skills and Projects]]"
  - "[[CON-20261115-007 Claude Code instructions and memory]]"
last-reviewed:
change-orders:
  - "[[CO-20261116-008 Stop hitting Claude usage limits, Hassid]]"
aliases:
  - Avoiding Claude usage limits
---

## Definition

One newsletter author's habits to cut token use in Claude and to hit usage limits less often. The central idea is that Claude reads the whole conversation again with each message, so long chats and many messages cost more. The habits are the author's advice and practice. The article gives no test of them.

## Explanation

The terms are the author's own (SRC-20261116-015). The Orchestrator checked the quotes below against the page on 2026-11-16.

Mechanism: "Claude re-reads your entire conversation from the top." (E1) The author draws these links: "Three separate prompts = three full context reloads." (E10)

Habits that the Brief reports:

- Keep chats short. "Summarize and start fresh every 15-20 messages." (E12) The threshold is the author's choice.
- Cut input size. "Before uploading, extract the text." (E11) The author also says that a tight image crop saves many tokens. The Brief gives that as a summary with no figure kept here.
- Keep each About Me file small: "Keep your ABOUT ME files under 2,000 words each." (E13) This is personal practice.
- Batch tasks, edit the earlier message in place of a follow-up, and ask for changes to one section only (habits 5, 6, 8; summaries).
- Match the model to the task: "Use Sonnet or Haiku for simple tasks. Save Opus for deep work." (E5) The article shows no comparison data.
- Turn off unused features: "Web search, connectors, and “Explore” mode all add tokens to every response." (E8) The article gives no measure.
- Put recurring files in a Project: "Upload the file once. It gets cached (= saved)." (E9) The caching rules are not documented in the source.
- Keep prompt structure stable, because the author reports that similar prompts are partly cached (E6). The author says that Anthropic confirmed this. The Brief shows no link to an Anthropic source.
- Put permanent context in CLAUDE.md: "Skills load on demand. CLAUDE.md loads every single time." (E7)
- The author says that usage limits use a rolling 5-hour window (E2), so work can be spread over the day.

Caveats:

- One source. The author is a newsletter writer who promotes a newsletter and a prompt library (objectivity 2 of 5, Brief §11). The source quality is `medium`.
- The article gives no method for its figures. The Brain keeps none of them: the 98.5% share, the 105,000-token session, and the image-crop figure.
- Plan names, plan prices, the 5-hour window, and product features are the author's statements, dated 2026-04-12. They change fast. The Brain does not keep them as facts.
- Most habits are opinion or personal practice. The Brief gives no information on the size of the saving from any habit.
- Extraction is `partial`. The Brief did not cover each habit in detail.
- The Brain makes no Claim from this advice.

## Steps

None. The Brief lists habits, not a fixed order.

## Related claims

- [[CLM-20261115-007 Longer context can lower model performance|Longer context can lower model performance]]: a different effect (performance, from the vendor), not cost. The article here is about token cost. The Brief gives no information on performance. A link, not a dependency.

## Related concepts

- [[CON-20261115-005 Context engineering|Context engineering]]: that source treats context as a finite resource to keep small. This article gives user habits with a cost view. A link, not a dependency.
- [[CON-20261116-002 Set up Claude Cowork with Skills and Projects|Set up Claude Cowork with Skills and Projects]]: the same author also says that long threads cost more tokens, and he advises Skills and Projects. The two sources do not conflict. A link, not a dependency.
- [[CON-20261115-007 Claude Code instructions and memory|Claude Code instructions and memory]]: the vendor documentation describes how CLAUDE.md loads into context. This article only advises using CLAUDE.md for permanent context. A link, not a dependency.

## Sources

- [[SRC-20261116-015 Stop hitting Claude usage limits, Hassid|How to stop hitting Claude usage limits (Hassid, 2026-04-12)]] · E1, E2, E5, E6, E7, E8, E9, E10, E11, E12, E13 · quotes checked against the page on 2026-11-16
