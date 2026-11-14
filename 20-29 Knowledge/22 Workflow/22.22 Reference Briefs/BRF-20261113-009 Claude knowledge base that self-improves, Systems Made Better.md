---
id: BRF-20261113-009
type: reference-brief
title: "Build A Claude Knowledge Base That Self-Improves!"
status: validated
created: 2026-11-13T18:40
updated: 2026-11-13T18:40
created-by: reporter
schema-version: "0.10"
source: "[[SRC-20261113-010 Claude knowledge base that self-improves, Systems Made Better]]"
processing-level: full-review
source-quality: low
extraction-completeness: full
extraction-confidence: medium
claim-count: 39
---

## 1. Executive summary

A YouTube tutorial (Systems Made Better, presenter Simon, published 2026-05-23). The presenter builds a "self-improving" personal knowledge base in Claude Cowork. He says that it follows an approach from Andrej Karpathy. The method uses one CLAUDE.md schema file and three folders: `raw` (unsorted capture), `wiki` (written only by the AI), and `outputs` (saved answers). It has five steps: set up, dump, build the wiki, ask questions and save the answers back, and run a periodic health check. The video is a single demo with many claims of benefit but no measurements. It also promotes the presenter's paid or beta "Cowork OS" product.

## 2. Central premise and author intent

Premise: tools like Notion and Obsidian make the user the librarian. An LLM can do that job instead. It organizes, links, summarizes, and indexes raw material. A loop of saved answers and a monthly audit make the base better over time. Intent: teach the method step by step, persuade viewers that the method is simple and valuable, and send viewers to the presenter's templates and Cowork OS.

## 3. Key takeaways

- The method is five steps: set up, dump, build the wiki, ask and save, health check (C1).
- The structure is one CLAUDE.md schema plus three folders: raw, wiki, and outputs. The user does not edit the wiki (C2 to C5).
- The presenter says that at the scale of Karpathy's base (as he reports it: about 100 articles, 400,000 words), no RAG or vector store is necessary. The LLM keeps an index (C7, C8).
- A change log acts as the system's memory of what it has processed (C13).
- In the demo, Claude did not save answers to `outputs` by default. The presenter had to add a rule (C25).
- Reason for the health check: AI errors that are saved back can compound (C27). In the demo the check is a skill plus a monthly scheduled task (C29 to C31).
- The cost is high. The wiki build and the health check use a large share of a Max plan session (C22, C34).
- The claims of improvement and of value at "day 100" are predictions. The video does not measure them (C24, C37).

## 4. Facts and figures

All figures are the presenter's statements. None is cited or checked in the video.

- Karpathy's post: 105,000 bookmarks (0:23). The poster is named only in the chapter heading.
- Karpathy's knowledge base: about 100 articles and 400,000 words (3:15).
- Build time estimate: about 45 minutes in total (0:35, 35:34), about 10 minutes for the dump (11:11), and about 30 minutes for the wiki build (16:02).
- Model used: Opus 4.7 (5:14).
- Usage: 39% of the current session during the wiki build, which included other work (18:49). 45% of the session on a "5x max plan" after the two health-check runs (32:53).
- Scheduled health-check run: about 12 minutes (30:06).
- Stale-article threshold in the skill: older than 90 days (27:24).
- A claimed Claude announcement that session limits are doubled, but not weekly limits (18:54 to 19:02). This statement is tied to its date.

## 5. Methods and frameworks

