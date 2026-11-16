---
id: SRC-20261116-011
type: source
title: "Can you detect AI"
status: done
created: 2026-11-16T05:56
updated: 2026-11-16T06:01
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/how-to-bypass-ai-detectors
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-07-22
captured: 2026-11-16T05:56
language: en
access-status: partial
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

Guide 11 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post (audience: everyone). TikTok slide title: Detect AI-slop.

# Reference Brief

## 1. Executive summary

Ruben Hassid says AI detectors are unreliable. He gives one example: a small punctuation edit changed a Substack detector result from "100% AI-generated" to "100% human-generated". He then lists style habits, words and structure patterns that he says make text sound like AI, and what to do instead. The third part (how he writes with AI, live) is paywalled and was not read.

## 2. Central premise and author intent

Premise: AI detection cannot be fully trusted, so a writer can avoid AI-sounding text by changing style. Intent: teach readers to avoid "AI slop" patterns, and sell a paid subscription. The paywalled part is an offer to paid subscribers. The author is also the seller of the paid newsletter.

## 3. Key takeaways

- The author says Substack uses Pangram as its AI detector.
- The author says one edit (an em dash replaced by a colon) flipped a detector result from fully AI to fully human.
- The author says human and AI writing overlap, so detection by bots is not certain.
- The author lists "tells": em dashes, bold-first bullets, stock phrases, uniform sentence length, overused AI words.
- The author recommends human markers: contractions, specific numbers and details, varied sentence length.
- The author warns against random typos and swapping in unusual synonyms.

## 4. Facts and figures

