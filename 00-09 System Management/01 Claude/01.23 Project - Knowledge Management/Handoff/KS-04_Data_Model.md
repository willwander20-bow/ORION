---
title: Knowledge System — Data Model
id: KS-04
system: Knowledge System
type: data-model
status: draft-for-review
version: 0.2
created: 2026-11-12
sources: [KVC, K02, K03, K05, K06, K07, KA-E, KA-M, KA-C]
---

# Knowledge System — Data Model

## 1. Status

Each source calls its data model a draft.

- KVC: "This is a starting point. Finalize it in Phase 1 and revise after the pilot." [KVC §6]
- K07: "It is a design draft. Confirm the fields before you create validation schemas." [K07]

The two models are different. This document shows them side by side. It does not merge them.

The YAML blocks below are copies from the sources.

## 2. Object map

The mapping in this table is an assumption of this review (KS-A-05). No source makes this mapping.

| Charter design object | Nearest KMO object | Note |
|---|---|---|
| Source (the material, no record) | Source record (`SRC`) | KVC has no Source record. Source fields are in the Brief. |
| Inbox stub | Source record with a workflow state | Refer to X-C-01. |
| Raw file (`Raw - Title.md`) | No equivalent. `file_path` and `content_hash` exist on the Source. | KS-C-21 |
| Brief | Reference Brief (`BRF`) | KS-C-12 |
| "Candidate claims" section in the Brief | Claim Candidate record (`CCL`) | A section in KVC. A record in KMO. |
| "Key points" and "Notable quotes" with locators | Evidence record (`EVD`) | A section in KVC. A record in KMO. |
| Atomic Note, type `claim` | Brain Claim (`CLM`) | KS-C-07 |
| Atomic Note, type `concept` | Concept (`CON`) | K07 gives no Concept fields. |
| Atomic Note, type `synthesis` | No equivalent | |
| No equivalent | Process (`PRC`) | K07 gives no Process fields. |
| Fields `supports`, `contradicts`, `extends` | Relationship record (`REL`) | KS-C-22 |
| Topic map (MOC) | MOC | K07 gives no ID prefix for a MOC. |
| No equivalent | Knowledge Assessment (`KAS`) | |
| No equivalent | Change Order (`CO`) | |
| No equivalent | Research Question (`RQ`) | KS-C-30 |
| No equivalent | Workflow Task (`TSK`) | K07 gives no fields. |
| No equivalent | Audit Event (`AUD`) | K07 gives no fields. |

## 3. Charter design schema

### 3.1 Inbox stub [KVC §6.1]

```yaml
---
type: inbox
url:
captured: YYYY-MM-DD
status: inbox
note:        # optional: why I saved it
---
```

### 3.2 Brief [KVC §6.2]

```yaml
---
type: brief
title:
source-type: video | article | book | pdf | course | podcast | other
source-url:
author:
published: YYYY-MM-DD
captured: YYYY-MM-DD
topics: []                # from Vocabularies only
status: drafted | reviewed | promoted | rejected
drafted-by: manual | ai
content-retrieved: full | partial | none
raw-file: "[[Raw - Title]]"
source-quality: high | medium | low | unrated
quality-rationale:        # one line: why this rating
promoted-to: []           # links to atomic notes created from this brief
last-reviewed: YYYY-MM-DD
---
```

Body sections, in fixed order:

1. Summary (2 to 3 sentences).
2. Key points (bullets, each with a locator such as `@ 42:10` or `p. 87`).
3. Candidate claims (items that are possibly good for promotion; AI drafts go here).
4. Notable quotes (short, with locators).
5. Possibly related (existing notes that possibly overlap; suggestions only).
6. My notes (free space, human only).

Naming: folder name, `Brief - ` file name prefix, and `type: brief` in frontmatter [KVC §2.1].

### 3.3 Atomic Note [KVC §6.3]

