---
id: SRC-20261116-005
type: source
title: "Infographics"
status: done
created: 2026-11-16T00:25
updated: 2026-11-16T00:31
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/infographics
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-08-05
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
source-quality: low
extraction-completeness: partial
extraction-confidence: low
claim-count: 7
---

# Notes

Guide 005 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Paid-subscriber post. Only the free preview is visible. The Orchestrator does not get around the paywall. The Reporter analyses the visible text only and sets access to partial.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The page shows "Infographics." by Ruben Hassid (How to AI), dated Aug 05, 2026, marked as a paid post. The visible preview describes a workflow to make infographics with AI. Claude builds HTML infographics from a design system that it extracts from reference images. ChatGPT makes the visually complex image layers. The author combines both tools. Access is `partial`: the paywall cuts the post off, and the rest is not analyzed.

## 2. Central premise and author intent

Premise (stated by the source): people remember visuals better than text, and most of the author's LinkedIn posts are images. The post teaches a method to make infographics with Claude and ChatGPT. The author also promotes his consulting and a paid community call, and the post ends in a paywall with an upgrade prompt. The intent is partly instruction and partly promotion of paid offers (my interpretation).

## 3. Key takeaways

- Claude can build HTML infographics without coding knowledge (author's claim). Claude extracts a design system from reference images and saves it as `DESIGN_SYSTEM.md`.
- The author recommends ChatGPT for visual-heavy work with little data change, and Claude for data-heavy work where numbers change often.
- The author combines both: ChatGPT makes a background image with empty space, and Claude builds live HTML elements on top.
- The author saves the design system as a reusable Claude skill so that later prompts can be short. He notes that a skill makes the output more repetitive.

## 4. Facts and figures

- Author and date as the page shows them: Ruben Hassid (How to AI); Aug 05, 2026. The page marks the post as paid.
- The source gives no figures, data, or studies in the visible text that I could read.

## 5. Methods and frameworks

- Design-system method: upload reference images, have Claude extract colors, fonts, spacing, and layout into `DESIGN_SYSTEM.md`, then generate and edit infographics from that file (§ 1).
- Tool split rule of thumb: ChatGPT for visual-heavy work with little data change; Claude for data-heavy work with changing numbers where accuracy matters most (§ 2).
- Hybrid method: ChatGPT makes the background with space for text and charts; Claude adds live HTML elements (§ 3).
- Reusable skill: save the design system as a Claude skill (§ 3).

## 6. Concepts and definitions

- Design system: the colors, fonts, spacing, and layout that Claude extracts from reference images (the source's use).
- ChatGPT image generation is described as diffusion-based (the source's description; not checked).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author says Claude can build HTML infographics without coding knowledge. | factual | explicit | E1 | medium |
| C2 | The author says Claude can extract a design system (colors, fonts, spacing, layout) from uploaded reference images and save it as a DESIGN_SYSTEM.md file, from which infographics are generated and edited. | procedural | explicit | E1 | medium |
| C3 | The author says ChatGPT's diffusion-based image generation handles visually complex infographics well and is easy to edit for language or audience. | normative | explicit | E2 | medium |
| C4 | The author recommends ChatGPT for visual-heavy work with little data change, and Claude for data-heavy work where numbers change often and accuracy matters most. | normative | explicit | E2 | medium |
| C5 | The author recommends a hybrid method: ChatGPT makes a background image with empty space, and Claude builds live HTML elements on top. | procedural | explicit | E3 | medium |
| C6 | The author says a design system saved as a reusable Claude skill allows shorter prompts, and that a skill makes output more repetitive. | causal | explicit | E3 | medium |
| C7 | The author says people remember visuals better than text. | factual | explicit | E4 | medium |

## 8. Evidence and locators

All excerpts are summaries. WebFetch gave a processed summary of the page, not exact text, so I made no `Quote:` rows. Locators come from the headings that the tool reported.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: Section 1 says Claude builds HTML infographics without coding knowledge. You upload reference images, Claude extracts a design system and saves it as DESIGN_SYSTEM.md, and you generate and edit from it. | § 1. Everything is code, even you. | C1, C2 | Supports | direct | The author's own statement. No test, example output, or data seen in the text I could read. |
| E2 | Summary: Section 2 says ChatGPT image generation (diffusion) suits visually complex infographics and is easy to edit. Rule of thumb: ChatGPT for visual work with little data change, Claude for data-heavy work. | § 2. ChatGPT is still good at something. | C3, C4 | Supports | direct | Opinion of one practitioner. No comparison or measurement seen. |
| E3 | Summary: Section 3 combines both tools: ChatGPT background with empty space, Claude live HTML on top. The design system can be saved as a reusable skill; a skill makes output more repetitive. | § 3. You want the bread & the butter. | C5, C6 | Supports | direct | Same limits as E2. The step-by-step detail may sit behind the paywall. |
| E4 | Summary: The overview says people remember visuals better than text and that most of the author's LinkedIn posts are images. | § Infographics. (opening section, before § 1) | C7 | Supports | direct | No study cited in the visible text. Claim rests on the author's assertion. |

## 9. Tools and resources

- Claude (HTML output, `DESIGN_SYSTEM.md`, skills).
- ChatGPT image generation.
- Reference sources named by the author: Pinterest, Awwwards, Dribbble.
- Author's paid offers: consulting, a weekly community call for businesses with fewer than 100 employees, a Circle community (behind the paywall).

## 10. Limitations and caveats

- Paid post. Access is `partial`. I analyzed the visible free preview only and did not try to get around the paywall.
- Where the visible text ends: WebFetch reports that the free preview ends in section 4 ("You're good, but your team is not"). The notice "This post is for paid subscribers" appears near the end of section 4, before the Circle community details. The tool also reported an earlier upgrade prompt after section 2. I could not confirm the exact cut point, and I have no description of section 4 beyond the team-adoption offers.
- The tool gave a model-processed summary, not raw text. Detail, wording, and the section titles can differ from the page.
- The post is a how-to by one practitioner. It gives no tests, data, or comparison of tools.
- The post was published Aug 05, 2026. Tool features can change.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | The author runs the "How to AI" newsletter and shares practical AI workflows. I could not check his credentials from the visible text. |
| Transparency | 3 | The author states his method and offers. The paywall hides part of the method, and he gives no evidence for performance claims. |
| Accuracy | — | I cannot assess. No checkable facts or figures in the visible text, and I did not test the method. |
| Objectivity | 2 | The author sells a paid newsletter, consulting, and a paid community. The post ends in upgrade prompts. This is a commercial interest in the reader's subscription. His tool advice is opinion and could be shaped by it. |
| Currency | 4 | Dated Aug 05, 2026, about three months before this review. AI tools change fast. |

Overall `low`: the visible text is incomplete, evidence is thin, and the author has a commercial interest. This reflects limited evidence, not proof of poor advice.

## 12. Extraction notes

- Covers: the visible free preview only, as described by WebFetch (overview, sections 1 to 3, and the team-adoption offers). Does not cover: the rest of section 4 and anything behind the paywall.
- `extraction-completeness: partial` because of the paywall. `extraction-confidence: low` because the tool gave a summary, not exact text, and the cut point is uncertain.
- Quote check: the Brief has no `Quote:` rows, so there is nothing to check against the raw page. The Orchestrator should still check the section headings in the locators against the raw page.
- Author and date as the page shows them: "Ruben Hassid (How to AI)", "Aug 05, 2026". The date matches the Source record (`published: 2026-08-05`).
- No text aimed at an AI was seen in the visible text. No Charter or Spectrum work.
- Final check: each claim has an evidence row; each row has a locator; no quotes used; facts, author statements, and my interpretations are separate (§2 and §11 mark my interpretations); `claim-count` is 7.
