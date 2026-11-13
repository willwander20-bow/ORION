# Data Model Starter

This file defines the first object model. It is a design draft. Confirm
the fields before you create validation schemas.

## 1. ID patterns

Use stable IDs. Do not use titles as IDs.

Suggested prefixes:

  Object                 Prefix   Example
  ---------------------- -------- ------------------
  Source                 SRC      SRC-20261112-001
  Reference Brief        BRF      BRF-20261112-001
  Claim Candidate        CCL      CCL-20261112-001
  Evidence               EVD      EVD-20261112-001
  Knowledge Assessment   KAS      KAS-20261112-001
  Brain Claim            CLM      CLM-20261112-001
  Concept                CON      CON-20261112-001
  Process                PRC      PRC-20261112-001
  Relationship           REL      REL-20261112-001
  Change Order           CO       CO-20261112-001
  Research Question      RQ       RQ-20261112-001
  Workflow Task          TSK      TSK-20261112-001
  Audit Event            AUD      AUD-20261112-001

These are examples. Choose the final ID method before implementation.

## 2. Shared metadata

Each structured object should use these fields where relevant:

``` yaml
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

Do not copy this metadata block without changing the ID, type, and
values.

## 3. Source

Suggested fields:

``` yaml
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

Keep `submission_context` separate from the source's own content.

## 4. Evidence

Suggested fields:

``` yaml
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

Use an exact locator when available.

Possible locator types:

-   PDF page.
-   Web heading or anchor.
-   Video timestamp.
-   Forum post ID.
-   Book chapter or page.
-   File section or paragraph.

Do not invent a locator.

## 5. Claim Candidate

A Claim Candidate is an assertion extracted from a source. It is not an
accepted Brain Claim.

Suggested fields:

``` yaml
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

Claim types:

-   Factual.
-   Causal.
-   Procedural.
-   Normative.
-   Predictive.

## 6. Reference Brief

Suggested sections:

1.  Source metadata.
2.  Executive summary.
3.  Central premise and author intent.
4.  Key takeaways.
5.  Facts and figures.
6.  Processes, methods, and frameworks.
7.  Concepts and definitions.
8.  Claim Candidates.
9.  Evidence and source locators.
10. Tools and resources.
11. Limitations and caveats.
12. Source Quality.
13. Extraction completeness and confidence.

The Reporter must distinguish the source's statements from verified
facts.

## 7. Knowledge Assessment

Suggested sections:

1.  Brief ID and Brain version reviewed.
2.  Summary of relevance.
3.  Relevant Brain Claims and concepts.
4.  New knowledge.
5.  Support for existing claims.
6.  Contradictions.
7.  Qualifications and refinements.
8.  Extensions.
9.  New concepts, processes, or relationships.
10. Research gaps.
11. Knowledge Relevance evaluation.
12. Recommended action.
13. Confidence and limits.

Suggested actions:

-   Advance.
-   Investigate.
-   No action.

## 8. Change Order

Suggested fields and sections:

1.  Change Order ID.
2.  Knowledge Assessment ID.
3.  Brain version reviewed.
4.  Change type.
5.  Objects affected.
6.  Current state.
7.  Proposed state.
8.  Evidence references.
9.  Reason.
10. Expected impact.
11. Risks and limits.
12. Priority.
13. Required Knowledge Owner decision.
14. Approval record.
15. Implementation record.

Suggested change types:

-   Create.
-   Add Evidence.
-   Refine.
-   Qualify.
-   Extend.
-   Relate.
-   Challenge.
-   Supersede.
-   Merge.
-   Investigate.
-   No Change.

Priority values:

-   Critical.
-   High.
-   Normal.
-   Low.

Explain the priority. Do not assign it from a score alone.

## 9. Brain Claim

Suggested fields:

``` yaml
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

A Brain Claim should express one main assertion.

Add time, place, version, and conditions when they affect the claim.

## 10. Relationship

Suggested fields:

``` yaml
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

A relationship must explain why the two objects are connected.

Do not create a relationship from keyword similarity alone.

## 11. Research Question

Suggested fields:

``` yaml
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

## 12. MOC

Suggested sections:

-   Topic summary.
-   Key concepts.
-   Important Brain Claims.
-   Processes and methods.
-   Supporting and challenging evidence.
-   Related MOCs.
-   Open Research Questions.
-   Known disputes and gaps.
-   Last reviewed date.

## 13. Scoring values

Use a 1--5 scale only when useful.

Suggested meanings:

    Score Meaning
  ------- ---------------------------
        1 Very weak
        2 Weak
        3 Moderate
        4 Strong
        5 Very strong
      --- Unknown or not applicable

Every score needs a short reason.

## 14. Confidence values

Use:

-   High.
-   Moderate.
-   Low.
-   Indeterminate.

Confidence describes the agent's confidence in its own extraction or
analysis. It does not describe evidence quality.