- **Five-step framework** (1:06 to 1:19): set up, dump, build the wiki, ask and save answers back, health check.
- **Structure** (2:06 to 3:01): a root CLAUDE.md ("the schema"), `raw/`, `wiki/`, `outputs/`. A parent folder holds many knowledge bases, each with its own CLAUDE.md (2:49 to 2:56, 5:57 to 6:22).
- **Set-up**: Claude drafts the CLAUDE.md files from the presenter's template and Karpathy's explanation. The files include ingestion rules, an optional guided-ingestion mode, and a health-check outline. A change log or memory file records what has been processed (6:22 to 10:54).
- **Dump**: capture without order. Sources: the Notion connector (10 to 20 entries), text pasted into chat, PDF and JPEG files, markdown files made by hand, and the Obsidian Web Clipper (11:59 to 15:49). A "context map" file tells Claude where the user's databases are (12:56).
- **Build-wiki prompt** (16:11 to 16:23): read everything in raw, compile the wiki by the rules in CLAUDE.md, write the index first, make one file per major topic, link related topics. Claude must read an anti-AI-writing style guide first (17:33 to 18:13).
- **Compounding loop** (20:40 to 24:00): ask questions and save each answer to `outputs`. Add a CLAUDE.md rule for this (22:07 to 22:21). Ask "biggest gaps" questions. Tell the system to read `outputs` (24:00).
- **Health check, manual prompt** (24:46 to 25:06): flag contradictions and inconsistent data, fill gaps with web search, list claims without a source in raw, suggest connections and three new articles. In the demo the run is report-only, with no wiki edits (25:24 to 25:31).
- **Health check as a skill and a scheduled task** (25:48 to 27:47): a monthly scheduled task that runs a skill made with the skill-creator plug-in. Phase 1 reads the writing rules, change log, wiki, ingested files, and recent outputs, then runs the audit and writes a report. Phase 2, in interactive use, asks which findings to act on. The task can also act without pausing for approval. Afterwards the presenter has Claude run the action list (32:05 to 33:36).
- **Presentation rule** (34:08 to 34:23): CLAUDE.md is updated so that each report shows as a clickable page in chat.

## 6. Concepts and definitions

