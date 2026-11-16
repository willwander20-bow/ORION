---
id: SRC-20261116-002
type: source
title: "Prompt Engineering 101"
status: change-proposed
created: 2026-11-16T00:25
updated: 2026-11-16T00:32
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/how-to-ask-ai-once
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-08-19
captured: 2026-11-16T00:25
language: en
access-status: partial
text-file:
processing-level: full-review
submission-context: "From a TikTok post that lists 15 Claude guides (https://www.tiktok.com/t/ZPLESTkK8/). Justin: \"Do the first 7\"."
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261116-005 Prompt engineering 101, Hassid]]"
source-quality: low
extraction-completeness: partial
extraction-confidence: low
claim-count: 8
---

# Notes

Guide 002 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Paid-subscriber post. Only the free preview is visible. The Orchestrator does not get around the paywall. The Reporter analyses the visible text only and sets access to partial.

# Reference Brief

## 1. Executive summary

The page "Prompt Engineering 101" (subtitle "The science behind prompt engineering") is a paid Substack post by Ruben Hassid, dated Aug 19, 2026 as the page shows it. The visible text gives five prompting rules, each tied to a named study: avoid tag questions, skip "step-by-step", do not trust confidence, use 3 rules at most, and prefer goals over examples. The sixth section, "The One Prompt" template, is behind the paywall. Access is partial. The Reporter read only the visible text, through WebFetch.

## 2. Central premise and author intent

The author says that no training exists on how to prompt AI well, and that older techniques go stale quickly. He gives research findings as the basis for a new set of rules. The post is part of a paid newsletter and ends at a paywall that offers a ready-made prompt template. The post therefore also sells the paid tier. The text does not state this intent. This is the Reporter's reading of the page structure.

## 3. Key takeaways

- The author lists five rules, each tied to a named study: no tag questions such as "right?", no "step-by-step", do not trust the model's confidence, give at most 3 simultaneous rules, and state a goal instead of giving examples.
- The author suggests splitting checks into separate passes when there are more than about 3 rules.
- The "One Prompt" template, which combines the rules, is only for paid subscribers. Its content is not visible.

## 4. Facts and figures

- Page title: "Prompt Engineering 101". Subtitle: "The science behind prompt engineering."
- Author as the page shows it: Ruben Hassid. Date as the page shows it: Aug 19, 2026. The page marks the post "Paid".
- Studies named by the source (the source reports them; the Reporter did not check them): "Large Language Models as Optimizers" (OPRO, 2023); a Cornell Tech study; an IBM Research study; a Microsoft audit; a Meta study; an EPFL/Apple/Mistral study.
- The visible text gives no titles, authors, dates, or links for the five studies, except the OPRO title and year. The Reporter could not confirm this against a raw page (see §12).
- The source says models follow about 3 simultaneous rules. The visible text gives no other figures.

## 5. Methods and frameworks

