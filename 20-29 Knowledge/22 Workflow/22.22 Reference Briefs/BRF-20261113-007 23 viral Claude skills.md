---
id: BRF-20261113-007
type: reference-brief
title: I Tried 23 Viral Claude Skills. These Are the Best
status: validated
created: 2026-11-13T18:20
updated: 2026-11-13T18:20
created-by: reporter
schema-version: "0.10"
source: "[[SRC-20261113-012 23 viral Claude skills]]"
processing-level: full-review
source-quality: low
extraction-completeness: full
extraction-confidence: high
claim-count: 25
---

## 1. Executive summary

This is a newsletter how-to guide by Frank Andrade (Artificial Corner, 2026-11-01). It explains what a Claude skill is and how to install one from GitHub. The author says he tried "23 viral" skills and recommends five that are not only for programmers: Humanizer, Grill Me, Handoff, Agent Skills, and REA. The article also promotes the author's own paid skills. It gives install prompts and links to the repositories. It gives no test method and does not name the other 18 skills.

## 2. Central premise and author intent

Premise: skills fix common problems with Claude, for example text that sounds like AI, Claude guessing instead of asking, and long chats that lose context. Most viral skills are for programmers, but a small set is useful to anyone. Intent: give non-technical readers a short list they can install with a single prompt. The article also grows the newsletter (it asks readers to share it) and sells the author's paid skills ("perks page").

## 3. Key takeaways

- A skill is a set of instructions that Claude reads before it works, so that it does a job the same way each time.
- In regular Claude, you can install a skill by pasting its GitHub link with "Install this skill: [link]". Claude Code uses `/plugin` commands.
- Install only from the official page of the tool. The source says that copies of the most viral tool exist on GitHub.
- Humanizer (github.com/blader/humanizer) removes patterns of AI writing. It is based on a Wikipedia editors' guide. It does not give text your own voice.
- Grill Me makes Claude ask questions before it works. Handoff writes a note so that a new chat can continue a long one (github.com/mattpocock/skills).
- Agent Skills (github.com/addyosmani/agent-skills) gives `/spec`, `/plan`, and `/build`. It writes the plan to files, so that a new session can continue the work.
- REA (github.com/morluto/rea) works only in Claude Code. It adds analysis tools to examine how an app works. You must restart Claude Code after the install.
- Advice: install one or two skills, not all five, and use them for a week.

## 4. Facts and figures

