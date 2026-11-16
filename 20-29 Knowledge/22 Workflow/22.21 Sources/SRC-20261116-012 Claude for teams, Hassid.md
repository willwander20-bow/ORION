---
id: SRC-20261116-012
type: source
title: "Claude for teams"
status: done
created: 2026-11-16T05:56
updated: 2026-11-16T06:01
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/claude-for-teams
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-03-11
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
extraction-completeness: minimal
extraction-confidence: medium
claim-count: 8
---

# Notes

Guide 12 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Paid-subscriber post (audience: only_paid): only the free preview is visible. The paywall is not bypassed.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

Ruben Hassid's guide proposes a one-week plan to set up Claude for a team, as a way "to quit ChatGPT". The free preview covers the opening pitch, a short team-plan section, and Monday (Projects: one Project per recurring deliverable, with only the context it needs, custom instructions, and a test). Tuesday to Friday are behind the paywall and were not read. The preview is promotional and gives no data.

## 2. Central premise and author intent

Premise: personal Claude use does not spread in a team, so a structured weekly rollout built on Claude Projects is needed. Intent (inferred from the preview): to teach a method and to promote the author's newsletter (he asks readers to share the article and sells paid access).

## 3. Key takeaways

- The source prefers Projects over Claude Cowork for team onboarding (and Cowork for personal use).
- Make one Project per recurring team deliverable. Give each only the context that deliverable needs.
- Each Project has custom instructions that Claude generates from a prompt, then a test prompt to check tone and format.
- The source estimates 45 to 60 minutes for Monday (3 to 5 Projects).
- The source says seat type depends on use: Premium for daily use (Standard is named for other use; the rest of that sentence was not shown).

## 4. Facts and figures