- **LLM as librarian**: the AI, not the user, organizes, links, summarizes, and indexes the material (16:55 to 17:08).
- **Schema (CLAUDE.md)**: the file that "directs Claude on how to read it and use it" (2:16).
- **Raw as junk drawer**: a capture folder with no organization (2:22 to 2:29, 13:37).
- **Compounding loop**: saved answers feed later answers (1:12 to 1:19, 20:46 to 21:01). The caption at 1:12 says "compounding link".
- **Health check**: a periodic audit that stops errors from building on errors (24:06 to 24:19).
- **Change log as system memory**: a record of runs and ingested files (10:46 to 10:54, 15:49 to 15:55).
- **Context map**: a file that lists the user's key Notion databases for Claude (12:56 to 13:09).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source presents a five-step method: set up, dump information, have the AI build a wiki, ask questions and save answers back, and run a health check. | procedural | explicit | E1, E2 | high |
| C2 | In the method, a CLAUDE.md file at the root of the knowledge base is the schema, with three folders: raw, wiki, and outputs. | procedural | explicit | E3, E4 | high |
| C3 | In the method, raw is a capture folder that the user does not organize. Organization is the AI's job. | procedural | explicit | E4, E5 | high |
| C4 | In the method, the AI writes the wiki and the user never edits it by hand. | procedural | explicit | E4, E6 | high |
| C5 | In the method, outputs holds the answers, briefings, and reports that the AI generates, and these are fed back in to refine the base. | procedural | explicit | E4, E7 | high |
| C6 | The source says that the method needs no database, no Obsidian, no vault setup, and no code, only folders and text files. | normative | explicit | E8, E9 | high |
| C7 | The source says that at the scale of Karpathy's base, no RAG embedding or vector store is necessary, because the LLM keeps an index and reads what it needs. | causal | explicit | E10, E11, E12 | high |
| C8 | The source reports that Karpathy's own knowledge base is about 100 articles and 400,000 words. | factual | explicit | E11 | high |
| C9 | The source argues that the approach will probably work for a viewer's business because it works for a highly respected AI researcher. | predictive | explicit | E13 | high |
| C10 | The source reports that 105,000 people bookmarked the post in which the researcher described his knowledge base. | factual | explicit | E14 | medium |
| C11 | The presenter estimates that the build takes about 45 minutes: about 10 minutes for the dump and about 30 minutes for the wiki build. | predictive | explicit | E15, E16 | high |
| C12 | The source says that a parent folder can hold many knowledge bases, each with its own CLAUDE.md, and a top-level CLAUDE.md that explains the layout for new ones. | procedural | explicit | E17, E18 | high |
| C13 | In the method, a change log acts as the system's memory, so that automated runs know which raw files are new and which are already processed. | procedural | explicit | E19, E20 | high |
| C14 | In the demo, the presenter works in Claude Cowork with Opus 4.7, and Claude drafts the CLAUDE.md files from his template and Karpathy's explanation. | factual | explicit | E21, E22, E23 | high |
| C15 | The demo adds material to raw through the Notion connector, text pasted into chat, PDF and image files, and markdown files made by hand. The presenter names the Obsidian Web Clipper as a free one-click way to convert web pages to markdown. | procedural | explicit | E24, E25 | high |
| C16 | The presenter recommends a context map file that lists the user's key Notion databases, so that Claude can find source material. | procedural | explicit | E26 | medium |
| C17 | The presenter thinks that PDFs are harder for the AI to read. | normative | explicit | E27 | high |
| C18 | The source's build-wiki prompt tells Claude to read everything in raw, follow the CLAUDE.md rules, write the index first, make one file per major topic, and link related topics. | procedural | explicit | E28, E29 | high |
| C19 | The source says that Notion and Obsidian make the user the librarian, and that the LLM approach (credited to Karpathy) makes the AI the librarian. | normative | explicit | E30, E31 | high |
| C20 | The source rates the method as simpler than any Obsidian-plus-plugin setup. | normative | explicit | E32 | high |
| C21 | The presenter recommends that Claude read an anti-AI-writing style guide, built from Wikipedia's page on AI writing style, before it writes the wiki. | procedural | explicit | E33, E34 | high |
| C22 | The presenter says that the wiki build is demanding on usage and needs either several sessions or a Max plan. | normative | explicit | E35 | high |
| C23 | The source reports that Claude recently announced doubled session usage limits (not weekly limits). | factual | explicit | E36 | medium |
| C24 | The source says that each saved answer makes the next answer better, so the system gets smarter the more it is used. | causal | explicit | E2, E7, E37, E38 | high |
| C25 | In the demo, Claude did not save the answer to outputs by default, and the presenter added a CLAUDE.md rule so that each answer is saved there. | factual | explicit | E39, E40 | high |
| C26 | In the demo, a "three biggest gaps" query reported gaps in the wiki: the mechanics of stopping, a decision method for what is essential, and working with other people. | factual | explicit | E41, E42 | medium |
| C27 | The source says that a health check is necessary because the AI sometimes writes something wrong, and later answers built on saved output can repeat the mistake. So the source recommends a monthly audit. | causal | explicit | E43 | high |
| C28 | The source's manual health-check prompt asks Claude to flag contradictions and inconsistent data, fill missing data with web search, list claims with no source in raw, and suggest new connections and three new articles. | procedural | explicit | E44, E45, E46 | high |
| C29 | In the demo, the health check is a skill made with the skill-creator plug-in, run by a monthly scheduled task. The task can be set to act without pausing for approval. | procedural | explicit | E47, E48 | high |
| C30 | The source says that the health-check skill runs a seven-stage audit, including contradictions, broken backlinks and orphaned references, source provenance, raw-file coverage, stale articles (older than 90 days), and suggested new articles. | procedural | explicit | E49, E50, E51 | medium |
| C31 | The health-check skill has two phases: an audit that writes a report, then (in interactive use) a step that asks which findings to act on. | procedural | explicit | E52 | medium |
| C32 | In the demo, the manual audit reported contradictions, attribution drift, unsourced claims, and unprocessed raw files, and rated the early wiki "unusually clean". | factual | explicit | E53, E54 | medium |
| C33 | In the demo, the scheduled health-check run took about 12 minutes. | factual | explicit | E55 | high |
| C34 | In the demo, session usage was at 45% on a Max 5x plan after the health-check runs. The presenter calls this a significant but acceptable cost for a monthly run. | factual | explicit | E56, E57 | medium |
| C35 | The presenter recommends running the monthly check for each knowledge base on a different day, to spread the usage cost. | procedural | explicit | E58 | high |
| C36 | The presenter recommends that, after testing the two phases, users let the system do the work, report, and act automatically. | normative | explicit | E59 | high |
| C37 | The source predicts that the base is modest on day one but becomes, by day 100, a valuable asset that others cannot easily copy. | predictive | explicit | E60, E61 | high |
| C38 | The source says that a custom agent pointed at a knowledge base becomes a specialist expert that the user can talk to. The video does not show this. | predictive | explicit | E62 | high |
| C39 | The presenter says that the folders, CLAUDE.md, prompt, and health check from the video ship inside his Claude Cowork OS product, and the video promotes his templates. | factual | explicit | E63, E64 | high |

