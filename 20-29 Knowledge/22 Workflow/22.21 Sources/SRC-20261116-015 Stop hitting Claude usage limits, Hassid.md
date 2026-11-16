---
id: SRC-20261116-015
type: source
title: "How to stop hitting Claude usage limits"
status: change-proposed
created: 2026-11-16T05:56
updated: 2026-11-16T06:00
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/how-to-stop-hitting-claude-usage
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-04-12
captured: 2026-11-16T05:56
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "From the same TikTok list (guides 8 to 15). Justin asked for them to be done in a new session. The list: https://www.tiktok.com/t/ZPLESTkK8/"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261116-008 Stop hitting Claude usage limits, Hassid]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 14
---

# Notes

Guide 15 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post (audience: everyone).

# Reference Brief

## 1. Executive summary

Ruben Hassid gives 23 habits to cut token use in Claude and to avoid usage limits. The central mechanism: Claude re-reads the whole conversation with each message, so long chats and many messages cost more. The article is practical but gives few sources for its figures. It also promotes the author's newsletter.

## 2. Central premise and author intent

Premise: usage limits come from wasted tokens, and the user can control most of the waste (long chats, big uploads, unused features, wrong model). Intent: to help readers (a mix of $20-plan and higher-plan users) use Claude with fewer limit hits, and to bring readers to the author's newsletter and prompt library (free sign-up). The author is a commercial newsletter writer with a paid tier.

## 3. Key takeaways

- Each message makes Claude re-read the conversation, so keep chats short and start new chats for new topics (habits 11, 12, 15).
- Reduce input size: convert files to text before upload, do not load whole folders, keep "About Me" files under 2,000 words (habits 1, 10, 14).
- Batch tasks, edit the earlier message instead of sending a follow-up, and request changes to sections only (habits 5, 6, 8).
- Match the model and the product to the task: Haiku or Sonnet for simple work, Opus for deep work (habits 9, 13).
- Turn off unused features (web search, connectors, Memory) and use Projects, User Preferences, and CLAUDE.md for stable context (habits 16, 17, 18, 21).
- Usage limits use a rolling 5-hour window, so spread work across the day (habit 22).

## 4. Facts and figures

