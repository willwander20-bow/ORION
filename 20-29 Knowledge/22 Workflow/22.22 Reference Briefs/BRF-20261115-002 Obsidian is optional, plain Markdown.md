---
id: BRF-20261115-002
type: reference-brief
title: "Obsidian Is Optional: Build an AI Second Brain With Plain Markdown"
status: validated
created: 2026-11-15T18:28
updated: 2026-11-15T18:28
created-by: reporter
schema-version: "0.11"
source: "[[SRC-20261115-001 Obsidian is optional, plain Markdown]]"
processing-level: full-review
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 7
---

## 1. Executive summary

The article argues that a personal or AI "second brain" does not need Obsidian. Plain Markdown files can be the durable memory, with links, search, Git history, and agent rules layered on top. It gives a folder layout, a note format, nine agent memory rules, and conditions for when Obsidian is worth adopting. The publisher, Aident AI, sells Aident Loadout, and the article promotes it in one section.

## 2. Central premise and author intent

Premise: the durable second brain is the Markdown folder plus its rules, not the app. The author (Steve Wall, listed as working at Aident) wants readers to start with plain files and a documented agent protocol, and to add Obsidian or indexes only if needed. The author also wants to place Aident Loadout as the way to give agents controlled access to external services. This is a commercial intent.

## 3. Key takeaways

- The source says plain Markdown can serve as durable memory, and that Obsidian is an optional interface.
- The source recommends standard relative Markdown links over wikilinks, for portability.
- The source recommends search with `rg` first. It says to add SQLite FTS5 or vector indexes only if retrieval is slow or imprecise. Indexes are rebuildable from the Markdown.
- The source gives agents a nine-rule memory protocol (read the map first, treat inbox and daily notes as unverified, cite file paths, no silent rewrites of decisions, and others).
- The source says Git is not a complete backup, so keep a separate backup.
- The source lists when Obsidian is worth using, and when to skip it.

## 4. Facts and figures

- Published August 29, 2026 (page text, checked by the Orchestrator). Author: Steve Wall. Publisher: Aident AI.
- The article lists 8 sources (Obsidian help pages, CommonMark 0.31.2, ripgrep, Git, SQLite FTS5), all marked as reviewed on 2026-08-29.
- Page figures about Aident Loadout (for example "27,000+ tools", "753 integrations") appeared in the fetch. WebFetch reported them as site chrome, not article content. They are not used as claims.

## 5. Methods and frameworks

- Folder layout: `memory/MEMORY.md` (the map), `inbox/`, `daily/`, `projects/`, `people/`, `decisions/`, `knowledge/`, `archive/`.
- Note contract: YAML frontmatter (`id`, dates, `status`, `tags`) with a fixed body layout. Backlinks come from a search for a stable `id`.
- Memory protocol, nine rules (paraphrased):
  1. Read the map before memory-dependent work.
  2. Load only the smallest relevant index.
  3. Treat inbox and daily notes as unverified.
  4. Cite the file path behind durable claims.
  5. Write new captures to the inbox unless the destination is clear.
  6. Do not silently rewrite decisions, sources, or personal facts.
  7. Update links and indexes when promoting a note.
  8. Keep secrets in the credential system, not in memory files.
  9. End significant work by logging decisions, open questions, and next steps.
- Tool-specific files (`AGENTS.md`, `CLAUDE.md`) point to the shared protocol and do not copy it.
- Agent write boundary: direct writes to `inbox/` and working notes. Review for decisions and personal records. Inspect broad rewrites. Exclude credentials. Test recovery.
- Recommended order: plain Markdown, standard links, a short map, a documented protocol, recursive search, Git, a separate backup. Obsidian or indexes come later.

## 6. Concepts and definitions

