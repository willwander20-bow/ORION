---
id: SRC-20261115-002
type: source
title: "Obsidian Second Brain with Claude Code: My Agent-Readable Vault Setup"
status: done
created: 2026-11-15T18:25
updated: 2026-11-15T20:00
created-by: orchestrator
schema-version: "0.11"
url: https://okhlopkov.com/second-brain-obsidian-claude-code/
source-type: article
author: Daniil Okhlopkov
publisher: okhlopkov.com
published:
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
  - "[[CO-20261115-005 Obsidian second brain with Claude Code]]"
source-quality: low
extraction-completeness: partial
extraction-confidence: medium
claim-count: 8
---

# Notes

Phase 7 test D1 to D4 (Knowledge HQ). Found by the Orchestrator with a web search at Justin's request. Candidate B of two. Justin: "Do both".

# Reference Brief

Migrated from BRF-20261115-001.

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

# Assessment (migrated)

Migrated from KAS-20261115-001. Relevance: medium. Recommended action: advance. Brain version when it was made: CO-20261115-003.

## 1. Summary of relevance

The source is one practitioner's first-person description of an Obsidian vault that Claude Code reads and writes. Its main points are a central rules file (`AGENTS.md`), raw human notes that the AI never edits, and AI output stored beside them. These points match the process in the Brain (CON-20261113-004), which so far rests on one source (Lipsky). The source also adds some new material: a per-project file set, a voice-note pipeline, a two-layer memory split, and a list of mistakes. The evidence is weak. The Brief rates the source `low`, extraction is `partial`, and the quotes and summaries are not yet checked against the page. The source cannot change the confidence of any Brain Claim. It can only give a second description of a practice that the Brain already describes.

## 2. Brain records reviewed

I read the whole Brain (8 notes). The Brain context is complete.

- [[CLM-20261113-001 Lasting notes belong in open files]]
- [[CON-20261113-001 File over app]]
- [[CON-20261113-002 Work with plain-text notes]]
- [[CON-20261113-003 AI-maintained wiki over files]]
- [[CON-20261113-004 Set up an AI-maintained wiki]]
- [[MOC-20261113-001 Note durability]]
- [[MOC-20261113-002 AI-maintained knowledge bases]]
- [[Research Questions]]

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C3 | supports | [[CON-20261113-004 Set up an AI-maintained wiki]] | Step 4 of the Brain process tells the AI to write a `claude.md` or `Agents.md` file. Its ground rules say where raw material goes and what is the source of truth. C3 describes a central `AGENTS.md` with the same function: where raw input goes, which files are the source of truth, and how to extract tasks. C3 adds a rule about credentials, which the Brain process does not have. This is a second description of the same practice, from a different author. The Brain does not show that the two authors are independent of each other. The support is weak. The Brief rates the source `low`. The evidence (E4) is a model-written summary, and the page text was not seen. |
| A2 | C4, C7 | supports | [[CON-20261113-004 Set up an AI-maintained wiki]] | Step 2 of the Brain process says that raw material goes in `sources`, is never edited, and is the source of truth. C4 says that an AI must not rewrite raw human notes. C7 lists "AI edits to raw notes" as a mistake. The rule is the same. The Brain has it from one prompt text. The source has it as an opinion with no test (E6 limits). Both are advice, and neither is tested. |
| A3 | C4 | refines | [[CON-20261113-004 Set up an AI-maintained wiki]] | The Brain process separates raw material (`sources`) from AI synthesis (`wiki`) in different folders. C4 says that AI output is stored "alongside" the raw notes. In the Brief, §3 and §5 put AI documents in an `ai-docs/` folder inside each project. This is a difference in layout, not a contradiction. Both keep raw input unedited. Only the place of the AI output differs: a separate wiki, or a project subfolder. The Brain does not record this second layout. |
| A4 | C6 | extends | [[CON-20261113-003 AI-maintained wiki over files]] | The Brain concept is an AI-written index and linked pages over a person's own files, kept as a map for the AI. C6 describes two layers: Obsidian is the source of truth, and a separate retrieval layer (GBrain) holds distilled decisions and cross-project context. The Brief says the nature of GBrain is not clear. The source separates the source files from a retrieval layer for distilled content. The Brain concept does not describe this. The Brain's index sits inside the file set. The extension is tentative until the nature of GBrain is known. C6 also names what the retrieval layer must not hold (credentials, raw diary entries, private exports). The Brain has no matching rule. |
| A5 | C8 | extends | [[CON-20261113-004 Set up an AI-maintained wiki]] | Step 5 of the Brain process has a Tidy job. It lists contradictions, out-of-date claims, unlinked pages, and missing topics. C8 plans weekly project reviews and automatic stale-task detection. These are similar maintenance ideas, but they apply to tasks and not to wiki claims. C8 is a plan with no date and no result (E10 limits). It is not evidence that the idea works. It does not answer row 1 of [[Research Questions]] on whether periodic AI audits catch errors. |
| A6 | C1 | supports | [[CON-20261113-001 File over app]] | The Brain concept says that the file matters more than the app. C1 says that structure matters more than the app for an agent. The part that matches: both rank the app below something else. The part that differs: the Brain concept is about format and ownership for durability. C1 is about predictable folders and rules so that an agent can navigate. So the support is indirect and partial. C1 does not say anything about file format or how long files last. Direct evidence E2 is a tool summary. E1 is an unchecked metaphor. |
| A7 | C1, C3, C7 | new | — | The statement that agent-readable structure (predictable places, written rules, a short rules file) is the main factor could be its own Brain Claim. The Brain has no claim on AI agents and vault structure. [[MOC-20261113-002 AI-maintained knowledge bases]] says "None yet" under important claims. The evidence is one self-report with no data. A claim would be `low` confidence and `weak` evidence. The wording must say that this is the author's view, and it must not say that the setup works. |
| A8 | C2 | new | — | A per-project file set (overview of durable facts, task list, idea backlog, `ai-docs/`) is not in the Brain. It is a description of one person's vault. The Brief saw no folder tree. It is close to step 1 of [[CON-20261113-002 Work with plain-text notes]] (folders for hierarchy, related files in the same folder). That step has no standard file set. The relation is loose, so I have not recorded it as an extension. |
| A9 | C5 | new-process | — | The voice-note pipeline (capture on phone, transcribe, save raw text in the project folder, extract tasks and facts) is not in the Brain. It is a method from one source with no tool names and no results. It uses the same raw-first principle as A2. The Brain has no process for capture. |
| A10 | C7 | new | — | Four of the five listed mistakes are not in the Brain: clever folder schemes, credentials mixed with memory, rules too long to be useful, and search treated as the product. Personal experience only, with no cost or frequency (E9 limits). The mistake "rules too long" bears on the Brain's own process. The prompt in CON-20261113-004 is long, and the Brain does not say whether that is a risk. I raise this as a question only. The source does not test it. |
| A11 | — | research-gap | [[MOC-20261113-002 AI-maintained knowledge bases]] | The MOC has one source, with a "Disputes and gaps" note that no independent source exists. This source adds a second, but it is `low` quality and gives no results. It does not show that the setup works or that an AI keeps raw notes safe. So the gap of an independent source with tests, listed in the MOC, stays open. The Brain also has no source on what an AI changes without approval. This source does not say either. |

