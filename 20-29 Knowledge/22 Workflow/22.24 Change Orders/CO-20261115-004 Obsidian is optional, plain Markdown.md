---
id: CO-20261115-004
type: change-order
title: "Obsidian Is Optional: plain Markdown second brain (Wall, 2026)"
status: applied
created: 2026-11-15T18:33
updated: 2026-11-15T18:40
created-by: managing-editor
schema-version: "0.11"
assessment: "[[KAS-20261115-002 Obsidian is optional, plain Markdown]]"
source: "[[SRC-20261115-001 Obsidian is optional, plain Markdown]]"
brain-version: CO-20261115-003
change-types:
  - create
  - add-evidence
  - qualify
  - relate
  - refine
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
  - "[[MOC-20261113-001 Note durability]]"
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision: approved
decided: 2026-11-15T18:39
decision-note: "1"
applied: 2026-11-15T18:40
brain-version-after: CO-20261115-004
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

One opinion article (Wall, 2026-08-29) agrees with the direction of the Brain's file-over-app claim. It also adds three things that the Brain does not hold: a search-first rule, a Git-backup statement, and a written agent memory protocol. It also gives a possible answer to the open approval gap in CON-004. This Change Order adds the evidence and one link-form condition to existing records. It adds three new low-confidence records (two Claims and one process Concept), with MOC links. No existing claim changes its status, `confidence`, or `evidence-strength`. The source is opinion with no data, and the publisher sells a related product.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | add-evidence | [[CLM-20261113-001 Lasting notes belong in open files]] | Add the supporting evidence rows E1 and E7 and a caveat line. Strength stays `weak`. |
| X2 | qualify | [[CLM-20261113-001 Lasting notes belong in open files]] | Add the source's link-form rule to the Markdown limit. |
| X3 | add-evidence | [[CON-20261113-003 AI-maintained wiki over files]] | Add a caveat and a source row: a second opinion source proposes a map file. |
| X4 | qualify | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add an alternative approval boundary to the approval-gate caveat. |
| X5 | create | new: Search first, index later | New Claim, `low` and `weak`. |
| X6 | create | new: Git alone is not a full backup | New Claim, `low` and `weak`. |
| X7 | create | new: Agent memory protocol for file-based memory | New process Concept. |
| X8 | relate | [[MOC-20261113-002 AI-maintained knowledge bases]] | Link X5 and X7. |
| X9 | relate | [[MOC-20261113-001 Note durability]] | Link X6. |
| X10 | add-evidence | [[MOC-20261113-001 Note durability]] | Add one evidence line and update the evidence summary of CLM-001. |
| X11 | add-evidence | [[MOC-20261113-002 AI-maintained knowledge bases]] | Add one evidence line. |
| X12 | refine | [[MOC-20261113-002 AI-maintained knowledge bases]] | Correct "No independent source yet" and add one gap line. |

### X1

- Current state: CLM-001 has `confidence: low` and `evidence-strength: weak`. Its Evidence section lists Ango, Sivers, NARA, LoC, and Bologov. It has no entry for BRF-20261115-002.
- Proposed state: Add these lines to the Evidence section of CLM-001. `confidence` and `evidence-strength` do not change.
  - `- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E1 · § Obsidian Is Optional: Build an AI Second Brain With Plain Markdown (opening section, before § What a second brain actually needs) · supports · a folder of plain Markdown files can provide the durable memory layer for a second brain; opinion, no data.`
  - `- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E7 · § The practical answer · supports · "The durable second brain is not the app"; a conclusion, not evidence.`
  - Add this bullet to Disputes and caveats: "Third opinion source (Wall, BRF-20261115-002, `source-quality: medium`). It agrees in direction. It does not argue from app obsolescence, and it is about AI second brains. The publisher sells a related product (Brief objectivity 2 of 5), so it is not independent of its own products. It gives no data. Confidence stays `low` and evidence strength stays `weak`."
  - Add this Change Order to the `change-orders` list at apply time.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E1, E7
- Reason: Assessment finding A1 (supports). Weak evidence from a partly promotional opinion source adds little strength, so the strength fields do not change.

### X2

