---
id: BRF-20261113-010
type: reference-brief
title: Build a Self Improving Claude Knowledge Base
status: validated
created: 2026-11-13T18:45
updated: 2026-11-13T18:45
created-by: reporter
schema-version: "0.10"
source: "[[SRC-20261113-011 Self-improving Claude knowledge base, Lipsky]]"
processing-level: full-review
source-quality: medium
extraction-completeness: full
extraction-confidence: high
claim-count: 34
---

## 1. Executive summary

Paul J Lipsky's YouTube tutorial (published 2026-06-25, about 14 minutes, sponsored by Zapier) shows how to build a "self-improving" knowledge base. He credits the idea to Andrej Karpathy's "LLM wiki". In this setup, the AI keeps an index (a "map") and linked topic pages over plain Markdown files, which you view in Obsidian. A nightly scheduled task adds new material to the map. The source includes the full text of the setup prompt. The prompt has these parts:
- Ground rules: work only in the folder, get approval before files are moved or renamed, never delete.
- A sources/wiki split.
- Three ongoing jobs: Ingest, Answer, and a Tidy job that only reports.
- A nightly task.

The source also includes two more prompts, for a business journal and a health dashboard. The benefits the creator claims (breakthroughs, the time setup takes) are his own statements, with no evidence.

## 2. Central premise and author intent

Premise: if an AI only reads files, it has to read them again in every session. If the AI keeps a map of the files and their connections, it can answer faster and use more context, and the map grows as new material comes in. The author's aims are to teach the setup, give away the prompts, promote the sponsor (Zapier MCP) and grow his channel (he asks viewers to like and subscribe at 13:50). The author describes and demonstrates his own system. He does not compare it with other methods.

## 3. Key takeaways

- The design is credited to Karpathy's "LLM wiki". It is an index (`index.md`) plus linked topic pages that the AI writes for itself (C1, C5).
- The stated reason: without a map, the AI must read and interpret the files again in each session (C2, C3).
- The setup has three parts: an Obsidian vault (a folder), Claude Cowork pointed at that folder, and one prompt (C12, C13, C17).
- Prompt ground rules: work only in the folder, show a plan and get an explicit "yes" before a move, rename or delete, never delete, use plain `.md` only, and ask when in doubt (C23).
- Raw material goes to `sources` and is never edited. The AI's synthesis goes to `wiki`. Each claim points to its source, and `log.md` records each action (C24, C26).
- Ongoing jobs: Ingest (update the page, do not duplicate it), Answer (answer from the wiki first and name the pages used), and Tidy (report only, no automatic fixes) (C27).
- A nightly task ingests new items and runs a quick tidy pass. As far as the prompt text shows, the approval gate covers file moves, renames and deletes, not wiki writes (C28, C29, inferred).
- The benefit claims (breakthroughs, "most useful", setup time) are the creator's own claims. Some of them come from the sponsored segment (C15, C21, C22, C11).

## 4. Facts and figures

- Length: about 14 minutes. The last caption is at 14:04. Nine chapters are listed in the description.
- Sponsor: Zapier. The segment runs from 7:42 to 9:27, and the description discloses the sponsorship (E23).
- The creator's nightly task runs at 2:00 a.m. (E29).
- Setup time: "a matter of minutes" (0:40) and "less than 50 minutes" (13:34 to 13:42). These differ. The second figure may be a caption error (E17, E18).
- Health prompt readiness score: scale 0 to 100. Baseline of up to 14 nights, labeled "provisional" below 5 nights. Bands: Green 67 to 100, Yellow 34 to 66, Red 0 to 33. Standard deviation floors of about 3 ms for HRV and 2 bpm for resting heart rate. Sleep efficiency centered at 0.85 (E52).
- Business journal prompt: when `New Journal/` has more than about 15 entries, the oldest entries move to `Processed Journal/` (E48).

## 5. Methods and frameworks