- Title figure: the author tried 23 viral skills and kept 5 (source statement; the 18 skills he did not keep are not named).
- The source says there are "thousands" of skills and that most are built for programmers (no count, no data).
- The source says the mattpocock/skills pack is the "most-starred skill pack on GitHub" (no star count, no date).
- Grill Me asks "around twenty questions" (author's description).
- The source says the Agent Skills author, Addy Osmani, is a Google veteran who now works on Claude Code at Anthropic (not checked).
- The author's own skills: Voice, Pyramid Writer, Winston Talk, Head Hunter (for paid subscribers only).

## 5. Methods and frameworks

- Skill installation (regular Claude): paste the link, name the skill if the page has many skills, click Save on the card, then call the skill by name or type "/".
- Skill installation (Claude Code): `/plugin marketplace add <owner/repo>`, then `/plugin install <name>@<marketplace>`.
- Spec-driven workflow (Agent Skills): spec (an interview with multiple-choice questions, edge cases written down), then plan (small tasks), then build (one task at a time, each one checked).
- Context transfer (Handoff): at the end of a long chat, make a short note and paste it into a new chat.
- Question-first work (Grill Me): an interview on purpose, audience, scope, and failure cases before any work starts.
- Adoption advice: one or two skills, try for one week, then add more.

## 6. Concepts and definitions

- Skill: "a set of instructions Claude reads before it works" (source definition).
- Regular Claude and Claude Code: the source separates the chat app from Claude Code (the `</>` icon in the Claude app). Claude Code is necessary for a skill that installs a program.
- AI-writing "tells": a sentence that sets up one idea only to knock it down, groups of three, hype words, tidy setups.
- Handoff note: a short summary that has everything a new chat needs to continue.
- Spec: a written description of what is being built, with edge cases. The source says it can go to a colleague before anything is built.
- REA (Reverse Engineer Anything): a Claude Code tool that examines app files and explains how a feature works. Its health check is called "the doctor".

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | A Claude skill is a set of instructions that Claude reads before it works, so that it does a job the same way each time. | factual | explicit | E1 | high |
| C2 | The source says that most shared Claude skills are on GitHub. | factual | explicit | E2 | high |
| C3 | The source says that there are thousands of skills and that most are built for programmers. | factual | explicit | E3 | high |
| C4 | The author says that he tried the most viral skills (23, in the title) and kept five that anyone can use. | normative | explicit | E4, E5 | high |
| C5 | In regular Claude, a user can install a skill when he pastes its GitHub link with "Install this skill: [link]". Claude then shows a card that the user saves. | procedural | explicit | E6 | high |
| C6 | After the install, a user calls a skill by name in a new chat, or types "/" to list the skills. | procedural | explicit | E7 | high |
| C7 | The source advises users to install a tool only from its official page. | normative | explicit | E8 | high |
| C8 | The source says that the most viral tool in its list has copies on GitHub that look identical to it. | factual | explicit | E9 | high |
| C9 | The source says that Humanizer is a Wikipedia editors' public guide to spotting AI-written text, made into a Claude skill. | factual | explicit | E10 | high |
| C10 | The source says that Humanizer finds AI-writing patterns (set-up-and-knock-down sentences, groups of three, hype words, tidy setups) and removes them, but keeps the meaning. | factual | explicit | E11 | high |
| C11 | The author reports that in his test, Humanizer caught the knock-down sentence and the groups of three. | factual | explicit | E12 | high |
| C12 | The source says that Humanizer cannot make text sound like a specific user's own voice. | factual | explicit | E13 | high |
| C13 | The source says that mattpocock/skills is the most-starred skill pack on GitHub. | factual | explicit | E14 | high |
| C14 | The source says that Grill Me makes Claude interview the user (around twenty questions) before it starts any work. | procedural | explicit | E15, E16 | high |
| C15 | The source says that without Grill Me, Claude guesses the user's answers and builds the wrong thing confidently. | causal | explicit | E17 | high |
| C16 | The source says that Handoff writes a short note that lets a new chat continue a long conversation without loss, also between computers or with another AI. | procedural | explicit | E18, E19 | high |
| C17 | The source says that Agent Skills comes from Addy Osmani, a Google veteran who now works on Claude Code at Anthropic. | factual | explicit | E20 | high |
| C18 | The source says that Agent Skills gives three commands: /spec (an interview, then a written spec), /plan (small tasks), and /build (one task at a time, each one checked). | procedural | explicit | E21, E22 | high |
| C19 | The source says that because Agent Skills writes the plan into files, a new session can continue from where the last one stopped. | causal | explicit | E23 | high |
| C20 | The source says that REA adds professional analysis tools to Claude Code and works only in Claude Code, because it installs a program. | factual | explicit | E24, E25 | high |
| C21 | The source says that Claude Code loads new tools only when it starts, so the user must restart it after the REA install. | factual | explicit | E26 | high |
| C22 | The source says that REA can take a long time and can look frozen, and that this is normal. | factual | explicit | E27 | high |
| C23 | The source advises users to install one or two skills, not all five, and to use them for a week before they add more. | normative | explicit | E28 | high |
| C24 | The source matches each skill to one need: Humanizer for AI-sounding writing, Grill Me for guessing, Handoff for long chats, Agent Skills for building, REA for looking inside an app. | normative | explicit | E29 | high |
| C25 | The source says that the author's own skills (Voice, Pyramid Writer, Winston Talk, Head Hunter) are available only to paid subscribers. | factual | explicit | E30 | high |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "A skill is a set of instructions Claude reads before it works" | § I Tried 23 Viral Claude Skills. These Are the Best (opening section, before § How to install a skill from GitHub), ¶3 | C1 | supports | direct | Informal definition by a newsletter author. Not an official definition. |
| E2 | Summary: Most of the skills that people share are on GitHub, which the source calls a large free library of tools. | § I Tried 23 Viral Claude Skills. These Are the Best (opening section, before § How to install a skill from GitHub), ¶3 | C2 | supports | direct | No data. |
| E3 | Summary: The source says that it is hard to know which skills to install, because there are thousands and most are for programmers. | § I Tried 23 Viral Claude Skills. These Are the Best (opening section, before § How to install a skill from GitHub), ¶4 | C3 | supports | direct | No count or source for "thousands". |
| E4 | Quote: "I tried the most viral ones and kept the five that anyone can use." | § I Tried 23 Viral Claude Skills. These Are the Best (opening section, before § How to install a skill from GitHub), ¶5 | C4 | supports | direct | No test method or criteria. The source does not define "viral". |
| E5 | Summary: The title says that the author tried 23 viral Claude skills. The body names only the five that he kept. | § I Tried 23 Viral Claude Skills. These Are the Best (page title) | C4 | supports | direct | The other 18 skills are not named, so the selection cannot be checked. |
| E6 | Summary: Open a new chat and paste the GitHub link with "Install this skill: [link]". Name the skill if the page has many. Claude fetches the skill and shows a card. Click Save. | § How to install a skill from GitHub, ¶3 to ¶5 | C5 | supports | direct | Steps are for the product at the publication date. They can change. |
| E7 | Summary: Start a new chat and ask for the skill by name. Typing "/" in the message box lists your skills. | § How to install a skill from GitHub, ¶6 | C6 | supports | direct | Same as E6. |
| E8 | Quote: "only use the tool’s official page" | § How to install a skill from GitHub, ¶7 | C7 | supports | direct | The source does not say how to identify the official page. |
| E9 | Quote: "has copies on GitHub that look identical" | § How to install a skill from GitHub, ¶7 | C8 | supports | direct | No examples or links. The source does not name the "most viral tool". |
| E10 | Quote: "Humanizer is that guide turned into a Claude skill." | § #1 Humanizer: Claude’s writing stops sounding like AI, ¶1 | C9 | supports | direct | The source does not link the Wikipedia guide. Not checked. |
| E11 | Summary: Humanizer knows the tells (knock-down sentences, groups of three, hype words, tidy setups). It keeps what you said and removes what makes readers scroll past. | § #1 Humanizer: Claude’s writing stops sounding like AI, ¶2 | C10 | supports | direct | Description by the author. No examples of output in the text. |
| E12 | Quote: "In my test, it caught that sentence and the groups of three." | § #1 Humanizer: Claude’s writing stops sounding like AI, ¶7 | C11 | supports | direct | One test by the author. No input or output text in the companion file (only an image link). |
| E13 | Quote: "One thing it can’t do is make the text sound like you." | § #1 Humanizer: Claude’s writing stops sounding like AI, ¶8 | C12 | supports | direct | Next to this, the author promotes his own "voice file". Interested author. |
| E14 | Quote: "This is the most-starred skill pack on GitHub." | § #2-3 Grill Me & Handoff: Make Claude ask first, and never lose a long chat, ¶1 | C13 | supports | direct | No star count or date. Not checked. |
| E15 | Quote: "makes Claude interview you before it starts working on anything." | § #2-3 Grill Me & Handoff: Make Claude ask first, and never lose a long chat, ¶3 | C14 | supports | direct | Description by the author. |
| E16 | Summary: Type /grill-me and describe the task. Claude asks around twenty questions: why, for whom, what is out of scope, what happens when it fails. | § #2-3 Grill Me & Handoff: Make Claude ask first, and never lose a long chat, ¶4 | C14 | supports | direct | "Around twenty" is approximate. |
| E17 | Quote: "Without it, Claude guesses your answers and builds the wrong thing confidently." | § #2-3 Grill Me & Handoff: Make Claude ask first, and never lose a long chat, ¶4 | C15 | supports | direct | A general claim with no data or comparison. |
| E18 | Quote: "/handoff writes a short note with everything the next chat needs to continue." | § #2-3 Grill Me & Handoff: Make Claude ask first, and never lose a long chat, ¶6 | C16 | supports | direct | The source also says that it works between computers and with another AI. No test shown in the text. |
| E19 | Quote: "moves a long conversation into a fresh chat without losing anything." | § #2-3 Grill Me & Handoff: Make Claude ask first, and never lose a long chat, ¶5 | C16 | supports | direct | "Without losing anything" is an absolute claim with no evidence. A summary note probably loses some detail. |
| E20 | Quote: "a Google veteran who now works on Claude Code at Anthropic" | § #4 Agent Skills: the commands that make Claude plan before it builds, ¶2 | C17 | supports | direct | Biographical claim. Not checked. It can change over time. |
| E21 | Summary: /spec interviews you and writes down what you are building, including edge cases. /plan breaks it into small tasks. /build works through them one at a time and checks each one. | § #4 Agent Skills: the commands that make Claude plan before it builds, ¶3 | C18 | supports | direct | Description by the author. |
| E22 | Summary: The spec skill interviews the user with multiple-choice questions and writes the spec as a file in the chat. | § #4 Agent Skills: the commands that make Claude plan before it builds, ¶9 | C18 | supports | direct | One example. The screenshot is an image link only. |
| E23 | Quote: "Claude picks up from the files, right where you left off." | § #4 Agent Skills: the commands that make Claude plan before it builds, ¶4 | C19 | supports | direct | No test shown. |
| E24 | Quote: "It plugs professional analysis tools into Claude Code." | § #5 REA: Claude reverse-engineers any app on your computer, ¶2 | C20 | supports | direct | The tools are not named. The claim that REA explains "with proof" has no example. |
| E25 | Summary: REA is for Claude Code only, because it installs a program. The install section also says that only one of the tools needs Claude Code. | § #5 REA: Claude reverse-engineers any app on your computer, ¶3; § How to install a skill from GitHub, ¶1 | C20 | supports | direct | None of note. |
| E26 | Quote: "Claude only loads new tools when it starts." | § #5 REA: Claude reverse-engineers any app on your computer, ¶6 | C21 | supports | direct | Product behaviour at the publication date. Not checked. |
| E27 | Quote: "REA can take a while, and it can look frozen along the way." | § #5 REA: Claude reverse-engineers any app on your computer, ¶11 | C22 | supports | direct | No times given. |
| E28 | Quote: "Don’t install all five today. Pick one or two." | § One more thing, ¶1 | C23 | supports | direct | Advice from the author. ¶3 adds: use them for a week. |
| E29 | Summary: The source matches each skill to one need: Humanizer for AI-sounding writing, Grill Me for guessing, Handoff for long chats, Agent Skills for building, REA for looking inside an app. | § One more thing, ¶2 | C24 | supports | direct | Recommendation from the author. |
| E30 | Summary: The author lists four skills that he built (Voice, Pyramid Writer, Winston Talk, Head Hunter). Paid subscribers get them on his perks page. | § The best skills I built, ¶2 to ¶3 | C25 | supports | direct | Promotional content. The skills are not available for checking. |

## 9. Tools and resources

- Humanizer: github.com/blader/humanizer. Claude Code: `/plugin marketplace add blader/humanizer`, `/plugin install humanizer@humanizer`.
- Matt Pocock skills pack (Grill Me, grilling, Handoff): github.com/mattpocock/skills.
- Agent Skills (spec-driven-development, planning-and-task-breakdown, incremental-implementation): github.com/addyosmani/agent-skills. Claude Code: `/plugin marketplace add addyosmani/agent-skills`, `/plugin install agent-skills@addy-agent-skills`.
- REA (Reverse Engineer Anything): github.com/morluto/rea. Claude Code only.
- Author's links in the text: "voice file" (artificialcorner.com/p/voice), beginner's guide to Claude Code (artificialcorner.com/p/claude-code-for-non-techies), perks page (artificialcorner.com/perks). I did not open them.
- Wikipedia editors' guide to spotting AI-written text (mentioned, not linked).

## 10. Limitations and caveats

- The source gives no test method. "Tried 23" is a title claim. The source does not name the 18 rejected skills, and it gives no selection criteria.
- Results are anecdotal: the author's own tests, without data. The example output is only in images, which the companion file does not include.
- Several statements are checkable but not checked: "most-starred" pack, Addy Osmani's employer, the Wikipedia guide as the base of Humanizer, the install commands.
- Absolute wording: "without losing anything" (Handoff) and "fix all of this" (skills in general).
- Conflict of interest: the article promotes the author's paid skills, his voice file, and his newsletter.
- Currency: install steps and product behaviour (cards, `/` menu, restart to load tools) can change quickly.
- The source warns about copies of the tools on GitHub. It does not discuss how to review a skill before installation. It also does not discuss legal or licence questions about reverse-engineering apps with REA. These topics are outside its scope. This does not show that the risks are absent.
- The article contains prompts that tell Claude to install a program and "fix anything it complains about". A reader who uses them gives broad permissions. The source does not discuss this.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | A commercial newsletter (Artificial Corner). The article does not state the author's credentials. |
| Transparency | 2 | It names the repositories, which the reader can check. It gives no test method or criteria, and it does not name 18 of the 23 skills. |
| Accuracy | 3 | The install steps and repository names are specific and checkable. Some claims are absolute or have no support. I did not check them. |
| Objectivity | 2 | The article sells the author's paid skills and asks for shares. The recommendations are personal judgments. |
| Currency | 5 | Published 2026-11-01, 12 days before capture. The tool details can become old quickly. |

Overall `source-quality: low`. The how-to details can be useful, but check them against the official repositories. The evaluation part ("best") rests on the author's opinion, without a method.

## 12. Extraction notes

- Access: `full`. I used the companion file (Obsidian Web Clipper) for all content and locators. I did not use WebFetch or WebSearch, so the quote problem in Reporter §4.7 does not apply. Each `Quote:` is copied from the companion file, with its curly apostrophes (’). The Orchestrator still checks each quote against the companion file (rule 9a).
- Locator convention: ¶ counts the blocks separated by blank lines in the companion file, under each heading. A list, a numbered step, and a blockquote each count as one block. Image lines do not count. The opening section has 9 blocks (¶1 "You ask Claude…" to ¶9 "PS: …").
- E5 locator: the page title is not in the list in Schema §5.5. I used `§ <page title> (page title)`. Please confirm this form or give the correct one.
- Coverage: the whole article, all six sections. I did not open the links to the author's other pages or to the GitHub repositories (Reporter §5).
- Fetched content check: I found no text directed at an AI agent that processes the article. The article has prompts that the reader can paste into Claude, for example "Install this skill: [link]" and "Run its health check and fix anything it complains about". The reader is the audience for these prompts. They are data. I did not act on them.
- Charter or Spectrum: not related.
- Final check (Reporter §11):
  1. Each claim has at least one evidence row: pass.
  2. Each evidence row has a locator: pass.
  3. Each quote is copied as the tool returned it and has 15 words or fewer: pass. The longest quote is 14 words (E4).
  4. Facts, source statements, and my interpretations are separate: pass. The claims say "The source says" or "The author reports".
  5. Limits and uncertainty are visible in §8, §10, and §11: pass.
  6. No claim is presented as a verified fact without evidence, each rating names who gives it, and each survey figure names the survey: pass. The source has no survey figures.
  7. `claim-count` (25) equals the number of rows in §7 (25): pass.
- Completeness `full`: all sections were read and extracted. Confidence `high`: I had the complete text and exact locators. The only uncertainty is the ¶ counting convention above.