- Current state: In "Context and conditions", the paragraph "Limit on 'readable'" says that Markdown has many platform-specific behaviors, so a Markdown note possibly does not read the same in each tool. It names no way to reduce this.
- Proposed state: Add this text at the end of the "Limit on 'readable'" paragraph: "One source proposes a way to reduce this limit: use standard relative Markdown links, not wikilinks, because they are more portable. It accepts wikilinks only if every reader supports them. It also puts YAML frontmatter with an `id` at the top of each note. This is a design opinion with no test or data on portability. It does not answer the Bologov qualification on notes with links and metadata. The two views differ in conditions: the source assumes a rule for link form, and Bologov argues about links and metadata in general." Add to Evidence: `- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E2 · § Use a portable note contract, § Prefer standard relative links · qualifies · standard relative links preferred for portability; no test.`
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E2
- Reason: Assessment finding A3. The text adds a condition and does not change the meaning of the claim. The Brief says that the heading names in the E2 locator differ slightly between the two fetches.

### X3

- Current state: CON-003 has one source (Lipsky), and its Explanation says that the AI builds and keeps the map. Its Sources list has no second source.
- Proposed state: Add this caveat bullet to the Explanation: "A second source (Wall, BRF-20261115-002, opinion, partly promotional) proposes a short map file (`memory/MEMORY.md`) that an agent reads before memory-dependent work. The map idea matches. In that source the map is part of a written protocol, and the Brief does not say who keeps it. It gives no test, so it does not support the stated reason above with data." Add to Sources: `- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E6 · § Give the agent a memory protocol · a map-first rule; opinion, no test`.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E6
- Reason: Assessment finding A2 (extends). The Brain definition of CON-003 does not change. The row adds only a caveat and a source line.

### X4

- Current state: The approval-gate caveat of CON-004 says that the written approval rule covers file moves, renames, and deletes only. No step asks for approval before the nightly task writes wiki pages.
- Proposed state: Add this bullet to the Explanation caveats: "Another source (Wall, BRF-20261115-002) proposes a different write boundary for an agent. It allows direct writes to an inbox and to working notes. It requires review for decisions and personal records. It requires inspection of broad rewrites, and it forbids silent rewrites of decisions, sources, or personal facts. This is a design opinion with no test. It shows an option for the gap above. It is no evidence of how a setup behaves, and it is not a step of this process." Add to Sources: `- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E6 · § Give the agent a memory protocol · write-boundary option; no test`. Steps do not change.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E6 (rule "do not silently rewrite decisions or personal facts"). The Brief §5 "Agent write boundary" has no E label. It comes from a WebFetch summary.
- Reason: Assessment finding A9. A difference in conditions, not a contradiction. It adds a caveat only.

### X5

- Current state: The Brain has no claim on search or index choice for a plain-file knowledge base.
- Proposed state: New Brain Claim. Title: "Search plain files first, then add indexes". Status `accepted`, `confidence: low`, `evidence-strength: weak`. Claim text: "For a knowledge base kept as plain Markdown files, start retrieval with plain-text search (for example `rg`) and frontmatter queries. Add a derived index (for example SQLite FTS5 or a vector index) only if search is slow or imprecise. Build each index so that it can be rebuilt from the Markdown files. Reason given by one source: an index that is corrupted, stale, or tied to a vendor is rebuilt, because the files stay the source of truth." Context: "One source, an opinion and design article. It gives no benchmarks and no vault size for 'slow'. The test of 'slow or imprecise' is not defined. The Brain has no test of this order." Evidence: E3 (Quote: "If an index is corrupted, stale, or tied to a vendor, you rebuild it."), E4. Concepts: link to CON-003. Relationships: relates to the open question in Research Questions row 2 (does not answer it). Source quality: Brief `medium`, objectivity 2 of 5. The Evidence summary in the new record must state that E4 is a WebFetch summary that was not checked against the page.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E3, E4
- Reason: Assessment finding A5 (new). The new Claim has `low` confidence and `weak` strength, as the Assessment requires.

### X6