- **Knowledge Base Prompt (six steps):**
  1. Look around (read only, then summarize).
  2. Propose a structure (plan only, then wait for "go").
  3. Organize (move, do not copy, only after approval).
  4. Build the map (one page per topic, one-line summary, Markdown links, each claim sourced, `index.md`, a `claude.md`/`Agents.md` file, `log.md`).
  5. Set up the ongoing loop (Ingest, Answer, Tidy).
  6. Make it self-improving (a nightly scheduled task).
- **Ingest / Answer / Tidy loop:** Tidy lists contradicting pages, out-of-date claims, pages that nothing links to, and missing topics. It does not fix them.
- **Business Journal Prompt:** a `CLAUDE.md` operating brief that gives the AI an "advisor" persona. Workflow: load the wiki index and the matching pages, read the entry, have a conversation, write the dated entry to `New Journal/`, then update the wiki topic pages.
- **Health Dashboard Prompt:**
  - STEP 0 is a wearable check: Apple Watch through Health Auto Export, Fitbit through a fan-made dashboard, other devices through a web search, or manual paste.
  - A coach persona ("Cal").
  - `readiness.py`: z-scores against a personal baseline, a weighted average, then a logistic curve.
  - `dashboard.py`: one self-contained HTML file.
  - A scheduled check-in every morning.

## 6. Concepts and definitions

