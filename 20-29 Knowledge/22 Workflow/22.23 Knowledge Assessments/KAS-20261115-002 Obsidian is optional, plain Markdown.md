---
id: KAS-20261115-002
type: knowledge-assessment
title: "Obsidian Is Optional: Build an AI Second Brain With Plain Markdown"
status: validated
created: 2026-11-15T18:30
updated: 2026-11-15T18:30
created-by: editor
schema-version: "0.11"
source: "[[SRC-20261115-001 Obsidian is optional, plain Markdown]]"
brief: "[[BRF-20261115-002 Obsidian is optional, plain Markdown]]"
brain-version: CO-20261115-003
relevance: medium
recommended-action: advance
---

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
