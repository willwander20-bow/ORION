---
id: SRC-20261116-007
type: source
title: "Fable 5"
status: done
created: 2026-11-16T00:25
updated: 2026-11-16T00:31
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/dont-use-claude-fable-5
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-07-08
captured: 2026-11-16T00:25
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "From a TikTok post that lists 15 Claude guides (https://www.tiktok.com/t/ZPLESTkK8/). Justin: \"Do the first 7\"."
duplicate-of:
brief:
assessment:
change-orders: []
source-quality: low
extraction-completeness: full
extraction-confidence: medium
claim-count: 14
---

# Notes

Guide 007 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post.

# Reference Brief

## 1. Executive summary

The post "Fable 5." by Ruben Hassid (newsletter "How to AI", Substack, shown as Jul 08, 2026) says that Claude Fable-5 is very capable but expensive, and that a user must choose when to use it. It gives a price, example costs, effort-level advice, a goal-based prompting style, four prompts, a connector and context advice, and a skill (`/fable-prompter`). Most figures have no source. The post also promotes the author's newsletter and consulting.

## 2. Central premise and author intent

Premise: "Don't use Claude Fable-5" without a plan, because a smarter model costs more per turn. The author intends to teach readers a cost-aware way to use Fable-5 (short, goal-based sessions, then a cheaper model). He also intends to sell: subscriber gifts, a share request, and a consulting pitch (§ "Your team's brain, in a folder"). The author sells a paid newsletter (per the caller).

## 3. Key takeaways

