---
id: SRC-20261115-010
type: source
title: "Effective context engineering for AI agents"
status: change-proposed
created: 2026-11-15T23:39
updated: 2026-11-15T23:46
created-by: orchestrator
schema-version: "0.13"
url: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
source-type: article
author: "Anthropic Applied AI team (byline: Team: Engineering). Written by Prithvi Rajasekaran, Ethan Dixon, Carly Ryan, Jeremy Hadfield"
publisher: Anthropic
published: 2025-09-29
captured: 2026-11-15T23:39
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "Chosen by the Orchestrator from the topics of the Brain. Justin approved the list of six with \"Go\" on 2026-11-15. Topic: agent context and memory"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-017 Effective context engineering for AI agents, Anthropic]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: low
claim-count: 9
---

# Notes

Overnight batch (6 sources, Justin's permission). Access check: `curl` returns 200 with page text. No Charter or Spectrum content expected.

# Reference Brief

## 1. Executive summary

The Anthropic Engineering article presents context engineering as the next step after prompt engineering. It treats the context window as a finite resource that loses quality as it grows ("context rot"). It describes how to build effective context (system prompts, tools, examples, just-in-time retrieval) and three techniques for long tasks: compaction, structured note-taking, and sub-agent architectures. The guiding principle is to find the smallest set of high-signal tokens for the desired outcome.

## 2. Central premise and author intent

The authors argue that building agents is now less about prompt wording and more about curating all the tokens that enter the model's context at each turn. The intent is to give practitioners guidance, based on Anthropic's own work (for example Claude Code). The authors work for the model vendor and describe their own product approach.

## 3. Key takeaways

- Context engineering is the "natural progression" of prompt engineering, in the view of Anthropic.
- Context is finite. The article says performance can fall as the context grows ("context rot").
- System prompts should sit at the right level of specificity. Tools should be self-contained and not overlap. Examples should be few, diverse, and canonical.
- Agents can keep light references (such as file paths) and load data at run time ("just in time").
- Long tasks use compaction, structured note-taking (agentic memory), or sub-agents.
- Principle: use the smallest set of high-signal tokens.

## 4. Facts and figures

- Published Sep 29, 2025. Byline on the page: "Engineering" team. No figures or benchmark numbers were obtained in this run.

## 5. Methods and frameworks

- Compaction: summarize a conversation that nears the context limit and continue from the summary. Tool-result clearing is a light form.
- Structured note-taking: the agent writes persistent notes outside the context window and reloads them later.
- Sub-agent architectures: specialized agents work in clean context windows and return condensed summaries to a coordinating agent.
- Hybrid retrieval (Claude Code, as described by the source): some context loaded up front, the rest explored on demand.

## 6. Concepts and definitions

- Context engineering: strategies for curating and maintaining the set of tokens given to the model at inference (the source's definition; wording not fully captured, see §12).
- Context rot: decline in recall or performance as the number of tokens grows.
- Attention budget: the source's image of the limited attention of the model.
- Just-in-time retrieval: load data through tools when needed, using lightweight references.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | Anthropic views context engineering as the natural progression of prompt engineering. | normative | explicit | E1 | high |
| C2 | The source says that studies of needle-in-a-haystack style benchmarks showed context rot: model performance can fall as context grows. | factual | explicit | E2 | medium |
| C3 | The source says that context is a finite resource, comparable to a limited attention budget. | factual | explicit | E3 | medium |
| C4 | The source recommends a small set of diverse, canonical examples over long lists of edge-case rules. | normative | explicit | E4 | medium |
| C5 | The source recommends that tools be self-contained, token-efficient, and not overlap in function. | normative | explicit | E4 | medium |
| C6 | The source says agents increasingly use just-in-time retrieval, and that Claude Code loads some context up front and explores the rest on demand. | factual | explicit | E5 | medium |
| C7 | The source describes compaction, structured note-taking, and sub-agent architectures as techniques for long-horizon tasks. | procedural | explicit | E6, E7 | high |
| C8 | The source says that sub-agents work in clean context windows and return condensed summaries to a coordinating agent. | procedural | explicit | E7 | medium |
| C9 | The source advises finding the smallest set of high-signal tokens that maximize the likelihood of the desired outcome. | normative | explicit | E8 | high |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "At Anthropic, we view context engineering as the natural progression of prompt engineering." (13 words) | § Context engineering vs. prompt engineering, ¶1 | C1 | supports | direct | A view of the vendor. No outside support. |
| E2 | Quote: "Studies on needle-in-a-haystack style benchmarking have uncovered the concept of context rot:" (12 words) | § Why context engineering is important to building capable agents | C2 | supports | direct | The studies are not named in what I captured. Paragraph number not known. |
| E3 | Summary: the article says that LLMs have a finite attention budget, and that context is a limited resource with diminishing returns. | § The anatomy of effective context | C3 | supports | direct | Paraphrase from a processed page. The exact words are not checked. |
| E4 | Summary: the section advises clear system prompts at the right level of specificity, self-contained tools with no overlap, and a few diverse canonical examples. | § The anatomy of effective context | C4, C5 | supports | direct | Guidance only. No test data seen. |
| E5 | Summary: the section describes just-in-time retrieval with lightweight references such as file paths, and a hybrid approach in Claude Code. | § Context retrieval and agentic search | C6 | supports | direct | Vendor description of its own product. |
| E6 | Summary: the section names compaction, structured note-taking, and sub-agent architectures as three ways to handle long tasks. | § Context engineering for long-horizon tasks | C7 | supports | direct | No comparison data between the three. |
| E7 | Quote: "Sub-agent architectures provide another way around context limitations." (8 words) | § Context engineering for long-horizon tasks, § Sub-agent architectures | C7, C8 | supports | direct | The clean-window and summary detail is from a summary, not a quote. |
| E8 | Quote: "find the smallest set of high-signal tokens that maximize the likelihood of your desired outcome." (15 words) | § Conclusion | C9 | supports | direct | A fragment of a longer sentence. |

## 9. Tools and resources

- Claude Code (named as an example of hybrid retrieval).
- The source links to the earlier Anthropic article "Building effective AI agents". I did not open it.

## 10. Limitations and caveats

- The author is the vendor. The article describes the vendor's own practice and gives advice, not measured results, in the parts I could read.
- I did not see data, benchmark numbers, or study citations for the context rot claim.
- Most evidence is a summary of a processed page (see §12). Treat wording as unchecked.
- The claims are general advice. They do not show that the techniques work in every case.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 4 | Published by Anthropic Engineering. Acknowledgements credit named Applied AI team members. |
| Transparency | 3 | Authors and team are named. Method and data for the claims were not seen. |
| Accuracy | — | I could not check the claims against other sources. |
| Objectivity | 3 | The vendor writes about its own products and approach. The tone is advice, not sales. |
| Currency | 3 | Published Sep 29, 2025. About 14 months old on 2026-11-15, in a fast-moving field. |

## 12. Extraction notes

- Access: WebFetch only (no companion file). WebFetch refused to return the full text and gave a model summary plus a list of headings and some first sentences. I could not run `curl`. Sections and most paragraphs were therefore not read verbatim. Completeness is `partial` and confidence is `low`.
- The Orchestrator must check each `Quote:` (E1, E2, E7, E8) against the raw page. Word counts: E1 13, E2 12, E7 8, E8 15. All are 15 or fewer.
- Locators are headings that the tool returned. Paragraph numbers are `unavailable` except E1 (first sentence of the section, so ¶1).
- Author and date as the page shows them: the page shows "Team: Engineering" and "Published: Sep 29, 2025". No person is named in a byline. The Acknowledgements section says the article was written by Anthropic's Applied AI team: Prithvi Rajasekaran, Ethan Dixon, Carly Ryan, and Jeremy Hadfield, with contributions from Rafi Ayub, Hannah Moran, Cal Rueb, and Connor Jennings (names as the tool returned them; the list was cut in one reply).
- No text directed at an AI was seen. No Charter or Spectrum content.
- Final check: each claim has evidence (C1 to C9). Each evidence row has a locator. Claim count is 9.