```yaml
---
type: claim | concept | synthesis
topics: []
status: draft | accepted | disputed
confidence: high | medium | low
sources:                  # each with a locator
  - "[[Brief - Title]] @ 42:10"
created: YYYY-MM-DD
last-verified: YYYY-MM-DD
supports: []
contradicts: []
extends: []
aliases: []
---
```

Body: the claim in one or two sentences; a short "Evidence" section; a "Disputed / caveats" section when sources disagree; ordinary `[[links]]` for ordinary relations.

### 3.4 Controlled vocabularies [KVC §2.2, §5]

One Vocabularies note holds three lists: topics, source types, quality ratings. The first topic list has 5 to 8 topics. The list is open (KS-Q-01).

## 4. KMO design schema

### 4.1 ID patterns [K07 §1]

"Use stable IDs. Do not use titles as IDs."

| Object | Prefix | Example |
|---|---|---|
| Source | SRC | SRC-20261112-001 |
| Reference Brief | BRF | BRF-20261112-001 |
| Claim Candidate | CCL | CCL-20261112-001 |
| Evidence | EVD | EVD-20261112-001 |
| Knowledge Assessment | KAS | KAS-20261112-001 |
| Brain Claim | CLM | CLM-20261112-001 |
| Concept | CON | CON-20261112-001 |
| Process | PRC | PRC-20261112-001 |
| Relationship | REL | REL-20261112-001 |
| Change Order | CO | CO-20261112-001 |
| Research Question | RQ | RQ-20261112-001 |
| Workflow Task | TSK | TSK-20261112-001 |
| Audit Event | AUD | AUD-20261112-001 |

K07 says: "These are examples. Choose the final ID method before implementation." Refer to KS-Q-11.

### 4.2 Shared metadata [K07 §2]

```yaml
id: "CLM-20261112-001"
type: "brain_claim"
schema_version: "0.1"
title: "Short descriptive title"
created_at: "2026-11-12T13:00:00-06:00"
updated_at: "2026-11-12T13:00:00-06:00"
status: "proposed"
created_by: "knowledge_owner"
source_ids: []
related_objects: []
```

### 4.3 Source [K07 §3]

```yaml
id: "SRC-20261112-001"
type: "source"
title: ""
author: ""
publisher: ""
source_type: "article"
url: ""
file_path: ""
published_at: null
accessed_at: ""
language: "en"
version: ""
content_hash: ""
access_status: "not_checked"
submission_context: ""
processing_level: "full_review"
duplicate_of: null
```

K02 §5 adds two items that are not fields in K07: extraction method and access problems.

### 4.4 Evidence [K07 §4]

```yaml
id: "EVD-20261112-001"
type: "evidence"
source_id: "SRC-20261112-001"
related_claim_ids: []
evidence_type: "quotation"
excerpt: ""
summary: ""
locator_type: "web_heading"
locator: ""
relevance: "unknown"
directness: "unknown"
method_or_basis: ""
reliability: "unknown"
corroboration: "unknown"
limitations: []
extraction_confidence: "indeterminate"
```

Possible locator types: PDF page; web heading or anchor; video time stamp; forum post ID; book chapter or page; file section or paragraph.

### 4.5 Claim Candidate [K07 §5]

```yaml
id: "CCL-20261112-001"
type: "claim_candidate"
source_id: "SRC-20261112-001"
brief_id: "BRF-20261112-001"
assertion: ""
original_wording: ""
claim_type: "factual"
context: ""
evidence_ids: []
explicit_or_inferred: "explicit"
qualifications: []
evidence_quality: "unknown"
extraction_confidence: "indeterminate"
```

Claim types: factual, causal, procedural, normative, predictive.

### 4.6 Reference Brief sections [K07 §6]

1. Source metadata.
2. Executive summary.
3. Central premise and author intent.
4. Key takeaways.
5. Facts and figures.
6. Processes, methods, and frameworks.
7. Concepts and definitions.
8. Claim Candidates.
9. Evidence and source locators.
10. Tools and resources.
11. Limitations and caveats.
12. Source Quality.
13. Extraction completeness and confidence.

K07 gives no YAML fields for the Reference Brief.

