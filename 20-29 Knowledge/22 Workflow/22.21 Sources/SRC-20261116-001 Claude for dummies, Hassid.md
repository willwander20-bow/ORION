---
id: SRC-20261116-001
type: source
title: "Claude For Dummies"
status: done
created: 2026-11-16T00:25
updated: 2026-11-16T05:46
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/claude-for-dummies
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-04-19
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
  - "[[CO-20261116-003 Claude for dummies, Hassid]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 20
---

# Notes

Guide 001 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post.

# Reference Brief

## 1. Executive summary

"Claude For Dummies" is a free beginner guide to Claude by Ruben Hassid. The page shows the author as Ruben Hassid, the publication as "How to AI" (Substack), and the date as Apr 19, 2026. The guide explains what Claude is, how it differs from ChatGPT, the plans and prices, three ways to use it (browser, desktop app, Cowork), five prompting rules, strengths and weaknesses, and a first-week exercise list. The author sells a paid newsletter and promotes his own guides, so the plan advice and some comparisons are the author's opinion.

## 2. Central premise and author intent

Premise: most people have never used Claude, and a short plain-language guide lets a beginner start well. The author states that readers will "know more than 98.75% of the world" after the guide (a promotional figure with no source). Intent: teach beginners, and also grow the newsletter. The guide pushes Pro, Max, Cowork, subscription, and his other guides. The page has a subscriber-only cheat sheet.

## 3. Key takeaways

- Claude is a chat AI made by Anthropic. The guide describes it as next-word prediction that tends to agree with the user.
- Three ways to use it: browser (free plan works), desktop app (sees local files; modes Chat, Cowork, Code), and Cowork (long multi-step tasks on a chosen folder; paid plans, desktop only).
- Plans in the guide: Pro $20 per month, Max $100 or $200 per month. The author advises paying monthly.
- Five prompt rules: be specific; give examples; say what you want, not what you do not want; start short and add detail; start a new chat when Claude gets confused.
- Weak areas: real-time information, precise math, and confident wrong answers.
- The author suggests a free test (same prompt in Claude and ChatGPT) and a $20 one-month Cowork test.
- "Pros" use saved Skills, not long prompts. The demo is a negotiation-prep Skill.

## 4. Facts and figures

