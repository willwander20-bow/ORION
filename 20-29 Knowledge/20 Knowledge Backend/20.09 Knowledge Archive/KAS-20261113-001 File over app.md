---
id: KAS-20261113-001
type: knowledge-assessment
title: File over app
status: validated
created: 2026-11-13T10:24
updated: 2026-11-13T10:24
created-by: orchestrator
schema-version: "0.6"
source: "[[SRC-20261113-001 File over app]]"
brief: "[[BRF-20261113-001 File over app]]"
brain-version: none
relevance: high
recommended-action: advance
---

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
