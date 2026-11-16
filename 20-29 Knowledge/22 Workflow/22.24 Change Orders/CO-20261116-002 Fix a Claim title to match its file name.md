---
id: CO-20261116-002
type: change-order
title: Fix a Claim title to match its file name
status: applied
created: 2026-11-16T00:19
updated: 2026-11-16T00:19
created-by: orchestrator
schema-version: "0.13"
assessment:
source:
brain-version: CO-20261116-001
change-types: [refine]
affected:
  - "[[CLM-20261115-004 Simple structure helps AI tools read content correctly]]"
priority: low
decision: approved
decided: 2026-11-16T00:19
decision-note: "Fix both"
applied: 2026-11-16T00:19
brain-version-after: CO-20261116-002
---

## 1. Summary

The frontmatter title of CLM-20261115-004 says "Simple document structure…". Its file name and every link say "Simple structure…". This Change Order sets the title to the file name. It changes no claim text, status, confidence, or evidence-strength. The Orchestrator wrote it, because the change is one field that Justin asked for ("Fix both"). It was found in the work of CO-20261116-001 (an item outside its list) and is now caught by `Frontmatter Check.ps1` v0.3.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[CLM-20261115-004 Simple structure helps AI tools read content correctly]] | Frontmatter `title` set to the file name |

### X1

- Current: `title: Simple document structure helps AI tools read content correctly`
- Proposed: `title: Simple structure helps AI tools read content correctly`
- Evidence: none needed. A naming fix.
- Reason: the file name does not change (Schema §3.1), and all links use it.

## 3. Impact

One field in one record. No link changes.

## 4. Risks and limits

None. If no action is taken, the title and the file name stay different, and `Frontmatter Check.ps1` v0.3 reports 1 problem.

## 5. Priority

`low`.

## 6. Decision required

Done: see §7.

## 7. Decision record

2026-11-16T00:19. Justin: "Fix both". Decision: `approved`.

## 8. Implementation record

2026-11-16T00:19. `brain-version` (CO-20261116-001) matched the current Brain version. The "Current" title line was found. `title`, `change-orders`, and `updated` set in CLM-20261115-004.

Brain version after: CO-20261116-002.
