---
id: CO-20261115-007
type: change-order
title: "Fix source counts and mark unchecked evidence (KHR-20261115-005 H1, H2)"
status: applied
created: 2026-11-15T18:57
updated: 2026-11-15T18:58
created-by: managing-editor
schema-version: "0.11"
assessment:
source:
brain-version: CO-20261115-006
change-types:
  - refine
affected:
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision: approved
decided: 2026-11-15T18:57
decision-note: "Approve all six"
applied: 2026-11-15T18:58
brain-version-after: CO-20261115-007
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

This Change Order comes from [[KHR-20261115-005 Impact review of CO-20261115-005]], findings H1 and H2 (approved by Justin). H1: "One source" stands next to "second source" and "third source" caveats in CON-20261113-004, CON-20261115-001 and MOC-20261113-002. X1, X4 and X6 say what each count covers: the setup prompt comes from one source, and the nine rules come from one source. H2: the caveat bullets state rules-file, credentials and `ai-docs/` content without the mark that it was not checked against the page. X2, X3 and X5 add a short mark inside each bullet. No claim, status or evidence value changes. The text does not say the sources are independent.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[CON-20261113-004 Set up an AI-maintained wiki]] | Replace "One source. Advice only, with no tests." with a count that names the prompt source and the other sources. (H1) |
| X2 | refine | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add two "not checked" marks in the "third source" bullet. (H2) |
| X3 | refine | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add one "not checked" mark in the "Layout option" bullet. (H2) |
| X4 | refine | [[CON-20261115-001 Agent memory protocol for file-based memory]] | Say that the nine rules come from one source (Wall), in lines 28 and 29. (H1) |
| X5 | refine | [[CON-20261115-001 Agent memory protocol for file-based memory]] | Add one "not checked" mark in the "second source" bullet. (H2) |
| X6 | refine | [[MOC-20261113-002 AI-maintained knowledge bases]] | Reword the process line for CON-001. (H1) |

### X1

- Current state: In "Explanation" of CON-004, the first caveat bullet starts: "- One source. Advice only, with no tests. The prompt text shows what the AI is told to do. ..."
- Proposed state: Replace only the first two sentences. New start of the bullet: "- The setup prompt comes from one source (Lipsky). Other sources, named below, describe similar practices. None gives a test. The prompt text shows what the AI is told to do. ..." The rest of the bullet is unchanged word for word. The Definition line ("from one source") stays. It is true for the prompt.
- Evidence: Brain record only. The Sources lines of CON-004 list BRF-20261113-010 (Lipsky), BRF-20261115-002 (Wall) and BRF-20261115-001 (Okhlopkov). Their caveat bullets state "no test" (Wall, Okhlopkov) and "no tests" (the prompt text).
- Reason: KHR-20261115-005 H1. The bullet says "One source" and the same list has a "third source" bullet. The new text limits "one source" to the prompt. It says only that the other sources give no test. It does not say they are independent.

### X2

- Current state: In CON-004 "Explanation", the "third source" bullet contains this text: "a central rules file (`AGENTS.md`) that sets where raw input goes and which files are the source of truth, and a rule that an AI does not rewrite raw human notes. The author also says that the rules file must state where credentials must never be stored."
- Proposed state: Make two insertions, and change nothing else in the bullet. (a) After "which files are the source of truth", insert " (from a WebFetch summary, not checked against the page)". The result reads: "...and which files are the source of truth (from a WebFetch summary, not checked against the page), and a rule that an AI does not rewrite raw human notes." (b) After "where credentials must never be stored", insert " (from the same WebFetch summary, not checked against the page)". The result reads: "...must state where credentials must never be stored (from the same WebFetch summary, not checked against the page)."
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E4. It is a summary, the locator is `unavailable`, and the Brief says: "The file text may or may not be shown on the page. I did not see it."
- Reason: KHR-20261115-005 H2. The Sources line of CON-004 already says "a WebFetch summary, not checked against the page". The Explanation bullet does not. The raw-notes rule is not marked, because its quote (E6) was checked against the page.

### X3

- Current state: In CON-004 "Explanation", the "Layout option" bullet contains: "Another source (Okhlopkov, BRF-20261115-001) says that AI output is stored beside the raw notes, in an `ai-docs/` folder inside each project."
- Proposed state: After "inside each project", insert " (from WebFetch summaries, not checked against the page)". The result reads: "...in an `ai-docs/` folder inside each project (from WebFetch summaries, not checked against the page). Both layouts keep ..." The rest is unchanged.
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E3, E7. Both are summaries with locator `unavailable`. E3 says "No folder tree seen."
- Reason: KHR-20261115-005 H2. The Sources line of CON-004 says "WebFetch summaries, not checked against the page" for E3 and E7. The bullet does not.