## 8. Evidence and locators

Locators are caption time stamps in the companion file `[[SRC-20261113-010 Claude knowledge base that self-improves, Systems Made Better (text)]]`, section "Transcript". A range gives the first and last caption segment.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "The five-step framework is this. You set it up. You dump your information" | 1:06 | C1 | supports | direct | Steps 3 to 5 continue in the next segments. |
| E2 | Summary: After set-up and dump, the AI builds a wiki. The user asks questions and saves the answers back. A health check and that loop keep the base improving. | 1:12–1:19 | C1, C24 | supports | direct | Presenter's description. No data. |
| E3 | Quote: "a Claude MD at the top of the knowledge base which is the schema" | 2:16 | C2 | supports | direct | Caption form. "Claude MD" is taken to mean a CLAUDE.md file. |
| E4 | Summary: Three folders: raw, a "junk drawer" for articles, notes, screenshots, and meetings, kept unorganized; wiki, where the AI writes the organized version; outputs, for the answers, briefings, and reports that the AI generates. | 2:22–2:43 | C2, C3, C4, C5 | supports | direct | A design statement only. |
| E5 | Quote: "Don't make this pretty. The point is it's a folder for capture." | 13:37 | C3 | supports | direct | Advice. No evidence that unorganized capture gives better results. |
| E6 | Quote: "You never edit this by hand. It's all done by the AI." | 2:37 | C4 | supports | direct | A rule of the method. No reason given. |
| E7 | Quote: "the best bit is those then get fed back in and help to refine" | 2:43 | C5, C24 | supports | direct | An assertion. No measurement. |
| E8 | Quote: "No database, no obsidian, no vault setup, just folders and text files" | 3:01 | C6 | supports | direct | Presenter's framing. The demo relies on Claude Cowork, a Notion connector, and a plug-in. |
| E9 | Quote: "vector databases, no code, just a brilliant self-improving knowledge base" | 0:41 | C6 | supports | direct | "brilliant" is the presenter's rating. "No code" means that the user writes no code. |
| E10 | Quote: "you don't need a rag embedding or any vector store" | 3:08 | C7 | supports | direct | No scale threshold is given. Not tested. |
| E11 | Quote: "around a 100 articles and 400,000 words. And the LLM handles it fine" | 3:15 | C7, C8 | supports | direct | Second-hand figure. The transcript has no citation to Karpathy's post. "Handles it fine" is not measured. |
| E12 | Quote: "maintaining an index and reading what it needs" | 3:20 | C7 | supports | direct | Describes Karpathy's setup as the presenter reports it. Not shown. |
| E13 | Quote: "If it works for one of the most respected AI researchers alive, it'll" | 3:20 | C9 | supports | direct | Argument from authority. The scale of a business base is not compared. |
| E14 | Quote: "105,000 people bookmarked it, and probably almost none of them have" | 0:23 | C10 | supports | direct | No citation. This passage does not name the poster ("one of the most respected voices in AI", 0:06–0:13). Only the chapter heading names Karpathy. "Almost none built one" is a guess. |
| E15 | Quote: "it takes probably 45 minutes to build over a weekend" | 0:35 | C11 | supports | direct | An estimate. |
| E16 | Summary: The presenter estimates about 10 minutes for the dump and about 30 minutes for the wiki build. Near the end he repeats the 45-minute figure for a Saturday morning. | 11:11; 16:02; 35:34 | C11 | supports | direct | Estimates. The demo used several sessions, and the health check took about 12 minutes more. |
| E17 | Quote: "That means you can have multiple knowledge bases all connected together." | 2:56 | C12 | supports | direct | The source does not explain "connected". |
| E18 | Summary: The presenter makes a parent folder, "second brain knowledge", and asks Claude for a CLAUDE.md there that explains the layout when a new knowledge base is made. Each knowledge base has its own CLAUDE.md. | 5:57–6:22; 8:36–8:54 | C12 | supports | direct | One demo. |
| E19 | Summary: The presenter asks if a memory file must record the last action, so that the automated process knows what in raw is new and what is processed. Claude agrees. | 9:52–10:11 | C13 | supports | direct | The transcript reports Claude's reply but does not show it. |
| E20 | Quote: "will be doubling as a systems memory" | 10:54 | C13 | supports | direct | Refers to the change log MD (10:46). |
| E21 | Quote: "Okay, I am doing this in Claude Co-work." | 3:59 | C14 | supports | direct | None. |
| E22 | Quote: "going to use Opus 4.7 because it's intelligent and it will do the work" | 5:14 | C14 | supports | direct | He adds that he probably does not need it. Model names are tied to their date. |
| E23 | Summary: Claude drafts the top-level and knowledge-base CLAUDE.md files from the presenter's template and Karpathy's explanation. The files include ingestion rules, a guided-ingestion mode, and a health-check outline. | 6:22–9:07 | C14 | supports | direct | The final file content is shown only in part. |
| E24 | Summary: Claude pulls 10 to 20 entries from the presenter's Notion knowledge database through the Notion connector. He pastes a Cal Newport post into chat, drops a PDF and a JPEG into raw, and makes a markdown file by hand in a desktop app. | 12:04–15:42 | C15 | supports | direct | The quality of PDF and image ingestion is not shown. The captions name the app "Xcode", which can be a caption error. |
| E25 | Quote: "a great web clipper browser extension that converts any page into a clean markdown" | 15:13 | C15 | supports | direct | Refers to Obsidian's clipper. "great" is his rating. He says it is free at 15:20. |
| E26 | Quote: "in my system I have an about me section and a context map" | 12:56 | C16 | supports | direct | He says that Claude "should have already known" (13:09). The demo does not test the effect of the context map. |
| E27 | Quote: "harder to read. I think the AI has more trouble with that" | 14:16 | C17 | supports | direct | An opinion. The video does not report the result. |
| E28 | Quote: "Read everything in RAW and compile a wiki in the wiki folder following the" | 16:11 | C18 | supports | direct | None. |
| E29 | Quote: "Create the index MD first, then one MD file per" | 16:16 | C18 | supports | direct | Continues at 16:23 with major topics and links between related topics. |
| E30 | Quote: "they kind of ask you to be the librarian" | 16:43 | C19 | supports | direct | An opinion. No data. |
| E31 | Summary: The presenter says that Karpathy's approach makes the AI the librarian. The user dumps information in, and Claude organizes, links, summarizes, and indexes it. | 16:55–17:08 | C19 | supports | direct | He credits Karpathy without a citation. |
| E32 | Quote: "why it beats every Obsidian Plus plug-in setup you can find for simplicity" | 1:25 | C20 | supports | direct | The video shows no comparison. |
| E33 | Quote: "make sure that it's read your anti-AI writing style" | 17:33 | C21 | supports | direct | None. |
| E34 | Summary: His writing-rules file comes from the Wikipedia page on AI writing style. He pasted that page into Claude and asked for instructions that avoid those patterns. | 17:47–18:07 | C21 | supports | direct | The effect on the output is not measured. The exact Wikipedia page title is not given. |
| E35 | Quote: "you are going to probably either need to do it in sessions" | 18:38 | C22 | supports | direct | Usage at 18:49 (39%) includes other work, as he says. |
| E36 | Quote: "Claude recently announced that they are doubling usage limits across sessions" | 18:54 | C23 | supports | direct | Second-hand. No citation. Tied to its date (video 2026-05-23). At 19:02 he says that this applies to session limits, not weekly limits. |
| E37 | Quote: "the system gets smarter the more you use it" | 20:53 | C24 | supports | direct | No measurement. |
| E38 | Summary: After the health-check actions, the presenter asks a new question and expects a "very different" result. He gets a report but does not compare it with the earlier answer. | 33:42–34:28 | C24 | supports | indirect | No side-by-side comparison. One example. |
| E39 | Quote: "Let's have a look. Well, it didn't." | 22:01 | C25 | supports | direct | One demo run. |
| E40 | Summary: He asks Claude to update CLAUDE.md so that the report for each question goes into outputs. | 22:07–22:21 | C25 | supports | direct | None. |
| E41 | Quote: "what are the three biggest gaps in my understanding of this topic?" | 22:32 | C26 | supports | direct | None. |
| E42 | Summary: The gaps report says that the wiki lacks the starting state of most people, the mechanics of stopping, a decision method for what is essential, and working with other people. | 23:24–23:47 | C26 | supports | direct | The presenter reads the screen aloud. The transcript does not have the full report. |
| E43 | Quote: "You'll save it back and the next answer quietly builds on a mistake." | 24:12 | C27 | supports | direct | The video shows no example of an error that compounds. |
| E44 | Summary: The manual prompt asks Claude to review the whole wiki, flag contradictions and inconsistent data, fill missing data with web search, list claims not backed by a source in raw, and suggest new connections and three new article candidates. | 24:46–25:06 | C28 | supports | direct | None. |
| E45 | Quote: "Flag contradictions and inconsistent data between articles." | 24:51 | C28 | supports | direct | None. |
| E46 | Summary: For the demo he tells Claude not to invoke his health-check skill and not to edit the wiki, only to report in chat. | 25:11–25:31 | C28 | supports | direct | Report-only mode for the demo. |
| E47 | Summary: He asks the system to make a monthly scheduled task with a health-check skill that the skill-creator plug-in makes. A custom schedule is possible. | 25:55–26:27 | C29 | supports | direct | None. |
| E48 | Quote: "pausing for approval if you want. That's an option." | 26:38 | C29 | supports | direct | He does not say if his scheduled task uses this option. |
| E49 | Quote: "And then it runs a sevenstage audit." | 27:06 | C30 | supports | direct | None. |
| E50 | Summary: He names these stages: contradictions; broken backlinks and orphaned references; source provenance; raw-file coverage; stale articles; suggested new articles. That is six names. The transcript does not name a seventh. | 27:13–27:24 | C30 | supports | direct | The captions can have dropped a stage. The report at 31:16 mentions style fixes, which can be the seventh stage. |
| E51 | Quote: "out of date, older than 90 days and not relevant" | 27:24 | C30 | supports | direct | None. |
| E52 | Summary: Phase one reads the writing rules, the change log, the wiki, the ingested files, and the outputs made since the last check. Then it audits and writes a report. Phase two, in interactive use, asks which findings to act on. | 26:52–27:47 | C31 | supports | direct | The caption text at 27:35–27:47 is not clear. |
| E53 | Quote: "So, quick verdict. It's unusually clean" | 28:31 | C32 | supports | direct | This is Claude's rating of the wiki that Claude wrote. |
| E54 | Summary: The manual audit reports a contradiction (effort versus effortlessness), inconsistent numbers, attribution drift, unsourced claims, missing underlying research, a file not ingested, a JPEG not accounted for, and new connections. | 27:58–28:46 | C32 | supports | direct | One run on an early base. The findings are not checked. |
| E55 | Quote: "So that took it about 12 minutes." | 30:06 | C33 | supports | direct | One run. |
| E56 | Quote: "max plan for this current session is at 45%. That's on a 5x max plan." | 32:53 | C34 | supports | direct | Covers the manual audit and the skill run (32:47), possibly with other work. Plan names and limits are tied to their date. |
| E57 | Summary: The presenter calls this a significant use of credits, but acceptable once a month. | 32:53–33:04 | C34 | supports | direct | His judgment. |
| E58 | Quote: "do it for each knowledge base you build on a different day" | 30:19 | C35 | supports | direct | None. |
| E59 | Quote: "you could just say, just do the work, report, and action." | 32:30 | C36 | supports | direct | An opinion. The video gives no evidence on the error rate of unattended actions. |
| E60 | Quote: "useful, but not revolutionary. But day 100, then you've actually built" | 35:03 | C37 | supports | direct | A prediction. The video shows no base that is 100 days old. |
| E61 | Quote: "that kind of asset that's nearly impossible to replicate because nobody" | 35:22 | C37 | supports | direct | An opinion. |
| E62 | Quote: "it becomes a specialist agent expert that you can speak with" | 3:33 | C38 | supports | direct | Not shown. Deferred to another video (3:40). |
| E63 | Quote: "the health check, they all ship inside the final" | 35:41 | C39 | supports | direct | Commercial interest. |
| E64 | Summary: The video asks viewers to subscribe and points them to downloadable templates and the Cowork OS (in beta) several times. | 1:44; 10:27; 19:58; 25:47; 31:53; 35:48 | C39 | supports | direct | None. |