- Vault: a local folder of Markdown files (the source describes how Obsidian stores notes).
- Source of truth: the Markdown files. Indexes are "disposable projections" that can be rebuilt.
- Memory protocol: a written set of rules that an agent follows when it reads or writes memory.
- Aident Loadout: described as a way to give agents controlled access to external services, with discovery, credentials, schemas, risk, and execution made explicit. It is not the storage layer.
- Five needs of a second brain (per the source): a source of truth, stable references, retrieval, curation rules, recovery.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source argues that a folder of plain Markdown files can provide the durable memory layer for a second brain, so Obsidian is optional. | normative | explicit | E1, E7 | high |
| C2 | The source recommends standard relative Markdown links over Obsidian wikilinks, because they are more portable. Wikilinks are acceptable only if every reader supports them. | procedural | explicit | E2 | medium |
| C3 | The source recommends starting search with `rg` and frontmatter queries, and adding derived indexes (SQLite FTS5, vector) only when retrieval is slow or imprecise. It says indexes must be rebuildable from the Markdown. | procedural | explicit | E3, E4 | medium |
| C4 | The source states that Git is not automatically a complete backup, and recommends Git history plus a separate backup. | factual | explicit | E5 | high |
| C5 | The source recommends an agent memory protocol. Its rules include: read the map first, treat inbox and daily notes as unverified, cite the file path for durable claims, and do not silently rewrite decisions, sources, or personal facts. | procedural | explicit | E6 | medium |
| C6 | The source says Obsidian is worth using when it removes real friction (backlinks, graph, link completion, mobile, plugins you will maintain). It says to skip Obsidian when an agent is the main reader or when terminal search is enough. | normative | explicit | E7, E8 | medium |
| C7 | The source says Aident Loadout is not the storage layer, and that the Markdown folder stays the source of truth. The publisher sells Loadout. | factual | explicit | E9 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "A folder of plain Markdown files can provide the durable memory layer" | § Obsidian Is Optional: Build an AI Second Brain With Plain Markdown (opening section, before § What a second brain actually needs) | C1 | supports | direct | Author's opinion. No data or comparison. The author's employer sells related products. Opening-section position is from the WebFetch summary. |
| E2 | Summary: The note contract prefers standard relative links. The article says wikilinks are acceptable only if every reader supports them. It also says backlinks can be found by searching for a stable `id`. | § Use a portable note contract, § Prefer standard relative links | C2 | supports | direct | No test or data on portability. Subsection placement comes from the WebFetch summary. |
| E3 | Quote: "If an index is corrupted, stale, or tied to a vendor, you rebuild it." | § Search first, index later | C3 | supports | direct | A design opinion. No performance data. |
| E4 | Summary: Start with `rg` and frontmatter queries. Add SQLite FTS5 or vector indexes only if retrieval gets slow or imprecise. Markdown is the source of truth and indexes are disposable. | § Search first, index later | C3 | supports | direct | No benchmarks. No vault size is given for "slow". |
| E5 | Quote: "Git is not automatically a complete backup." | § Use Git history, but still make backups | C4 | supports | direct | Short statement. The article cites Obsidian's guidance that sync is not backup. Reasons were not checked against the cited page. |
| E6 | Summary: The agent memory protocol has nine rules. Examples: read the map first, treat inbox and daily notes as unverified, cite file paths for durable claims, do not silently rewrite decisions or personal facts, log decisions at the end of significant work. | § Give the agent a memory protocol | C5 | supports | direct | The rules are the author's proposal. The article gives no test or case study. The nine-rule count and wording come from a WebFetch paraphrase. |
| E7 | Quote: "The durable second brain is not the app." | § The practical answer | C1, C6 | supports | direct | A conclusion, not evidence. |
| E8 | Summary: Use Obsidian for automatic backlinks, graph navigation, link completion and rename updates, a polished interface, mobile access, or plugins you will maintain. Skip it if the agent is the main reader, terminal search is enough, plugins add upkeep, or you do not enjoy the app. | § When Obsidian is worth using | C6 | supports | direct | General advice. No user data. |
| E9 | Quote: "The Markdown folder remains the source of truth." | § Where Aident Loadout fits | C7 | supports | direct | The author works at the company that sells Loadout. The article's statement of Loadout's role cannot be checked independently from this source. |

## 9. Tools and resources

