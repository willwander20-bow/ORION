---
id: BRF-20261115-001
type: reference-brief
title: "Obsidian Second Brain with Claude Code: My Agent-Readable Vault Setup"
status: validated
created: 2026-11-15T18:27
updated: 2026-11-15T18:27
created-by: reporter
schema-version: "0.11"
source: "[[SRC-20261115-002 Obsidian second brain with Claude Code]]"
processing-level: full-review
source-quality: low
extraction-completeness: partial
extraction-confidence: medium
claim-count: 8
---

## 1. Executive summary

The author, Daniil Okhlopkov, describes his personal Obsidian vault. Claude Code reads and writes it. He says a predictable structure and a central rules file (`AGENTS.md`) matter more than the app. He keeps raw human notes unedited, stores AI output next to them, and uses a second retrieval layer ("GBrain") for distilled decisions. The page gives a first-person setup, not tested evidence.

## 2. Central premise and author intent

Premise: a second brain works when an AI agent can navigate it. The agent needs predictable folders, written rules, and a clear split between raw input and AI output. Intent: to teach readers to copy this setup ("How to make your vault agent-readable" is a heading). The source gives no sign of a sale. The page title and the heading "Why this is better than another SaaS" show a position against SaaS tools. The author's interest is not stated.

## 3. Key takeaways

- The author treats the vault structure as the main factor, not Obsidian itself (per the tool summary).
- Each project has the same basic files: overview, task list, idea backlog, and an `ai-docs/` folder.
- A central `AGENTS.md` sets the agent rules: where raw input goes, which files are the source of truth, how to extract tasks, and where credentials must never be stored.
- Raw human notes are never edited. AI synthesis is stored alongside them.
- Voice notes are transcribed, saved as raw text in the project folder, and then turned into tasks and facts.
- Obsidian is the source of truth. GBrain is a retrieval layer for distilled decisions and cross-project context. It holds no credentials, raw diary entries, or private exports.
- The author lists mistakes: clever folder schemes, AI edits to raw notes, credentials mixed with memory, rules that are too long, and search treated as the product.

## 4. Facts and figures

- The page shows no published or updated date (per WebFetch).
- The body has 12 H2 sections: Quick answer: the setup that actually works; Why normal second brains fail; My vault architecture; Agent instructions are the operating system; The voice note pipeline; GBrain vs Obsidian; What Claude Code actually does inside the vault; The minimum setup; Mistakes I made; How to make your vault agent-readable; Why this is better than another SaaS; What I would build next.
- The source gives no numbers, benchmarks, or measured results in the text I could read.

## 5. Methods and frameworks

- Per-project file set: overview of durable facts, task list, idea backlog, `ai-docs/` for generated briefs and research.
- Personal notes are kept apart from work material.
- Voice-note pipeline: capture on phone, transcribe, save raw text in the right project folder, extract tasks and project facts.
- Two memory layers: Obsidian (source of truth) and GBrain (retrieval).
- Checklist (as summarized): each active project has an overview and a task list. Raw notes are never overwritten. AI docs include date, source, and project links. Credentials are referenced by location, never pasted. Long-term decisions move from chat logs into overviews.
- Planned next steps: weekly project reviews, automatic stale-task detection, source packs, and clear public/private boundaries for anything the agent touches.

## 6. Concepts and definitions

