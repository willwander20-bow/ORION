---
id: SRC-20261115-005
type: source
title: "Structure documentation for AI and human readers (Mintlify)"
status: done
created: 2026-11-15T21:50
updated: 2026-11-15T22:08
created-by: orchestrator
schema-version: "0.13"
url: https://www.mintlify.com/library/structure-documentation-AI-human-readers
source-type: article
author: Emma Adler
publisher: Mintlify
published: 2025-10-06
captured: 2026-11-15T21:50
language: en
access-status: partial
text-file:
processing-level: full-review
submission-context: ""
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-011 Structure documentation for AI and humans, Mintlify]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 8
---

# Notes

First real test of the new flow (staging, merged records; KS-D-50 and KS-D-51). Justin gave no reason for this source.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The article (Mintlify, author "emma-adler", dated 2025-10-06 by the fetch tool) says that AI systems do not read documents as people do. It says that AI tools split documents into chunks, so structure affects whether content is read correctly. It recommends plain headings, short paragraphs, fenced code, metadata, and clear writing habits, and it proposes a five-step test plan. It also promotes Mintlify's Markdown-first product.

## 2. Central premise and author intent

Premise: documentation must now serve AI systems and human readers, and a simple, consistent structure helps both. Intent: practical guidance, and also marketing for Mintlify (the last two sections promote the product). The article gives no data for its claims.

## 3. Key takeaways

- Use clear heading hierarchy, short paragraphs, and lists for steps.
- Avoid hidden or interactive content (tabs, collapsibles) for content that AI must read. Plain Markdown or a flat export such as llms-full.txt is easier to parse.
- Put code in fenced blocks, separate from prose.
- Add metadata such as YAML frontmatter.
- Write concisely, in active voice, with descriptive link and alt text, consistent terms, and fewer vague pronouns.
- Test with raw-text checks, human feedback, usability tasks, and LLM prompts that use real support questions.

## 4. Facts and figures

- The fetch tool gave the author as "emma-adler" and the date as 2025-10-06. The Source note has both fields empty.
- The article gives no statistics, studies, or benchmarks (as reported by the fetch tool).

## 5. Methods and frameworks

Five-step test plan (§ Testing readability with AI and humans, as summarized by the fetch tool):
1. Check raw-text readability.
2. Get human baseline feedback.
3. Add UI layers and run usability tests.
4. Run human usability tasks.
5. Compare results with the baseline and retest.

Also: prompt an LLM with real support questions to test the docs.

## 6. Concepts and definitions

- Chunking: AI tools break documents into small pieces. The source says this can lead to skipped or misread information.
- Minimal formatting: simple structure for reliable extraction.
- llms-full.txt: a flat text export of documentation for AI use.
- Layered structure: tabs, collapsibles, and navigation aids that help humans in large documentation sets.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source says AI systems do not read documents the way a person does. | factual | explicit | E1 | high |
| C2 | The source says AI tools split documents into small chunks, which can cause skipped or misread information. | causal | explicit | E2 | medium |
| C3 | The source recommends clear hierarchical headings, short paragraphs, and lists for sequential steps. | normative | explicit | E3 | medium |
| C4 | The source recommends avoiding hidden or interactive content such as tabs and collapsibles, because AI may not capture it reliably. | normative | explicit | E4, E5 | medium |
| C5 | The source recommends fenced code blocks to separate code from prose, and metadata such as YAML frontmatter. | normative | explicit | E6, E7 | medium |
| C6 | The source recommends active voice, descriptive link and alt text, consistent terminology, and fewer vague pronouns. | normative | explicit | E8 | medium |
| C7 | The source proposes a five-step test plan that compares AI and human readability results against a baseline. | procedural | explicit | E9 | medium |
| C8 | The source says structure helps most in large knowledge bases, developer docs, and role-based documentation. | normative | explicit | E10 | medium |

## 8. Evidence and locators

