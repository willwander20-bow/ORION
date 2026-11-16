---
id: SRC-20261116-010
type: source
title: "Stop learning Excel"
status: done
created: 2026-11-16T05:56
updated: 2026-11-16T06:01
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/how-to-make-perfect-spreadsheets
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-05-24
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
source-quality: low
extraction-completeness: partial
extraction-confidence: medium
claim-count: 8
---

# Notes

Guide 10 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post (audience: everyone). TikTok slide title: Claude for Excel.

# Reference Brief

## 1. Executive summary

Ruben Hassid, who runs the "How to AI" newsletter, argues that people should stop learning Excel and use AI to build spreadsheets. He says Claude Cowork is the best tool he tested. He gives a setup (Pro plan, Cowork tab), a prompt pattern that asks Claude to list its top 10 assumptions, one example, and a route to Google Sheets with ChatGPT for edits. All results are the author's own, with no data or method shown.

## 2. Central premise and author intent

Premise: AI replaces spreadsheet skills, and Claude Cowork is the best way to build a spreadsheet from scratch. Intent: a practical guide that also builds trust and audience for a newsletter that has paid subscribers. The page has a section where the author says that Anthropic does not pay him. The author is a creator who earns from paid subscriptions, so the guide also promotes his product.

## 3. Key takeaways

- The author says he tested many AI tools for spreadsheets and rates Claude Cowork best (his judgment).
- The setup needs a Claude Pro plan, the Cowork tab, and a chosen folder.
- The prompt asks Claude to list its top 10 assumptions before it builds, so the user can check them.
- For editing in Google Sheets, the author uses a ChatGPT add-on. He says Cowork is better to start from scratch.
- He names Shortcut.ai as another option and says he has no affiliation with it.

## 4. Facts and figures

- Plan price given by the author: Pro, $20/month (a vendor price, not sourced; can change).
- Example by the author: a 12-month revenue forecast for his own consulting firm. He gives about 7 minutes, 6 tabs, and 700+ formulas. This is one self-reported case with no file or check shown.
- Model setting named by the author: Opus 4.7 with Adaptive thinking (from the fetched summary; not checked against a quote).
- Publication date: 2026-05-24 (from the Source record and the fetched page).

## 5. Methods and frameworks

- Build flow: download the Claude app, open the Cowork tab, select a folder, pick the model, send a structured prompt (data source, purpose, sheets, formatting), and ask for the top 10 assumptions before the build.
- Move to Google Sheets: connect Google Drive to Claude, then open the file in Sheets.
- Edit flow: use a ChatGPT add-on in Google Sheets to view and summarize tabs and to make larger changes, such as changing scenario assumptions.

## 6. Concepts and definitions