- Author claim: Substack uses Pangram to detect AI (E1). No link to Substack documentation was checked.
- Author's own test: "100% AI-generated" became "100% human-generated" after one edit (E2). One case. Not independently tested.
- Author statistic: 53.7% of long-form LinkedIn posts (100+ words) in 2025 were AI-generated (E6). No source named in the text I received. Treat as unsourced.
- Author statistic: AI text shows certainty +111-152% and positive emotion +69-133% versus human (E7). No source or method named in the text I received. Treat as unsourced.
- A "$34 of Claude Code credits" figure appears in section I (cost of the author's own experiment). Context not read in detail.

## 5. Methods and frameworks

- Avoid AI tells in three groups: style (for example em dashes, bold-first bullets), words (a list of overused words), and other signals (structure, rhythm, content and voice). Headings: "1. The worst AI style", "2. The worst AI words", "3. The other things that make you say "that's AI"".
- Add human markers: contractions, a number with texture, a spread of sentence lengths, including a short sentence.
- Prompt tip: ask an AI to follow a style standard (the page shows an ASD-STE100 prompt) and the output reads like "IKEA instructions".

## 6. Concepts and definitions

- AI-slop: text with typical AI patterns. The TikTok slide title is "Detect AI-slop". The author does not give a formal definition in the part I read.
- Pangram: the AI-detection tool that the author says Substack uses.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author says Substack uses Pangram to detect AI text. | factual | explicit | E1 | high |
| C2 | In the author's own test, replacing an em dash with a colon changed a detector result from "100% AI-generated" to "100% human-generated". | factual | explicit | E2 | medium |
| C3 | The author says AI and human writing overlap a lot, so bots cannot predict AI text with certainty. | normative | explicit | E3 | medium |
| C4 | The author says em dashes, bold-first bullets, stock phrases and uniform sentence length are signs of AI-written text. | normative | explicit | E4 | medium |
| C5 | The author recommends contractions, specific numbers and a spread of sentence lengths to sound human. | procedural | explicit | E5 | medium |
| C6 | The author advises against random typos and swapping in unusual words. | procedural | explicit | E6 | medium |
| C7 | The author states that 53.7% of long-form LinkedIn posts (100+ words) in 2025 were AI-generated, with no source seen in the text I received. | factual | explicit | E7 | low |
| C8 | The author states that AI text shows higher certainty (+111-152%) and positive emotion (+69-133%) than human text, with no source seen. | factual | explicit | E8 | low |

## 8. Evidence and locators

Bold section labels I, II and III are not true heading levels in the fetched structure. They are cited as labels under the nearest heading.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Substack uses Pangram to detect AI." (6 words) | subtitle “Yes. Here’s how:”; bold label I. How Substack AI detector works. | C1 | Supports | direct | Author statement. No documentation cited. Exact text must be checked against the raw page. |
| E2 | Quote: "Then I removed the — and replaced it with a “:”" (10 words). Summary: the result then read "100% human-generated". | subtitle “Yes. Here’s how:”; bold label I. How Substack AI detector works. | C2 | Supports | direct | One case, by the author. No method, tool version or repeat test. Screenshots not read. |
| E3 | Quote: "The two overlap. A lot." (5 words) | subtitle “Yes. Here’s how:”; bold label I. How Substack AI detector works. | C3 | Supports | direct | Opinion. No data given for the overlap. |
| E4 | Summary: the author lists em dashes, bold-first bullets, stock phrases and uniform sentence length as the worst AI style, and gives a list of overused AI words. | § 1. The worst AI style; § 2. The worst AI words | C4 | Supports | direct | The author gives no test that shows these markers separate AI from human text. |
| E5 | Summary: the author lists human markers: contractions, a number with texture (such as a price or time), and a short sentence mixed with long ones. | § 3. The other things that make you say "that’s AI" | C5 | Supports | direct | Advice only. No evidence that it works against detectors. |
| E6 | Quote: "Don’t swap every word with weird ones, we can tell." (10 words). Summary: also warns against random typos. | § 3. The other things that make you say "that’s AI" | C6 | Supports | direct | Opinion. The page may end this sentence differently. Check the raw page. |
| E7 | Quote: "53.7% of long-form LinkedIn posts (100+ words) in 2025 were AI-generated." (11 words) | subtitle “Yes. Here’s how:”; bold label I. How Substack AI detector works. | C7 | Supports | direct | No source seen. Not checked. Possibly from a third-party study. |
| E8 | Quote: "certainty +111–152%, positive emotion +69–133% vs human" (7 words) | § 4. Content & voice (under § 1. The worst AI style, as returned by the tool) | C8 | Supports | direct | No source, sample or method seen. The heading location is uncertain. |

## 9. Tools and resources

- Pangram (AI detector, named by the author as used by Substack).
- Claude Code credits (the author names a cost of $34 for his own work).
- A paid newsletter community with live writing sessions (section III, paywalled). Price not read.

## 10. Limitations and caveats

- Section III ("How I write with AI, live") is paywalled and was not read.
- The page was read through WebFetch, which returns a model-processed version. The tool refused to give the full text. Quotes and paragraph positions are the tool's output and may be off.
- The author sells a paid newsletter. The article promotes it. Treat the advice and the paid part as marketing.
- The detector test is one case. It does not show that detectors are generally unreliable.
- The statistics in C7 and C8 have no visible source.
- The author's advice does not state which detector or model it was tested on.
- Images and screenshots were not read.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | Popular newsletter writer on AI use. No stated expertise in AI detection or linguistics. |
| Transparency | 2 | Names the tool and the one test. No method, no sources for the percentages. Paid part hidden. |
| Accuracy | — | I could not check the figures or the Pangram claim. |
| Objectivity | 2 | Promotional. Sells a paid newsletter and uses strong claims and calls to action. |
| Currency | 4 | Published 2026-07-22. Detector products change fast, so the test can age quickly. |

## 12. Extraction notes

- Covers sections I and II (free part) at summary level. Does not cover section III (paywalled).
- Extraction completeness is `partial` (paywalled section; WebFetch only). Confidence is `medium` (quotes are tool output; paragraph locators not given).
- The Orchestrator must check each `Quote:` against the raw page (WebFetch does not return exact text). Check curly apostrophes and quotation marks, and trailing full stops.
- Quote word counts: E1 6, E2 10, E3 5, E6 10, E7 11, E8 7. All 15 or fewer.
- Final check: each claim has evidence (C1-C8 to E1-E8). Each evidence row has a locator. Claim-count is 8.
- No text directed at an AI was found.
- Not Charter or Spectrum work.
