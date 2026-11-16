---
id: SRC-20261115-009
type: source
title: "LLM Wiki"
status: done
created: 2026-11-15T23:39
updated: 2026-11-15T23:58
created-by: orchestrator
schema-version: "0.13"
url: https://gist.github.com/karpathy/442a6bf555914893e9891c11519de94f
source-type: article
author: "karpathy (GitHub user; the page names Andrej Karpathy)"
publisher: GitHub Gist
published: 2026-04-04
captured: 2026-11-15T23:39
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "Chosen by the Orchestrator from the topics of the Brain. Justin approved the list of six with \"Go\" on 2026-11-15. Topic: AI-maintained knowledge bases"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-016 LLM Wiki, Karpathy]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 12
---

# Notes

Quote check ran against the raw gist file (`gist.githubusercontent.com/karpathy/442a6bf555914893e9891c11519de94f/raw`), not the gist page. Comments on the gist were not analyzed.

Overnight batch (6 sources, Justin's permission). Access check: `curl` returns 200 with page text. No Charter or Spectrum content expected.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The gist "LLM Wiki" describes a pattern for a personal knowledge base. An LLM agent builds and maintains a persistent, interlinked markdown wiki between the user and the raw sources. It does not retrieve chunks again at each query. The pattern has three layers (raw sources, wiki, schema), three operations (ingest, query, lint), and two navigation files (`index.md`, `log.md`). The author calls the text an abstract "idea file" that the reader gives to an LLM agent to build a concrete version.

## 2. Central premise and author intent

Premise: the work of keeping a knowledge base current is what makes people abandon it, and an LLM can do that work at near-zero cost. So knowledge should be compiled once into a maintained wiki, not rediscovered at each question. Intent: to share a pattern, not a product. The text is meant to be pasted into an agent (Claude Code, Codex, and others) that works out the details with the user. The author describes his own use with Obsidian. The source gives no test, data, or comparison with other methods.

## 3. Key takeaways

- A maintained wiki replaces query-time retrieval as the main way to keep knowledge (the author's proposal).
- Three layers: immutable raw sources, an LLM-owned wiki, and a schema file (for example CLAUDE.md or AGENTS.md).
- Three operations: ingest, query, lint. Good query answers are filed back into the wiki.
- `index.md` is a catalog that the LLM reads first. `log.md` is an append-only log with a parseable prefix.
- The human curates sources and asks questions. The LLM does the summarizing, linking, and filing.
- The design is abstract by design. Layout, formats, and tools depend on the domain.

## 4. Facts and figures

- The author says one ingested source may touch 10 to 15 pages.
- The author says the index approach works at moderate scale (about 100 sources, hundreds of pages) without embedding-based RAG. No measurement is given.
- Page metadata (WebFetch, not checked against the raw page): the gist file is `llm-wiki.md`; the owner is `karpathy`; creation date shown as April 4, 2026, 16:25; one revision; no separate updated date.

## 5. Methods and frameworks

- Ingest: the user adds a source. The LLM discusses takeaways, writes a summary page, updates the index, revises related entity and concept pages, and logs the change. The author prefers one source at a time with close involvement. Batch ingest is possible.
- Query: the LLM searches the wiki, reads pages, and answers with citations. Outputs can be a markdown page, table, Marp slides, a chart, or a canvas. Good answers go back into the wiki.
- Lint: a periodic check for contradictions, stale claims, orphan pages, missing concept pages, missing cross-references, and data gaps. The LLM can suggest new questions and sources.
- Logging: a consistent entry prefix so that `grep` and `tail` can parse the log.

## 6. Concepts and definitions

- Idea file: an abstract description that the user gives to an LLM agent to build a specific implementation.
- Raw sources: curated documents that the LLM reads and never edits. The source of truth.
- The wiki: LLM-generated markdown (summaries, entity and concept pages, comparisons, overview, synthesis). The LLM owns it.
- The schema: a configuration document that defines structure, conventions, and workflows.
- Compounding artifact: the author's term for a wiki in which cross-references and synthesis already exist, so each new source adds to it.
- Analogy used by the author: Obsidian is the IDE, the LLM is the programmer, the wiki is the codebase.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author argues that document tools that retrieve chunks at query time make the LLM rediscover knowledge from scratch at each question. | normative | explicit | E1 | high |
| C2 | The author proposes that an LLM builds and maintains a persistent, interlinked markdown wiki, and calls the wiki a compounding artifact. | normative | explicit | E2, E7 | high |
| C3 | The author describes a three-layer architecture: immutable raw sources, an LLM-owned wiki, and a schema document. | procedural | explicit | E8 | high |
| C4 | The author defines three operations: ingest, query, and lint. | procedural | explicit | E9 | high |
| C5 | The author says that good query answers should be filed back into the wiki. | procedural | explicit | E9 | high |
| C6 | The author says that one ingested source may touch 10 to 15 pages, and that he prefers to ingest one source at a time. | factual | explicit | E10 | high |
| C7 | The author says that an `index.md` catalog works at moderate scale (about 100 sources) without embedding-based RAG, and that `log.md` is an append-only log. | factual | explicit | E11 | medium |
| C8 | The author says that maintenance cost, not reading or thinking, makes wikis fail, and that an LLM makes that cost near zero. | causal | explicit | E3 | high |
| C9 | The author says the human curates sources, directs analysis, and asks questions, and the LLM does the rest. | normative | explicit | E12 | high |
| C10 | The author says the text is abstract by design and that layout, schema, and tooling depend on the domain. | factual | explicit | E5 | high |
| C11 | The author names optional tools: qmd search, Obsidian Web Clipper, Marp, Dataview, and Git. | factual | explicit | E13 | medium |
| C12 | The author says Vannevar Bush's Memex left maintenance unsolved. | factual | explicit | E4 | medium |

## 8. Evidence and locators

Quote word counts: E1 10, E2 7, E3 7, E4 10, E5 7, E6 12. All are 15 or fewer. Section and paragraph numbers come from the WebFetch result, not from a raw page count. Unchecked.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "the LLM is rediscovering knowledge from scratch on every question." | § The core idea, ¶1 | C1 | supports | direct | The author's view. No test or data. Named examples (NotebookLM, ChatGPT uploads) are not evaluated. |
| E2 | Quote: "the wiki is a persistent, compounding artifact." | § The core idea, ¶3 | C2 | supports | direct | Assertion. No evidence of results is given. |
| E3 | Quote: "the cost of maintenance is near zero." | § Why this works, ¶1 | C8 | supports | direct | Claim about LLM cost. No figures. Cost of tokens and of errors is not covered. |
| E4 | Quote: "The part he couldn't solve was who does the maintenance." | § Why this works, ¶3 | C12 | supports | direct | The author's reading of Bush's 1945 Memex. Not checked against Bush. |
| E5 | Quote: "Your LLM can figure out the rest." | § Note, ¶2 | C10 | supports | indirect | Summary of ¶1 of the same section: layout, schema, formats, and tools depend on the domain. |
| E6 | Quote: "it is designed to be copy pasted to your own LLM Agent" | § Intro, ¶2 | C2 | supports | indirect | Shows the intended use of the text. See §12 on text aimed at an AI. |
| E7 | Summary: The LLM reads new sources, extracts key facts, updates existing pages, and flags contradictions. Knowledge is compiled once and kept current. | § The core idea, ¶2 | C2 | supports | direct | Describes the design. No implementation or result. |
| E8 | Summary: Raw sources are immutable and are the source of truth. The wiki is LLM-generated markdown that the LLM owns. The schema (CLAUDE.md or AGENTS.md) sets structure, conventions, and workflows. | § Architecture, ¶1 to ¶3 | C3 | supports | direct | The author's own design. |
| E9 | Summary: Ingest processes a new source and updates pages and log. Query answers with citations, and good answers are filed back. Lint checks for contradictions, stale claims, orphans, missing pages and links, and data gaps. | § Operations, ¶1 to ¶3 | C4, C5 | supports | direct | No criteria for how lint decides a claim is stale or contradictory. |
| E10 | Summary: One source may touch 10 to 15 pages. The author prefers to ingest one source at a time, with close involvement. Batch ingest is possible. | § Operations, ¶1 (Ingest) | C6 | supports | direct | One author's experience. No sample size. |
| E11 | Summary: `index.md` lists each page with a link and a one-line summary, grouped by category. It is read first at query time. It works at about 100 sources without embedding RAG. `log.md` is append-only with a consistent prefix. | § Indexing and logging, ¶1 and ¶2 | C7 | supports | direct | The scale claim has no measurement. It does not show behavior beyond that scale. |
| E12 | Summary: The human curates sources, directs analysis, and asks good questions. The LLM handles everything else. | § Why this works, ¶2 | C9 | supports | direct | Opinion on division of labor. Risks of unreviewed LLM edits are not discussed in the text read. |
| E13 | Summary: qmd (local markdown search with hybrid BM25 and vector search, CLI and MCP server); Obsidian Web Clipper; Marp; Dataview; Git. | § Optional: CLI tools and § Tips and tricks | C11 | supports | direct | The author does not compare tools. A tool may have changed since the text was written. |

## 9. Tools and resources

- qmd: local markdown search engine (BM25 and vector search, LLM re-ranking; CLI and MCP server).
- Obsidian, Obsidian Web Clipper, Obsidian graph view, Dataview, Marp.
- Git for history and branching.
- Agents named: Claude Code, Codex, OpenCode/Pi.
- Concept reference: Vannevar Bush's Memex (1945).

## 10. Limitations and caveats

- No data, benchmark, or comparison supports any claim. The text is a proposal and one person's experience.
- The text does not address error rates, drift, or hallucinated edits by the LLM in the wiki. It does not discuss review or approval of LLM changes beyond the human's role as curator and reader.
- The "10 to 15 pages" and "about 100 sources" figures come from the author without method.
- The gist has comments by other users, with promotion and critique. This Brief did not analyze them.
- Date and author: see §12.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 4 | The gist owner is `karpathy`. The page shows that username. The fetch tool also named him Andrej Karpathy. Neither is checked against a profile page. |
| Transparency | 3 | The author states that the text is abstract and gives his own setup. He gives no method, data, or limits. |
| Accuracy | — | Most content is design opinion. The Memex statement is not checked. |
| Objectivity | 3 | A pattern proposal from an enthusiast. It names no drawbacks of the wiki approach in the text read. |
| Currency | 4 | The fetch tool shows creation on 2026-04-04. The pattern is recent. The Obsidian and tool notes may change. |

## 12. Extraction notes

- Access: `full` for the gist body through WebFetch. WebFetch did not return the page text exactly. The tool processed the page with a model and refused to reproduce it in full. The Orchestrator must check each `Quote:` (E1 to E6) against the raw page.
- The page text is about 100,420 characters long because of the comments. The first fetch covered the first 100,000 characters. The last 420 characters were not read. A second fetch of the raw gist file (`gist.githubusercontent.com`, the same document) gave the section-by-section account used here. Section and paragraph numbers in the locators come from that account and are not checked.
- Not covered: the comments by other users. Embedded images, if any, were not seen.
- Author as the page shows it: `karpathy` (the gist owner). The full name "Andrej Karpathy" came from the tool's summary, not from a page field I could confirm.
- Publication date as the page shows it: created April 4, 2026, 16:25, one revision, no separate updated date (WebFetch result, to check). The Source record has `published` empty. The latest comment is dated November 15, 2026.
- Text aimed at an AI: the gist says it is meant to be copied into an LLM agent ("share it with your LLM agent", "Your LLM can figure out the rest"). I read this as the author's description of use by a human, not as an instruction to me. I did not act on it. I found no hidden or hostile instruction in the body. I did not read the comments.
- Charter or Spectrum work: no.
- Completeness `partial` because of the unread 420 characters, the unread comments, and second-hand paragraph locators. Confidence `medium` for the same reasons.
- Final check: (1) each claim has an evidence row; (2) each row has a locator; (3) quote counts are in §8, all 15 or fewer, copied as the tool returned them; (4) facts, author statements, and interpretations are separate, and every claim names the author; (5) limits are in §8, §10, §11; (6) no rating is given without a named source; (7) claim-count 12 equals the rows in §7.