- "The One Prompt": a template that covers the five rules, with a keyboard shortcut. Not visible (paywalled).
- Split rule checks into separate passes (the author's suggestion in section 4).
- Short role plus plain question (such as "as a reliability engineer") in place of "step by step" (section 2).

## 6. Concepts and definitions

- Tag question: a question that ends with "right?" and pushes the model toward agreement. The source says this biases the answers.
- Neutral prompt: a prompt that avoids yes/no framing.
- No other definitions are visible.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source says that a Cornell Tech study found that tag questions such as "right?" bias model answers. | factual | explicit | E1 | medium |
| C2 | The source says that an IBM Research study found that a plain question with a short role beat "step by step" prompting. | factual | explicit | E2 | medium |
| C3 | The source says that a Microsoft audit found hallucinated citations in published AI conference papers, and advises the reader to verify every source. | factual | explicit | E3 | medium |
| C4 | The source says that a Meta study found that models reliably follow only about 3 simultaneous rules. | factual | explicit | E4 | medium |
| C5 | The source says that an EPFL/Apple/Mistral study found that removing examples from prompts improved results, and that a clear goal works better. | factual | explicit | E5 | medium |
| C6 | The author holds that older prompting techniques go stale quickly, and gives the 2023 OPRO paper as an example of outdated advice. | normative | explicit | E6 | medium |
| C7 | The author advises splitting checks into separate passes when there are more than about 3 rules. | procedural | explicit | E4 | medium |
| C8 | The post offers a "One Prompt" template for paid subscribers only. The template content is not visible. | factual | explicit | E7, E8 | high |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: The first rule says to never end a prompt with "right?". It cites a Cornell Tech study on tag questions that bias answers. It advises neutral prompts and no yes/no framing. | § 1 "Never end with 'right?'" | C1 | supports | direct | The Reporter saw an outline from WebFetch, not the raw text. No study title, link, or figures are visible. The Reporter did not check the study. |
| E2 | Summary: The second rule says to forget "step-by-step". It cites an IBM Research study. The study found that plain questions plus a short role beat "step by step". | § 2 "Forget 'step-by-step'" | C2 | supports | direct | Same as E1. The model, the task type, and the size of the effect are not visible. |
| E3 | Summary: The third rule says not to trust confidence. It cites a Microsoft audit that found hallucinated citations in published AI conference papers. | § 3 "Do not trust confidence" | C3 | supports | direct | Same as E1. The audit scope and counts are not visible. The finding is about papers, not about prompts. The link to prompting advice is the author's. |
| E4 | Summary: The fourth rule says to stick to 3 rules at most. It cites a Meta study that found models follow about three simultaneous rules. The author suggests separate passes for checks. | § 4 "Stick to 3 rules max" | C4, C7 | supports | direct | Same as E1. The "separate passes" advice is the author's suggestion, with no evidence visible. |
| E5 | Summary: The fifth rule says goals beat examples. It cites an EPFL/Apple/Mistral study. The study found that removing examples improved results. | § 5 "Goals > Examples" | C5 | supports | direct | Same as E1. The task and model scope are not visible. One study does not show a general rule. |
| E6 | Summary: In the intro, the author says no training exists on how to prompt AI well and older techniques go stale fast. He cites the 2023 OPRO paper "Large Language Models as Optimizers" as an example. | § Page title (opening section, before § 1) | C6 | supports | direct | The staleness is the author's judgment. One example does not prove a general rule. |
| E7 | Quote: "This post is for paid subscribers" | unavailable | C8 | supports | direct | 6 words. The WebFetch tool returned this as the paywall text. The exact page wording needs a check. |
| E8 | Summary: Section 6, "The One Prompt", is a template that covers the five rules, with a keyboard shortcut. The page shows that this section is paywalled. | § 6 "The One Prompt" | C8 | supports | direct | The Reporter could not read the template. |

## 9. Tools and resources

- "Large Language Models as Optimizers" (OPRO, 2023), named in the intro. Not opened.
- The Cornell Tech, IBM Research, Microsoft, Meta, and EPFL/Apple/Mistral studies are named but not identified. Not opened.
- "The One Prompt" template and keyboard shortcut. Paywalled.

## 10. Limitations and caveats

- Access is partial. The page ends at the paywall: "This post is for paid subscribers", then a Subscribe button and a Sign in link. Section 6 and anything after it are not visible. The Reporter did not get around the paywall.
- WebFetch did not return the exact page text. The section titles and study descriptions here come from a processed outline, so they may be paraphrased. It is not clear which of sections 1 to 5 the page shows in full and which it shows only as a preview.
- The studies are the source's claims. The Reporter did not look them up. The source gives no titles, links, or numbers for five of the six, so a reader cannot check them from the visible text.
- The post is paid content from an author who sells a paid newsletter. The visible text works as a sales preview for "The One Prompt".
- One study each supports each rule. The source presents each as a rule with no stated limits (model, task, size of effect).
- The source is dated Aug 19, 2026. The source says prompting advice goes stale quickly, so the rules can be out of date.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | The author (Ruben Hassid) runs a popular AI newsletter on Substack. The Reporter did not check his credentials, and the text shows no research background. The post cites named institutions. |
| Transparency | 2 | Studies are named by institution, but the visible text has no titles, links, or figures, except OPRO. The key template is paywalled. |
| Accuracy | — | The Reporter did not check the cited studies and could not read the full post. |
| Objectivity | 2 | The author sells a paid newsletter. The post ends at a paywall that offers a template, and the rules read as a lead-in to it. The rules are stated as settled, with no limits. The Reporter did not find a factual error because it did not check the facts. |
| Currency | 4 | Dated Aug 19, 2026, about three months before this review. The source itself says such advice dates quickly. |

Overall `source-quality: low`. The reason is partial access, unchecked studies given as bare citations, and a commercial incentive. This rating is for the visible text as a source of evidence. It is not a judgment of whether the advice works.

## 12. Extraction notes

- Access result: `partial`. The visible text ends at the paywall message "This post is for paid subscribers". Section 6 "The One Prompt" and anything after it were not read. No archive copy was used and no search for the full text was made.
- Author and date as the page shows them: Ruben Hassid; Aug 19, 2026. These match the Source record.
- The Reporter used WebFetch. It does not return exact text. The Orchestrator must check each `Quote:` against the raw page. There is one quote (E7). The section headings used as locators in §8 also need a check against the raw page, because the tool returned them in a processed form.
- Completeness is `partial` because of the paywall. Confidence is `low` because the tool gave a processed outline, not raw text, and the studies are unchecked.
- Charter or Spectrum work: no.
- Text directed at an AI: none found.
- Final check: (1) each claim has an evidence row; (2) each evidence row has a locator or `unavailable`; (3) E7 quote is 6 words, at most 15; (4) the source's statements, the facts, and the Reporter's reading are separate (§2 marks the sales-intent reading as the Reporter's); (5) limits are in §8, §10, §11; (6) each survey or study figure names the study as the source reports it, and each rating names who gives it; (7) claim-count 8 equals the rows in §7.