No finding weakens a Brain Claim. The Brain Claim (CLM-20261113-001) is about open file formats. The source says nothing about format or durability, so I made no finding against it. The only claim the source is relevant to is the one about the app and structure (A6).

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 2 | The core ideas (rules file, raw input kept unedited, AI synthesis separate) are already in CON-20261113-004. New items are the voice-note pipeline, the two-layer memory split, and some mistakes. |
| Significance | 2 | One practitioner's account. No data, no date, and no results. It adds a second description of a practice. It does not add proof. |
| Applicability | 3 | ORION is an Obsidian vault with Claude Code, with a rules file (`CLAUDE.md`) and raw/AI separation. The practices apply, but the source gives no tested evidence. The ORION use case is not stated in the Brief. |
| Relevance to the Brain | 3 | It fits [[MOC-20261113-002 AI-maintained knowledge bases]] directly. It touches [[MOC-20261113-001 Note durability]] only slightly (A6). |

## 5. Recommended action

`advance`. The reason: A1, A2, A3, and A4 give a second description of a practice that the Brain holds from one source only. A5 adds a maintenance idea to the same process. A7 to A10 could add new content to the AI-maintained knowledge base topic, which has no Brain Claim yet. These are possible reasons to change the Brain. The effect is small. I do not suggest a change to the confidence or the status of any existing Brain Claim.

Conditions for the Managing Editor:
- The Orchestrator must complete the quote check (E1, E5, E6) and check the Summary rows against the page before this Assessment goes on. The Brief says that WebFetch did not return exact text.
- The source gives only the author's view. Wording must show that, and it must not show that the setup works.
- A4 depends on what GBrain is. Treat it as unclear.
- A11 and the lack of data mean the topic keeps its gap on independent evidence with tests. No Research Questions row is needed for this Assessment. The existing rows 1 and 2 cover the open questions.

## 6. Confidence and limits

- I used only the Brief for the source. I did not read the Source page or other Briefs. The Brief is based on a model-written summary from two WebFetch calls (extraction `partial`, confidence `medium`). The quotes E1, E5, and E6 and all locators are unchecked. All locators are `unavailable`.
- The source has no date (currency unknown) and no stated interest. The Brief rates it `low`. Claude Code features may have changed.
- The Brain is small (8 notes). I read all of it, so the comparison is complete. The Brain has no MOC or claim on AI agents and vault structure. Findings A7 to A10 are `new` for this reason.
- Independence: I cannot show that this author and the Brain's AI-wiki source (Lipsky) are independent of each other. I did not assume it.
- Final check:
  1. Each finding has a Claim Candidate label (or `—`), a type, and an explanation: yes.
  2. Findings of type `supports`, `refines`, `extends`, and `research-gap` link to a Brain record: yes (A1 to A6, A11).
  3. No finding is `contradicts`: yes. A3 is a difference in layout, named as such.
  4. §2 lists each Brain record that I read: yes. I read all 8.
  5. `brain-version` is CO-20261115-003, the version from the Orchestrator: yes.
  6. The recommended action has a reason: yes. It is `advance`, so no question is needed.
