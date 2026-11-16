---
id: SRC-20261116-004
type: source
title: "I was wrong about Claude (Cowork setup)"
status: done
created: 2026-11-16T00:25
updated: 2026-11-16T05:49
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/learn-80-of-claude-cowork-in-20-minutes
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-07-01
captured: 2026-11-16T00:25
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "From a TikTok post that lists 15 Claude guides (https://www.tiktok.com/t/ZPLESTkK8/). Justin: \"Do the first 7\"."
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261116-004 I was wrong about Claude Cowork, Hassid]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 19
---

# Notes

The page heading is "How to set up Claude Cowork." The post title in the page data is "I was wrong about Claude." The URL slug is learn-80-of-claude-cowork-in-20-minutes. The Source title above follows the post title.

Guide 004 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The page is a setup guide for Claude Cowork. The byline is "Ruben Hassid". The newsletter name is "How to AI". The date is "Jul 01, 2026". The author says his earlier advice was wrong. He now recommends only two tools in Cowork: Skills (reusable capabilities) and Projects (places with fixed context). He advises few settings, no folder and file systems, and an "AskUserQuestion" prompting trick. He also gives dictation advice and six token-saving habits, and ends with a 20-minute starter plan. Most figures are the author's own, with no method shown. The page also sells the author's consulting and workshops.

## 2. Central premise and author intent

Premise: Cowork works differently from chat, so old habits (folders, "about me" files, many settings) hurt results. Skills plus Projects work better. Intent: teach readers a setup, build trust ("I'm not paid by Anthropic"), and bring in readers for the paid newsletter and for consulting and workshops for companies. The author states a correction ("I was wrong") as the frame of the post.

## 3. Key takeaways

