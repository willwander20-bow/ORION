---
id: CO-20261115-005
type: change-order
title: "Obsidian Second Brain with Claude Code: agent-readable vault setup (Okhlopkov)"
status: applied
created: 2026-11-15T18:43
updated: 2026-11-15T18:49
created-by: managing-editor
schema-version: "0.11"
assessment: "[[KAS-20261115-001 Obsidian second brain with Claude Code]]"
source: "[[SRC-20261115-002 Obsidian second brain with Claude Code]]"
brain-version: CO-20261115-004
change-types:
  - add-evidence
  - qualify
  - refine
affected:
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision: approved
decided: 2026-11-15T18:49
decision-note: "1"
applied: 2026-11-15T18:49
brain-version-after: CO-20261115-005
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

One personal blog post (Okhlopkov, no date) describes a vault that Claude Code reads and writes. Its main points match what the Brain already holds from other sources: a central rules file, and raw notes that the AI does not edit. This Change Order adds that second description as evidence and caveat lines on three existing records. It adds no new record, because the source gives no data and its summaries are not checked against the page. No `confidence`, `evidence-strength`, or status changes.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | add-evidence | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add a caveat and a source line: a third source describes a rules file and unedited raw notes. |
| X2 | qualify | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add a caveat on layout: AI output beside raw notes, not in a separate wiki folder. |
| X3 | add-evidence | [[CON-20261115-001 Agent memory protocol for file-based memory]] | Add a caveat and a source line: same rule for raw input; a credentials rule. |
| X4 | add-evidence | [[MOC-20261113-002 AI-maintained knowledge bases]] | Add one evidence line for the new Brief. |
| X5 | refine | [[MOC-20261113-002 AI-maintained knowledge bases]] | Update the "Disputes and gaps" line on independent sources. |

### X1

- Current state: The Explanation of CON-004 has caveats on one source (Lipsky), the approval gate, the Wall write-boundary option, the pages, the clipped copy, and the tool date. Sources lists Lipsky BRF-20261113-010 and Wall BRF-20261115-002. It has no entry for BRF-20261115-001.
- Proposed state: Add this bullet to the Explanation caveats, after the Wall bullet: "A third source (Okhlopkov, BRF-20261115-001) is a first-person account of one vault that Claude Code reads and writes. Its `source-quality` is `low`. It has no date and no data. The author describes practices that match step 2 and step 4: a central rules file (`AGENTS.md`) that sets where raw input goes and which files are the source of truth, and a rule that an AI does not rewrite raw human notes. The author also says that the rules file must state where credentials must never be stored. The setup prompt in this process has no credential rule. The source gives no test. It shows that a second author describes the same practice. It does not show that the practice works. The Brain does not show that the two authors are independent of each other." Add to Sources: `- [[BRF-20261115-001 Obsidian second brain with Claude Code|Obsidian Second Brain with Claude Code (Okhlopkov, undated)]] · E4 · locator unavailable · rules-file contents; a WebFetch summary, not checked against the page · E6 · locator unavailable · raw input kept unedited; the quote was checked against the page`. Steps do not change. Add this Change Order to the `change-orders` list at apply time.
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E4, E6
- Reason: Assessment findings A1 and A2 (supports, weak). The Editor did not review the link between this row and the lines that CO-20261115-004 added to CON-004. This row adds a different caveat from the write-boundary caveat of CO-20261115-004 X4.

### X2

- Current state: Step 2 of CON-004 says that raw material goes in `sources`, is never edited, and is the source of truth, and that the AI's synthesis pages go in `wiki`. The record does not mention another layout.
- Proposed state: Add this bullet to the Explanation caveats: "Layout option: this setup keeps the AI's pages in a separate `wiki` folder, apart from `sources`. Another source (Okhlopkov, BRF-20261115-001) says that AI output is stored beside the raw notes, in an `ai-docs/` folder inside each project. Both layouts keep raw input unedited. Only the place of the AI output differs. The Brief saw no folder tree and gives no test of either layout. Step 2 does not change." Add to Sources: `- [[BRF-20261115-001 Obsidian second brain with Claude Code|Obsidian Second Brain with Claude Code (Okhlopkov, undated)]] · E3, E7 · locator unavailable · layout option; WebFetch summaries, not checked against the page`.
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E3, E7
- Reason: Assessment finding A3 (refines). This is a difference in layout, not a contradiction, so it is a qualification and the steps stay the same. The Editor did not review the link to the current state of CON-004.

### X3

- Current state: CON-20261115-001 has one source (Wall). Its caveats say: one source, nine rules by a WebFetch paraphrase with five listed, and the publisher sells a related product. Step 4 says "Do not silently rewrite decisions, sources, or personal facts." The Sources list has Wall only.
- Proposed state: Add this bullet to the Explanation caveats: "A second source (Okhlopkov, BRF-20261115-001, `source-quality: low`, no date, no data) states a rule that matches step 4 for raw input. The Brief quotes it: "Raw human input should not be rewritten just because an LLM wanted to be helpful." The same source says that a rules file must state where credentials must never be stored. This protocol has no credential rule, and this Change Order adds none as a step. Both are opinions with no test. The Brain does not show that the two authors are independent of each other." Add to Sources: `- [[BRF-20261115-001 Obsidian second brain with Claude Code|Obsidian Second Brain with Claude Code (Okhlopkov, undated)]] · E6 · locator unavailable · raw-input rule; the quote was checked against the page · E4 · locator unavailable · credentials rule; a WebFetch summary, not checked`. Steps do not change. Add this Change Order to `change-orders` at apply time.
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E6, E4
- Reason: Assessment findings A2 and A10 (credentials mistake). The Editor did not review this record, because CO-20261115-004 created it after the Assessment. The row adds a caveat and a source line only.