- Pro: $20 per month. Max: $100 or $200 per month (as the author lists them; not checked against Anthropic).
- A page of text is about 500 tokens (author's estimate).
- Claim that Claude reads a 200-page document in one go (author's statement).
- "98.75% of all humans" have not tried Claude (no source given on the page).
- Author's claim: Cowork does 80% of what Claude Code does for non-developers (no basis given).
- Author's claim: the three key terms put a reader "better than 90% of the people paying for it" (no basis given).

## 5. Methods and frameworks

- Five prompting rules (see §3).
- Free test path: sign up at claude.ai, paste something you wrote, run the same prompt in ChatGPT, compare.
- Cowork test path: pay $20 for one month, install the desktop app, point Cowork at a folder, give one task, and let it work.
- Skill pattern: a saved Skill triggered by a command (example `/negotiation-prep`) plus a one-line prompt. Claude then asks questions and produces two drafts (soft and aggressive).

## 6. Concepts and definitions

- Token: the unit Claude works in. Usage limits count tokens, and long chats reach a ceiling.
- Context window ("memory"): fills up in a long chat.
- Cowork: Claude running for minutes to hours on the user's computer.
- Claude Code: Claude in a terminal, built for developers.
- Skills: reusable prompts triggered by name. Plugins: bundles of Skills and Connectors for Cowork. The guide also names Projects, Connectors, and MCP in a "words you can ignore" list.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author describes Claude as a model that predicts the next word, billions of times per response. | factual | explicit | E1 | high |
| C2 | The author states that Claude is trained to be helpful and to agree with the user. | factual | explicit | E2 | high |
| C3 | The author states that Claude can read a 200-page document in one go without losing track. | factual | explicit | E3 | high |
| C4 | The author rates ChatGPT's voice experience as much better than Claude's. | normative | explicit | E4 | high |
| C5 | The author lists Claude Pro at $20 per month and Max at $100 or $200 per month. | factual | explicit | E5 | high |
| C6 | The author advises paying monthly, not annually. | procedural | explicit | E6 | high |
| C7 | The author states that Cowork works on paid plans and on desktop only. | factual | explicit | E7 | high |
| C8 | The author states that Claude does not know what happened today (no real-time information). | factual | explicit | E8 | high |
| C9 | The author advises against using Claude as a calculator for anything that matters. | procedural | explicit | E9 | high |
| C10 | The author states that Claude sounds authoritative even when it is wrong. | factual | explicit | E10 | high |
| C11 | The author states that a more specific input gives a more specific output. | causal | explicit | E11 | high |
| C12 | The author rates giving examples as the single best prompting tip. | normative | explicit | E12 | high |
| C13 | The author states that telling Claude what to do is more effective than telling it what to avoid. | causal | explicit | E13 | high |
| C14 | The author advises starting with a short prompt (2 sentences) and adding detail in follow-ups. | procedural | explicit | E14 | high |
| C15 | The author advises opening a fresh chat and pasting the key context when a chat gets confused. | procedural | explicit | E15 | high |
| C16 | The author estimates that a page of text is roughly 500 tokens. | factual | explicit | E16 | medium |
| C17 | The author states that Cowork does 80% of what Claude Code does for non-developers. | factual | explicit | E17 | medium |
| C18 | The author rates Cowork as the best thing to happen to AI since ChatGPT. | normative | explicit | E18 | high |
| C19 | The author states that 98.75% of all humans have never tried Claude. He gives no source. | factual | explicit | E19 | medium |
| C20 | The author says he pays $100 for Max, uses it daily without problems, and is not paid to recommend it. | factual | explicit | E20, E21 | high |

## 8. Evidence and locators

All quotes come from WebFetch, not from the raw page. Paragraph numbers also come from the tool. The Orchestrator must check each quote and locator against the raw page.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Claude predicts the next word, billions of times per response." | § How it actually works (in 30 seconds), ¶2 | C1 | supports | direct | Simplified description for beginners. No technical source. |
| E2 | Quote: "Claude is trained to be helpful and agree with you" | § How it actually works (in 30 seconds), ¶5 | C2 | supports | direct | Author's statement. No training source cited. |
| E3 | Quote: "Claude can read a 200-page document in one go without losing track." | § 2. Claude vs. ChatGPT, ¶2 | C3 | supports | direct | No test or data. "Without losing track" is the author's judgment. |
| E4 | Quote: "ChatGPT’s voice experience is infinitely better right now." | § 2. Claude vs. ChatGPT, ¶6 | C4 | supports | direct | Opinion. Date-bound to April 2026. |
| E5 | Quote: "Max ($100 or $200 per month)." The Pro figure is in the preceding line: "Pro ($20 per month)." | § 3. How to get Claude (and what it costs), ¶2 and ¶3 | C5 | supports | direct | Prices as of the post date. Not checked against Anthropic. |
| E6 | Quote: "Pay monthly, not annually." | § 3. How to get Claude (and what it costs), Tip, ¶1 | C6 | supports | direct | Advice only. Reason not checked. |
| E7 | Quote: "Paid plans only and desktop only." | § #3. Cowork (inside the desktop app), ¶2 | C7 | supports | direct | Plan rules may change after April 2026. |
| E8 | Quote: "Claude doesn’t know what happened today" | § 7. What Claude is bad at, ¶1 | C8 | supports | direct | Claude may have web tools in some settings. The guide does not discuss them. |
| E9 | Quote: "Don’t use Claude as a calculator for anything that matters," | § 7. What Claude is bad at, ¶1 | C9 | supports | direct | Advice. No test data. |
| E10 | Quote: "Claude sounds authoritative even when it’s wrong." | § 7. What Claude is bad at, ¶1 | C10 | supports | direct | No error rate given. |
| E11 | Quote: "The more specific your input, the more specific the output." | § Rule 1: be specific, ¶3 | C11 | supports | direct | Experience-based. No data. |
| E12 | Quote: "This is the single best thing you can do." | § Rule 2: give examples, ¶1 | C12 | supports | direct | Opinion. No comparison data. |
| E13 | Quote: "It’s always more effective than telling it what to avoid." | § Rule 3: say what you want, not what you don't want, ¶2 | C13 | supports | direct | "Always" is a strong word. No data. |
| E14 | Quote: "Start with 2 sentences." | § Rule 4: start short, add detail, ¶2 | C14 | supports | direct | Advice. No data. |
| E15 | Quote: "open a fresh chat and paste in the key context." | § Rule 5: if it gets confused, start a new chat, ¶2 | C15 | supports | direct | Advice. The page links the cause to the context window. |
| E16 | Quote: "A page of text is roughly 500 tokens." | § Token, ¶2 | C16 | supports | direct | Rough figure. Depends on text and tokenizer. |
| E17 | Quote: "Cowork does 80% of what Claude Code does for non-developers" | § Claude Code, ¶2 | C17 | supports | direct | The 80% has no method or source. Probably an estimate. |
| E18 | Quote: "It’s the best thing to happen to AI since ChatGPT." | § 4. The Three Claudes, Cowork section, ¶2 | C18 | supports | direct | Opinion. Promotional tone. |
| E19 | Quote: "98.75% of all humans" | § If you never opened Claude, start here, ¶1 | C19 | supports | direct | No source or method. Likely a marketing figure. |
| E20 | Quote: "I pay $100 and use it every day without any problem." | § 3. How to get Claude (and what it costs) | C20 | supports | direct | Personal experience, one user. Paragraph number not given. |
| E21 | Quote: "I am (obviously) not paid to say that." | § 2. Claude vs. ChatGPT, Bottom line | C20 | supports | direct | A disclaimer by the author. Not independent proof. Other benefits (newsletter, subscriptions) exist. |

## 9. Tools and resources

- Claude (browser at claude.ai, desktop app for Mac and Windows), plans Free, Pro, Max.
- Cowork and Claude Code (Anthropic products as the guide describes them).
- ChatGPT (comparison).
- Gmail connection (item 6 of the first-week list), Skills, Plugins, Connectors, Projects, MCP (named only).
- The author's other guides on Cowork and Claude Code, a subscriber-only cheat sheet and "Claude Dictionary", a LinkedIn "TEAM" offer for organizations, and how-to-ai.guide. These are promotional (see §10).

## 10. Limitations and caveats

- **Sales claims.** The author sells a paid newsletter. Sales or promotion items on the page, as WebFetch listed them: the advice to buy Pro or Max and to start a $20 Cowork trial; his own Max endorsement (C20); the offer of team setup via LinkedIn "TEAM"; links to his Cowork and Claude Code guides, which he calls "these two are of my best newsletters" (§ 8. The 3 words that matter); the subscriber-only cheat sheet; calls to subscribe and share; and a pinned comment about a coming "Claude Design" guide. Also the bold figures (98.75%, 90%, 80%) and the "best thing since ChatGPT" line (C18, C19, C17).
- The guide is for beginners. It simplifies and gives no technical or independent evidence.
- Prices, plan limits, and product features are as of 2026-04-19. They can have changed.
- No claim here is checked against Anthropic documentation.
- The guide mixes facts (prices, plan access) with opinion (rankings, "best"). Claim types in §7 mark this.
- The author's example claims (negotiation Skill, candy company) are single cases and prove no general rule.
- The summary lists "first-week" exercises and a "how pros use Claude" section. I did not extract each exercise as a claim.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Author is a known newsletter writer on AI use, with daily practical use. No stated Anthropic affiliation or formal credential on the page. |
| Transparency | 3 | The author states his payment status and uses the paywall openly. He gives no sources for figures. |
| Accuracy | — | I checked no claim against Anthropic. Some figures have no basis (98.75%, 80%, 90%). |
| Objectivity | 2 | The author sells a paid newsletter and promotes plans, his guides, and team setup. He says he is not paid for recommendations, but gains from subscriptions. Strong superlatives ("best", "infinitely better"). |
| Currency | 3 | Published 2026-04-19, about seven months before capture (2026-11-16). Prices and features can change quickly. |

Overall `source-quality`: medium. Good for a beginner's view and the author's habits. Weak for hard facts, which need a primary source.

## 12. Extraction notes

- Access: full (WebFetch of the page; no companion file). The tool did not return the exact page text: it refused to reproduce the full article and returned headings, short quotes, and summaries. So all quotes and ¶ numbers are as the tool returned them. **The Orchestrator must check each quote and locator against the raw page** (Hard rule 9a).
- Author and date as the page shows them: Ruben Hassid; Apr 19, 2026 (publication "How to AI", Substack). This matches the Source record.
- Coverage: main sections and the specific advice and claims. I skipped navigation, subscribe boxes, and promotion, except where I report it in §10. The first-week list (10 items) and the full "How pros use Claude" demo are only summarized. So completeness is `partial`. Confidence is `medium`, because the text came through a model and not from the raw page.
- Quote word counts (all 15 or fewer): E1 10, E2 10, E3 13, E4 8, E5 6 (plus 4 in the second quote), E6 4, E7 6, E8 6, E9 10, E10 7, E11 10, E12 9, E13 10, E14 4, E15 10, E16 8, E17 10, E18 10, E19 4, E20 11, E21 9.
- E5 uses two quotes. Each is under 15 words.
- Final check: each claim has at least one evidence row; each evidence row has a locator; claim-count is 20 (rows in §7).
- No text in the source was aimed at an AI. The source does not relate to Charter or Spectrum work.