## 9. Tools and resources

- Claude Cowork: scheduled tasks, skills, the skill-creator plug-in, the Notion connector, and usage settings.
- Model: Opus 4.7.
- Notion, used as the presenter's existing knowledge database, with a "context map" file.
- Obsidian Web Clipper (named as free).
- A desktop markdown editor. The captions say "Xcode", which can be a caption error.
- Dictation tool. The captions say "Whisper Flow".
- Speechify, for text-to-speech review.
- The Wikipedia page on signs of AI writing, used as the basis of a writing-rules file.
- "Brief Buddy", the presenter's own phone reporting app. He does not explain it.
- The presenter's templates and Claude Cowork OS (beta), promoted in the video.
- Karpathy's post on his knowledge base. The transcript refers to it but has no link or citation.

## 10. Limitations and caveats

- One demo by one person on one new base. The video does not measure if answers get better, how often errors occur, or if the health check catches real errors.
- Claims of benefit ("self-improving", "gets smarter", "day 100 asset") are assertions or predictions. They are not demonstrated.
- The facts about Karpathy (bookmarks, base size, no RAG) are second-hand and have no citation in the transcript.
- The text is auto-generated captions with errors (for example "Kapathy", "clawed MD", "Mchuan", "BJ fog"). Some quotes keep these caption forms.
- The transcript does not show the content on screen (the final CLAUDE.md, the skill text, the reports) except where the presenter reads it aloud.
- Inside the source: the skill is called a "seven-stage" audit, but the transcript lists six stages (E50).
- Inside the source: the presenter gives a reason for a health check (errors compound, C27). He also suggests letting the system act automatically after testing (C36). The source does not discuss this tension.
- The audit verdict "unusually clean" is Claude rating its own work (E53).
- Commercial interest: the presenter promotes his own product and templates throughout.
- The usage figures, plan names, the model version, and the "doubled limits" statement are tied to their date (May 2026).
- The presenter's use of "credits" and session percentages does not separate the cost of the health check from his other work.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | A YouTube creator shows his own setup. He states no credentials. He relies on Karpathy's authority, with no citation. |
| Transparency | 3 | He speaks his prompts aloud and walks through the steps. The full CLAUDE.md, the skill text, and the source post are not given in the transcript. |
| Accuracy | 2 | Auto captions with errors. Uncited second-hand figures. The "seven-stage" audit lists six stages. The improvement claims are not measured. |
| Objectivity | 2 | Strong enthusiasm, and repeated promotion of the presenter's own product and templates. |
| Currency | 4 | Published 2026-05-23, about six months before capture. Details of the tools and plans can have changed. |

