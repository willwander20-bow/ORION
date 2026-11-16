---
id: SRC-20261115-008
type: source
title: "Building effective AI agents"
status: done
created: 2026-11-15T22:40
updated: 2026-11-15T22:51
created-by: orchestrator
schema-version: "0.13"
url: https://www.anthropic.com/research/building-effective-agents
source-type: article
author: Erik S. and Barry Zhang (named in the acknowledgements)
publisher: Anthropic
published: 2024-12-19
captured: 2026-11-15T22:40
language: en
access-status: partial
text-file:
processing-level: full-review
submission-context: "background knowledge for creating AI agents and systems"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-013 Building effective agents, Anthropic]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 11
---

# Notes

Justin: "Run on these". He gave no reason for this source.

Access check: `curl` returns 200, but the article text is inside script data, so a plain text check finds none. The fetch tool reads the page (title "Building effective AI agents", published December 19, 2024, a note that much of the tooling has changed since). The author and the date are confirmed after the Brief.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The article is an engineering post by Anthropic. It separates "workflows" (fixed code paths) from "agents" (LLMs that direct their own process). It advises the simplest workable design, describes five workflow patterns, and gives three design principles. Two appendices cover agent use cases and tool design.

## 2. Central premise and author intent

Premise: successful agent systems use simple, composable patterns, not complex frameworks. Intent: guide developers who build LLM agents, based on the authors' work with customers. The authors work for the publisher, which sells the models and tools involved.

## 3. Key takeaways

- Start with the simplest solution. Add complexity only when it is needed.
- Workflows follow predefined code paths. Agents decide their own steps and tool use.
- Frameworks can hide prompts and make debugging harder.
- The source gives five workflow patterns: prompt chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer.
- The source ends with three principles: simplicity, transparency, and a well-built agent-computer interface (ACI).

## 4. Facts and figures

- Byline: Erik S. and Barry Zhang (Anthropic). Date on the page: December 19, 2024.
- The source gives no measured data or figures in the parts read.

## 5. Methods and frameworks

- Augmented LLM: an LLM with retrieval, tools, and memory. The source calls it the basic building block.
- Prompt chaining: a task is split into fixed steps.
- Routing: an input is classified and sent to a specialized task.
- Parallelization: sectioning (independent subtasks) or voting (same task, many runs).
- Orchestrator-workers: a central LLM splits the task and delegates.
- Evaluator-optimizer: one LLM generates, another gives feedback in a loop.
- Autonomous agent: an LLM loop with tools that acts on environment feedback.

## 6. Concepts and definitions

- Agentic system: the general term for workflows and agents.
- Workflow: LLMs and tools orchestrated through predefined code paths.
- Agent: an LLM that dynamically directs its own processes and tool use.
- ACI (agent-computer interface): the tool design and documentation that an agent uses.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source defines a workflow as LLMs and tools orchestrated through predefined code paths, and an agent as an LLM that dynamically directs its own processes and tool use. | factual | explicit | E1, E2 | high |
| C2 | The source recommends the simplest workable solution, and more complexity only when needed. | normative | explicit | E3 | high |
| C3 | The source states that frameworks can add abstraction layers that obscure the underlying prompts. | causal | explicit | E4 | high |
| C4 | The source gives three principles for agent design: simplicity, transparency (show planning steps), and a carefully crafted agent-computer interface. | normative | explicit | E5, E6, E7 | high |
| C5 | The source states that the autonomy of agents means higher costs and the potential for compounding errors. | causal | explicit | E8 | high |
| C6 | The source states that the evaluator-optimizer workflow is particularly effective when clear evaluation criteria exist. | normative | explicit | E9 | medium |
| C7 | The source describes parallelization in two forms: sectioning (independent subtasks in parallel) and voting (same task run many times). | factual | explicit | E10, E11 | high |
| C8 | The source reports that it changed a tool to require absolute filepaths, to prevent model errors. | factual | explicit | E12 | medium |
| C9 | The source says that customer support and coding are two promising applications for agents. | normative | explicit | E13 | medium |
| C10 | The source lists five workflow patterns: prompt chaining, routing, parallelization, orchestrator-workers, evaluator-optimizer. | factual | explicit | E14 | high |
| C11 | The source treats the augmented LLM (LLM with retrieval, tools, memory) as the basic building block of agentic systems. | factual | explicit | E15 | medium |

## 8. Evidence and locators

