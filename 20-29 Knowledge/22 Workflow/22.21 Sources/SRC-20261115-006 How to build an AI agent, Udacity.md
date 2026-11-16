---
id: SRC-20261115-006
type: source
title: "How to Build an AI Agent: Step-by-Step with Python"
status: done
created: 2026-11-15T22:40
updated: 2026-11-15T22:51
created-by: orchestrator
schema-version: "0.13"
url: https://www.udacity.com/blog/how-to-build-an-ai-agent-step-by-step-with-python/
source-type: article
author: Udacity Team
publisher: Udacity
published:
captured: 2026-11-15T22:40
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "background knowledge for creating AI agents and systems"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-014 How to build an AI agent, Udacity]]"
source-quality: medium
extraction-completeness: full
extraction-confidence: medium
claim-count: 12
---

# Notes

Justin: "Run on these". He gave no reason for this source. The link he gave had advertising tracking parameters (campaign and click IDs); the Orchestrator removed them and stores the clean URL.

Access check: `curl` returns 403. The fetch tool reads the page (title, author "Udacity Team", "Last Updated on August 18, 2026", no original date). The Orchestrator cannot check a quote against the raw page, so the Reporter writes `Summary:` rows only, no `Quote:` rows. This is a vendor page (Udacity sells courses).

# Reference Brief

## 1. Executive summary

The Udacity Team article argues that a real AI agent is defined by its architecture, not by a label. It names three layers: a reasoning loop (plan, act, observe, revise), tool use, and state management. It walks through a minimal Python agent with simulated parts, advises a single agent by default, and lists production concerns. The page is a vendor blog post that ends by promoting Udacity's Agentic AI program.

## 2. Central premise and author intent

Premise: a single LLM call with a system prompt is a chatbot or prompt wrapper, not an agent. An agent needs three layers that work together. The design matters more than model choice.

Intent: teach the concept and build interest in Udacity courses. The publisher sells courses, and the article links to several of them (a large language model and RAG course, a prompt engineering topic page, a multi-agent course, and the Agentic AI program). It also credits a Udacity instructor, Peter Kowalchuk, whose live session is the basis of the code example. The article presents its own framing as the standard one. Read it as a vendor teaching text.

## 3. Key takeaways

- An agent is defined by three layers: reasoning loop, tool use, state management. Without one of them, the system is a scripted assistant or chatbot (per the article).
- The reasoning loop has four steps: plan, act, observe, revise. A fixed chain of prompts is not a reasoning loop.
- Tools ground the agent in live data and actions. They bring engineering needs: structured inputs, output validation, retries, access control.
- State (status of the current run) differs from memory (information kept across runs). Most agents need state. Not all need memory.
- A minimal agent in Python needs a state object, tool functions, a decision step, and a while loop with a step limit.
- Start with the simplest architecture. Use one agent by default. Add agents only when roles are separable and the benefit is measurable.
- Early production failures come mostly from systems issues (tools, permissions, loops, monitoring, unclear tasks), not model intelligence (per the article).

## 4. Facts and figures

- Page metadata: author line "Udacity Team", "Last Updated on August 18, 2026", reading time 13 minutes, category Agentic AI. No original publication date.
- The article gives no statistics, survey results, or study results.
- The example agent sets a maximum of five reasoning steps.
- The example `search_web` tool is simulated. It returns a canned answer: Tokyo has about 14 million residents in the city proper.
- The state machine in the article has seven states: IDLE, PLANNING, CALLING_TOOL, EVALUATING_RESULT, RESPONDING, DONE, ERROR.
- The article says the full code is public on GitHub under the Udacity organization (repository name given as agentic-ai-from-scratch-webinar). The Reporter did not open the link.

## 5. Methods and frameworks

- Three-layer model of an agent: reasoning loop, tool use, state management (the "minimal agent stack").
- Reasoning loop: plan, act, observe, revise.
- State machine: IDLE to PLANNING to CALLING_TOOL to EVALUATING_RESULT to RESPONDING to DONE. Errors, timeouts, invalid outputs, and step limits route to ERROR or DONE.
- Six build steps for a minimal agent: define scope; define tools as functions with input and output contracts; create a state object (a Python dataclass); write the decision step that returns `call_tool` or `final_answer`; handle tool results and errors; generate the final answer.
- Single agent versus multi-agent rule of thumb: keep one agent if it can do the job. Add agents only when responsibilities are separable, specialization measurably helps, and orchestration cost is justified.
- Production checklist named by the article: authentication and secrets, schema validation, monitoring and tracing, retries with backoff, human approval gates, evaluation benchmarks, cost monitoring, guardrails on output, human fallback.