All excerpts come from WebFetch, which processes the page with a model. Only the three `Quote:` rows are verbatim as returned, and the Orchestrator must check them against the raw page.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "AI doesn't actually read documents like a person does." | unavailable | C1 | supports | direct | Assertion without data. Section not confirmed. 9 words. |
| E2 | Summary: AI tools chunk documents, and chunking can lead to skipped or misread information. | unavailable | C2 | supports | direct | No test or data given. Paraphrase by the fetch tool. |
| E3 | Summary: recommends simple Markdown headings, short paragraphs, and lists for sequential steps. | § Minimal formatting for reliable extraction | C3 | supports | direct | Opinion of the source. No evidence of effect. |
| E4 | Quote: "Avoid hidden or interactive content" | unavailable | C4 | supports | direct | Section not confirmed. 5 words. |
| E5 | Summary: tabs and collapsibles may not be captured reliably by AI; plain Markdown or llms-full.txt is easier to parse. | § Minimal formatting for reliable extraction | C4 | supports | direct | "May" is the source's hedge. The same article later promotes tabs as a Mintlify component. |
| E6 | Quote: "Separate code from text" | unavailable | C5 | supports | direct | Section not confirmed. 4 words. |
| E7 | Summary: recommends metadata such as YAML frontmatter to add context. | § Minimal formatting for reliable extraction | C5 | supports | direct | Paraphrase. No evidence of effect. |
| E8 | Summary: lists writing habits (active voice, descriptive link and alt text, consistent terminology, fewer vague pronouns). | § Writing habits that improve AI processing | C6 | supports | direct | Opinion of the source. No data. |
| E9 | Summary: five-step plan with raw-text check, human baseline, UI usability tests, human tasks, and comparison and retest. | § Testing readability with AI and humans | C7 | supports | direct | The plan is untested by the source. Step wording is a paraphrase. |
| E10 | Summary: knowledge bases, developer docs, and role-based documentation benefit from layered organization and navigation aids. | § When structured formatting improves usability | C8 | supports | direct | Interested author (vendor). No data. |

## 9. Tools and resources

- Mintlify (the publisher's product): MDX components, YAML frontmatter, flat Markdown, and llms-full.txt exports (§ How Mintlify supports structure and layers).
- llms-full.txt exports.
- LLM prompting with real support questions, as a test method.

## 10. Limitations and caveats

- The author is a vendor and promotes its product. Advice may favor Mintlify's approach.
- No data, benchmarks, or named studies support the claims. All are assertions by the source.
- Some advice conflicts in part: it says to avoid tabs, and it also presents tabs as a Mintlify feature (§ How Mintlify supports structure and layers).
- Date 2025-10-06 is from the fetch tool. AI tool behavior changes, so the advice may age.
- The article text was not read verbatim (see §12).

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Mintlify is a documentation vendor with relevant practice. A named author is given, but the fetch gave no credentials. |
| Transparency | 2 | No data, methods, or sources for the claims. The vendor interest is clear from the later sections. |
| Accuracy | — | Cannot assess. No claim was checked against another source. |
| Objectivity | 2 | The article ends in product promotion. |
| Currency | 3 | Dated 2025-10-06 (fetch tool), about 13 months before review. Fast-moving topic. |

## 12. Extraction notes

- Access: partial. WebFetch refused to reproduce the full article and returned a model summary and a list of headings. I did not read the exact article text.
- Covered: main argument, recommendations, test plan, section headings (H2: seven sections, no H3). Not covered: the exact wording, examples, and details inside each section. The "Related resources" section is out of scope.
- Locators: heading names come from the fetch tool. Quote rows use `unavailable` because the section of each phrase is not confirmed. Summary rows use the heading as the tool described it, and I did not check it against the page.
- Orchestrator action: check each `Quote:` (E1, E4, E6) against the raw page before validation (rule 9a). Check the author and date against the page.
- Quote word counts: E1 9 words, E4 5 words, E6 4 words. All are 15 or fewer.
- Final check: each claim has evidence (C1 to C8). `claim-count` is 8 and equals the rows in §7. Ratings name the source as the giver. No survey figures appear.
- No text aimed at an AI was found (as reported by the fetch tool). No Charter or Spectrum relation.
- Completeness is `partial` and confidence is `medium` because of the summarized fetch.