- Use Fable-5 for hard goals in one or two turns. Then switch to Opus 4.8 (High) for the rest. Cowork does not allow switching models (per the post).
- Cost grows with the number of turns (the author's estimates: about $0.15 for one short question, $6 at 19 turns, $14 at 40 turns).
- Set the effort level to the task: Low for small tasks, High as the default, Max for big tasks. Higher effort uses more credits.
- Prompt with the goal and the outcome, not a list of steps.
- Four prompt types are offered as "Fable-worthy": decision stress-test, deep research, archive-to-argument, operating review.
- Connect apps and give Claude context (about-me doc, Projects, a Cowork folder), because each chat starts with no memory.
- A skill, `/fable-prompter`, turns a short idea into a 15-line prompt. Run it on Opus 4.8, not on Fable.

## 4. Facts and figures

Stated by the post. Source column: whether the post gives a source.

| Figure | Source in the post |
|---|---|
| $10 per million input tokens, $50 per million output tokens | None (no link). Implies Anthropic pricing. |
| Timeline: launch Jun 9 (paid plans); Jun 12 "banned by US government"; Jul 1 return, up to 50% of weekly limits; Jul 12 pay-per-use usage credits | None (no link). One Anthropic quote in a screenshot ("as soon as capacity allows"). |
| About $0.15 (1 short question, 1,000-word answer); $6 at 19 turns; $14 at 40 turns | None. Author's estimates. The math is in images only. |
| Author spent $14 on one test (30 newsletters), on top of a $100 plan | None. Personal report. |
| "99.64% of the world never tried Claude"; later "0.36%" have tried it | None. The two figures conflict. |
| Market research "for 11 minutes, through 258 sources" | None. Author's own example. |
| Fable returns to subscriptions "as soon as capacity allows" (Anthropic) | Screenshot only. No link. |
| Anthropic's own testing "nearly eliminated" inflated "all done!" reports | None. No figures, no link. |
| "every benchmark shows Opus 4.8 as cheaper & better than Sonnet 5" | None in text. Figures in images only. |
| Paid plan at least $20 per month; author pays $100; Team/Enterprise plan $100/month | None. |
| Analogy: Fable-5 as a $1,000/hour lawyer, Sonnet-5 as a $100/hour intern | Illustration, not data. |
| Client anecdote: "60 out of 350 employees" near retirement | None. Client unnamed. |
| "1% of us" would be "82 million people" (implies about 8.2 billion people) | None. |

## 5. Methods and frameworks

- Escalate and de-escalate: use Fable-5 for the hard first one or two turns, then Opus 4.8 (High).
- Goal-based prompting instead of task prompting. The post summarizes an unlinked guide by "an Anthropic's engineer" with four rules: lead with the outcome; report only evidence-backed work; separate advising from acting; act when enough information exists.
- Effort levels: Low, Default/High, Max.
- Context options: about-me document pasted in, Projects, a real folder for Cowork.
- Four prompt patterns: Help-me-decide (Q&A phase, bear/base/bull cases, verdict); Deep Research (report under two pages, cited claims, labeled inferences, adversarial self-check); Archive-to-Argument (three competing arguments before drafting); Operating Review (commitments, decisions, conflicts, next-week actions). The full prompt text is in the post; this Brief does not copy it.

## 6. Concepts and definitions

- Fable-5: described as a "Mythos-level" model with a name instead of a number; the author calls it the smartest model. (Author's description.)
- Model lineup per the post: Haiku (fastest, "dumbest"), Sonnet, Opus, Mythos (newest, smartest, most expensive).
- Artifacts: side-panel outputs that can be published.
- "Wisdom Walkout": the author's term for knowledge lost when employees leave. Promotional.
- Usage credits: pay-per-use billing that the post says starts Jul 12.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author states that Fable-5 is priced at $10 per million input tokens and $50 per million output tokens. | factual | explicit | E1 | high |
| C2 | The author estimates that a Fable-5 session costs about $0.15 for one short question, $6 at 19 turns, and $14 at 40 turns. | factual | explicit | E2 | high |
| C3 | The author says that Fable-5 costs much more when the user does not manage it, and that smarter AI means more expensive AI. | causal | explicit | E3 | high |
| C4 | The author rates Fable-5 as the smartest AI model on Earth. | normative | explicit | E4 | high |
| C5 | The author recommends using Fable-5 for hard goals in one or two turns, then switching to Opus 4.8 (High). | procedural | explicit | E5 | high |
| C6 | The author states a timeline: launch Jun 9, "banned by US government" Jun 12, return Jul 1, pay-per-use usage credits from Jul 12. | factual | explicit | E6 | high |
| C7 | The author states that "every benchmark" shows Opus 4.8 as cheaper and better than Sonnet 5, and also says he has no idea which of the two is better. | factual | explicit | E7 | medium |
| C8 | The author recommends Low effort for small tasks and Max for big tasks, and says higher effort uses more credits. | procedural | explicit | E8 | high |
| C9 | The author says goal-based prompting works better than task prompting for Fable-5, and that older models lost the plot after 3 steps | causal | explicit | E9 | high |
| C10 | The author reports that Anthropic's own testing "nearly eliminated" inflated completion reports when a prompt requires evidence-backed work. | factual | explicit | E10 | medium |
| C11 | The author recommends four prompt patterns (decision stress-test, deep research, archive-to-argument, operating review) as Fable-5 tasks. | procedural | explicit | E11 | high |
| C12 | The author states that a Team/Enterprise plan lets him connect apps without sharing data with Anthropic. | factual | explicit | E12 | medium |
| C13 | The author says each new chat starts with no context, and recommends an about-me document, Projects, or a Cowork folder. | procedural | explicit | E13 | high |
| C14 | The author states that the `/fable-prompter` skill turns a short idea into a 15-line prompt, and that it should run on Opus 4.8. | procedural | explicit | E14 | high |

## 8. Evidence and locators

Quote word counts (working check): E1 10; E3 5 and 9; E4 8; E7 12 and 4; E9 6; E10 2 and 4; E12 12; E13 6. All are 15 or fewer. Quotes are as WebFetch returned them; see §12.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "$10 per million input tokens, $50 per million output tokens." | § Don't prompt Fable 5. | C1 | Supports | direct | No link to a price page. The post does not give the date of the price. |
| E2 | Summary: The author gives about $0.15 for one short question with a 1,000-word answer, $6 at 19 turns, and $14 at 40 turns. He says he spent $14 on one test of 30 newsletters. | § Don't prompt Fable 5. | C2 | Supports | direct | Estimates. The math is in images only. One user, one setup. |
| E3 | Quote: "it will cost you an arm and a leg" and "Smarter AI = Expensive AI." | § Intro ("Don't use Claude Fable-5.") | C3 | Supports | direct | Rhetoric. The post shows no cost comparison across models in text. |
| E4 | Quote: "by far the smartest AI model on Earth." | § Intro ("Don't use Claude Fable-5.") | C4 | Supports | direct | An opinion. The supporting chart is an image with no benchmark figures in the text. |
| E5 | Summary: Use Fable for hard goals in one or two turns, then switch to Opus 4.8 (High). Cowork does not allow switching models. | § Don't prompt Fable 5. | C5 | Supports | direct | Advice from one user. No test of output quality after the switch. |
| E6 | Summary: The post gives Jun 9 launch in paid plans, Jun 12 "banned by US government", Jul 1 return (up to 50% of weekly limits), Jul 12 pay-per-use usage credits. It quotes Anthropic in a screenshot: "as soon as capacity allows". | § Don't prompt Fable 5. | C6 | Supports | direct | No link to an Anthropic notice. The ban claim has no detail. The dates are the post's, not verified. |
| E7 | Quote: "every benchmark shows Opus 4.8 as cheaper & better than Sonnet 5." Also: "I have no idea" and later "a tiny little bit better" for Sonnet 5 on knowledge work. | § Don't prompt Fable 5. | C7 | Supports (claim as stated), with an internal conflict | direct | No benchmark named. Figures in images only. The author contradicts himself. |
| E8 | Summary: Default is High. Use Max for big tasks and Low for small ones. Higher effort means longer thinking and more credits. | § Expensive superintelligence. | C8 | Supports | direct | No measured cost difference between levels. |
| E9 | Quote: "lost the plot after 3 steps" The post gives a goal-based and a task-based example prompt. | § Expensive superintelligence. | C9 | Supports | direct | No test or data. One example pair. |
| E10 | Quote: "nearly eliminated" and "In Anthropic's own testing." | § Expensive superintelligence. | C10 | Supports | direct | Second-hand. No figure, no link. The guide is attributed to "an Anthropic's engineer" and is not named. |
| E11 | Summary: The post gives four prompts, each with a note on why it needs Fable-5, and example screenshots. | § Some Fable-5 worthy tasks. | C11 | Supports | direct | No comparison with a cheaper model on the same prompts. |
| E12 | Quote: "safely connect all my apps without worrying about sharing data with Anthropic." | § Connect Fable to everything. | C12 | Supports | direct | Unverified assertion. No link to a plan term or policy. |
| E13 | Quote: "Every new chat starts at zero". The post lists three context options. | § Connect Fable to everything. | C13 | Supports | direct | Author's view. Does not mention other memory features. |
| E14 | Summary: A skill that turns a short idea (the author typed 9 words) into a 15-line prompt. Run it on Opus 4.8. The download is password-protected, and the post states the password. | § /fable-prompter | C14 | Supports | direct | The skill was not tested here. No example output in the text read. |

## 9. Tools and resources

- Claude models named: Haiku, Sonnet 5, Opus 4.8, Mythos, Fable-5.
- Claude Cowork and Claude Code (the post links to its own earlier newsletters of Jul 1 and Jun 17 and adds no content).
- Connectors named: Slack, Granola, HubSpot, Notion, Google Drive, Gamma.
- The `/fable-prompter` skill (Dropbox download with a password).
- The author's newsletter "How to AI" and consulting offer.

## 10. Limitations and caveats

- The author sells a paid newsletter and consulting, and the post has subscriber gifts and promotion. This gives him an interest in readers seeing him as an expert guide.
- The pricing, dates, and usage limits come from the post only. The post gives no link to an Anthropic page. A reader needs Anthropic's current pricing to confirm them.
- Cost examples are one user's estimates. The math is in images.
- Internal conflicts: "99.64% never tried Claude" against "0.36%" tried it (these two are consistent as complements, but no source is given for either); "I have no idea" about Sonnet against Opus, then "every benchmark shows" Opus is better, then Sonnet is "a tiny little bit better" on knowledge work.
- The post gives details of events (a "ban by US government", pay-per-use change) with no source. The Reporter cannot say whether they are accurate.
- Images (charts, screenshots, cost math, benchmark charts) were not read. The extraction covers the text only.
- The post is from Jul 08, 2026. Prices and plan terms can change after that date.
- The prompts in the post are the author's. No output tests are shown in the text.

Statements the post makes without a source: all figures in §4 except the Anthropic quote (screenshot only).

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | The author is a newsletter writer who says he is not technical. He writes from use, not from Anthropic. He attributes some points to an Anthropic engineer, with no link. |
| Transparency | 2 | Method and math are in images. No links for price, timeline, or testing claims. The author states his plan and his personal spend. He states his commercial offers. |
| Accuracy | 2 | Many figures cannot be checked. The post has internal conflicts (adoption figures, Sonnet against Opus). The Reporter did not check any figure against Anthropic. |
| Objectivity | 2 | Promotional tone. The post has a paid newsletter, subscriber gifts, and consulting. Strong words ("smartest AI model on Earth"). It does disclose that it is the author's own use and that he pays for his plan. |
| Currency | 3 | Dated Jul 08, 2026, about four months before the capture. The post tells of changes planned for Jul 12. Prices and limits probably changed since. |

Overall `source-quality`: low. The post is useful as one practitioner's advice on cost and prompting. It is weak as evidence for prices, benchmarks, or Anthropic's testing.

## 12. Extraction notes

- Author and date as the page shows them (through WebFetch): Ruben Hassid, publication "How to AI" on Substack, Jul 08, 2026. The page title is "Fable 5." and the URL slug is `dont-use-claude-fable-5`. This matches the Source record.
- Access: full, free post. No paywall on the post text. A skill download has a password that the post states. I did not download it.
- Coverage: all text sections. I skipped navigation, subscribe boxes, and promotion, as asked. I read sections 5 and 6 (Cowork, Code) as pointers only, with no content. Sections 8 and 9 (consulting pitch and biography) are only noted in §2 and §6. Images were not read.
- The Orchestrator must check each `Quote:` against the raw page. WebFetch passes the page through a model and does not return the exact text. The `$` figures and symbols such as `&` and `=` are the most likely to differ. E3, E7, E10 each combine two short quotes. Check them separately.
- Final check: (1) each of the 14 claims has an evidence row; (2) each evidence row has a locator (heading); (3) each quote is 15 words or fewer (see §8 counts); (4) facts, statements of the source, and my interpretation are separate; (5) limits are in §8, §10, and §11; (6) each rating and each figure names who states it; (7) `claim-count` is 14.
- Text aimed at an AI: none found. The prompts in the post are written for the reader to paste.
- Charter or Spectrum work: not related.
- Completeness `full` for the text. Confidence `medium`: the text came through WebFetch (a model summary), the quotes need a raw check, and the images were not read.