- **LLM wiki / "map":** the creator's name for an AI-kept index plus linked pages over your files. He credits it to Karpathy (E1, E2).
- **Index (`index.md`):** "a table of contents" that is for the AI, not the user (E9, E10).
- **Vault:** in Obsidian, "just a fancy word for a folder on your computer" (E19).
- **Sources vs. wiki:** `sources` holds raw material, never edited, as the source of truth. `wiki` holds the AI's synthesis pages (E38).
- **`_review` folder:** where the AI puts files that look like junk, instead of deleting them. The user then decides (E37).
- **Connectors / MCP:** connectors are Cowork's built-in integrations with other apps. Zapier MCP is presented as a bridge to apps that have no connector (E21, E24).
- **Readiness score:** in the Health prompt, a daily score from 0 to 100 built from HRV, resting heart rate and sleep efficiency, measured against a personal baseline (E52).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The creator credits the idea to Andrej Karpathy, who calls it an "LLM wiki". The creator prefers to call it "a map for your AI". | factual | explicit | E1, E2, E3 | high |
| C2 | The creator says that an AI which only reads your files must read and interpret all of them again each time, so "it never remembers and it never gets faster". | causal | explicit | E4, E5 | high |
| C3 | The creator says that a map lets the AI know at once what it needs and where it is, without working out the system again. | causal | explicit | E6 | high |
| C4 | The creator states that the AI builds and maintains the map automatically, and that every night it checks the folder for new material and adds it to the map. | factual | explicit | E7, E8 | high |
| C5 | In the creator's setup, the index is a table of contents for the AI. He states that he does not use it himself. | factual | explicit | E9, E10 | high |
| C6 | The creator's knowledge base has sections for people, sponsors, tools and topics. It holds his video transcripts plus articles, tweets and other creators' videos. | factual | explicit | E11 | high |
| C7 | The creator states that his topic pages look for connections and record what is important to him. He says they are not copies of raw transcripts or articles. | factual | explicit | E12 | high |
| C8 | The creator states that he runs a second knowledge base for health. It tracks sleep, calories, weight, resting heart rate and HRV, and gives a daily readiness score. | factual | explicit | E13 | high |
| C9 | The creator says the same setup applies to any area of life (business, fitness, research topics, hobbies). | normative | explicit | E14 | high |
| C10 | The creator states that the system needs no unreleased model. It works with Claude Cowork or OpenAI Codex plus files on your computer. | factual | explicit | E15, E16 | high |
| C11 | The creator says setup takes "a matter of minutes", and later "less than 50 minutes". The two statements differ. | factual | explicit | E17, E18 | medium |
| C12 | The source states that an Obsidian vault is a folder on your computer, that Obsidian is free to download, and that Obsidian Web Clipper is a free Chrome extension that can save articles and YouTube videos to the vault. | factual | explicit | E19, E20 | high |
| C13 | Setup step: point Claude Cowork at the vault folder. Connectors (for example email, calendar, Notion) can also feed the knowledge base. | procedural | explicit | E21 | high |
| C14 | The creator states that Cowork does not connect to every tool. He says that only some of thousands of apps are available as connectors. | factual | explicit | E22 | high |
| C15 | In a segment that Zapier sponsors, the creator states that Zapier MCP connects Claude Cowork to thousands of apps and gives granular permissions. | factual | explicit | E23, E24, E25 | high |
| C16 | The creator says that the more places the AI can pull from, the richer the knowledge base becomes. | causal | explicit | E26 | high |
| C17 | Setup procedure: paste one prompt into Cowork, which is pointed at the folder. Claude proposes a plan, asks for approval, creates a wiki folder with the index, and sets up a nightly scheduled task. | procedural | explicit | E27, E28 | high |
| C18 | The creator's nightly task runs at 2:00 a.m. every day. | factual | explicit | E29 | high |
| C19 | The creator states that after setup, the AI pulls information from the knowledge base on its own when necessary, with no special command. | factual | explicit | E30 | high |
| C20 | The creator says that an AI with access to the knowledge base may recognize that a past client problem is like a current one, and suggest the earlier resolution. | predictive | explicit | E31 | high |
| C21 | The creator says that his system has led to "real breakthroughs" in his business and health, and that it does "a really good job" of finding patterns. | normative | explicit | E32, E33 | high |
| C22 | The creator rates the knowledge base as "the single most useful thing" he has set up with Claude Cowork. | normative | explicit | E34 | high |
| C23 | The Knowledge Base Prompt sets these ground rules: work only in the folder; show a plan and get an explicit "yes" before a file is moved, renamed or deleted; never delete (put possible junk in `_review`); use plain `.md` only; when in doubt, ask a short question. | procedural | explicit | E35, E36, E37, E51 | high |
| C24 | The Knowledge Base Prompt puts raw material in a `sources` folder, never edited and kept as the source of truth, and the AI's linked synthesis pages in a separate `wiki` folder. | procedural | explicit | E38 | high |
| C25 | Step 3 of the Knowledge Base Prompt tells the AI to move raw material into the planned folders, not copy it, after approval. | procedural | explicit | E39 | high |
| C26 | The Knowledge Base Prompt specifies these wiki pages: one page per topic, written as synthesis; a one-line summary at the top; Markdown links between pages; each claim points to its source; an `index.md`; a `log.md` with one dated line per action. | procedural | explicit | E40, E41, E42 | high |
| C27 | The Knowledge Base Prompt sets three ongoing jobs. Ingest: update the existing pages, do not duplicate them. Answer: answer from the wiki first, name the pages used, and say when the wiki does not cover a question. Tidy: report contradictions, out-of-date claims, orphan pages and missing topics, and do not fix them automatically. | procedural | explicit | E43, E44, E45 | high |
| C28 | The Knowledge Base Prompt sets up a nightly task. It checks the sources or clippings folder for new items, ingests each item into the wiki, logs it, runs a quick tidy pass and leaves a short note. | procedural | explicit | E46 | high |
| C29 | In the Knowledge Base Prompt, the explicit approval rule covers moving, renaming and deleting files. No step asks for approval before the nightly task creates or updates wiki pages. | procedural | inferred | E36, E46 | medium |
| C30 | The Business Journal Prompt has the AI do these things: read the wiki index and the matching topic pages before it responds to each entry; write a dated entry to `New Journal/`; update the wiki topic pages; move the oldest entries to `Processed Journal/` when there are more than about 15. | procedural | explicit | E47, E48, E49 | high |
| C31 | The Business Journal Prompt tells the AI not to ask clarifying questions before it builds. The Knowledge Base Prompt tells the AI to ask when in doubt. | factual | explicit | E50, E51 | high |
| C32 | The Health Dashboard Prompt specifies a readiness score from 0 to 100. A script computes z-scores of HRV, resting heart rate and sleep efficiency against a personal baseline of up to 14 nights, combines them by weighted average and a logistic curve, and maps the result to green, yellow and red bands. | procedural | explicit | E52, E53 | high |
| C33 | The Health Dashboard Prompt has honesty rules: if a data source cannot be reached, do not log a fake zero or invent a score; treat the score as directional; the score never overrides how the user says they feel. | procedural | explicit | E54, E55 | high |
| C34 | The Health Dashboard Prompt says that its Fitbit route uses a fan-made third-party site, not the official Fitbit website, read through browser control. | factual | explicit | E56 | high |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "This idea originally came from Andre Cararpathy, one of the most respected people in AI." | § Transcript (auto-captions, unedited), 0:49 | C1 | supports | direct | Auto-captions misspell the name (Andrej Karpathy). "Most respected" is the creator's rating. He gives no link to Karpathy's original. |
| E2 | Quote: "He calls it an LLM wiki" | § Transcript (auto-captions, unedited), 0:55 | C1 | supports | direct | Auto-captions. Secondhand report of Karpathy's term. |
| E3 | Summary: The description calls the setup a Karpathy-style "LLM wiki", built in Claude Cowork with plain Markdown files viewed in Obsidian. | § Video Description (as posted), ¶1 | C1 | supports | direct | The creator wrote the description, so it is not independent. |
| E4 | Summary: Each time the AI is pointed at your files, it must read all of them and work out how they fit together. A week later it must do the whole process again. | § Transcript (auto-captions, unedited), 1:02 to 1:18 | C2 | supports | direct | The creator's statement. No test or comparison is shown. |
| E5 | Quote: "So, it never remembers and it never gets faster." | § Transcript (auto-captions, unedited), 1:10 to 1:18 | C2 | supports | direct | Auto-captions. The quote spans two caption lines. Generalization with no data. |
| E6 | Quote: "looks at this map and knows instantly what it needs and where it lives." | § Transcript (auto-captions, unedited), 1:34 | C3 | supports | direct | Auto-captions. Asserted, not measured. |
| E7 | Quote: "your AI will build and maintain this automatically for you." | § Transcript (auto-captions, unedited), 1:41 | C4 | supports | direct | Auto-captions. Describes the intended behavior. One user's setup. |
| E8 | Quote: "every night, the AI will automatically check the folder for anything new" | § Transcript (auto-captions, unedited), 10:44 | C4 | supports | direct | Auto-captions. The demo shows the task being set up, not a nightly run. |
| E9 | Quote: "Now, I don't use this table of contents." | § Transcript (auto-captions, unedited), 2:42 | C5 | supports | direct | Auto-captions. Self-report. |
| E10 | Quote: "This is specifically for my AI. So, it knows its way around this knowledge base." | § Transcript (auto-captions, unedited), 2:49 | C5 | supports | direct | Auto-captions. Self-report. |
| E11 | Summary: His vault, in a folder named "knowledge", has sections for important people, sponsors, tools he has covered and topics. The content comes from his YouTube transcripts, plus articles, tweets and other creators' videos. | § Transcript (auto-captions, unedited), 2:11 to 2:35 | C6 | supports | direct | Auto-captions. Describes what the video shows on screen. The companion file does not include the visuals. |
| E12 | Quote: "It's actually looking for connections" | § Transcript (auto-captions, unedited), 3:17 | C7 | supports | direct | Auto-captions. The quality of the synthesis is not shown in the text. |
| E13 | Summary: A second knowledge base for health tracks sleep, calories, weight, resting heart rate and HRV in daily pages, and gives a score for how ready he is each day. | § Transcript (auto-captions, unedited), 3:49 to 4:12 | C8 | supports | direct | Auto-captions. Self-report. No data is shown in the text. |
| E14 | Quote: "you can point this at any area of your life." | § Transcript (auto-captions, unedited), 4:26 | C9 | supports | direct | Auto-captions. General statement backed by two examples from one person. |
| E15 | Quote: "This doesn't need some advanced model that hasn't come out yet" | § Transcript (auto-captions, unedited), 0:30 | C10 | supports | direct | Auto-captions. The demo uses only Cowork. Codex is not shown. |
| E16 | Quote: "Using Claude Co-work or OpenAI's codeex and a simple system of files on your computer" | § Transcript (auto-captions, unedited), 0:40 | C10 | supports | direct | Auto-captions ("codeex" = Codex). Codex use is asserted, not shown. |
| E17 | Quote: "you can build a self-improving system like this in a matter of minutes." | § Transcript (auto-captions, unedited), 0:40 | C11 | supports | direct | Auto-captions. No time is measured. |
| E18 | Quote: "it takes less than 50 minutes." | § Transcript (auto-captions, unedited), 13:34 to 13:42 | C11 | challenges | direct | Auto-captions. "50" may be a caption error (for example "15"). Spans two caption lines. |
| E19 | Quote: "A vault is just a fancy word for a folder on your computer." | § Transcript (auto-captions, unedited), 5:06 to 5:13 | C12 | supports | direct | Auto-captions. Spans two caption lines. |
| E20 | Quote: "there's a free Chrome extension called Obsidian Web Clipper." | § Transcript (auto-captions, unedited), 6:06 | C12 | supports | direct | Auto-captions. The claim that Obsidian is "free to download" is at 5:00. Prices at the publish date (2026-06-25) can change. |
| E21 | Summary: In Cowork, choose the knowledge base folder to give access to its files. Under customize and connectors, browse third-party connectors (email, calendar, Notion) that can feed the knowledge base without copying files by hand. | § Transcript (auto-captions, unedited), 6:35 to 7:21 | C13 | supports | direct | Auto-captions. Describes the user interface on the publish date. The interface can change. |
| E22 | Quote: "But the problem is Co-work doesn't connect to every tool out there." | § Transcript (auto-captions, unedited), 7:21 | C14 | supports | direct | Auto-captions. This statement leads into the sponsored segment. |
| E23 | Quote: "Zapier, who's also the sponsor of today's video." | § Transcript (auto-captions, unedited), 7:45 | C15 | supports | direct | Auto-captions. Shows that the author has an interest. The description also says "Sponsored by Zapier". |
| E24 | Quote: "an MCP that connects Claude Co-work to thousands of other apps" | § Transcript (auto-captions, unedited), 7:51 | C15 | supports | direct | Auto-captions. Sponsored claim. Not checked. |
| E25 | Quote: "The best part is you get granular permissions" | § Transcript (auto-captions, unedited), 8:43 | C15 | supports | direct | Auto-captions. Sponsored claim. The free tier and its limits are not stated. |
| E26 | Quote: "the more places your AI can pull from, the richer your knowledge base gets." | § Transcript (auto-captions, unedited), 8:51 to 9:00 | C16 | supports | direct | Auto-captions. Said in the sponsored segment. No evidence. |
| E27 | Summary: He pastes the prompt from a Google Doc into Cowork, which is pointed at the folder. Claude shows a plan and asks for approval. He says "yes, all as proposed", picks the wiki as the place for the index, and approves a scheduled task. | § Transcript (auto-captions, unedited), 9:40 to 11:01 | C17 | supports | direct | Auto-captions. One demo run. Results shown at 11:01 to 11:25 (wiki, sources, review folder). |
| E28 | Quote: "it'll of course never do anything without your permission first." | § Transcript (auto-captions, unedited), 10:09 | C17 | supports | direct | Auto-captions. Broader than the prompt text, whose approval rule covers moving, renaming and deleting files (E36). Refer to C29. |
| E29 | Quote: "I'll say I wanted to run at 2:00 a.m. every day." | § Transcript (auto-captions, unedited), 10:52 | C18 | supports | direct | Auto-captions. |
| E30 | Quote: "It will on its own just pull information from it when necessary" | § Transcript (auto-captions, unedited), 11:33 | C19 | supports | direct | Auto-captions. Depends on the AI having access to the folder. Not demonstrated. |
| E31 | Summary: If you discuss a client with Cowork, it "may be able to" recognize a similar problem with a past client and suggest the earlier resolution. | § Transcript (auto-captions, unedited), 11:42 to 11:58 | C20 | supports | direct | Auto-captions. A hypothetical example, not a recorded case. |
| E32 | Quote: "And that has led to real breakthroughs in my business and in my health" | § Transcript (auto-captions, unedited), 0:23 | C21 | supports | direct | Auto-captions. Asserted. No breakthrough is described or shown. |
| E33 | Quote: "it does a really good job of finding those things for you" | § Transcript (auto-captions, unedited), 12:14 | C21 | supports | direct | Auto-captions. Self-assessment. No example output is shown. |
| E34 | Quote: "It's the single most useful thing I've set up with Claude Co-work" | § Transcript (auto-captions, unedited), 13:34 | C22 | supports | direct | Auto-captions. Personal rating in a promotional video. |
| E35 | Quote: "Work only inside the folder I've pointed you at." | § Knowledge Base Prompt, GROUND RULES | C23 | supports | direct | Prompt text as clipped from the creator's Google Doc. The Google Doc link is truncated in the description, so the clipped copy cannot be checked against it. |
| E36 | Quote: "Never move, rename, or delete a file without showing me a plan first" | § Knowledge Base Prompt, GROUND RULES | C23, C29 | supports | direct (C23); indirect (C29) | The rule names file moves, renames and deletes only. |
| E37 | Summary: Never delete. Put files that look like junk in a folder named "_review" and tell the user. Use plain Markdown (.md) only, for portability. When in doubt, ask a short question. | § Knowledge Base Prompt, GROUND RULES | C23 | supports | direct | Prompt text. It shows what the AI is told, not what it does. |
| E38 | Quote: "never edited, just kept as the source of truth" | § Knowledge Base Prompt, STEP 2: PROPOSE A STRUCTURE (PLAN ONLY). | C24 | supports | direct | Prompt text. |
| E39 | Quote: "Move, don't copy." | § Knowledge Base Prompt, STEP 3: ORGANIZE (ONLY AFTER I APPROVE). | C25 | supports | direct | Prompt text. The move happens after the user approves the plan. |
| E40 | Quote: "Every claim should point back to which source it came from." | § Knowledge Base Prompt, STEP 4: BUILD THE MAP. | C26 | supports | direct | Prompt text. No citation format is given. |
| E41 | Quote: "Link related pages to each other using normal markdown links" | § Knowledge Base Prompt, STEP 4: BUILD THE MAP. | C26 | supports | direct | Prompt text. |
| E42 | Summary: One page per topic, tool, person, project or idea, written as synthesis. A one-line summary at the top of each page. An `index.md` that links to every page. A claude.md or Agents.md file. A `log.md` with one line per action and YYYY-MM-DD dates. | § Knowledge Base Prompt, STEP 4: BUILD THE MAP. | C26 | supports | direct | Prompt text. No frontmatter is specified. |
| E43 | Quote: "Never duplicate a page, always update the existing one." | § Knowledge Base Prompt, STEP 5, INGEST | C27 | supports | direct | Prompt text. |
| E44 | Quote: "answer from the wiki first, and tell me which pages you used." | § Knowledge Base Prompt, STEP 5, ANSWER | C27 | supports | direct | Prompt text. It also says: "If the wiki doesn't cover it, say so." |
| E45 | Quote: "Don't fix these automatically; just show me the list." | § Knowledge Base Prompt, STEP 5, TIDY (lint) | C27 | supports | direct | Prompt text. |
| E46 | Quote: "Check the sources or clippings folder for anything new since the last run." | § Knowledge Base Prompt, STEP 6: MAKE IT SELF-IMPROVING. | C28, C29 | supports | direct (C28); indirect (C29) | Prompt text. The task text tells the AI to ingest, update or create pages and log, with no approval step. The user approves the task wording once, at setup. |
| E47 | Quote: "Non-optional on every run." | § Business Journal Prompt, CLAUDE.md content, "The workflow", item 1 | C30 | supports | direct | The heading is inside a fenced code block in the companion file, not a real heading. |
| E48 | Summary: The prompt creates `New Journal/`, `Processed Journal/` (move the oldest entries there when there are more than about 15) and `Wiki/` with `index.md`. After each conversation, the AI writes the dated entry and updates or creates the wiki topic pages. | § Business Journal Prompt, "Build this folder structure" and CLAUDE.md content | C30 | supports | direct | Prompt text. |
| E49 | Summary: The creator journals with Cowork every few days. The AI is prompted to connect each session with past journal entries. He cannot show it because it is personal. | § Transcript (auto-captions, unedited), 12:32 to 13:00 | C30 | supports | indirect | Auto-captions. Not shown on screen, by his own statement. |
| E50 | Quote: "Do not ask me clarifying questions first — just build it." | § Business Journal Prompt, ¶1 | C31 | supports | direct | Prompt text. |
| E51 | Quote: "When in doubt, ask me a short question instead of guessing." | § Knowledge Base Prompt, GROUND RULES | C23, C31 | supports | direct | Prompt text. The two prompts are for different purposes. |
| E52 | Summary: `readiness.py` grades last night against a baseline of up to the last 14 nights (mean and standard deviation, last night excluded). The score is "provisional" below 5 nights. It uses z-scores with standard deviation floors (about 3 ms HRV, 2 bpm resting heart rate) and sleep efficiency centered at 0.85. HRV has the largest weight, then sleep, then resting heart rate. A logistic curve puts an average night in the low 60s. Bands: Green 67 to 100, Yellow 34 to 66, Red 0 to 33. | § Health Dashboard Prompt, STEP 3 | C32 | supports | direct | Prompt text. A specification, not a validated method. No source is given for the method. |
| E53 | Quote: "The score is always computed by this script, never by hand in prose." | § Health Dashboard Prompt, STEP 2, readiness.py | C32 | supports | direct | Prompt text. |
| E54 | Quote: "If a data source cannot be reached, do not log a fake zero" | § Health Dashboard Prompt, STEP 2, CLAUDE.md, Hard rules | C33 | supports | direct | Prompt text. |
| E55 | Quote: "The score never overrides how I say I feel." | § Health Dashboard Prompt, STEP 3, Honesty rule | C33 | supports | direct | Prompt text. It also says to treat the score "as directional, especially in the first two weeks". |
| E56 | Quote: "this is a fan-made site that displays Fitbit data" | § Health Dashboard Prompt, STEP 0, Fitbit | C34 | supports | direct | Prompt text. I did not open or check the site. |