- Claude Cowork: the tab in the Claude app that works on a selected folder (as the author uses it). The page gives no formal definition.
- Assumptions list: a step where the AI states its assumptions before it builds, so a person can sanity-check them.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author says he tried many AI tools to make spreadsheets. | factual | explicit | E1 | high |
| C2 | The author rates Claude Cowork as the best AI tool for making spreadsheets, and rates Copilot very poorly. | normative | explicit | E2, E3 | high |
| C3 | The author says Claude Cowork needs a Pro account at $20/month. | factual | explicit | E4 | high |
| C4 | The author recommends that the user ask Claude to list its top 10 assumptions before it builds the spreadsheet, so the user can check them. | procedural | explicit | E5 | high |
| C5 | In the author's own example, Cowork built a revenue forecast in about 7 minutes, with 6 tabs and 700+ formulas. | factual | explicit | E6, E7 | medium |
| C6 | The author says a ChatGPT add-on is good for editing a spreadsheet in Google Sheets, but Cowork is better to start from scratch. | normative | explicit | E8 | medium |
| C7 | The author says he has no affiliation with, and no payment from, Shortcut.ai. | factual | explicit | E9 | medium |
| C8 | The author says he is not paid by Anthropic to write the newsletter. | factual | explicit | E10 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Because I tried every single AI to make spreadsheets" | § Stop learning Excel. | C1 | Supports | direct | Self-report. No list of tools, tests, or criteria. "Every single" is not literal. |
| E2 | Quote: "Because it’s the best" | § Meet how to make spreadsheets, with AI: | C2 | Supports | direct | Opinion of an interested author. No benchmark or data. |
| E3 | Quote: "absolutely terrible, couldn’t even make a spreadsheet" | § Meet how to make spreadsheets, with AI: | C2 | Supports | direct | Said of Copilot. One person's experience. No date or version. |
| E4 | Quote: "You need a Pro account ($20/month)" | § Forget prompts. | C3 | Supports | direct | Vendor price at the time of writing. No source. Plans can change. |
| E5 | Quote: "list your top 10 assumptions so I can sanity-check them" | § How Cowork generates Excel. | C4 | Supports | direct | Clause from a prompt template. No test of whether it improves results. |
| E6 | Quote: "About 7 minutes, I believe" | § How Cowork generates Excel. | C5 | Supports | direct | The author is unsure ("I believe"). One case. Time is not measured. |
| E7 | Quote: "6 tabs. 700+ formulas" | § How Cowork generates Excel. | C5 | Supports | direct | No file shown. No check that the formulas are correct. |
| E8 | Quote: "But Cowork is better to start from scratch" | § ChatGPT to edit spreadsheets. | C6 | Supports | direct | Opinion. The ChatGPT add-on detail is a summary from the fetch, not quoted. |
| E9 | Quote: "I am not affiliated or paid by Shortcut.ai by the way" | § Another player: Shortcut.ai | C7 | Supports | direct | Self-declaration. Not verifiable from the page. |
| E10 | Quote: "I’m not paid to make this newsletter" | § Claude & Anthropic do not pay me. | C8 | Supports | direct | Self-declaration. The wording is odd, because the author also says he earns from paid subscribers (summary of the fetch). Read the full section before use. |

Quote word counts: E1 9, E2 4, E3 6, E4 6, E5 10, E6 5, E7 4, E8 8, E9 11, E10 7. All are 15 or fewer.

## 9. Tools and resources

- Claude app, Cowork tab (Claude Pro, $20/month per the author).
- Google Drive connection in Claude and Google Sheets.
- ChatGPT add-on for Google Sheets (the author calls it free and official).
- Shortcut.ai (spreadsheet-focused tool, suggested for full-time spreadsheet work).
- Also named in the fetched summary: Copilot, Grok, Gemini, Codex, Claude inside Excel. Rated by the author without data.

## 10. Limitations and caveats

- Everything is the author's own testing and opinion. No data, no method, no second tester.
- The author sells a paid newsletter. The guide is promotional. The recommendation of Claude Cowork and the Pro plan price are sales-adjacent claims. His non-payment statements are self-declared.
- The price ($20/month), the model name, and the tool ratings are tied to May 2026 and may be out of date.
- The example is one case on his own business data. It does not show that the method works in general.
- The fetched summary named an Anthropic model and settings (Opus 4.7, Adaptive thinking). I did not get an exact quote for this and I do not use it as a claim.
- No percentage claims were seen in the fetched text. If the page has any, they were not returned to me.
- The two fetches returned different reader comments. I do not use the comments.
- Charter or Spectrum work: no.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Active AI newsletter author with a large audience (not verified here). Not an official source for any tool. |
| Transparency | 3 | The author states his income model and non-affiliation. He gives no test method. |
| Accuracy | — | Cannot check the example, the ratings, or the price from the page. |
| Objectivity | 2 | The author sells a paid newsletter and promotes tools. Opinions are given as fact in places. |
| Currency | 3 | Published 2026-05-24, about 6 months before capture. Tool versions and prices change fast. |

## 12. Extraction notes

- Access: full by WebFetch (free post). No companion file.
- WebFetch does not return exact text. Each `Quote:` is as the tool returned it on the second fetch, with curly apostrophes as returned. I left off the final full stop of each quote. The Orchestrator must check each quote against the raw page. The headings in the locators came from the same fetch. Check them too.
- The first fetch gave only a summary. Section 4 and 5 details (model setting, Google Drive steps, the ChatGPT add-on) come from that summary and have no quote.
- Completeness is `partial`. I did not get the full text, so some prompts, steps, and sections may be missing. Confidence is `medium` because quotes and headings passed through a model.
- No text aimed at an AI was seen.
- Final check: each claim has evidence (C1 to C8). Each evidence row has a locator. Quote counts are in §8. Claim count is 8, which equals the rows in §7.
