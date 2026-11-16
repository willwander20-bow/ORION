---
id: SRC-20261115-001
type: source
title: "Obsidian Is Optional: Build an AI Second Brain With Plain Markdown"
status: done
created: 2026-11-15T18:25
updated: 2026-11-15T20:00
created-by: orchestrator
schema-version: "0.11"
url: https://aident.ai/blog/second-brain-without-obsidian-plain-markdown
source-type: article
author: Steve Wall
publisher: Aident.ai
published: 2026-08-29
captured: 2026-11-15T18:25
language: en
access-status: partial
text-file:
processing-level: full-review
submission-context: "find a source related to second brains, obsidian, or Claude"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 7
---

# Notes

Phase 7 test D1 to D4 (Knowledge HQ). Found by the Orchestrator with a web search at Justin's request. Candidate A of two. Justin: "Do both".

# Reference Brief

Migrated from BRF-20261115-002.

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

# Assessment (migrated)

Migrated from KAS-20261115-002. Relevance: medium. Recommended action: advance. Brain version when it was made: CO-20261115-003.

## 1. Summary of relevance

The source is an opinion and design article from a vendor-affiliated author. It argues that plain Markdown files, not Obsidian, are the durable layer of a second brain. It repeats the direction of the Brain's file-over-app claim, which has weak evidence. It also adds material that the Brain does not hold: a nine-rule agent memory protocol, a "search first, index later" rule, a "Git is not a full backup" statement, and a standard-links rule that bears on an existing qualification. The evidence is weak (opinion, no data, partly promotional), so the findings add little strength to existing claims.

## 2. Brain records reviewed

The whole Brain was read: 8 notes, and `21 Brain` has no other notes.

- [[CLM-20261113-001 Lasting notes belong in open files]]
- [[CON-20261113-001 File over app]]
- [[CON-20261113-002 Work with plain-text notes]]
- [[CON-20261113-003 AI-maintained wiki over files]]
- [[CON-20261113-004 Set up an AI-maintained wiki]]
- [[MOC-20261113-001 Note durability]]
- [[MOC-20261113-002 AI-maintained knowledge bases]]
- [[Research Questions]]

I did not read Change Orders, Briefs, or Assessments. I used only the Brain records and the Brief.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | C1 says a folder of plain Markdown files can be the durable memory layer, and the app is optional. This matches the first sentence of the Brain Claim: lasting notes belong in files the owner controls, in open formats. It also matches the principle in [[CON-20261113-001 File over app]]. The evidence is weak (E1, E7). It is an author opinion with no data or comparison, and the publisher sells related products. It adds a third opinion source that agrees, so it does not raise the claim's strength by much. Difference in scope: the source is about AI second brains, and the Brain Claim is about notes meant to last. The source does not argue from app obsolescence. |
| A2 | C1, C5 | extends | [[CON-20261113-003 AI-maintained wiki over files]] | CON-003 holds a method from one source (Lipsky): an AI keeps an `index.md` as a map over plain files. The Brief's source (§5, C5) independently proposes a short map (`MEMORY.md`) that the agent reads first, with the smallest relevant index loaded after it. The two match on the map-first idea. They differ in who writes the map. In CON-003 the AI builds it. In this source the map is part of a written protocol, and the Brief does not say who keeps it. The source gives no test, so it does not support CON-003's stated reason (the AI avoids rereading all files) with data. MOC-002 says "no independent source yet". This source is partly independent of Lipsky, but it is still opinion and partly promotional. |
| A3 | C2 | refines | [[CLM-20261113-001 Lasting notes belong in open files]] | The Brain Claim has two conditions that bear on this finding. First, a note with links and metadata possibly does not stay usable as plain text (Bologov, opinion). Second, Markdown has platform-specific behaviors. C2 (E2) recommends standard relative Markdown links over wikilinks, because they are more portable. It accepts wikilinks only if every reader supports them. It also uses YAML frontmatter with an `id`. So the source gives a possible way to keep links portable. It is not a contradiction of Bologov. It differs in conditions: the source assumes the CommonMark standard and a rule for link form, and Bologov argues about metadata and links in general. No source tests either view. The evidence is a design opinion with no data on portability (E2 limits). |
| A4 | C2 | supports | [[CON-20261113-002 Work with plain-text notes]] | Step 2 of CON-002 puts a few metadata lines at the top of each file and reads them with a small script. The source's note contract (E2) puts YAML frontmatter (`id`, dates, `status`, `tags`) at the top and finds backlinks by searching for a stable `id`. The two match on metadata at the top of the file. They differ in how it is read: by a script in CON-002, by `rg` search in the source. This is a partial counterpoint to the Bologov caveat on step 2 in the same record: this source treats such metadata as normal, and gives no data. Evidence is weak. |
| A5 | C3 | new | — | C3 says to start search with `rg` and frontmatter queries. Add derived indexes (SQLite FTS5, vector) only if retrieval is slow or imprecise. Indexes must be rebuildable from the Markdown. The Brain has no claim on search or index choice for a plain-file knowledge base. The statement can stand as its own Brain Claim, with the source's limits: a design opinion, no benchmarks, and no vault size given for "slow" (E3, E4). |
| A6 | C3 | research-gap | [[Research Questions]] | Row 2 of Research Questions asks if an AI-maintained index and wiki makes AI answers faster or better than reading raw files, and under what conditions. C3 gives a view on that question: use plain search first, and add an index only when search is slow or imprecise. It gives no test or number, so it does not answer the question. It adds one condition to check ("slow or imprecise"). This connects to [[MOC-20261113-002 AI-maintained knowledge bases]] (open question 2). |
| A7 | C4 | new | — | C4: Git is not automatically a complete backup, so keep Git history plus a separate backup (E5, direct quote, short). The Brain has no claim on backup or recovery. The statement can stand as its own Brain Claim. Limits: a short statement, the reasons were not checked against the Obsidian page that the article cites, and it is general advice. The Brain claim on durability covers file formats, not recovery. |
| A8 | C5 | new-process | — | C5 and §5 of the Brief give a written memory protocol with nine rules for an agent that reads and writes a file-based memory (map first, inbox and daily notes unverified, cite file paths, no silent rewrites of decisions, log at the end of work). The Brain holds only a setup prompt for an AI-maintained wiki (CON-004), not a protocol of this kind. The rules are the author's proposal with no test or case study (E6). The nine-rule count and wording come from a WebFetch paraphrase, so only the rules named in C5 should be relied on. |
| A9 | C5 | qualifies | [[CON-20261113-004 Set up an AI-maintained wiki]] | CON-004 has an approval rule for file moves, renames, and deletes only. Its caveat says that the nightly task writes wiki pages with no approval step, and MOC-002 lists this as an open gap. The source's agent write boundary (§5 Methods) allows direct writes to `inbox/` and working notes. It requires review for decisions and personal records, inspection of broad rewrites, and no silent rewrites of decisions or sources. This is a difference in conditions, not a contradiction. The source separates what an agent may write directly from what needs review, which CON-004 does not. It is an option for the gap, not evidence about how a setup behaves. No test. |
| A10 | C6 | new | — | C6: Obsidian is worth using when it removes real friction (backlinks, graph, link completion, mobile, plugins that you will maintain). Skip it when an agent is the main reader or terminal search is enough (E7, E8). The Brain has no claim on when to use an app. It does not contradict the file-over-app principle, because that principle is about where the files live. General advice with no user data. The author's employer is not Obsidian, so this is more balanced than Ango on this point, but the source is not independent of its own product. |
| A11 | C7 | new | — | C7: Aident Loadout is not the storage layer, and the Markdown folder stays the source of truth. The statement repeats C1. The rest is the publisher's description of its own product (E9, medium confidence, cannot be checked from this source). It adds nothing for the Brain beyond A1. I list it for completeness. I do not recommend a Brain Claim. |

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 3 | A1 and A11 repeat the Brain. A5, A7, A8, and A10 are not in the Brain (search choice, backup, agent protocol, when to use an app). A3 and A9 add conditions to existing records. |
| Significance | 2 | The evidence is opinion with no data, and part of it is promotional. It does not change the strength of any Brain Claim by much. |
| Applicability | 3 | The Brain is ORION's own knowledge base, which is a Markdown vault with agent rules. A5, A8, and A9 bear on how that kind of setup works. The source is generic and does not test anything. |
| Relevance to the Brain | 4 | It matches CLM-001, CON-001 to CON-004, and both MOCs, and gives a view on open question 2 in Research Questions. |