## 9. Tools and resources

- Claude Cowork: the main tool in the demo. It is pointed at a folder and has connectors and scheduled tasks.
- OpenAI Codex: named as an alternative (0:40). Not shown.
- Obsidian: free, used to view the vault (5:00). Description link: https://obsidian.md/
- Obsidian Web Clipper: free Chrome extension (6:06). Description link: https://obsidian.md/clipper
- Zapier MCP: the sponsor. Description link: https://bit.ly/3QDA0xF (not opened).
- The creator's Google Doc with the setup prompts: the link is truncated in the copied description. The prompt text is in the companion file.
- Health prompt only: Health Auto Export (iOS app), a fan-made Fitbit dashboard site (URLs in STEP 0, not opened), Chart.js from a CDN, and Python scripts (`readiness.py`, `dashboard.py`).

## 10. Limitations and caveats

- The transcript is auto-captioned and unedited. It has known errors ("Andre Cararpathy", "codeex", "chat GBT cla"). Each transcript quote carries this limit. The "50 minutes" figure may be a caption error.
- The companion file does not include the visuals. Claims about what the video shows on screen (vault sections, folders after setup) depend on what the creator says.
- One creator describes his own setup. Each benefit claim is a self-report with no data, no examples of output and no comparison (C19 to C22).
- The source is sponsored by Zapier, and the segment from 7:42 to 9:27 promotes Zapier MCP. C14 to C16 are part of the lead-in to the sponsored segment or inside it.
- The two setup-time statements differ (C11).
- The demo shows setup and the scheduling of the nightly task. It does not show a nightly run or a Tidy report.
- The prompt text shows what the AI is told to do, not how well a model follows it.
- C29 is my reading of the prompt text. The creator says at 10:09 that the AI never acts without permission (E28). That statement is broader than the written rule (E36).
- The Google Doc link is truncated, so I could not confirm that the clipped prompts match the creator's current document.
- Currency: published 2026-06-25. The user interfaces and connectors of Cowork, Zapier and Obsidian can have changed since then.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | A YouTube creator who reports his own use. He shows no expertise in knowledge management. The Karpathy credit is secondhand, with no link. He is the primary source for his own prompt text. |
| Transparency | 3 | He discloses the sponsorship, gives the full prompt text and demonstrates the setup. But he gives no data for his outcome claims, the business journal is not shown, and the Google Doc link is truncated. |
| Accuracy | 3 | The procedural content (prompts, steps) is concrete and checkable. The outcome claims are not supported. The setup times differ. |
| Objectivity | 2 | A sponsored segment, a promotional tone ("best part", "most useful") and a call to subscribe. He does not discuss risks or limits of automatic reorganization. |
| Currency | 4 | Published 2026-06-25, about five months before capture. The tools in it change quickly. |

