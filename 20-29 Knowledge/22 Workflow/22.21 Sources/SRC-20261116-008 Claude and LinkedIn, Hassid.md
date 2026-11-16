---
id: SRC-20261116-008
type: source
title: "Claude + Linkedin"
status: done
created: 2026-11-16T05:56
updated: 2026-11-16T06:01
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/claude-linkedin
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-06-21
captured: 2026-11-16T05:56
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "From the same TikTok list (guides 8 to 15). Justin asked for them to be done in a new session. The list: https://www.tiktok.com/t/ZPLESTkK8/"
duplicate-of:
brief:
assessment:
change-orders: []
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 10
---

# Notes

Guide 8 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post (audience: everyone).

# Reference Brief

## 1. Executive summary

The guide shows how to build a Claude skill from your own best LinkedIn posts. You scrape the posts with Apify, give the spreadsheet to Claude for an analysis and an SOP, then turn both into a skill with `/skill-creator`. A second skill copies the pattern of one post that did unusually well. The author lists limits at the end and promotes his paid newsletter.

## 2. Central premise and author intent

Premise: a person can train Claude on their own best LinkedIn posts, so that Claude drafts new posts in the same style. Intent: teach the method and sell the paid newsletter. The page opens with the author's own sales claims (follower growth, subscriber count, price).

## 3. Key takeaways

- Method in four steps: extract posts, analyze them, create a skill, copy one viral post pattern.
- The source says the scraping cost is low. It says the free sign-up credits cover it.
- The source lists limits: not faster, not creative, costs money, needs regular posting, needs good past posts.
- The author says to mirror the best posts without copying them.

## 4. Facts and figures