### 4.7 Knowledge Assessment sections [K07 §7]

1. Brief ID and Brain version reviewed.
2. Summary of relevance.
3. Relevant Brain Claims and concepts.
4. New knowledge.
5. Support for existing claims.
6. Contradictions.
7. Qualifications and refinements.
8. Extensions.
9. New concepts, processes, or relationships.
10. Research gaps.
11. Knowledge Relevance evaluation.
12. Recommended action.
13. Confidence and limits.

Recommended actions: Advance, Investigate, No action.

### 4.8 Change Order content

Three sources give three lists. Refer to KS-C-26.

| Item | K03 §4 | KA-M | K07 §8 |
|---|---|---|---|
| Change Order ID | Yes | Yes | Yes |
| Knowledge Assessment ID | No | Yes | Yes |
| Brain version reviewed | Yes | Yes | Yes |
| Change type | No | Yes | Yes |
| Objects affected | Yes | Yes | Yes |
| Current state | No | Yes | Yes |
| Proposed state | "Proposed action" | Yes | Yes |
| Evidence references | Yes | Yes | Yes |
| Reason | Yes | Yes | Yes |
| Expected impact | Yes | Yes | Yes |
| Risks and limits | Yes | Yes | Yes |
| Priority | No | Yes | Yes |
| Required Knowledge Owner decision | Yes | Yes | Yes |
| Approval record | No | No | Yes |
| Implementation record | No | No | Yes |

Change types: Create, Add Evidence, Refine, Qualify, Extend, Relate, Challenge, Supersede, Merge, Investigate, No Change.

Priority values: Critical, High, Normal, Low. The priority needs a reason. A score alone does not set it.

### 4.9 Brain Claim [K07 §9]

```yaml
id: "CLM-20261112-001"
type: "brain_claim"
claim: ""
context: ""
status: "proposed"
confidence: "indeterminate"
supporting_evidence_ids: []
challenging_evidence_ids: []
related_claim_ids: []
concept_ids: []
valid_from: null
valid_to: null
last_reviewed_at: null
review_due_at: null
created_from_change_order: null
```

### 4.10 Relationship [K07 §10]

```yaml
id: "REL-20261112-001"
type: "relationship"
from_object_id: ""
to_object_id: ""
relationship_type: "related_to"
rationale: ""
evidence_ids: []
confidence: "indeterminate"
status: "proposed"
```

K07 gives no list of relationship types. Refer to KS-G-05.

### 4.11 Research Question [K07 §11]

```yaml
id: "RQ-20261112-001"
type: "research_question"
question: ""
status: "open"
priority: "normal"
related_claim_ids: []
related_concept_ids: []
source_ids: []
assessment_ids: []
change_order_ids: []
notes: ""
```

### 4.12 MOC sections [K07 §12]

- Topic summary.
- Key concepts.
- Important Brain Claims.
- Processes and methods.
- Evidence for and against.
- Related MOCs.
- Open Research Questions.
- Known disputes and gaps.
- Last reviewed date.

### 4.13 Score scale [K07 §13]

| Score | Meaning |
|---|---|
| 1 | Very weak |
| 2 | Weak |
| 3 | Moderate |
| 4 | Strong |
| 5 | Very strong |
| — | Unknown or not applicable |

### 4.14 Objects with no field definition

K04 Phase 1 requires a template for each of these objects. K07 gives no fields for them:

- Concept.
- Process.
- Workflow Task.
- Audit Event.

K06 and KA-C name two more outputs that are not in the K07 object list: the Knowledge Health Report and the No Change result.

Refer to KS-G-04.

## 5. Value lists side by side

### 5.1 Claim status

Five lists exist. Refer to KS-C-09.