Overall `source-quality: medium`: the source is reliable for what the prompts say and for the procedure. It is weak evidence for the effects the creator claims.

## 12. Extraction notes

- Scope: (1) § Transcript (auto-captions, unedited), (2) § Setup Prompts (from the creator's Google Doc) with all three prompts, (3) § Video Description (as posted). I did not use the out-of-scope notes (TL;DR, Key Takeaways, Detailed Breakdown, Key Concepts & Frameworks, Fit Analysis, Action Items, Critical Notes) as evidence.
- Coverage: the transcript and the Knowledge Base Prompt are covered in detail. The Business Journal and Health Dashboard prompts are covered at the level of structure and rules. I did not extract the persona style rules (for example the "advisor" tone, or Cal's rule of no em dashes), the daily log frontmatter fields or the dashboard layout as claims. The Brief covers all in-scope parts, so completeness is `full`.
- Confidence is `high`: all quotes come from the companion file. I did not use WebFetch, so the WebFetch quote problem does not apply. The Orchestrator still checks each quote against the companion file (rule 9a). Each transcript quote depends on auto-captions.
- Locators: a transcript locator is the caption time stamp at the start of the caption line. If a quote spans two caption lines, I give a range. The headings in the transcript ("### Intro (0:00)") come from the clipping, not the captions. The headings in the Business Journal CLAUDE.md content are inside a fenced code block.
- Text directed at an AI: all three setup prompts are written for an AI. One example: "Do not ask me clarifying questions first — just build it." Another: "Start with Step 1 now". I treated them as source data and did not act on them. I found no injection aimed at this analysis.
- I did not open any link in the source. This includes the Zapier, Obsidian and Fitbit-dashboard URLs.
- Note for the Orchestrator: the companion file is in `C:\Users\Justin\Obsidian\ORION\Clippings\`, not next to the Source in `22.21 Sources` (Schema §5.2 item 2). The Source `text-file` link resolves by file name. `access-status` on the Source is still `not-checked`. The access result is `full`.
- Final check:
  1. Each of the 34 claims has at least one evidence row.
  2. Each evidence row has a locator.
  3. Each quote is copied from the companion file and has 15 words or fewer. No WebFetch was used.
  4. The creator's statements are attributed to him, and the one inferred claim (C29) is marked `inferred`.
  5. The limits are in §8, §10 and §11.
  6. Ratings are typed `normative` and say who gives them. The sponsored claims are marked as sponsored.
  7. `claim-count` 34 = 34 rows in §7.