- Cowork is "many Claude" that work together on one task, sometimes for 30+ minutes (author's statement).
- The author drops folders and files. He says folders leak old outputs into context and files are hard to maintain.
- Use only Skills and Projects. A Skill is a capability you call. A Project is a place you go to, where each chat has the Project context.
- The author gives a test for "skill or project?" and says teams must learn the difference. He says skills can be used inside projects. He lists limits: skills can auto-fire from their description, and Projects limit the number of files.
- Use few settings. The author says too much context makes Claude "go in circles".
- The AskUserQuestion trick: the author calls it his number 1 trick and says it fixes most prompt problems.
- Onboarding with Claude: a prompt that asks many questions and never asks a question without a proposed answer.
- Choose the tool: chat for quick questions, Claude Code for software, Cowork for document-style work (summary of section VIII).
- Dictation (Wispr Flow) is faster than typing, by the author's numbers (150 against about 60 words per minute).
- Six token-saving habits: restart instead of a follow-up; fresh session every 20 messages; batch tasks; use Sonnet (not Opus) for quick tasks; turn the "ABOUT ME" file into a skill; spread work across the day.
- Starter plan: set up in 20 minutes: clear settings, build one skill, create one Project, combine them.

## 4. Facts and figures

All figures are the author's. The page gives no method or source for them in the parts I could see.

- Author claim: the newsletter has 750,000 readers; his most-shared Cowork posts total 20 million views.
- Author claim: one Cowork answer took 8 minutes; Cowork "reads 100,000 words in 15 seconds".
- Timing: typing a prompt about 30 seconds, planning about 50 seconds, each answer 60 seconds to 2 minutes; 8 questions take 8 to 15 minutes.
- Speech about 150 words per minute against typing about 60.
- Prices as stated: Pro plan $20 per month; the author pays $100 per month; the Wispr Flow free tier is 2,000 words per week.
- Tokens: a 20-message thread uses about 105K tokens and 30 messages about 232K; about 98.5 percent of tokens go to re-reading history; "Message 30 costs 31x more tokens than message 1."
- Usage window: rolling 5-hour window; peak hours 5 to 11 AM Pacific on weekdays.
- Savings: Sonnet or Haiku for simple tasks frees 30 to 70 percent of budget.
- Consulting: companies of 50 to 500 employees; team of 20 in New York City.
- Example prompt uses 4,800 accounts growing 8 percent month over month (an example, not evidence).

## 5. Methods and frameworks

- Skills + Projects only. Skill = a capability you call. Project = a place you go to.
- "Skill or Project?" test, plus how to share both with a team (details not fully captured; see §12).
- Combine: use skills inside projects.
- AskUserQuestion trick: have Claude ask structured questions before it works.
- Onboarding prompt: ask many questions; give a proposed answer with each question.
- Token habits 1 to 6 (see §3).
- 20-minute plan (section XI): clear settings, build one skill, create one Project, combine, then get a skill library.
- Export Cowork spreadsheets to Google Sheets with the Google Drive integration.

## 6. Concepts and definitions

- Cowork: in the author's words, "many Claude" that plan and work together on a task.
- Skill: a capability you call, set up by how you use it in a chat box.
- Project: a place you go to, which holds context for a client or campaign. Each chat in it has that context.
- AskUserQuestion: a feature or trick that makes Claude ask the user questions first.
- Token furnace: the author's term for long conversations that re-read their whole history.
- Rolling 5-hour window: the author's description of the Claude usage limit period.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author says Cowork answers with many Claude instances at once. | factual | explicit | E1 | high |
| C2 | The author says Cowork can work on one task for 30 minutes or more. | factual | explicit | E2 | high |
| C3 | The author says folders leak old outputs into context and files are hard to maintain, so he advises against folder and file setups. | normative | explicit | E3 | high |
| C4 | The author defines a Skill as a capability you call and a Project as a place you go to, and advises using only these two. | procedural | explicit | E4 | high |
| C5 | The author says every chat inside a Project has the entire context of that Project. | factual | explicit | E5 | high |
| C6 | The author says skills can be used inside projects. | factual | explicit | E6 | high |
| C7 | The author lists two limits: skills can auto-fire from their description, and Projects limit the number of uploaded files. | factual | explicit | E7 | medium |
| C8 | The author says too much context makes Claude "go in circles", so he advises few settings and short global instructions. | causal | explicit | E8 | medium |
| C9 | The author says the AskUserQuestion trick fixes most prompt problems. | causal | explicit | E9 | medium |
| C10 | The author gives an onboarding prompt with rules: ask many questions, and never ask a question without a possible answer. | procedural | explicit | E10 | high |
| C11 | The author says Claude counts tokens not messages, and that message 30 in a thread costs 31 times the tokens of message 1 because history is re-read. | causal | explicit | E11, E20 | medium |
| C12 | The author advises four habits to save tokens: restart instead of a follow-up, start a fresh session every 20 messages, batch tasks into one message, and use Sonnet (not Opus) for quick tasks. | procedural | explicit | E12, E21 | medium |
| C13 | The author says using Sonnet or Haiku for simple tasks frees 30 to 70 percent of budget. | factual | explicit | E13 | low |
| C14 | The author says Claude uses a rolling 5-hour usage window, with weekday peak hours of 5 to 11 AM Pacific. | factual | explicit | E14 | medium |
| C15 | The author says dictation (Wispr Flow) speeds up prompting, because speech is about 150 words per minute against about 60 for typing. | causal | explicit | E15 | medium |
| C16 | The author rates Cowork as "the best thing to happen to AI since ChatGPT". | normative | explicit | E16 | high |
| C17 | The author says he is not paid by Anthropic to write the post. | factual | explicit | E17 | high |
| C18 | The author says company AI adoption is a "systems problem" and offers paid consulting and workshops for companies (sales claim). | normative | explicit | E18 | high |
| C19 | The author advises turning the "ABOUT ME" file into a skill instead of deleting the information. | procedural | explicit | E19 | high |

## 8. Evidence and locators

Quotes are as the WebFetch tool returned them. The Orchestrator must check each one against the raw page (§12). Word counts of the quotes: E1 8; E2 11; E3 3 and 5; E4 6 and 7; E5 12; E6 7; E7 12; E8 12; E9 10; E10 11; E11 9; E12 8; E14 7; E15 8; E16 11; E17 6; E18 11 and 5; E19 8; E21 5. All are 15 or fewer. E13 and E20 are summaries. Locators use headings only. The tool's paragraph numbers could not be confirmed, so I do not give ¶ numbers.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Because it answers with many Claude at once." | § I. Cowork is many Claude. | C1 | supports | direct | Author's description. No technical source. |
| E2 | Quote: "Cowork can perform a task for long minutes, sometimes 30+ min." | § I. Cowork is many Claude. | C2 | supports | direct | One user's experience. The page also gives a single 8-minute answer. |
| E3 | Quote: "Folders are leaking." and Quote: "Files are impossible to maintain." | § II. Forget about files and folders. | C3 | supports | direct | Opinion from personal use. No test data. |
| E4 | Quote: "Skill = a capability you call." and Quote: "Project = a place you go to." | § III. Skills + Projects. Nothing else. | C4 | supports | direct | Author's framing. It may not match the vendor's own definitions. |
| E5 | Quote: "Every chat inside a Project has the entire context of this Project." | § B. What you need to know about Projects. | C5 | supports | direct | No product documentation cited in the part I saw. |
| E6 | Quote: "Yes, you can use skills inside projects." | § D. Combining the two. | C6 | supports | direct | True at the time of writing (Jul 2026) by the author's account. |
| E7 | Quote: "Projects have a limit on the number of files you can upload." | § E. Not everything is perfect. | C7 | supports | direct | The auto-fire item is from a tool paraphrase ("Skills can auto-fire from their description"), not confirmed as exact. The file limit is not given. |
| E8 | Quote: "If you give too much context to Claude, it’s going into circles." | § IV. No settings is the best setting. | C8 | supports | direct | Author's experience. One case ("poison to my Cowork"). |
| E9 | Quote: "This simple trick will fix most of your prompt problems:" | § V. This is still my #1 trick. | C9 | supports | direct | "Most" is not measured. |
| E10 | Quote: "Never ask me a question before giving me a potential answer." | § VII. Onboard with Claude. | C10 | supports | direct | A prompt rule. No result data. |
| E11 | Quote: "Message 30 costs 31x more tokens than message 1." | § 1 - Restart your conversation. Don't send a follow-up. | C11 | supports | direct | No calculation seen. The figure depends on the setup. |
| E12 | Quote: "One prompt with three tasks = one reload." | § 3 - Batch your tasks into one message. | C12 | supports | indirect | Covers batching only. Other habits: see E21 and the headings of habits 1 and 4. |
| E13 | Summary: the page says that Sonnet or Haiku for simple tasks frees 30 to 70 percent of budget. | § 4 - Use Sonnet (not Opus) for quick tasks. | C13 | supports | direct | From a tool summary, not a verbatim quote. No method. Check the raw page. |
| E14 | Quote: "Claude uses a rolling 5-hour window." Summary: peak hours are 5 to 11 AM Pacific on weekdays. | § 6 - Spread your work across the day. | C14 | supports | direct | Peak hours may change. Dated Jul 2026. The peak-hours detail is from a tool summary. |
| E15 | Quote: "Because you speak at 150 words per minute." Summary: typing is about 60 words per minute. | § IX. You are slowing us down. | C15 | supports | direct | The time savings are the author's estimate. Wispr Flow has a free and a paid tier. |
| E16 | Quote: "Cowork is the best thing to happen to AI since ChatGPT." | § Forget the other Claude. Focus on this one: | C16 | supports | direct | Opinion. The author has a stake (newsletter, consulting). |
| E17 | Quote: "Nobody pays me to write this." | § I'm not paid by Anthropic. | C17 | supports | direct | Self-report. The page also sells paid subscriptions and consulting. |
| E18 | Quote: "I consult companies of 50-500 employees with my team in NYC." Quote: "It is a systems problem." | § C. A skill or a project? ; § PS: You don't want your company to be left behind. | C18 | supports | direct | Sales text. The tool also reported workshop and "100+ people" offers. The author benefits from the claim. |
| E19 | Quote: "Keep it. But turn it into a skill:" | § 5 - Delete your ABOUT ME file. | C19 | supports | direct | The heading says "Delete"; the text keeps the content as a skill. |
| E20 | Summary: the page says about 98.5 percent of tokens go to re-reading history, with about 105K tokens for 20 messages and 232K for 30. | § 1 - Restart your conversation. Don't send a follow-up. | C11 | supports | direct | Tool summary, not a verbatim quote. Check the raw page. |
| E21 | Quote: "Long conversations are token furnaces." | § 2 - Start a fresh session every 20 messages. | C12 | supports | indirect | Supports the fresh-session habit only. The "every 20 messages" number is in the heading. |

## 9. Tools and resources

- Claude Cowork, Claude Code, Claude chat (the author compares them).
- Skills and Projects (Claude features).
- AskUserQuestion (feature or trick named by the author).
- Google Drive integration (export Cowork spreadsheets to Google Sheets).
- Wispr Flow: dictation tool. Free tier 2,000 words per week (author's figure).
- makemyskill.com: named in § A. What you need to know about Skills. The author says he gives it for free. It also feeds his audience.
- The author's free skills library (behind a newsletter subscription; a lead-generation offer).
- Example prompt templates (for example, an Excel prompt) to paste into Claude.

## 10. Limitations and caveats

- Advice is from one practitioner's use. The page shows no test, no control, and no method for the figures.
- Sales claims: the post sells a paid subscription ("free month"), consulting for companies of 50 to 500 employees, and enterprise workshops. "It is a systems problem" and the PS section about companies are marketing for those services (C18). The "free skills library" is a subscription lead.
- "Nobody pays me to write this" is a self-report. The author's income depends on readers acting on the advice. "Best thing to happen to AI since ChatGPT" is an opinion (C16).
- Product facts (limits, peak hours, prices, token behavior) are dated July 2026 and can change. The page does not cite vendor documentation in the parts I saw.
- The token figures (31x, 98.5 percent, 30 to 70 percent) look like estimates or arithmetic. Treat them as the author's numbers.
- The Brief covers the free text only. Paid and promotional parts were skipped.
- Reading came from a model summary of the page, so quotes and numbers need a check against the raw page.
- The page and the Source record use different titles. The Source record has "I was wrong about Claude (Cowork setup)". The page H1 is "How to set up Claude Cowork." and the tool reported the post title as "I was wrong about Claude." The URL slug is "learn-80-of-claude-cowork-in-20-minutes".
- Author and date match the Source record (Ruben Hassid; Jul 01, 2026 = 2026-07-01). Publication name on the page: "How to AI".

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | The author says he has 750,000 readers and 20 million views. No vendor affiliation; not an official source. Claims of expertise come from his own use. |
| Transparency | 3 | He names the tools and gives prompts to copy. He states that nobody pays him and that he consults for money. He gives no method for his numbers. |
| Accuracy | 3 | Many statements are plausible and a reader can test them. I could not verify the figures. The post admits that earlier advice was wrong. |
| Objectivity | 2 | The post promotes paid services (consulting, workshops, paid tier) and uses strong praise. The incentive is stated. The advice itself is free. |
| Currency | 4 | Dated Jul 01, 2026, about 4.5 months before this review. Product details change fast. |

Overall: medium.

## 12. Extraction notes

- Access: WebFetch, full page read, but the tool returned a processed summary and not the page text. It refused to copy long passages. Every `Quote:` is copied as the tool returned it. The Orchestrator must check each quote against the raw page (Rule 9a). No companion file exists.
- Locators are headings only. I did not use the paragraph numbers that the tool gave, because I cannot confirm them. Headings of sections I to XI and habits 1 to 6 are covered. The detail text under some headings (the "skill or project" test, the full onboarding prompt, the Google Drive steps, the 20-minute plan steps) was not captured. Completeness is therefore `partial`.
- E13, E14 (peak hours), E15 (60 words per minute), E20, and the auto-fire item in E7 come from the tool's summary. Check them against the raw page.
- Confidence is `medium` because of the processed text.
- No text in the page was aimed at an AI. The tool reported that the prompts are for the user to paste into Claude.
- No Charter or Spectrum work.
- Final check: each claim has at least one evidence row (C1 to C19 map to E1 to E21). Each evidence row has a locator. All quotes are 15 words or fewer. Facts (§4), author statements (§7), and my notes (§10, §12) are separate. Each rating names the author. `claim-count` is 19, equal to the rows in §7.