Word counts of quotes: E1 13; E2 12; E3 13; E4 13; E5 6; E6 9; E7 12; E8 14; E9 11; E12 9; E13 13. E10, E11, E14, E15 are summaries.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Workflows are systems where LLMs and tools are orchestrated through predefined code paths." | § What are agents? | C1 | supports | direct | Definition by the source for this article only. |
| E2 | Quote: "are systems where LLMs dynamically direct their own processes and tool usage" | § What are agents? | C1 | supports | direct | The quote starts mid-sentence. The tool cut the opening words. |
| E3 | Quote: "we recommend finding the simplest solution possible, and only increasing complexity when needed." | § When (and when not) to use agents | C2 | supports | direct | Advice by an interested vendor. No data in the section. |
| E4 | Quote: "they often create extra layers of abstraction that can obscure the underlying prompts" | § When and how to use frameworks | C3 | supports | direct | General statement. No example or data in the quote. |
| E5 | Quote: "Maintain simplicity in your agent's design." | § Summary | C4 | supports | direct | Principle, not measured. |
| E6 | Quote: "Prioritize transparency by explicitly showing the agent’s planning steps." | § Summary | C4 | supports | direct | Principle, not measured. |
| E7 | Quote: "Carefully craft your agent-computer interface (ACI) through thorough tool documentation and testing." | § Summary | C4 | supports | direct | Principle, not measured. |
| E8 | Quote: "The autonomous nature of agents means higher costs, and the potential for compounding errors." | § Agents | C5 | supports | direct | No figures given. |
| E9 | Quote: "This workflow is particularly effective when we have clear evaluation criteria" | § Workflow: Evaluator-optimizer | C6 | supports | direct | Author judgment. The sentence continues in the source. No data. |
| E10 | Summary: Sectioning means breaking a task into independent subtasks that run in parallel. | § Workflow: Parallelization | C7 | supports | direct | Paraphrase of the fetch result. |
| E11 | Summary: Voting means running the same task several times to get diverse outputs. | § Workflow: Parallelization | C7 | supports | direct | Paraphrase of the fetch result. |
| E12 | Quote: "we changed the tool to always require absolute filepaths" | § Appendix 2: Prompt engineering your tools | C8 | supports | direct | One example. It does not prove a general rule. The quote does not show the result of the change. |
| E13 | Quote: "Our work with customers has revealed two particularly promising applications for AI agents" | § Appendix 1: Agents in practice | C9 | supports | indirect | The quote does not name the applications. The fetch tool reported them (customer support, coding). Authors' own experience, no data. |
| E14 | Summary: The section on workflows presents five patterns, each with a heading. | § Building blocks, workflows, and agents | C10 | supports | direct | Taken from the fetch outline. |
| E15 | Summary: The article presents the augmented LLM (retrieval, tools, memory) as the core building block, before the workflows. | § Building blocks, workflows, and agents | C11 | supports | indirect | Outline only. The exact wording was not read. |

## 9. Tools and resources

- The page points to newer Anthropic material on Claude Managed Agents and its documentation (links not opened, per the scope).
- The source discusses frameworks. Names of specific frameworks were not extracted.

## 10. Limitations and caveats

- Currency: the page carries an editor's note that much of the tooling landscape described "has changed since December 2024". The patterns may still apply. Tool and framework details may be out of date. The page was published 2024-12-19. The review date is 2026-11-15.
- The authors work for a vendor of models and tools. The advice is not neutral and has no data.
- The claims are the authors' experience with customers. No study, sample, or figure is given in the parts read.
- The fetch tool did not return full text. This Brief covers the outline and about a dozen short passages. Detail inside each pattern and appendix is not covered.
- Locators are headings only. No paragraph counts were possible.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 4 | Published by Anthropic Engineering. Named authors. The authors build the products they discuss. |
| Transparency | 3 | Authors named. The basis of the experience ("work with customers") is not shown. No data. |
| Accuracy | — | Cannot check. Few checkable facts in the parts read. |
| Objectivity | 3 | Practical advice, but the publisher has a commercial interest. |
| Currency | 2 | Published 2024-12-19. The page itself says the tooling has changed. |

## 12. Extraction notes

- Access: partial. WebFetch processed the page and did not return exact text. It gave an outline and quoted passages on request.
- The Orchestrator must check each `Quote:` against the raw page (E1 to E9, E12, E13). The article text is in script data on the page, so a plain text check may fail (see the Source note).
- E2, E3, E4, E9, E13 were trimmed by the tool. Check that each is an exact part of one sentence.
- Scope: the article text only. Navigation, footer, and related posts are not covered.
- Text aimed at an AI: none found.
- Charter or Spectrum work: no.
- Final check: each claim has an evidence row; each row has a locator; each quote is 15 words or fewer; `claim-count` 11 equals the rows in §7.
- Completeness is `partial` because the full text was not read. Confidence is `medium` for the same reason.
