---
id: SRC-20261116-009
type: source
title: "Claude Design"
status: done
created: 2026-11-16T05:56
updated: 2026-11-16T06:01
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/claude-design
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-04-22
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

Guide 9 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post (audience: everyone).

# Reference Brief

## 1. Executive summary

The article is a how-to guide by Ruben Hassid on Claude Design, a separate Anthropic product at claude.ai/design. It covers access and plan limits, quick tests, a "video first" method for slides, a Cowork plus DESIGN.md workflow, copying brand styles, and the claim that human taste is the remaining skill. The author describes his own tests and opinions. The article gives no independent data.

## 2. Central premise and author intent

Premise: Claude Design can produce good designs, slides, and video from short prompts, and the user's taste decides the quality. Intent: teach the workflow to a general audience and grow the author's free newsletter through shares and subscriptions. The author says he takes no sponsorship from AI labs.

## 3. Key takeaways

- Claude Design is a separate product from the Claude app. It needs a paid plan and uses the plan limits.
- The author reports that making a video first gives better slides than asking for a deck directly.
- The author builds a DESIGN.md file (brand guidelines) with Cowork, then uploads it to Claude Design.
- The author recommends four inputs in each prompt: goal, layout, content, constraints.
- The author reports that "Send to Canva" does not work.
- The author argues that choosing between options (taste) stays a human task.

## 4. Facts and figures

- Access: a separate site, claude.ai/design. A paid plan is needed. Use counts against the existing plan limits. The page says extra usage is available (E3).
- Example figures in the article (a $100 million raise in a prompt, a 40% lower cooling cost in a video prompt, and "Figma lost $730M valutation right after the news") come from example prompts or from the author. The page gives no source for them. Do not use them as verified figures.
- The page gives no plan prices and no study data.

## 5. Methods and frameworks

- Video hack: make a short video from the research, then ask for slides (E4).
- Advanced workflow ("0 to 1"): put brand assets in one folder, have Cowork produce DESIGN.md, upload it to Claude Design, write prompts with the four inputs, iterate in chat or on the canvas, check accessibility, make responsive versions, and export (PPTX, PDF, or HTML) (E5, E6).
- Copy a design: use DESIGN.md files for known brands from getdesign.md (E10).

## 6. Concepts and definitions

- DESIGN.md: the author defines it as brand guidelines and instructions in a file (E5).
- Taste: the author defines it as saying no to nine versions and yes to one (E8).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | Claude Design is a separate product from the Claude browser and desktop app, at claude.ai/design. | factual | explicit | E1 | high |
| C2 | Claude Design needs a paid plan and uses the user's existing plan limits. | factual | explicit | E2, E3 | high |
| C3 | The author reports that slides made from a video first come out better than slides asked for directly. | normative | explicit | E4 | high |
| C4 | The author describes a workflow in which Cowork produces a DESIGN.md file of brand guidelines that the user uploads to Claude Design. | procedural | explicit | E5 | medium |
| C5 | The author states that each good prompt has four inputs: goal, layout, content, constraints. | procedural | explicit | E6 | high |
| C6 | The author reports that the "Send to Canva" export did not work for him. | factual | explicit | E7 | high |
| C7 | The author argues that taste, the choice between AI-made options, remains a human skill. | normative | explicit | E8 | high |
| C8 | The author states that he was not paid by Claude and will not accept sponsorship from AI labs. | factual | explicit | E9 | high |
| C9 | The author says the getdesign.md site offers DESIGN.md files for known brands. | factual | explicit | E10 | medium |
| C10 | The author reports high usage consumption and frequent bugs in Claude Design. | normative | explicit | E11 | low |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Claude Design is a separate product from everything else." | § How to access Claude Design: | C1 | Supports | direct | Author statement. The page is dated 2026-04-22 (research preview). |
| E2 | Quote: "You do need one of the paid plans." | § 1. How to access Claude Design. | C2 | Supports | direct | Does not name the plans in the quote. The page gives no prices. |
| E3 | Quote: "And it uses your existing plan limits." | § 1. How to access Claude Design. | C2 | Supports | direct | The author does not measure the use. |
| E4 | Quote: "The slides come out better than if you’d asked for the deck directly." | § 3. The video hack (to get great slides). | C3 | Supports | direct | Opinion from the author's own tests. No comparison data and no blind test. |
| E5 | Quote: "DESIGN.md is just a fancy way to say “brand guidelines & instructions”." | § 3. The advanced workflow: 0 to 1 | C4 | Supports | indirect | The quote defines the file. The workflow steps are my summary of the section. |
| E6 | Quote: "Every good prompt has 4 locked-in inputs: goal, layout, content, constraints." | § 3. The advanced workflow: 0 to 1 | C5 | Supports | direct | Author's rule. No test shows it is better than other prompts. |
| E7 | Quote: "Send to Canva does not work" | § 3. The advanced workflow: 0 to 1 | C6 | Supports | direct | One user, one date. The fix may have come later. The quote is the start of the sentence. |
| E8 | Quote: "Taste is the ability to say no to 9 versions and yes to 1." | § 5. Taste is all you need. | C7 | Supports | direct | Opinion with no evidence. |
| E9 | Quote: "So no, I’m not paid to make this newsletter (or the next)." | § Claude did not pay me. | C8 | Supports | direct | Self-declared. The author promotes his own newsletter. |
| E10 | Summary: The section lists getdesign.md as a source of DESIGN.md files for known brands, to apply a brand style in a prompt. | § 4. Copy any design. | C9 | Supports | direct | I did not open the link (Reporter rule). Whether the site exists as described is unchecked. |
| E11 | Summary: The article names high token use, bugs, and limited control as weaknesses. | unavailable | C10 | Supports | indirect | The fetch tool gave this as a summary. I could not tie it to a heading or exact words. |

