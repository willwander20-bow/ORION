---
id: SRC-20261113-001
type: source
title: File over app
status: done
created: 2026-11-13T10:24
updated: 2026-11-15T20:00
created-by: orchestrator
schema-version: "0.6"
url: https://stephango.com/file-over-app
source-type: article
author: Steph Ango
publisher: stephango.com
published: 2023-07-01
captured: 2026-11-13T10:24
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "Phase 1 exit test. Justin asked for an article that \"fits what we've discussed\". Claude selected it."
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261113-001 Add file over app knowledge]]"
source-quality: medium
extraction-completeness: full
extraction-confidence: high
claim-count: 5
---

# Notes

- Phase 1 exit-test record. The Orchestrator wrote all workflow records by hand. No agent was invoked (area `CLAUDE.md` §4).
- Routing: `full-review`. The article is short (about 370 words), so a full review costs little and tests all 12 Brief sections.
- No companion text file. The article is copyrighted. Claude does not store a full copy. Justin can save his own copy (for example, with a web clipper) and link it in `text-file`. Refer to the exit-test finding in KS-08.
- Locators in the Brief are body paragraph numbers (¶1 to ¶10) on the live page.

# Reference Brief

Migrated from BRF-20261113-001.

## 1. Executive summary

A short essay by Steph Ango, the CEO of Obsidian. It argues that digital work meant to last should live in files that the owner controls, in formats that are easy to open and read. Apps are temporary. Files can outlast them. The author applies the idea to his own plain-text notes.

## 2. Central premise and author intent

Premise: the file matters more than the app that made it. Intent: persuade readers to keep their work in durable, open files, and persuade toolmakers to give users ownership of their data. The essay is an argument, not a study.

## 3. Key takeaways

- Store lasting work as files that you control, in open, readable formats.
- Expect each app to become obsolete. Design the files to outlast it.
- Plain text is the format with the best record of long-term readability.
- Toolmakers should give users ownership of their data.

## 4. Facts and figures

- No figures. One historical example: carved hieroglyphs outlast the tools that carved them (¶4).

## 5. Methods and frameworks

- One principle, "file over app". No step-by-step method.

## 6. Concepts and definitions

- File over app: lasting digital work lives in files that you control, in formats that are easy to retrieve and read (¶1).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | Digital work meant to last should be stored in files that the owner controls, in open, readable formats. | normative | explicit | E1, E6 | high |
| C2 | Apps become obsolete, but files can outlast the apps that made them. | predictive | explicit | E2, E6 | high |
| C3 | Most digital artifacts today sit on servers, behind logins, or in proprietary formats that other tools cannot open. | factual | explicit | E3 | medium |
| C4 | Plain text that a 1960s computer can read will likely stay readable on computers far in the future. | predictive | explicit | E4 | medium |
| C5 | Toolmakers should accept that software is temporary and give users ownership of their data. | normative | explicit | E5 | high |

Confidence is the confidence that the source makes the claim. It is not the confidence that the claim is true.

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Summary: the author defines "file over app" as keeping lasting work in files you control, in easy-to-read formats. | ¶1 | C1 | supports | direct | Statement of a principle. No data. |
| E2 | Summary: over time, the files you make matter more than the tools; apps fade, files can last. | ¶3 | C2 | supports | direct | Assertion. No data. |
| E3 | Summary: most digital artifacts are not in our control; they sit on servers, behind logins, or in closed formats. | ¶6 | C3 | supports | direct | No data or citation. "Most" is not measured. |
| E4 | Summary: the author repeats his earlier point that text a 1960s computer can read will likely be readable far in the future. | ¶7, ¶8 | C4 | supports | direct | Argument by past record. Not a guarantee. |
| E5 | Summary: the principle is also a call to toolmakers to accept that software is temporary and to give users ownership of their data. | ¶2 | C5 | supports | direct | Normative. No evidence needed or given. |
| E6 | Summary: the author uses Obsidian but expects it to become obsolete, so he designs his plain-text files to last. | ¶10 | C1, C2 | supports | indirect | Personal practice. One case. |

## 9. Tools and resources

- Obsidian (named as the author's app, ¶10).

## 10. Limitations and caveats

- Opinion essay. No data, no citations.
- Conflict of interest: the author leads Obsidian, an app built on local Markdown files. The principle supports his product.
- The essay does not discuss the costs of open files: weaker sync, no rich features, link formats that are app-specific.
- C3 and C4 are broad. The essay gives no measurement for either.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 4 | Practitioner and designer of a widely used note tool. Not an archivist or researcher. |
| Transparency | 3 | Personal essay. Clear author and date. No sources. |
| Accuracy | — | Mostly opinion. C3 and C4 are plausible but not checked. |
| Objectivity | 3 | The principle supports the author's own product. |
| Currency | 4 | 2023. The principle is not time-sensitive. |

## 12. Extraction notes

- Covers the whole article body (¶1 to ¶10). Does not cover the "Linked mentions" and "You might also enjoy" page sections, which are navigation.
- Paragraph numbers count body paragraphs from the top of the article.
- Evidence uses faithful summaries, not quotations. No companion text file exists (Source notes).
- Completeness `full`: every paragraph is mapped. Confidence `high`: the text is short and plain.
- Phase 1 test: the Orchestrator wrote this Brief by hand. The Reporter was not invoked.

# Assessment (migrated)

Migrated from KAS-20261113-001. Relevance: high. Recommended action: advance. Brain version when it was made: none.

## 1. Summary of relevance

The Brain is empty, so each claim is new. C1 is the most useful: it is the reason behind ORION's rule "keep Markdown and YAML portable" (root `CLAUDE.md` §4.4, area rule 12). The concept "file over app" names that design choice. A first MOC on note durability gives the claim and the concept a home.

## 2. Brain records reviewed

- None. The Brain is empty (version `none`). The Brain context is complete.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1 | new | — | Main claim. Directly supports an existing ORION design rule. |
| A2 | C2 | new | — | Folded into A1 as the reason for the claim. Not a separate claim: it adds no decision value alone. |
| A3 | C1 | new-concept | — | "File over app" is a named principle. Useful as a Concept that later claims can link to. |
| A4 | C3 | research-gap | — | Broad and not measured in the source. Not ready for the Brain. |
| A5 | C4 | research-gap | — | Plausible, but the source gives one argument and no data. |
| A6 | C5 | new | — | Advice to toolmakers. Low value for Justin's use. Not proposed. |

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 3 | A known idea, but new to the Brain. |
| Significance | 4 | It supports a rule that every ORION session follows. |
| Applicability | 5 | Applies directly to the vault design and to tool choices. |
| Relevance to the Brain | 4 | First claim on how the Knowledge System stores knowledge. |

## 5. Recommended action

`advance`. Propose one Brain Claim (C1, with C2 as its reason), one Concept ("File over app"), and one MOC ("Note durability").

Not proposed: C3, C4, C5. C3 and C4 can become Research Questions later. This test does not make `Research Questions.md`.

## 6. Confidence and limits

- Confidence: high for C1 as a design principle. Low for C3 and C4 as facts.
- The only source is an opinion essay with a conflict of interest (Brief §10). The claim confidence must reflect this.
- Phase 1 test: the Orchestrator wrote this Assessment by hand. The Editor was not invoked.