### X4

- Current state: The "Evidence for and against" list of MOC-002 has the Lipsky line and the Wall line. It has no entry for BRF-20261115-001.
- Proposed state: Add this line after the Wall line: `- Describes: [[BRF-20261115-001 Obsidian second brain with Claude Code|Obsidian Second Brain with Claude Code: My Agent-Readable Vault Setup (Okhlopkov, undated)]]. First-person account of one vault that Claude Code reads and writes, `source-quality: low`, no date, no data. It describes a central rules file (`AGENTS.md`), raw human notes that the AI does not edit, and AI output stored beside them. Three quotes were checked against the page. The other wording comes from WebFetch summaries.`
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E4, E6
- Reason: Assessment findings A1, A2, A11. The Editor did not review the link to the current state of MOC-002 (changed by CO-20261115-004).

### X5

- Current state: The first bullet of "Disputes and gaps" in MOC-002 reads: "One source, one creator, partly sponsored. A second source (Wall, BRF-20261115-002) is partly independent of the first on the map-first idea. It is opinion and partly promotional, so no source with data yet. The credit to Karpathy is secondhand."
- Proposed state: Replace the sentence "It is opinion and partly promotional, so no source with data yet." with: "It is opinion and partly promotional. A third source (Okhlopkov, BRF-20261115-001) is a first-person account of one vault, with `low` source quality, no date, and no data. The Brain does not show that the authors are independent of each other. No source with data or tests yet." The rest of the bullet and the other bullets stay. Do not change the open research questions.
- Evidence: [[BRF-20261115-001 Obsidian second brain with Claude Code]] · E4, E6
- Reason: Assessment finding A11 (research-gap). The new source does not close the gap on independent evidence with tests. The Editor did not review the link to the current text of MOC-002 (changed by CO-20261115-004 X12).

## 3. Impact

Direct:
- CON-004: two caveat bullets and two source lines. Definition and steps do not change.
- CON-20261115-001: one caveat bullet and one source line. Steps do not change.
- MOC-002: one evidence line and one changed sentence.
- The `change-orders` and `updated` fields of these three records get this Change Order at apply time (KS-D-03).
- No Claim changes. `confidence`, `evidence-strength`, and status do not change on any record.

Possible downstream:
- Possible: the Curator link check finds the new Brief link in the three records.
- Possible: a later source with tests could use X1 to X3 as the place to compare a rules-file claim. A link does not prove a dependency.

## 4. Risks and limits

- The source is a personal blog with `source-quality: low`. It has no date and no data. The author's interest is not stated. The Brief does not show that the setup works.
- Only the quotes E1, E5, and E6 were checked against the page. The Summary rows (E2, E3, E4, E7 to E10) come from a WebFetch summary and were not checked. All locators are `unavailable`. X1 to X4 use E3, E4, E6, and E7. The text of X1 to X3 says which evidence is unchecked. The credentials rule (E4) and the layout (E3, E7) carry this limit.
- The Editor did not see CO-20261115-004. Rows X1 to X5 touch records that it changed. The rows add caveats only and do not repeat its text. If Justin wants a full review, the Editor can re-run at CO-20261115-004.
- The Brain does not show that the three authors are independent of each other. Do not read agreement between them as proof.
- The page can contain text aimed at AI agents. The Reporter saw none. This proposal follows none.
- Findings with no row: A4 (GBrain is unclear), A5, A6, A7, A8, A9, and most of A10. The reasons are low value or an evidence limit.
- If no action is taken: the Brain stays correct. It lacks a second description of the rules-file practice, the layout option, and the credentials point. The gap line in MOC-002 stays accurate. A delay has no risk.

## 5. Priority

`low`. The source is weak. The change adds no strength to any Claim. The scope is three existing records with caveat and evidence lines. No Claim is wrong or disputed. A delay has no risk.

## 6. Decision required

Justin: approve, approve with changes, reject, or defer this Change Order?

You can decide each row on its own. These pairs go together:
- X4 with X5 (both change MOC-002 and name the same source).
- X1 with X2 (both change CON-004), if you want the caveats to stay consistent.

Question: do you want these caveat and evidence rows now, or do you prefer to wait for a source with data before you record this one?

## 7. Decision record

2026-11-15T18:49. Justin chose option 1 of 4: "1" (approve all five rows). Decision: `approved`. Rows X1 to X5, as written.

## 8. Implementation record

2026-11-15T18:49. The Orchestrator checked that `brain-version` (CO-20261115-004) matched the current Brain version before the change. Rows X1 to X5 applied as written. Files changed in `21 Brain`:

- CON-20261113-004: X1, X2 (two caveat bullets, two source lines).
- CON-20261115-001: X3 (one caveat bullet, one source line).
- MOC-20261113-002: X4 (evidence line), X5 (the "Disputes and gaps" sentence).
- `change-orders` and `updated` set on all three records.

Brain version after: CO-20261115-005.
