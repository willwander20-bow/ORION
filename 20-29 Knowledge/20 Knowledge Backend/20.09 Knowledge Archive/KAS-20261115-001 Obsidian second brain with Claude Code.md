---
id: KAS-20261115-001
type: knowledge-assessment
title: "Obsidian Second Brain with Claude Code: My Agent-Readable Vault Setup"
status: validated
created: 2026-11-15T18:30
updated: 2026-11-15T18:30
created-by: editor
schema-version: "0.11"
source: "[[SRC-20261115-002 Obsidian second brain with Claude Code]]"
brief: "[[BRF-20261115-001 Obsidian second brain with Claude Code]]"
brain-version: CO-20261115-003
relevance: medium
recommended-action: advance
---

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