### X4

- Current state: In CON-001 "Explanation", line 28 reads: "The rules come from one source, as the Brief reports them. Caveats:". The first bullet reads: "- One source. The rules are the author's proposal. The article gives no test or case study."
- Proposed state: Line 28 becomes: "The nine rules come from one source (Wall), as the Brief reports them. Caveats:". The first bullet becomes: "- The nine rules are one author's proposal (Wall). The article gives no test or case study." Nothing else changes. The next bullet ("The Brief says that the source has nine rules...") and the "second source" bullet stay.
- Evidence: Brain record only. The record's own caveats and Sources line state that the nine rules come from Wall, and that Okhlopkov states a matching raw-input rule and a credentials rule.
- Reason: KHR-20261115-005 H1. "One source" and the "second source" bullet now read as a conflict. The new text keeps "one source" for the nine rules, which is true. The last bullet, unchanged, says that the Brain does not show that the authors are independent.

### X5

- Current state: In CON-001 "Explanation", the last bullet contains: "The same source says that a rules file must state where credentials must never be stored. This protocol has no credential rule, ..."
- Proposed state: After "where credentials must never be stored", insert " (from a WebFetch summary, not checked against the page)". The result reads: "...must state where credentials must never be stored (from a WebFetch summary, not checked against the page). This protocol has no credential rule, ..." The rest is unchanged. The quoted raw-input sentence is not marked. Its quote was checked.
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E4. It is a summary with locator `unavailable`.
- Reason: KHR-20261115-005 H2. The Sources line of CON-001 says "a WebFetch summary, not checked". The bullet does not.

### X6

- Current state: In MOC-002 "Processes and methods", the line reads: "- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]] (rules from one source; no test)".
- Proposed state: Replace only the bracket text. New line: "- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]] (the nine rules come from one source, Wall; a second source gives a matching raw-input rule and a credentials rule; no test)". The CON-004 line above it is unchanged. "Prompt text from one source" is true.
- Evidence: Brain record only. The text follows CON-20261115-001 as changed by X4 and X5.
- Reason: KHR-20261115-005 H1 (MOC-002 line for CON-001). The line says one source, and the same MOC lists Okhlopkov as a source for this record.

## 3. Impact

Direct effects:
- CON-004: the first caveat bullet, the "third source" bullet and the "Layout option" bullet change in wording only.
- CON-001: lines 28 and 29 and the last caveat bullet change in wording only.
- MOC-002: one line changes.
- No change to `status`, `confidence`, `evidence-strength`, claim text, steps or Sources lines.

Possible downstream effects:
- Possible: the Orchestrator sets `updated` and `change-orders` on the three records at apply.
- Possible: the `Link Check` result does not change. No link is added or removed.

## 4. Risks and limits

- Risk if no action is taken: a reader sees "one source" and "second source" in one record. A reader of the Explanation alone sees unchecked content as plain statements. The risk is small, because the Sources lines carry the marks.
- Limit: the Managing Editor did not read the Source pages. X2, X3 and X5 use the Brief's own limits (E3, E4 and E7 are summaries, `unavailable` locators).
- Limit: X1 and X4 say "one source" only for the prompt (Lipsky) and the nine rules (Wall). They do not say the sources are independent. The Brain does not show this.
- Limit: the Definition line of CON-004 ("from one source") and the first sentence of MOC-002 "Disputes and gaps" ("One source, one creator, partly sponsored. A second source ...") are not in the approved findings. They are not changed here. They are true, but a reader can take them as a total count.

## 5. Priority

`low`. Text clean-up in three records. Nothing in the content of any claim changes. Delay has little risk, because the information is in the same records.

## 6. Decision required

Justin: approve, change, or reject each row. The rows can be decided one by one.
- X1: replace the first two sentences of the first caveat bullet in CON-004?
- X2: add the two "not checked" marks to the "third source" bullet in CON-004?
- X3: add the "not checked" mark to the "Layout option" bullet in CON-004?
- X4: reword line 28 and the first bullet in CON-001?
- X5: add the "not checked" mark to the last bullet in CON-001?
- X6: reword the CON-001 line in MOC-002?

## 7. Decision record

2026-11-15T18:57. Justin: "Approve all six". Decision: `approved`. Rows X1 to X6, as written.

## 8. Implementation record

2026-11-15T18:58. The Orchestrator checked that `brain-version` (CO-20261115-006) matched the current Brain version before the change. Rows X1 to X6 applied as written. Files changed in `21 Brain`:

- CON-20261113-004: X1, X2, X3.
- CON-20261115-001: X4, X5.
- MOC-20261113-002: X6.
- `change-orders` and `updated` set on all three records.

Brain version after: CO-20261115-007.