## 5. Recommended action

advance.

Reason: several findings are possibly reasons to change the Brain, but each one has weak evidence. The Managing Editor must keep the weak strength.

- A3 (refines CLM-001): adds a condition on link form to the existing qualification. It is the strongest reason to change an existing record.
- A8 (new-process) and A9 (qualifies CON-004): the Brain has no agent memory protocol, and the CON-004 approval gap has no counterpoint yet.
- A5 and A7 (new): the Brain has no claims on search choice or backup. Both are short design opinions.
- A1, A2, and A4 (supports, extends): possible added evidence rows only. They do not change the strength of any record. The Managing Editor can decide to add them as evidence or not at all.
- A6 needs no Change Order. It links to open question 2 in Research Questions. The Orchestrator can add a note on the row if Justin wants.
- A10 and A11 are not recommended for a Brain change on their own. A10 is optional. A11 repeats C1 and is promotional.

If Justin prefers to wait for a source with data, `investigate` is the alternative. The question would be: does a plain-file agent memory with a written protocol and search-first retrieval work better than an index-based setup, and under what conditions?

## 6. Confidence and limits

- Confidence: medium. The Brief is built from WebFetch summaries (extraction-completeness `partial`, confidence `medium`). The Orchestrator checked the quotes before validating. The nine-rule wording is a paraphrase.
- The source is opinion and design advice. It has no data, case studies, or tests. The publisher sells a related product. The Brief rates objectivity 2 of 5. Findings that support Brain Claims do not raise their strength by much.
- The Brain context is complete for `21 Brain` (8 notes read). I did not read Change Orders, Briefs, or Assessments, so I do not know the reasons behind earlier Brain wording beyond what the records state.
- I did not use outside knowledge.
- Final check:
  1. Each finding has a Claim Candidate label, a type, and an explanation. Pass. C1 to C7 each have at least one row.
  2. Each finding of type supports, qualifies, refines, extends, or research-gap links to a Brain record. Pass.
  3. No finding is `contradicts`. A3 and A9 name the difference in conditions. Pass.
  4. §2 lists every Brain record that I read. Pass.
  5. `brain-version` is CO-20261115-003, the version from the Orchestrator. Pass.
  6. The recommended action has a reason. It is `advance`, so no question is required. I gave an optional `investigate` question for the case where Justin prefers to wait. Pass.
