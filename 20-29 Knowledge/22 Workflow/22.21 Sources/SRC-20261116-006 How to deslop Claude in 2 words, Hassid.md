---
id: SRC-20261116-006
type: source
title: "How to deslop Claude in 2 words"
status: done
created: 2026-11-16T00:25
updated: 2026-11-16T00:31
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/how-to-deslop-claude-in-2-words
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-08-09
captured: 2026-11-16T00:25
language: en
access-status: partial
text-file:
processing-level: full-review
submission-context: "From a TikTok post that lists 15 Claude guides (https://www.tiktok.com/t/ZPLESTkK8/). Justin: \"Do the first 7\"."
duplicate-of:
brief:
assessment:
change-orders: []
source-quality: unrated
extraction-completeness: partial
extraction-confidence: medium
claim-count: 5
---

# Notes

Guide 006 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Paid-subscriber post. Only the free preview is visible. The Orchestrator does not get around the paywall. The Reporter analyses the visible text only and sets access to partial.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The author, Ruben Hassid, says that the two words "Use ASD-STE100." added to a prompt make Claude's writing clearer and more direct. He describes ASD-STE100 as a simplified technical English standard from aerospace. He offers a free skill (`/ste`) that applies the full rules, and he says the method works poorly for creative writing and LinkedIn posts. Only the free preview is visible. The post is for paid subscribers, so the method details and examples are not in this Brief.

## 2. Central premise and author intent

Premise (as the author gives it): a controlled-English standard removes "AI slop" patterns from Claude's output with a very short prompt addition. Intent: teach a quick prompt trick and, in the visible part, lead readers to the paid post and to a free skill. The author publishes a paid newsletter (see §11 Objectivity).

## 3. Key takeaways

- Add "Use ASD-STE100." to a prompt to get clearer, more direct writing from Claude (author's claim).
- ASD-STE100 is a simplified technical English standard that comes from aerospace.
- The author offers a free skill, usable in Claude and ChatGPT, that applies the full rules with `/ste`.
- The author says the method is a poor fit for poems and for LinkedIn posts ("too cold").

## 4. Facts and figures

- Author and date as the page shows them: Ruben Hassid, Aug 9, 2026. The page shows the publication as "How to AI" on Substack. The Source record has `published: 2026-08-09`, which matches.
- The post is marked paid. The visible text ends at the paywall notice.
- No numbers, tests, or benchmarks are visible.

## 5. Methods and frameworks

- Prompt addition: append "Use ASD-STE100." to the prompt.
- Skill: a downloadable Claude skill that applies the full ASD-STE100 rules. Invoke it with `/ste`. The author says it also works in ChatGPT.

## 6. Concepts and definitions

- ASD-STE100: a simplified technical English standard for instructions, used in aerospace (as the visible text describes it).
- "AI slop" and "deslop": the author's terms for common AI writing patterns, with the example "It’s not [X], it’s [Y]." The visible text gives no fuller definition.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author says that adding "Use ASD-STE100." to a prompt makes Claude's writing clearer and more direct. | causal | explicit | E1 | high |
| C2 | The author describes ASD-STE100 as a simplified technical English standard for instructions that is used in aerospace. | factual | explicit | E2 | medium |
| C3 | The author says the instruction removes common AI writing patterns, such as "It’s not [X], it’s [Y]." | causal | explicit | E3 | medium |
| C4 | The author offers a free Claude skill, also usable in ChatGPT, that applies the full ASD-STE100 rules and is invoked with `/ste`. | factual | explicit | E4 | medium |
| C5 | The author says the approach works poorly for creative writing such as poems, and that it makes LinkedIn posts "too cold." | normative | explicit | E5 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Use ASD-STE100." (2 words) Summary: the author gives this as the trick for clearer, more direct Claude writing. | unavailable | C1 | supports | direct | The author's own assessment. No test data or before/after examples are visible. Details are behind the paywall. |
| E2 | Summary: the visible text describes ASD-STE100 as a simplified technical English standard for instructions, used in aerospace. | unavailable | C2 | supports | direct | The description is the author's. No citation to the standard is visible. |
| E3 | Quote: "It’s not [X], it’s [Y]." (5 words) Summary: the author gives this as an example of an AI pattern that the instruction removes. | unavailable | C3 | supports | direct | One example pattern. No evidence of how often it is removed. |
| E4 | Summary: the author offers a free downloadable skill that applies the full rules, invoked with `/ste`, usable in ChatGPT too. | unavailable | C4 | supports | direct | The skill was not examined. Its content and the download link are not part of this analysis. |
| E5 | Quote: "too cold." (2 words) Summary: the author says the method works poorly for poems and makes LinkedIn posts too cold. | unavailable | C5 | supports | direct | The author's judgment only. No data. |

Quote word counts: E1 2, E3 5, E5 2. Each is 15 or fewer. The paywall notice reads "This post is for paid subscribers" (6 words); it is not used as evidence for a claim.

## 9. Tools and resources

- The `/ste` skill by the author (free, linked from the post; not opened).
- The ASD-STE100 standard (named in the post; no link visible).

## 10. Limitations and caveats

- The access is partial. The visible text ends at the paywall notice, "This post is for paid subscribers." Everything after it, including any examples, tests, and the full method, was not read.
- This Brief covers only the free preview, about 500 words by the Orchestrator's estimate. I did not try to get around the paywall.
- The post gives no test, no data, and no comparison with other methods in the visible part.
- All claims are the author's own assertions. Do not treat them as verified results.
- The preview was read through WebFetch, which returns a processed summary and not the exact page text.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Named author with an established Substack newsletter on AI use. No credentials in the visible text on writing standards or on ASD-STE100. |
| Transparency | 2 | The visible text shows no method, no test, and no samples. The key content is behind the paywall. |
| Accuracy | — | Cannot assess. No checkable data in the visible part. The description of ASD-STE100 matches general knowledge but I did not verify it against a source. |
| Objectivity | 2 | The author sells a paid newsletter, and the preview works as a lead to the paid post and to the free skill. The post has a promotional purpose and uses a strong claim ("deslop"). The author does note limits (poems, LinkedIn), which raises the score slightly. |
| Currency | 4 | Published Aug 9, 2026 (page date). Recent for a fast-moving topic. Model behavior can change. |

Overall `source-quality`: unrated. Accuracy cannot be assessed, and most of the post is not visible.

## 12. Extraction notes

- Coverage: the free preview only. The paywall hides the rest, so `extraction-completeness` is `partial`. I set `extraction-confidence` to `medium` because the page came through WebFetch as a summary, and the visible text is short.
- No companion file exists, so all locators are `unavailable`. The tool gave no headings or paragraph positions.
- The Orchestrator must check each `Quote:` (E1, E3, E5) against the raw page (Rulebook, Hard rule 9a). WebFetch did not return the exact text. The three quotes are the phrases that the tool put in quotation marks.
- Author and date as the page shows them: Ruben Hassid; Aug 9, 2026; publication "How to AI" on Substack. The Source record gives the publisher as "Substack (ruben.substack.com)". The Orchestrator can decide whether to add the publication name.
- Text aimed at an AI: none seen. Charter or Spectrum relation: none seen.
- Final check: each claim has an evidence row (yes); each evidence row has a locator or `unavailable` (yes); quotes are 15 words or fewer (yes); claim-count equals 5 rows (yes).