## 9. Tools and resources

- Claude Design (claude.ai/design): the subject of the article.
- Cowork: used to make the DESIGN.md file.
- getdesign.md: a site with DESIGN.md files for known brands (author's claim, not opened).
- Canva: named as an export target that did not work for the author.

## 10. Limitations and caveats

- The article is a first-person account. It gives no data, no benchmark, and no independent test.
- The numbers in the example prompts and the Figma "$730M valutation" line have no source on the page. Treat them as unsourced.
- The article is promotional in tone ("Claude did it again", "blew my mind"). The author sells no paid plan on this page, but asks the reader to share and subscribe (free). The fetch showed no paid-subscription call to action. Other posts by this author may sell a paid newsletter.
- Claude Design is a research preview as of 2026-04-22. Access, limits, and bugs can have changed.
- Team and Enterprise admin steps came from the fetch summary. They are not in the claims.
- Heading names, including the duplicate "3." numbering, come from the fetch tool. Check them against the page.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Popular practitioner and writer on Claude. Not an Anthropic source. He describes his own use. |
| Transparency | 3 | He states a no-sponsorship position and shows his prompts. He gives no sources for figures. |
| Accuracy | — | I could not verify the product claims. The page has an error ("valutation") and unsourced figures. |
| Objectivity | 2 | Promotional tone. Author grows a newsletter and gains from enthusiasm. No sponsor is declared. |
| Currency | 3 | Published 2026-04-22 for a research-preview product that changes fast. |

## 12. Extraction notes

- Access: partial through WebFetch. The tool returned summaries and short sentences, not the whole page. No companion file exists. The Brief covers the headings and main steps. It does not cover every prompt text or example.
- The Orchestrator must check each `Quote:` against the raw page. WebFetch does not return exact text. Check the curly apostrophes and quotation marks, and the final full stop. E7 stops before "… a shame."
- Quote word counts: E1 9, E2 8, E3 7, E4 13, E5 12, E6 10, E7 6, E8 14, E9 12. Each is 15 or fewer.
- Final check: each claim has an evidence row (C10 relies on a summary with no locator). Each evidence row has a locator or `unavailable`. Claim count is 10.
- No text aimed at an AI was found. The topic is not Charter or Spectrum work.
- Extraction confidence is medium because I did not read the raw text.
