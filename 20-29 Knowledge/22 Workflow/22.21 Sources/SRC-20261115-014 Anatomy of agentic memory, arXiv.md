---
id: SRC-20261115-014
type: source
title: "Anatomy of Agentic Memory: Taxonomy and Empirical Analysis of Evaluation and System Limitations"
status: done
created: 2026-11-15T23:39
updated: 2026-11-15T23:58
created-by: orchestrator
schema-version: "0.13"
url: https://arxiv.org/html/2602.19320
source-type: paper
author: "Dongming Jiang, Yi Li, Songtao Wei, Jinxin Yang, Ayushi Kishore, Alysa Zhao, Dingyi Kang, Xu Hu, Feng Chen, Qiannan Li, Bingzhe Li"
publisher: arXiv
published: 2026-02-22
captured: 2026-11-15T23:39
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "Chosen by the Orchestrator from the topics of the Brain. Justin approved the list of six with \"Go\" on 2026-11-15. Topic: agent memory evaluation"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-019 Anatomy of agentic memory, arXiv]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 10
---

# Notes

Overnight batch (6 sources, Justin's permission). Access check: `curl` returns 200 with page text. No Charter or Spectrum content expected.

# Reference Brief

## 1. Executive summary

The paper is a survey with a small empirical study of agentic memory for LLM agents, which the authors call Memory-Augmented Generation (MAG). It gives a taxonomy of four memory structures. It then reports tests of six memory systems on evaluation and system cost. The authors conclude that benchmarks can be saturated by full-context baselines, that F1 does not match semantic correctness, that results depend on the backbone model, and that latency and build cost vary widely.

## 2. Central premise and author intent

The authors say the empirical basis of agentic memory is fragile. They want to organize the field (taxonomy) and to show four pain points: underscaled benchmarks, metrics misaligned with semantic utility, backbone dependence, and overlooked system cost. They also say they maintain an open-source repository of surveyed papers and benchmarks. The paper is academic and not commercial. The authors compare their work with six earlier surveys and claim it is the only one that covers all their dimensions (Table 1).

Page data as shown: authors Dongming Jiang, Yi Li, Songtao Wei, Jinxin Yang, Ayushi Kishore, Alysa Zhao, Dingyi Kang, Xu Hu, Feng Chen, Qiannan Li, Bingzhe Li. Version line: arXiv:2602.19320v2 [cs.CL], 20 May 2026.

## 3. Key takeaways

- Agentic memory stores, retrieves, and updates information across interactions, outside the model weights.
- The taxonomy has four families: Lightweight Semantic, Entity-Centric and Personalized, Episodic and Reflective, Structured and Hierarchical.
- Some benchmarks are small enough that a full-context baseline can match memory systems (saturation risk).
- F1 rankings and LLM-judge rankings of the same systems differ.
- A small backbone (Qwen-2.5-3B) caused more format errors during memory writes than gpt-4o-mini.
- Latency and build cost differ by orders of magnitude between systems.

## 4. Facts and figures

All figures come from the authors' own experiments (Section 4). Setup: six systems (AMem, MemoryOS, Nemori, MAGMA, SimpleMem, MemSkill); backbones gpt-4o-mini and Qwen-2.5-3B.

- F1 scores (Table 3): Nemori 0.502, MAGMA 0.467, MemoryOS 0.413, SimpleMem 0.268, AMem 0.116, MemSkill 0.082.
- Judge scores with the MAGMA prompt (Table 3): MAGMA 0.670, Nemori 0.602, MemoryOS 0.553, AMem 0.480, SimpleMem 0.294, MemSkill 0.221.
- Format errors (Table 4): gpt-4o-mini, SimpleMem 1.20%, Nemori 17.91%. Qwen-2.5-3B, SimpleMem 4.82%, Nemori 30.38%.
- Answer score on Qwen-2.5-3B: SimpleMem 0.102, Nemori 0.447.
- Latency (Table 5, as read by the page processor): MemoryOS total 32.372 s (retrieval 31.247 s); Full Context 1.726 s; MemSkill 0.306 s.
- Build time (Table 5): AMem 15.00 h; MemoryOS 7.83 h; MAGMA 7.28 h; MemSkill 0.60 h.
- Build tokens (Table 5): Nemori 7,044k; SimpleMem 1,308k.
- Benchmark structural saturation risk (Table 2, authors' heuristic): HotpotQA high; MemBench high; LoCoMo moderate; LongMemEval-S borderline; LongMemEval-M low.

## 5. Methods and frameworks

- Taxonomy (Section 3): 3.1 Lightweight Semantic Memory; 3.2 Entity-Centric and Personalized Memory; 3.3 Episodic and Reflective Memory; 3.4 Structured and Hierarchical Memory. Each family has sub-types (for example graph-structured, OS-inspired and hierarchical, episodic reflection and consolidation).
- Saturation diagnostic (Section 4.2.2, Eq. 2): Delta = Score_MAG minus Score_FullContext. The paper proposes it. It does not compute it (per the page processor).
- Saturation risk is rated on three dimensions: volume, interaction depth, entity diversity (Section 4.2.1).
- LLM-as-a-judge test: three judge prompts (named after MAGMA, Nemori, SimpleMem) with gpt-4o-mini as judge (Section 4.3).
- Format-error measure for memory operations under two backbones (Section 4.4).
- Latency and construction cost measures (Section 4.5).

## 6. Concepts and definitions

- Memory-Augmented Generation (MAG): the authors' term for an LLM whose output depends on an external memory state that is read and updated across steps (Section 2).
- Context saturation: a benchmark is small enough that the full context fits in the model window, so memory gives little added value.
- Misalignment gap: a system ranks differently under F1 than under a semantic judge (Section 4.3.1).
- "Paraphrase Penalty" and "Negation Trap": the authors' names for two judge or metric failure modes (Section 4.3.3). Examples are in an appendix that this Brief did not cover.
- "Silent Failure": the agent talks fluently while its stored memory is corrupted by failed writes on a weak backbone (Section 4.4).
- "Intelligence tax": the authors' term for the high token cost of Nemori's memory construction (Section 4.5.2).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The authors propose a taxonomy of agentic memory in four structures: lightweight semantic, entity-centric and personalized, episodic and reflective, structured and hierarchical. | factual | explicit | E1 | high |
| C2 | The authors argue that several benchmarks have a high structural risk of context saturation, and rate HotpotQA and MemBench as high and LongMemEval-M as low. The rating is the authors' own heuristic. | normative | explicit | E2 | medium |
| C3 | In the authors' tests, F1 and an LLM judge rank the six systems differently. For example, AMem is 5th by F1 and 4th by judge, and SimpleMem scores above AMem on F1 but below 0.30 on the judge. | factual | explicit | E3 | medium |
| C4 | In the authors' tests, the rank order under three judge prompts was highly consistent. Only Nemori and MAGMA swapped places. | factual | explicit | E4 | medium |
| C5 | The authors report that the weak backbone Qwen-2.5-3B gave higher format-error rates in memory operations than gpt-4o-mini for both SimpleMem (4.82% against 1.20%) and Nemori (30.38% against 17.91%). | factual | explicit | E5 | medium |
| C6 | The authors say that append-only memory systems are more robust to a weak backbone than graph-based and episodic systems. | normative | explicit | E6 | medium |
| C7 | The authors report that MemoryOS took about 32 s per turn, mostly in retrieval, and they call this impractical for interactive use. | factual | explicit | E7 | medium |
| C8 | The authors report that AMem needed about 15 h to build memory, and that Nemori used about 7.04M tokens, roughly five times SimpleMem. | factual | explicit | E8 | medium |
| C9 | The authors state that reported gains of memory systems are inconsistent across benchmarks and that simple full-context or retrieval baselines often suffice. | normative | explicit | E9 | medium |
| C10 | The authors recommend saturation-aware benchmarks, evaluation beyond lexical overlap with judge calibration, and systems that model write latency, maintenance throughput, and cost, with validation layers for weak backbones. | normative | explicit | E10 | medium |

## 8. Evidence and locators

Quote check: WebFetch returned paraphrases with a few short exact excerpts. Quote word counts: E9 "inconsistent across benchmarks" 3 words; E4 "highly consistent" 2 words; E5 "Silent Failure" 2 words.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: Section 3 lists four families (3.1 to 3.4) with named sub-types, and 3.5 says each system has a primary memory organization that shapes accuracy, efficiency, and reliability. | § 3 Taxonomy of Agentic Memory, 3.1 to 3.5 | C1 | supports | direct | The authors' own scheme. They say it may miss recent systems (Limitations). |
| E2 | Summary: Table 2 rates benchmark saturation risk from volume, depth, and diversity. HotpotQA (~1k tokens) and MemBench (~100k) are high. LoCoMo is moderate, LongMemEval-S borderline, LongMemEval-M (>1M) low. | § 4.2 Benchmark Scalability, Table 2 | C2 | supports | direct | A heuristic. The paper does not compute the Delta gap (per the page processor). Values were not checked against the raw page. |
| E3 | Summary: Table 3 gives F1 ranks (Nemori 1, MAGMA 2, MemoryOS 3, SimpleMem 4, AMem 5, MemSkill 6) and different judge ranks. SimpleMem F1 0.268 against judge about 0.29. AMem F1 0.116 against judge 0.480. | § 4.3 LLM-as-a-Judge Evaluation, Table 3; § 4.3.1 | C3 | supports | direct | Six systems, one dataset setup, gpt-4o-mini as judge. Dataset name not captured. |
| E4 | Quote: "highly consistent" (Summary: rankings stay stable across three judge prompts, while absolute scores vary; one swap, Nemori and MAGMA.) | § 4.3.2 Semantic Judge Robustness Across Prompts | C4 | supports | direct | Same judge model for all prompts. Three prompts only. |
| E5 | Quote: "Silent Failure" (Summary: Table 4 gives format errors. gpt-4o-mini: SimpleMem 1.20%, Nemori 17.91%. Qwen-2.5-3B: SimpleMem 4.82%, Nemori 30.38%.) | § 4.4 Backbone Sensitivity and Format Stability, Table 4 | C5 | supports | direct | Two systems and two backbones only. |
| E6 | Summary: The authors say append-only systems are more robust, and graph-based and episodic systems more sensitive. | § 4.4 Backbone Sensitivity and Format Stability | C6 | supports | indirect | Table 4 covers only SimpleMem and Nemori, so the general statement goes beyond the data shown. |
| E7 | Summary: Table 5 gives MemoryOS retrieval 31.247 s and total 32.372 s. Text says over 32 s per turn is impractical for interactive use. Maintenance cost is measured only qualitatively. | § 4.5 System Performance Evaluation, Table 5; § 4.5.1 | C7 | supports | direct | Hardware and setup not captured. Table column alignment was inferred by the page processor from row sums. |
| E8 | Summary: AMem build time 15.00 h, which the authors attribute to super-linear update complexity. Nemori 7,044k tokens against SimpleMem 1,308k, called an "intelligence tax". | § 4.5.2 Offline Scalability, Table 5 | C8 | supports | direct | The cause of the AMem time is the authors' attribution. Same alignment caveat. |
| E9 | Quote: "inconsistent across benchmarks" (Summary: the introduction says gains are backbone-dependent and that simple baselines often suffice.) | § 1 Introduction, ¶ on reported gains | C9 | supports | direct | The paragraph position is not confirmed. A motivating claim. Cited prior work was not read. |
| E10 | Summary: Conclusion item 1 asks for saturation-aware benchmarks and judge calibration. Item 2 asks for models of write latency, maintenance throughput, and user cost, and for constrained decoding, validation layers, or adaptive schemas. | § 5 Conclusion and Future Directions, items 1 and 2 | C10 | supports | direct | These are recommendations. The paper does not test them. |

## 9. Tools and resources

- The authors say they maintain an open-source repository of surveyed papers and benchmarks. No URL was captured.
- Benchmarks named: HotpotQA, LoCoMo, LongMemEval-S, LongMemEval-M, MemBench.
- Systems tested: AMem, MemoryOS, Nemori, MAGMA, SimpleMem, MemSkill.

## 10. Limitations and caveats

- The authors state that the field changes fast and the taxonomy may miss recent systems. Results may vary with implementation, prompts, model versions, and API behavior.
- The empirical study covers six systems, two backbones, and selected benchmarks. Table 4 has two systems only.
- Table 2 saturation ratings are heuristic. The Delta gap is proposed but not measured (per the page processor).
- Source text is a processed page. Numbers and table cells may carry transcription errors.
- The claim "MAGMA is the best Pareto balance" is the authors' judgment. It is not in the Claim Candidates.
- This is a preprint (arXiv v2). No peer review status is shown on the page.
- Appendix content (judge failure examples, "Paraphrase Penalty", "Negation Trap") was not read.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Eleven academic authors, arXiv cs.CL. Affiliations and venue not captured. Preprint. |
| Transparency | 4 | States setup, systems, backbones, metrics, and its own limits. Repository claimed. Not all details were reviewed. |
| Accuracy | — | Figures could not be checked against the raw page or by replication. |
| Objectivity | 3 | Survey with a position (benchmarks and metrics are weak). The authors claim their survey is the only one covering all dimensions. They show their own limits. |
| Currency | 4 | Version v2 dated 20 May 2026. The field changes fast. |

## 12. Extraction notes

- Access: full, through WebFetch of https://arxiv.org/html/2602.19320. The page was 120,077 characters. The tool read the first 100,000. The last 20,077 characters were not read (appendices and references, outside scope).
- The tool paraphrases the page. Only three short exact excerpts were returned. Most evidence rows are `Summary:`. The Orchestrator must check each `Quote:` (E4, E5, E9) against the raw page. The numbers in Tables 2 to 5, the Table 5 column alignment, and the date line need the same check.
- Author and date as the page shows them: the eleven authors named in §2, and "arXiv:2602.19320v2 [cs.CL], 20 May 2026". The Source record has empty `author` and `published` fields. The Orchestrator decides what to enter. The v1 date was not seen.
- Scope: abstract, introduction, background (briefly), taxonomy, Section 4 findings, conclusion. Skipped: references and appendices.
- Completeness is `partial` because of the paraphrased page and skipped sections. Confidence is `medium` for the same reason.
- No text aimed at an AI was found. No Charter or Spectrum content.
- Final check: each claim has an evidence row (C1 to C10, E1 to E10). Each evidence row has a locator. Quote word counts are 3, 2, and 2 (all 15 or fewer). Ratings and figures name who gives them. `claim-count` is 10.