- Current state: The Brain has no claim on backup or recovery. CLM-001 covers file formats, not recovery.
- Proposed state: New Brain Claim. Title: "Git history alone is not a full backup". Status `accepted`, `confidence: low`, `evidence-strength: weak`. Claim text: "Git history is possibly not a complete backup of a note collection. Keep Git history and a separate backup." Context: "One short statement from one opinion source. The article cites Obsidian's guidance that sync is not backup. The Brief did not check the reasons against the cited page. The Brief gives no information on which cases of loss or damage Git fails to cover. General advice." Evidence: E5 (Quote: "Git is not automatically a complete backup."). Relationships: related to CLM-001 (storage durability, not recovery). A link, not a dependency.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E5
- Reason: Assessment finding A7 (new). The wording "possibly" keeps the claim within the evidence.

### X7

- Current state: The Brain holds only a setup prompt for an AI-maintained wiki (CON-004). It holds no written protocol for an agent that reads and writes file-based memory.
- Proposed state: New Concept, `kind: process`, status `accepted`. Title: "Agent memory protocol for file-based memory". Definition: "A written set of rules that an agent follows when it reads or writes a file-based memory." Steps, from the source (only the rules that the Brief names in C5 and E6): (1) Read the memory map file before work that depends on memory. (2) Treat inbox and daily notes as unverified. (3) Cite the file path behind each durable claim. (4) Do not silently rewrite decisions, sources, or personal facts. (5) At the end of significant work, log decisions, open questions, and next steps. Caveats: "One source. The rules are the author's proposal. The article gives no test or case study. The Brief says that the source has nine rules. The count and the wording come from a WebFetch paraphrase, so only the five rules above are listed. The other four rules are not in the Brain. The publisher sells a related product." Related: CON-003, CON-004. Do not copy the source's instructions to AI agents.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E6
- Reason: Assessment finding A8 (new-process). The Concept lists no tested claim.

### X8

- Current state: MOC-002 "Important claims" says "None yet. One source states benefits (faster answers, breakthroughs), but gives no data. The Brain holds no claim on them." The "Processes and methods" list holds CON-004 only.
- Proposed state: Keep the "None yet" sentence for benefits. Add under "Important claims": `- [[<new ID> Search plain files first, then add indexes|Search plain files first, then add indexes]] (evidence `weak`, one opinion source, no benchmarks)`. Add under "Processes and methods": `- [[<new ID> Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]] (rules from one source; no test)`. The Orchestrator gives the IDs.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E3, E4, E6
- Reason: Each new record needs a MOC link (§5). Assessment findings A5, A8.

### X9

- Current state: MOC-001 has no record on backup or recovery.
- Proposed state: Add under "Important claims": `- [[<new ID> Git history alone is not a full backup|Git history alone is not a full backup]] (evidence `weak`, one short opinion statement; recovery, not format)`.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E5
- Reason: Each new record needs a MOC link. Assessment finding A7.

### X10

- Current state: The MOC-001 "Evidence for and against" list has no entry for BRF-20261115-002. The CLM-001 line in "Important claims" says "two opinion sources and one institutional source with indirect support".
- Proposed state: Add this line to "Evidence for and against" after the Sivers line: `- For: [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]]. Opinion and design article. It says that a folder of plain Markdown files can be the durable memory layer. It also proposes standard relative links for portability. No data. The publisher sells a related product.` Change "two opinion sources" in the Important claims line to "three opinion sources, one of them partly promotional". The rest of that line stays.
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E1, E2, E7
- Reason: Assessment findings A1 and A3. The summary change keeps the MOC consistent with X1. This row combines an evidence line (`add-evidence`) with a small text change to the summary line.

### X11

- Current state: MOC-002 "Evidence for and against" lists the Lipsky Brief only. "Against: none yet."
- Proposed state: Add this line after the Lipsky line: `- Describes: [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]]. Opinion and design article with a nine-rule agent memory protocol, `source-quality: medium`, objectivity 2 of 5. It proposes a map file, search first, and a write boundary for agents. The wording comes from WebFetch summaries. No test or data.`
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E4, E6
- Reason: Assessment findings A2, A5, A8, A9.

### X12

- Current state: MOC-002 "Disputes and gaps" says "One source, one creator, partly sponsored. No independent source yet." and "The written approval rule does not cover the nightly wiki writes. No source tests what an AI changes without approval in this setup."
- Proposed state: Replace "No independent source yet." with "A second source (Wall, BRF-20261115-002) is partly independent of the first on the map-first idea. It is opinion and partly promotional, so no source with data yet." Add after the approval sentence: "One source proposes a write boundary as an option (see CON-004). It gives no test." Do not change the open research questions. Row 2 of Research Questions stays open: the source gives a view and no test (Assessment A6).
- Evidence: [[BRF-20261115-002 Obsidian is optional, plain Markdown]] · E4, E6
- Reason: Assessment findings A2 and A9. Without the change, MOC-002 says "No independent source yet", which would conflict with X3.