## 6. Concepts and definitions

- Agent (article's definition): a system with a reasoning loop, tool use, and state management.
- Chatbot or prompt wrapper: one LLM call with a system prompt, one turn, no checking and no lookup.
- State: execution status for the current run (task, completed steps, tool outputs, pending actions, stop conditions).
- Memory: information that can persist across runs.
- Grounding: using tools to gather evidence, instead of guessing from training data.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The article defines an agent by three layers: a reasoning loop, tool use, and state management. | factual | explicit | E1 | high |
| C2 | The article says a single LLM call with a system prompt is a chatbot or prompt wrapper, not an agent. | normative | explicit | E2 | high |
| C3 | The article describes the reasoning loop as plan, act, observe, revise, and says a fixed chain of prompts is not a true loop. | procedural | explicit | E3 | high |
| C4 | The article says tools let an agent gather evidence and act on live systems. Without tools, it is limited by training data and may hallucinate. | causal | explicit | E4 | high |
| C5 | The article says tool use brings engineering concerns: structured inputs, output validation, retry logic, and access controls. | factual | explicit | E4 | medium |
| C6 | The article distinguishes state (execution status of the current run) from memory (information that may persist across runs). It says most agents need state and not all need memory. | factual | explicit | E5 | high |
| C7 | The article says an agent needs explicit stop conditions (step limit, timeouts, error routing) to prevent infinite loops. | procedural | explicit | E6 | medium |
| C8 | The article presents a minimal Python agent with a state dataclass, tool functions, a decision function, and a while loop with a five-step limit. The search tool and decision logic are simulated. | factual | explicit | E7 | high |
| C9 | The article says the minimal example lacks authentication and secrets, schema validation, monitoring, retries, human approval gates, evaluation, and cost monitoring, which a production agent needs. | factual | explicit | E8 | high |
| C10 | The article recommends starting with the simplest architecture that works and adding complexity only when evidence shows a need. It also says design choices matter more than model choice for early failures. | normative | explicit | E9 | high |
| C11 | The article recommends a single agent by default and a multi-agent design only when roles are separable, specialization measurably helps, and orchestration cost is justified. | normative | explicit | E10 | high |
| C12 | The article says early production failures usually come from systems issues (tool failures, permissions, infinite loops, weak monitoring, ambiguous tasks), not model intelligence. | causal | explicit | E11 | medium |

## 8. Evidence and locators

Summary rows only. The raw page cannot be checked (see §12). Locators use the heading text as the fetch tool returned it.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: The introduction and the three-layer section state that a real agent has a reasoning loop, tool use, and state management. They say removing one layer leaves a scripted assistant or chatbot. | § Introduction (opening section); § The three-layer definition at a glance | C1 | supports | direct | Definition by the vendor. No citation to other work. |
| E2 | Summary: The article says many people build one LLM call with a system prompt and call it an agent. It calls this a chatbot or prompt wrapper. It gives an invented tracking number as a failure example. | § Introduction (opening section); § What separates an agent from a chatbot | C2 | supports | direct | The failure example is one illustration. No data. |
| E3 | Summary: The article lists four loop steps (plan, act, observe, revise). It gives a support-agent example (order delay, order API, carrier API, knowledge base). It names a fixed chain of prompts as a common mistake. | § Layer 1: Reasoning loop | C3 | supports | direct | One hypothetical example. No test results. |
| E4 | Summary: The article says that without tools an agent is limited to training data and can hallucinate. It lists five tool types with a caveat for each. It says tools bring structured inputs, output validation, retries, and access control. | § Layer 2: Tool use | C4, C5 | supports | direct | No evidence beyond the author's reasoning. |
| E5 | Summary: The article says LLM calls are independent. It lists what an agent must track. It separates state from memory and says most agents need state and not all need memory. | § Layer 3: State management | C6 | supports | direct | Terminology choice by the author. Others may use the terms differently. |
| E6 | Summary: The article gives a seven-state machine. It says timeouts, invalid outputs, and step limits route to ERROR or DONE to prevent infinite loops. | § Layer 3: State management | C7 | supports | direct | A design suggestion. It does not show that the state machine is needed. |
| E7 | Summary: The article walks through six build steps and a run_agent while loop. The search tool returns a canned Tokyo answer. The decision logic is simulated. The loop is capped at five steps. | § Putting it together: a minimal working agent in Python | C8 | supports | direct | The Reporter did not run or read the code. The page text was seen only through the fetch tool. Code details come from its summary. |
| E8 | Summary: The article lists what a production agent still needs: secrets, schema validation, monitoring and tracing, retries with backoff, human approval, evaluation, cost monitoring. It calls these engineering concerns. | § Putting it together: a minimal working agent in Python | C9 | supports | direct | A list from the author. Not complete or ranked. |
| E9 | Summary: The article says most early failures come from architecture. It lists three trade-offs and recommends the simplest working architecture. It says the instructor skipped frameworks such as LangChain so the loop stays visible. | § Design choices that matter more than model choice | C10 | supports | direct | Opinion with no data. The claim about model choice is an unmeasured comparison. |
| E10 | Summary: The article compares single and multi-agent designs in a table. It lists drawbacks of multi-agent (complexity, more failure points, harder evaluation). It gives the rule of thumb for adding agents. | § When to go multi-agent, and when not to | C11 | supports | direct | Opinion. The restaurant analogy is not evidence. No comparison data. |
| E11 | Summary: The article lists common failure patterns and two deployment examples (support triage, competitor research). It says early failures usually come from systems issues, not model intelligence. | § Real-world deployment lessons: what breaks first | C12 | supports | indirect | The examples may be hypothetical. The article names no company, case, or measurement. |

## 9. Tools and resources

- Python standard library named in the example: `dataclasses`, `typing`, `json` (the article's code imports `json` but does not use it).
- `eval()` is used in the example calculator. The article says production needs a safe parser.
- LangChain: named as a framework that the instructor chose not to use.
- GitHub repository under the Udacity organization (agentic-ai-from-scratch-webinar), with the full runnable code. Not opened.
- Udacity course and topic pages linked in the article. Not opened.

## 10. Limitations and caveats

- Vendor page. Udacity sells courses and the article ends with a promotion for its Agentic AI program. The article also links to other Udacity courses. This gives the publisher an interest in presenting agent building as a skill that needs training. Several statements (for example that these skills relate to real AI job requirements, and that professionals who can move systems to production are valuable) serve that interest.
- No original publication date. The page shows only "Last Updated on August 18, 2026".
- No citations, data, studies, or named real-world cases. All figures in the example (Tokyo population, five-step limit) come from a simulation.
- The code is simulated. The decision step and the search tool are not real. The example does not show that the architecture works with a real model.
- The article states its definition of agent as the standard. Other writers define agents differently. This Brief does not compare definitions.
- The "Future trends" section is the author's prediction (better tool routing, stronger structured outputs, better evaluation benchmarks). The article gives no basis for it. It is not in a Claim Candidate.
- The Reporter read the page only through WebFetch, which gives a model-processed account, not the raw text.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Vendor with a known education business. A named instructor (Peter Kowalchuk) led the session. The byline is the "Udacity Team", so the writer is not identified. |
| Transparency | 2 | No sources, no original date, no method. The commercial interest is visible through the course links. The article does not state it as a bias. |
| Accuracy | — | The Reporter cannot check the claims against other sources. The content is conceptual and matches common descriptions of agent loops, but the Reporter did not verify it. The code was not run. |
| Objectivity | 2 | Promotional ending and course links in the body. Recommendations are opinion, and some serve the course business. |
| Currency | 4 | Updated in August 2026, about three months before this review. The original date is unknown. |

Overall `source-quality`: medium. It is a clear teaching text from a vendor, with no independent evidence.

## 12. Extraction notes

- Access: full for the article text (WebFetch). Excluded as scope: navigation, ads, course lists, related articles, newsletter, footer.
- No quote check is possible. The Orchestrator cannot read the raw page (curl gets 403). This Brief has no `Quote:` rows. All evidence rows are `Summary:` rows (as instructed). The word-count check for quotes does not apply.
- WebFetch passes the page through a model. The headings in the locators and the code details are as that tool returned them. They can differ from the raw page. Locators use `§ Heading` form and no paragraph numbers, because the tool gave none.
- No text aimed at an AI was found in the page.
- No Charter or Spectrum link found.
- Completeness `full`: all sections of the article were covered. Confidence `medium`: the page was read through a model summary, and the code was not seen as raw text.
- Final check: each Claim Candidate has an evidence row (C1 to C12). Each evidence row has a locator. No quotes. Facts, source statements, and the Reporter's interpretation are separate. Claims name the article as the speaker. `claim-count` is 12, equal to the rows in §7.
- Not in scope and not done: the Reporter did not open the GitHub link or any course link, and made no Brain comparison.