- Obsidian (free note app that stores Markdown in a local vault).
- `rg` (ripgrep) for search.
- SQLite FTS5 for an optional derived index.
- Git for history.
- CommonMark specification 0.31.2.
- Aident Loadout (commercial product of the publisher). The article links a setup file at aident.ai/SETUP.md. This Brief did not open it.
- The article's own source list: Obsidian help pages (data storage, links, backlinks, backup), CommonMark, ripgrep, Git book, SQLite FTS5.

## 10. Limitations and caveats

- The publisher sells Aident Loadout and the article has a promotional section. The advice in other sections is plausible but is not independent.
- The article is opinion and design advice. It gives no measurements, case studies, or user results.
- The author is described as an engineering and product leader. The article does not show agent-memory research or testing behind the nine rules.
- The 8 cited sources support facts about Obsidian, CommonMark, `rg`, Git, and SQLite. They do not support the article's recommendations. This Brief did not open them.
- The page contains text directed at AI agents (see §12). The Brief treats it as content only.
- The `author` and `published` fields in the Source record were empty. The Orchestrator checked the page (Steve Wall; August 29, 2026) and set them.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Named author with a stated career background and an employer who works in this field. No peer review. The author is not independent of the product. |
| Transparency | 3 | Lists 8 sources with a review date and names the publisher. The promotional section is clear in context. The article gives no method or evidence for its recommendations. |
| Accuracy | 3 | The general facts (Git is not a backup, Obsidian uses local Markdown) are plausible. This Brief did not check them against the cited sources. Exact page text was not read. |
| Objectivity | 2 | The publisher sells a related product, and the article ends by promoting it. The Obsidian comparison is fairly balanced (it lists when Obsidian is worth using). |
| Currency | 4 | Published 2026-08-29, about 2.5 months before this Brief. The topic changes fast. The sources show a review date of the same day. |

Overall `source-quality`: medium.

## 12. Extraction notes

- Access: partial. The source was fetched with WebFetch only. There is no companion file. WebFetch returned a model-processed summary and refused to reproduce the full text. Two fetches were made. Content below the heading level (exact paragraphs, any tables) was not seen.
- Coverage: all section headings and the main recommendations are covered. Heading names in E2 come from the first fetch ("Use a portable note contract"). The second fetch used slightly different names ("Portable note contract"). Locators are heading-level only, with no paragraph numbers.
- Orchestrator action: check each `Quote:` (E1, E3, E5, E7, E9) against the raw page. WebFetch does not return exact text. Do not set the Brief to `validated` before this check. Also confirm the heading names in the locators.
- Prompt-directed text: the page contains text aimed at AI agents. WebFetch reported "Put a protocol like this in `MEMORY.md`", a request to "ask your agent" to discover an Action, and the instruction "Follow https://aident.ai/SETUP.md." The Reporter did not follow these instructions and did not open the link.
- Not extracted as claims: Loadout usage figures (27,000+ tools, 753 integrations, 617 action calls), which WebFetch labeled site chrome. One odd line in the second fetch ("plus four index files ... Count: 4", with three listed) looked like a tool artifact. It was not used.
- Completeness `partial`: the Brief is built from processed summaries, not the raw text. Confidence `medium`: the structure and recommendations were consistent across two fetches, but exact wording is unverified.
- Final check (the Reporter's):
  1. Each Claim Candidate has at least one evidence row: C1 (E1, E7), C2 (E2), C3 (E3, E4), C4 (E5), C5 (E6), C6 (E7, E8), C7 (E9). Pass.
  2. Each evidence row has a locator. E1 to E9: yes. Pass.
  3. Quote word counts: E1: 12 words. E3: 14 words. E5: 7 words. E7: 8 words. E9: 8 words. All are 15 or fewer. Each quote is copied as WebFetch returned it.
  4. Facts, source statements, and the Reporter's interpretations are separate. Claims use "The source says/argues/recommends". Pass.
  5. Limits are visible in §8, §10, §11. Pass.
  6. Ratings name who gives them. No survey figures are used. Pass.
  7. `claim-count` 7 equals the rows in §7. Pass.