- Apify cost, per the author: $2 for 1,000 posts. Free sign-up credits: $5 (author's statement).
- Analysis run time, per the author: 8-10 minutes in Claude Cowork.
- The author pays $100/month for Claude (the plan is not named in the text read).
- Sales claims, author's own and unsourced: 340,000 new followers last year; $0 on ads; 3,700 paid subscribers at $200 a year; 700,000+ readers twice a week.
- The source names the model "Opus 4.8" for the screenshot step.

## 5. Methods and frameworks

1. Use Apify to extract public posts from a LinkedIn profile. Export a spreadsheet.
2. Upload the spreadsheet to Claude with a long analysis prompt. The prompt asks for a report on best formats, angles, and visuals, and for an SOP for the next post.
3. In the same chat, use a `/skill-creator` prompt to make a reusable skill from the report and SOP (example name: "grant-viral"). The skill asks questions, then gives angles, hooks, and captions.
4. For one post that did far better than usual: screenshot it, upload it, and use a second `/skill-creator` prompt to capture its hook, caption structure, and format.
5. Do not repeat one winning recipe too often.

## 6. Concepts and definitions

- "Ultra-viral": a post that did far better than your own usual results, whatever the absolute numbers (author's use, summary).
- Skill: a reusable Claude instruction set made with `/skill-creator`.
- SOP: a standard operating procedure for the next post, made by Claude from the analysis.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source describes a four-step method to train Claude on your own best LinkedIn posts: extract, analyze, create a skill, copy one viral post. | procedural | explicit | E1 | high |
| C2 | The author states that Apify costs $2 for 1,000 posts. | factual | explicit | E2 | high |
| C3 | The author states that Apify gives $5 of free credits at sign-up. | factual | explicit | E3 | high |
| C4 | The author reports that his Claude Cowork analysis run took 8-10 minutes. | factual | explicit | E4 | high |
| C5 | The author says to upload a screenshot of the viral post and to use Opus 4.8. | procedural | explicit | E5 | medium |
| C6 | The author says this method is not faster than writing posts yourself. | normative | explicit | E6 | high |
| C7 | The author says AI is not creative. | normative | explicit | E7 | high |
| C8 | The author says he pays $100/month for Claude and calls Claude expensive. | factual | explicit | E8 | high |
| C9 | The author recommends this method only for people who post at least once a week. | normative | explicit | E9 | high |
| C10 | The author states he is not paid to make the newsletter and does not favor any AI model. | factual | explicit | E10, E11 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: The page has numbered sections 1 to 4 (extract posts, train Claude on the spreadsheet, create a skill, "I went ultra-viral once"), each with a copy-paste prompt. | § 1. Spend $2 to extract 1,000 posts. to § 4. “I went ultra-viral once.” | C1 | Supports | direct | No test data. No sample output shown in the text read. Prompts not reviewed in full. |
| E2 | Quote: "The tool costs $2 for 1,000 posts. It’s cheap." | § 1. Spend $2 to extract 1,000 posts. | C2 | Supports | direct | Author's figure. Price can change. No link check. Apify terms not read. |
| E3 | Quote: "you’ll get $5 of free credits by signing up." | § 1. Spend $2 to extract 1,000 posts. | C3 | Supports | direct | Author's figure. Offer can change. |
| E4 | Quote: "My Claude Cowork ran for like a solid 8-10 minutes." | § 2. Train Claude on your Excel. | C4 | Supports | direct | One run. File size and plan not stated in the text read. |
| E5 | Quote: "Uploading the screenshot is key, using Opus 4.8." | § 4. “I went ultra-viral once.” | C5 | Supports | direct | Model name as the source gives it. Not checked against any model list. |
| E6 | Quote: "It’s not faster." | § 5. When this falls short (being honest). | C6 | Supports | direct | Author's judgment. No time data. |
| E7 | Quote: "AI isn’t creative." | § 5. When this falls short (being honest). | C7 | Supports | direct | Author's opinion. No evidence given. |
| E8 | Quote: "Claude is expensive. I pay $100/month." | § 5. When this falls short (being honest). | C8 | Supports | direct | Plan not named in the text read. Price is the author's statement. |
| E9 | Quote: "I would do this only if you want to post at least once a week." | § 5. When this falls short (being honest). | C9 | Supports | direct | Author's advice. No data for the threshold. |
| E10 | Quote: "I don’t care about Claude, ChatGPT, Grok, Gemini, or any other model." | § I don’t care about Claude. | C10 | Supports | direct | Self-statement by an interested author. Cannot be checked. |
| E11 | Quote: "I’m not paid to make this newsletter." | § I don’t care about Claude. | C10 | Supports | direct | Self-statement. The page also sells a paid subscription (see E12), so the meaning of "paid" is not clear. |
| E12 | Quote: "Already 3,700 people have joined it for $200 a year." | § I know Linkedin better than you. | none (context) | Context for objectivity (§11) | direct | Sales claim. Unsourced. Not used as evidence for any claim. |

Not used as claims (sales content, unsourced): "I gained 340,000 new followers last year." (§ I know Linkedin better than you.); "700,000+ people read this twice a week" (§ I don’t care about Claude.).

## 9. Tools and resources

- Apify (third-party scraper), for LinkedIn post extraction.
- Claude (Cowork and Opus 4.8, as named by the source) and `/skill-creator`.
- Author's paid newsletter (How to AI): sales offer, not a method resource.

## 10. Limitations and caveats

- The author sells a paid newsletter. The page promotes it.
- Costs, free credits, plan prices, and reader and follower counts are the author's statements, with no source. They may be out of date.
- The method is shown from one author's experience. No data on results for other people.
- The author's own caveats: not faster, not creative, costs money, needs weekly posting and enough good past posts, repeats old patterns.
- Scraping LinkedIn can break platform terms. The source says to scrape public posts and not to automate your own account. It does not discuss terms in the text read.
- Prompts in §§ 2 to 4 are written for Claude. They are part of the source and were not followed.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Author with a large audience and LinkedIn experience (self-reported). No independent check. |
| Transparency | 3 | Steps, prompts, and costs are shown. Sales claims have no source. |
| Accuracy | 3 | No error found, but figures and the model name were not checked. |
| Objectivity | 2 | The page promotes a paid newsletter, with sales claims and a subscription price. |
| Currency | 4 | Published 2026-06-21. Prices and model names can change. |

## 12. Extraction notes

- Access: WebFetch on the url, access `full`. WebFetch returns a model-processed page, not exact text. It refused to return the whole article. The Orchestrator must check each `Quote:` against the raw page (Rule 9a). The apostrophes in the quotes are curly, as the tool returned them. Quotes with a final full stop (E2, E8) copy the tool output. Check these two for the trailing full stop.
- Quote word counts: E2 9, E3 9, E4 10, E5 8, E6 3, E7 3, E8 6, E9 14, E10 12, E11 7, E12 10. All 15 or fewer.
- Headings in the locators are as the tool listed them (including the trailing full stops and curly quotes). Check them on the raw page.
- Coverage: partial. The prompt texts, the "Discussion" comments, and the full wording of the sections were not read. Section 4 and the closing section are from the tool's summary and quotes.
- Confidence medium, because the text is second-hand through the tool.
- Final check: each claim has evidence (C10 has two rows). Each row has a locator. Claim-count is 10. No Charter or Spectrum link seen. No text aimed at an AI found, apart from the prompts that the author means for readers to paste into Claude. The Reporter did not act on them.