## 3. Impact

Direct:
- CLM-001: 2 evidence rows, 1 caveat bullet, 1 sentence in the Markdown limit. `status`, `confidence`, and `evidence-strength` do not change.
- CON-003 and CON-004: one caveat and one source line each. Definitions and steps do not change.
- 2 new Claims and 1 new Concept, each with a MOC link. The MOC edits are in X8 to X12.
- The `change-orders` lists of all affected and new records get this Change Order at apply time (KS-D-03).

Possible downstream:
- Possible: the Curator link check finds the new links when it runs after apply.
- Possible: KAS-20261115-001 touches CON-003, CON-004, CON-001, and MOC-002. Its Change Order must start from the Brain version after this one.

## 4. Risks and limits

- The source is opinion and design advice with no data. The publisher sells Aident Loadout, and the article has a promotional section. The Brief rates objectivity 2 of 5. The Brain keeps `low` and `weak`.
- The Summary rows E2, E4, E6, and E8 come from WebFetch summaries and are not checked against the page. The Orchestrator checked only the quotes E1, E3, E5, E7, and E9, plus the author and the date. The wording of X2 to X7 is tied to the Brief, so it carries this limit. The nine-rule count is a paraphrase. X7 lists five rules.
- The page has text aimed at AI agents. The Reporter did not follow it, and this proposal does not use it. No row says that the source's product works.
- Findings with no row: A4 (the source's frontmatter at the top of a note partly counters the Bologov caveat on CON-002 step 2; the Assessment rates it weak and it adds no new fact, so a row has little value). A6 (no Change Order; the Orchestrator can add a note to row 2 of Research Questions). A10 (when to use Obsidian; the Assessment does not recommend it on its own). A11 (repeats C1; promotional).
- The Editor read no Change Orders, so the reasons behind earlier wording come from the Brain records only.
- If no action is taken: the Brain stays correct. It lacks a third opinion source, the link-form option, and the new topics (search, backup, agent protocol). The approval gap in CON-004 stays without an option. No harm results from a delay.

## 5. Priority

`low`. The source is weak and adds little strength to any claim. No claim is wrong or disputed. The scope is 5 existing records and 3 new records. A delay has no risk. X3, X11, and X12 should be applied together, because "No independent source yet" in MOC-002 depends on X3.

## 6. Decision required

Justin: approve, approve with changes, reject, or defer this Change Order?

The rows can be decided one by one, with these pairs:
- X5 with X8, X6 with X9, and X7 with X8: a new record needs its MOC row. If you reject a new record, reject its MOC row.
- X3 with X11 and X12.
- X1 with X10.

Questions:
1. Do you want the three new records (X5, X6, X7), or only the evidence and caveat rows (X1 to X4, X10 to X12)?
2. Is X7 (five rules out of the source's nine) acceptable, or do you want to wait for a source with a test?

## 7. Decision record

2026-11-15T18:39. Justin chose option 1 of 4: "1" (approve all 12 rows). Decision: `approved`. Rows X1 to X12, as written.

## 8. Implementation record

2026-11-15T18:40. The Orchestrator checked that `brain-version` (CO-20261115-003) matched the current Brain version before the change. Rows X1 to X12 applied as written. Files changed in `21 Brain`:

- CLM-20261113-001: X1, X2 (evidence lines E1, E7, E2; caveat bullet; link-form text in the Markdown limit). `confidence` and `evidence-strength` not changed.
- CON-20261113-003: X3. CON-20261113-004: X4.
- New records: CLM-20261115-001 Search plain files first, then add indexes (X5); CLM-20261115-002 Git history alone is not a full backup (X6); CON-20261115-001 Agent memory protocol for file-based memory (X7). All `accepted`, claims `low` and `weak`.
- MOC-20261113-002: X8, X11, X12. MOC-20261113-001: X9, X10.
- `change-orders` and `updated` set on all eight records.

Brain version after: CO-20261115-004.