| Value | KVC §6.3 | K02 §2.6 | K02 §10 | K05 §1 | KA-C |
|---|---|---|---|---|---|
| Draft | Yes | | | | |
| Proposed | | Yes | Yes | Yes | Yes |
| Under review | | Yes | Yes | Yes | Yes |
| Accepted | Yes | Yes | Yes | Yes | Yes |
| Disputed | Yes | Yes | Yes | Yes | Yes |
| Uncertain | | Yes | | | |
| Qualified | | | Yes | | |
| Superseded | | Yes | Yes | Yes | Yes |
| Deprecated | | | Yes | Yes | Yes |
| Archived | | | Yes | Yes | |
| Unknown | | | | | Yes |

K02 §10 says: "The final list and transition rules require approval."

### 5.2 Other value lists

| List | Charter design | KMO design | Reference |
|---|---|---|---|
| Brief status | `drafted`, `reviewed`, `promoted`, `rejected` | Not defined | KS-G-09 |
| Confidence | `high`, `medium`, `low` | High, Moderate, Low, Indeterminate | KS-C-10 |
| Source quality | `high`, `medium`, `low`, `unrated` | Five dimensions; optional 1 to 5 score | KS-C-11 |
| Source type | `video`, `article`, `book`, `pdf`, `course`, `podcast`, `other` | Example value `article` only | KS-C-37, KS-G-06 |
| Content retrieved | `full`, `partial`, `none` | `access_status` with example `not_checked` | |
| First draft by | `manual`, `ai` | `created_by` with example `knowledge_owner` | |
| Typed links | `supports`, `contradicts`, `extends` | `relationship_type` with example `related_to` | KS-C-22 |
| Editor contribution types | Not used | New, Supports, Contradicts, Qualifies, Refines, Extends, New concept, New process, New relationship, Research gap | |
| Processing level | Not used | Archive only, Quick brief, Full review | KS-C-29 |
| Workflow task state | Not used | 12 suggested values. Refer to KS-03, section 11. | KS-Q-18 |

## 6. Field name style

The two schemas use different styles. Refer to KS-C-24.

| Item | Charter design | KMO design |
|---|---|---|
| Word separator | Hyphen: `source-type`, `last-verified` | Underscore: `source_type`, `last_reviewed_at` |
| Date | Date only: `YYYY-MM-DD` | Date, time, and zone: `2026-11-12T13:00:00-06:00` |
| Reference to a different record | Wikilink with title: `"[[Brief - Title]] @ 42:10"` | ID: `SRC-20261112-001` |
| Record type values | `brief`, `claim` | `brain_claim`, `claim_candidate` |

## 7. Staleness fields

| Purpose | Charter design | KMO design |
|---|---|---|
| Last check of a claim | `last-verified` | `last_reviewed_at` |
| Next check of a claim | Not a field. A query uses a threshold. | `review_due_at` |
| Period in which the claim is valid | No field | `valid_from`, `valid_to` |
| Age of the source | `published` on the Brief | `published_at` on the Source |

Refer to KS-C-20. The stale threshold for each topic is open (KS-Q-02).

## 8. Review results for the data model

| Item | Result | Reference |
|---|---|---|
| Record types | Keep all 14 for now. Review them against the vault in development. | KS-D-04 (PINNED) |
| Frontmatter | One standard core block on each note. Each agent adds its own fields at its stage. KMO shared metadata (section 4.2) is a starting point. | X-D-09 (PINNED) |
| Field style | Justin prefers hyphens. He can select his own names. | X-D-09 (PINNED) |
| Web address field | `url` | X-D-10 |
| Capture time | Date and time | X-D-10 |
| Change Order links | Each Brain note links to each Change Order that changed it. Field name in development. | KS-D-03 |
| Routing result | A field on the Intake note. Example values: full brief, quick brief, archive only, skipped, needs review. | X-D-08 (values PINNED) |
| "Needs review" | A status value that blocks the next stage. | X-D-13 |
| IDs | Stable IDs (KMO). | DEFAULT (KS-D-01) |
| Value lists in section 5 | KMO lists, where KMO has one list. Claim status is still OPEN, because KMO has four lists. | KS-C-09 |

Review note: ChatGPT made the KMO data model with no knowledge of the vault (KS-D-04). It calls records "objects". Each record in this set is a Markdown note.

## 9. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Added review results for the data model. |