- Agent-readable vault: a vault with predictable places for an agent to read and write (author's usage).
- `AGENTS.md`: the central rules file for the agent (author's usage).
- GBrain: the author's retrieval layer for distilled decisions and cross-project context. The page text I read gives no further definition.
- Raw human input: the author's own notes and transcripts, kept unedited.
- `ai-docs/`: a project folder for AI-generated briefs and research.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author says an agent-readable vault depends more on structure (predictable places to read and write) than on the app. | normative | explicit | E1, E2 | medium |
| C2 | The author describes his vault as having the same basic files in each project: overview, task list, idea backlog, and `ai-docs/`. | factual | explicit | E3 | medium |
| C3 | The author says a central `AGENTS.md` should define where raw input goes, which files are the source of truth, how to extract tasks, and where credentials must never be stored. | procedural | explicit | E4, E5 | medium |
| C4 | The author says raw human notes should not be rewritten by an AI. AI output should be stored alongside them. | normative | explicit | E6 | high |
| C5 | The author describes a voice-note pipeline: capture, transcribe, save raw text in the project folder, then extract tasks and project facts. | procedural | explicit | E7 | medium |
| C6 | The author says he uses Obsidian as the source of truth and GBrain as a retrieval layer for distilled decisions. GBrain never holds credentials, raw diary entries, or private exports. | procedural | explicit | E8 | medium |
| C7 | The author lists these mistakes: overly clever folder schemes, AI edits to raw notes, credentials mixed with memory, rules too long to be useful, and search treated as the product. | normative | explicit | E9 | medium |
| C8 | The author plans weekly project reviews, automatic stale-task detection, source packs, and public/private boundaries. | predictive | explicit | E10 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "It is a README for the agent that has to navigate your life." | unavailable (probably § My vault architecture; not confirmed) | C1 | Supports | indirect | One author's metaphor. No data. Quote taken from a WebFetch summary. |
| E2 | Summary: The author states that structure matters more than the app, because an agent needs predictable places to read and write. | unavailable | C1 | Supports | direct | Wording comes from the tool's summary, not exact page text. |
| E3 | Summary: Each project has an overview of durable facts, a task list, an idea backlog, and an `ai-docs/` folder. Personal notes are separate from work material. | unavailable (probably § My vault architecture; not confirmed) | C2 | Supports | direct | One person's own vault. No folder tree seen. |
| E4 | Summary: `AGENTS.md` sets the rules for raw input location, source-of-truth files, task extraction, and credential storage. | unavailable (probably § Agent instructions are the operating system; not confirmed) | C3 | Supports | direct | The file text may or may not be shown on the page. I did not see it. |
| E5 | Quote: "Without rules, the agent is a smart intern with no map." | unavailable (probably § Agent instructions are the operating system; not confirmed) | C3 | Supports | indirect | Rhetorical statement, not evidence. |
| E6 | Quote: "Raw human input should not be rewritten just because an LLM wanted to be helpful." | unavailable (probably § The voice note pipeline; not confirmed) | C4 | Supports | direct | Opinion. No test of the effect. |
| E7 | Summary: Voice notes are captured on a phone, transcribed, saved as raw text in the project folder, then turned into tasks and project facts. Raw notes are never edited. | unavailable (probably § The voice note pipeline; not confirmed) | C5 | Supports | direct | Describes one setup. No tool names or results seen. |
| E8 | Summary: Obsidian is the source of truth. GBrain is a retrieval layer for distilled decisions and cross-project context. It never holds credentials, raw diary entries, or private exports. | unavailable (probably § GBrain vs Obsidian; not confirmed) | C6 | Supports | direct | What GBrain is (product or own tool) is not clear from what I read. |
| E9 | Summary: The author lists five mistakes: clever folder schemes, letting AI edit raw notes, mixing credentials with memory, rules too long to be useful, and treating search as the product. | unavailable (probably § Mistakes I made; not confirmed) | C7 | Supports | direct | Personal experience. No evidence of how often or how costly. |
| E10 | Summary: The author plans weekly project reviews, automatic stale-task detection, source packs for projects, and clear public/private boundaries. | unavailable (probably § What I would build next; not confirmed) | C8 | Supports | direct | Plans only. No date or commitment. |

## 9. Tools and resources

- Obsidian (vault of Markdown files).
- Claude Code (the agent that operates the vault).
- `AGENTS.md` (rules file).
- GBrain (retrieval layer). The nature of this tool is not clear from what I read.
- Phone voice capture and transcription (tool not identified in what I read).

## 10. Limitations and caveats

- Access is partial. WebFetch refused to reproduce the page and returned a summary. Exact wording, paragraph order, tables, and code blocks were not seen. Whether the page includes sample `AGENTS.md` text or a folder tree is unknown.
- The source is one person's account of his own setup. It gives no results, no comparison, and no measurement. It does not show the setup "works". The heading "the setup that actually works" is the author's claim.
- Section-level locators could not be confirmed. The tool gave heading names and paragraph counts, but not which text sits under which heading.
- No published or updated date was shown. Currency is not known. Claude Code features may have changed.
- The author's interest in GBrain or any product is not stated in what I read.
- The source argues against SaaS second-brain tools. That is a position, not a tested comparison.
- Scope: article body only, as asked.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | Individual practitioner on a personal site. His credentials were not in scope (author bio excluded), so I cannot assess them. |
| Transparency | 2 | Describes his own method. No date, no data, no stated interests seen. |
| Accuracy | — | No checkable facts or figures. I did not verify the setup. |
| Objectivity | 2 | First-person advocacy. Takes a position against SaaS tools. |
| Currency | — | No date shown. |

Overall `source-quality`: low. This applies to its use as evidence for general rules. It is usable as a description of one practitioner's approach.

## 12. Extraction notes

- Coverage: the Brief covers the article body through a model-written summary and a heading list. Two WebFetch calls were made. No text-file exists.
- Completeness is `partial`. The tool did not return the full text, so detail is missing, such as examples, code blocks, and paragraph-level content in the 12 sections.
- Confidence is `medium`. The claims match the tool's summary closely. Exact wording and placement were not verified.
- Orchestrator action: check each `Quote:` (E1, E5, E6) against the raw page (for example with `curl`, tags removed), because WebFetch does not return exact text. If a quote fails, change it to a `Summary:`. Also check the locator guesses and the missing date. The summary text was model-processed, so check the Summary rows against the page too.
- Final check:
  1. Each Claim Candidate has at least one evidence row: yes (C1 E1/E2, C2 E3, C3 E4/E5, C4 E6, C5 E7, C6 E8, C7 E9, C8 E10).
  2. Each evidence row has a locator or `unavailable`: yes. All are `unavailable`, with a non-binding guess.
  3. Quotes are copied as the tool returned them. Word counts: E1 13 words, E5 11 words, E6 15 words. All are 15 or fewer. E1 is a shortened part of the tool's longer quote ("The vault is not a dashboard. It is a README for the agent that has to navigate your life." is 21 words). The Reporter cut the first sentence, not the middle.
  4. Facts, statements of the source, and the Reporter's interpretations are kept separate. The "probably" heading guesses in §8 are the Reporter's.
  5. Limits and uncertainty are visible in §8, §10, and §11.
  6. No claim is presented as verified. All claims name the author as the source. No survey figures are in the source.
  7. `claim-count` is 8 and §7 has 8 rows.
- Prompt-injection text directed at an AI: none reported by the tool.