- Monday estimate: 45 to 60 minutes for 3 to 5 Projects (the author's own estimate).
- The source says Claude does not train on team-plan data. No privacy policy is cited in the visible text.
- The preview shows a "Table of contents" and a security section by tier level. The content of the tier table was not captured, so no plan prices or seat figures are recorded.
- The full plan is a 7-day plan, Monday to Friday by the page headings and subtitle.

## 5. Methods and frameworks

Monday setup (Projects), five steps by the page headings:
1. Let Claude figure out which Projects you need (paste a prompt, answer Claude's questions).
2. Create the Projects (Projects, then Team, then New project) and name each as Claude suggested.
3. Load each Project with the right context, and only the right context.
4. Generate tailored instructions for each Project.
5. Test and validate each one with a test prompt.

Tuesday to Friday: not read.

## 6. Concepts and definitions

- Project (Claude): a workspace for one deliverable. It holds uploaded context and custom instructions. The source says the instructions run "always ... before each chat".
- Custom instructions: the core prompt of a Project (the source's description).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source recommends Premium seats for people who use Claude every day. | normative | explicit | E1 | medium |
| C2 | The source states that Claude does not train on data from a team plan. | factual | explicit | E2 | high |
| C3 | The source prefers Claude Projects to Claude Cowork for onboarding a team, and Cowork for personal use. | normative | explicit | E3 | high |
| C4 | The source recommends one Project for each recurring team deliverable, each with only the context that deliverable needs. | procedural | explicit | E4 | high |
| C5 | The source says a Project's custom instructions run before each chat. | factual | explicit | E5 | medium |
| C6 | The source estimates that the Monday setup takes 45 to 60 minutes for 3 to 5 Projects. | predictive | explicit | E6 | high |
| C7 | The author says that team adoption of AI tools does not last after he shares a newsletter, and that people pretend to use AI. | factual | explicit | E7 | medium |
| C8 | The source proposes a one-week plan, starting on Monday, that makes a team run on Claude by Friday. | procedural | explicit | E8 | low |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: the text says to choose Premium seats if the team uses Claude every day, and names Standard for the other case. The rest of the sentence was cut in the tool output. | § How to set up Claude’s team plan. | C1 | Supports | direct | No prices or seat limits captured. Wording of the Standard case not seen. Check against the raw page. |
| E2 | Quote: "Claude does not train on your data (like every AI-team plan)." | § How to set up Claude’s team plan. | C2 | Supports | direct | The author states it. No policy link in the visible text. Not checked against Anthropic. |
| E3 | Quote: "I prefer Claude Cowork for personal use. But Projects for teams." | § How to set up Claude’s team plan. | C3 | Supports | direct | The author's preference. No comparison data. Locator at section level only. |
| E4 | Quote: "Each Project gets only what it needs (in terms of context)." | § Monday: How to set up ‘Projects’. | C4 | Supports | direct | A law-firm example is used. It is an example, not proof of a general rule. |
| E5 | Quote: "It’s the core prompt of your project, always running before each chat." | § Monday: How to set up ‘Projects’. | C5 | Supports | direct | The author's description of the product. Not checked against Anthropic documentation. |
| E6 | Quote: "Monday is now done. It’s the heaviest day. 45–60 minutes for 3-5 Projects." | § Monday: How to set up ‘Projects’. | C6 | Supports | direct | An unsourced estimate by the author. |
| E7 | Quote: "But adoption never lasted. People pretend like they use AI (they don’t)." | § Claude for teams (opening section, before § How to set up Claude’s team plan.) | C7 | Supports | direct | An anecdote with no data. Used as a sales hook. |
| E8 | Summary: the preview says the plan takes a week, starts on Monday, and ends with the team on Claude by Friday. Only Monday was visible. | § Claude for teams (opening section, before § How to set up Claude’s team plan.) | C8 | Supports | indirect | The Tuesday to Friday sections are behind the paywall and were not read. The 12-word fragment of this sentence returned by the tool was not enough for a quote. |

Word counts of the quotes: E2 11, E3 11, E4 11, E5 12, E6 13, E7 12. All are 15 or fewer.

## 9. Tools and resources

- Claude team plan (Premium and Standard seats), Claude Projects, Claude Cowork, Claude Chat, web search tool in a Project.
- The author's newsletter, "How to AI" (the site name; the author also asks readers to share it).

## 10. Limitations and caveats

- Access is partial. The post is for paid subscribers. Only the free preview was read. Tuesday (prompt templates), Wednesday, Thursday, Friday and the closing are unread, and so is anything after the first in-article subscribe prompt. A fetch summary named topics beyond that point. This Brief does not use them.
- The prompts in the visible text (code blocks) and the tier-level security table were not captured.
- The author sells a paid newsletter. The title and subtitle ("to quit ChatGPT") are a sales message. The adoption anecdote works as a hook.
- No plan prices, seat counts or percentages were visible in the preview. Treat any such figure in the full post as an unsourced sales claim until it is checked.
- All claims are the author's statements. None was checked against Anthropic documentation.
- Date: published 2026-03-11 (per the Source record). Plan names and features can have changed since.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Practitioner and popular AI newsletter author. No stated link to Anthropic. |
| Transparency | 2 | No sources for claims. Method shown (prompts, steps), but much is paywalled. |
| Accuracy | — | Not checked. Product claims were not compared with Anthropic documentation. |
| Objectivity | 2 | Promotional. Sells a paid newsletter. Pushes "quit ChatGPT". |
| Currency | 3 | Published 2026-03-11, about eight months before this review. Product details change fast. |

## 12. Extraction notes

- Access: `partial` (paid-subscriber post, free preview only). The paywall was not bypassed.
- Charter or Spectrum work: no.
- Text aimed at an AI: none seen.
- WebFetch gave a processed view, not the raw page. The first reply refused to give the text and included a summary of content beyond the paywall. This Brief does not use that content. The second reply gave the first 12 words of each paragraph before the paywall. Each `Quote:` is copied from that reply. The Orchestrator must check each quote against the raw page (curly apostrophes, quote marks, and final full stops). Heading texts, with their final full stops, come from the same tool output and must be checked as well. Paragraph numbers are not given because the tool's list was not reliable for counting.
- Final check: each claim has an evidence row. Each row has a locator. Each quote is 15 words or fewer. The claim count is 8.
- Completeness is `minimal`: only the preview and mainly one of five days. Confidence is `medium` because the quotes come from a processed fetch.