## 12. Extraction notes

- Scope: only the "Transcript" section of the companion file, 0:00 to 36:13. The summary sections above it (TL;DR through Critical Notes) are notes made after the video. I did not cite them as evidence, as instructed. I read them because they are in the same file, but they did not change any claim. The caption-error list in "Critical Notes" agrees with my own reading of the captions.
- Access: `full`. The source is the companion file, so the quotes come from that file and not from WebFetch. The Orchestrator can still check each `Quote:` against the companion file under rule 9a. Each quote comes from one caption segment, at the time stamp given.
- Locators: caption time stamps. A range gives the first and last segment. Several time stamps separated by `;` show separate places.
- Completeness `full`: all chapters are covered. Confidence `medium`: the captions have errors, the screen content is missing, and some caption passages are unclear (27:35–27:47).
- `source-quality: low` describes the source as evidence that the method works. As a record of what the presenter did in his demo, the procedural claims are reliable.
- Fetched content: the transcript has prompts that the presenter spoke to Claude in the demo. Examples: the build-wiki prompt at 16:11, and "please do not invoke my health check skill" at 25:11–25:19. These are source content. They are not directed at this agent, and I did not act on them. I found no injection directed at an AI reader.
- Final check:
  1. Each Claim Candidate has at least one evidence row. Yes.
  2. Each evidence row has a locator. Yes. No row uses `unavailable`.
  3. Each `Quote:` is copied from the companion file and has 15 words or fewer. Yes. WebFetch was not used.
  4. Facts, statements of the source, and my interpretations are separate. Yes. Ratings and predictions are typed `normative` or `predictive`, and the claims name the source or the presenter.
  5. Limits and uncertainty are visible in §8, §10, and §11. Yes.
  6. No claim is presented as a verified fact. Second-hand figures (C8, C10, C23) name the source as the reporter. The claim set has no survey figures.
  7. `claim-count` is 39, and §7 has 39 rows. Yes.