- Rolling 5-hour window for usage limits (stated by the author, no source).
- "A 20-message session burns roughly 105,000 tokens" (author's figure, no method shown).
- "98.5% of tokens were spent re-reading history" (author's figure, unsourced; the case it describes is not clear from the text I read).
- Author says a tight image crop can drop from 1,300 tokens to under 100 (as reported by the fetch tool; not quoted).
- The author pays for the $100/month plan. The $20 plan is named as the case where the habits matter most. A $200 plan is not mentioned.
- "About Me" files: under 2,000 words each. Restart or summarize every 15-20 messages.

## 5. Methods and frameworks

- Plan in Chat, then create the file in Cowork at the end (habit 2).
- Use a short prompt that asks Claude to ask questions, so the user clicks options (habit 3).
- Dictate with Wispr Flow for richer answers in fewer messages (habit 4).
- Use the same prompt structure each time, so that caching can help (habit 7).
- Use Projects for recurring files (habit 17), scheduled tasks (habit 19), a clear scope for Claude Code (habit 20), and CLAUDE.md for permanent context (habit 21).
- Closing section "Where to start": suggested sets of three habits for Cowork users, Chat users, and $20-plan users.

## 6. Concepts and definitions

- Token: the author says it is roughly a word (the fetch tool returned: "Claude counts tokens. A token is roughly a word.").
- Context reload: each message makes Claude process the full conversation again.
- Rolling 5-hour window: the period that the usage limit counts over (author's description).
- Caching: repeated input (Project files, similar prompts) is partly cached and costs less (author's description).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author states that Claude re-reads the whole conversation from the top with each message, so longer chats use more tokens. | causal | explicit | E1, E10 | high |
| C2 | The author states that Claude usage limits use a rolling 5-hour window. | factual | explicit | E2 | high |
| C3 | The author says that 98.5% of tokens in a case he describes were spent re-reading history. | factual | explicit | E3 | medium |
| C4 | The author says that a 20-message session burns roughly 105,000 tokens. | factual | explicit | E4 | medium |
| C5 | The author recommends Sonnet or Haiku for simple tasks and Opus for deep work. | normative | explicit | E5 | high |
| C6 | The author says that Anthropic confirmed that similar prompts used often are partly cached, and recommends a stable prompt structure. | factual | explicit | E6 | medium |
| C7 | The author says that CLAUDE.md loads every time while Skills load on demand. | factual | explicit | E7 | high |
| C8 | The author says that web search, connectors, and "Explore" mode add tokens to every response, and recommends turning off unused features. | causal | explicit | E8 | high |
| C9 | The author says that files uploaded once to a Project are cached, and recommends Projects for recurring work. | factual | explicit | E9 | medium |
| C10 | The author recommends converting files to text before upload. | procedural | explicit | E11 | high |
| C11 | The author recommends summarizing and starting a fresh chat every 15-20 messages. | procedural | explicit | E12 | high |
| C12 | The author recommends keeping each About Me file under 2,000 words. | normative | explicit | E13 | high |
| C13 | The author says he pays for the $100/month plan and that the habits matter most on the $20 plan. | factual | explicit | E14 | medium |
| C14 | The author says Claude cannot generate images and recommends other tools for such tasks. | factual | explicit | E15 | medium |

## 8. Evidence and locators

All quotes come from WebFetch, not from the raw page or a companion file. Curly apostrophes and quotes are copied as the tool returned them. Word counts: E1 8, E2 9, E3 7, E4 7, E5 12, E6 11, E7 9, E8 12, E9 9, E10 7, E11 5, E12 7, E13 9, E14 7, E15 4. The fetch tool does not give paragraph numbers, so locators are section headings, and habit numbers are given in the Limits column.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Claude re-reads your entire conversation from the top." | unavailable | C1 | Supports | direct | Author's statement of how Claude works. No Anthropic documentation cited in the part I read. |
| E2 | Quote: "Claude uses a rolling 5-hour window for usage limits." | unavailable | C2 | Supports | direct | Habit 22. No source named. Plan limits can change after April 2026. |
| E3 | Quote: "98.5% of tokens were spent re-reading history." | unavailable | C3 | Supports | direct | Unsourced percentage. The case, method, and model are not clear. Do not treat it as a general rate. |
| E4 | Quote: "A 20-message session burns roughly 105,000 tokens." | § The basics that still matter | C4 | Supports | direct | Habit 11. Unsourced. "Roughly" and no test conditions. |
| E5 | Quote: "Use Sonnet or Haiku for simple tasks. Save Opus for deep work." | § The basics that still matter | C5 | Supports | direct | Habit 13. A recommendation, no comparison data shown. |
| E6 | Quote: "Anthropic confirmed that similar prompts you use frequently get partially cached." | § The habits you (probably) don’t know about | C6 | Supports | direct | Habit 7. The author reports a confirmation. No link or date given in the part I read. |
| E7 | Quote: "Skills load on demand. CLAUDE.md loads every single time." | unavailable | C7 | Supports | direct | Habit 21. Author's statement. |
| E8 | Quote: "Web search, connectors, and “Explore” mode all add tokens to every response." | § The basics that still matter | C8 | Supports | direct | Habit 16. No measure of the added tokens. |
| E9 | Quote: "Upload the file once. It gets cached (= saved)." | § The basics that still matter | C9 | Supports | direct | Habit 17. Caching rules not documented in the source. |
| E10 | Quote: "Three separate prompts = three full context reloads." | § The habits you (probably) don’t know about | C1 | Supports | indirect | Habit 6. Follows from C1. |
| E11 | Quote: "Before uploading, extract the text." | § The habits you (probably) don’t know about | C10 | Supports | direct | Habit 1. The author also reports a tight image crop falling from 1,300 tokens to under 100 (summary only, unsourced). |
| E12 | Quote: "Summarize and start fresh every 15-20 messages." | § The basics that still matter | C11 | Supports | direct | Habit 12. The threshold is the author's choice. |
| E13 | Quote: "Keep your ABOUT ME files under 2,000 words each." | § The basics that still matter | C12 | Supports | direct | Habit 10. Personal practice. The author says he trimmed his own file. |
| E14 | Quote: "I pay for the $100/month plan specifically" | unavailable | C13 | Supports | direct | The rest of the sentence is not captured. Plan prices are the author's statements and may change. The tool also returned "But if you’re on the $20 plan, it matters." |
| E15 | Quote: "Claude can’t generate images." | unavailable | C14 | Supports | direct | Habit 23. Time-bound statement (April 2026). |

## 9. Tools and resources

- Claude Chat, Cowork, Claude Code, Projects, User Preferences, Memory, scheduled tasks (`/schedule` plugin, per the author), CLAUDE.md.
- Wispr Flow (dictation tool, habit 4). Cost not checked.
- The author's newsletter and prompt library. The fetch tool returned: "Access my prompt library by subscribing for free at my newsletter." The author also sells a paid newsletter tier (per the submission notes).

## 10. Limitations and caveats

- Promotion: the article leads readers to the author's newsletter and prompt library. A footer line ("Ready for more?") is a sales prompt. Treat plan prices ($20, $100) and product advice as the author's statements, not as checked pricing.
- Unsourced figures: 98.5%, 105,000 tokens, and 1,300 to under 100 tokens come with no method or source in the part I read.
- Hearsay: "Anthropic confirmed" is not linked to an Anthropic source.
- Time: the post is dated 2026-04-12. Limits, models, plans, and features (Cowork, Memory, Skills, 5-hour window) can have changed.
- Most habits are the author's opinion or practice (normative). They are not tested results.
- I did not see the comments or the "Where to start" text in detail.
- All quotes come through WebFetch and must be checked against the raw page.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Well-known independent AI newsletter author and heavy user. Not an Anthropic source. |
| Transparency | 2 | Few sources and no method for the figures. An unlinked claim of an Anthropic confirmation. Clear that it is a newsletter with a subscription offer. |
| Accuracy | 3 | The mechanism (full-context re-read, caching) is plausible. I did not check any claim against Anthropic documentation. Specific figures are unsourced. |
| Objectivity | 2 | Commercial interest: free sign-up for the prompt library and a paid newsletter. Personal-practice advice written as rules. |
| Currency | 3 | Published 2026-04-12, about 7 months before capture. Product limits change fast. |

## 12. Extraction notes

- Access: full (Source `access-status: full`). WebFetch refused to return the whole text verbatim. It returned a summary and short excerpts on request. So extraction is partial: I did not read the full text of each habit, and some details (habits 20 to 23 section placement, "Where to start" sets, comments) are not covered.
- The Orchestrator must check each `Quote:` against the raw page (Hard rule 9a). In particular check the E14 quote, which may be a sentence fragment, and trailing punctuation.
- Heading locators are used only for headings the tool named: "The habits you (probably) don’t know about", "The basics that still matter". The section of each habit is the tool's grouping (habits 1 to 9, and 10 to 19) and needs a check. Other locators are `unavailable`.
- No text aimed at an AI was found. The fetch tool reported none.
- No Charter or Spectrum relation.
- Final check: each claim has evidence (yes); each row has a locator or `unavailable` (yes); quote counts are 15 or fewer (longest: E5, 12 words); claim-count 14 equals the rows in §7.
- Confidence is `medium`: quotes are second-hand through the fetch tool, and the coverage is partial.
