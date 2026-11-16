---
id: CO-20261115-008
type: change-order
title: "Fix the partly independent wording in MOC-002"
status: applied
created: 2026-11-15T19:02
updated: 2026-11-15T19:06
created-by: managing-editor
schema-version: "0.11"
assessment:
source:
brain-version: CO-20261115-007
change-types:
  - refine
affected:
  - "[[MOC-20261113-002 AI-maintained knowledge bases]]"
priority: low
decision: approved
decided: 2026-11-15T19:03
decision-note: "Yes to all"
applied: 2026-11-15T19:06
brain-version-after: CO-20261115-008
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

Knowledge Health Report [[KHR-20261115-007 Impact review of CO-20261115-007]], finding H1, found a conflict in the MOC "AI-maintained knowledge bases". The "Disputes and gaps" bullet says the second source (Wall) is "partly independent" of the first. The same bullet says the Brain does not show that the authors are independent. This Change Order replaces the first clause. The new clause says only that Wall describes the same map-first idea. The rest of the bullet does not change.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[MOC-20261113-002 AI-maintained knowledge bases]] | Replace one clause in "Disputes and gaps", first bullet |

### X1

- Current state: In "Disputes and gaps", the first bullet (line 55) reads: "- One source, one creator, partly sponsored. A second source (Wall, BRF-20261115-002) is partly independent of the first on the map-first idea. It is opinion and partly promotional. A third source (Okhlopkov, BRF-20261115-001) is a first-person account of one vault, with `low` source quality, no date, and no data. The Brain does not show that the authors are independent of each other. No source with data or tests yet. The credit to Karpathy is secondhand."
- Proposed state: Replace only the clause "A second source (Wall, BRF-20261115-002) is partly independent of the first on the map-first idea." with: "A second source (Wall, BRF-20261115-002) describes the same map-first idea." The bullet then reads: "- One source, one creator, partly sponsored. A second source (Wall, BRF-20261115-002) describes the same map-first idea. It is opinion and partly promotional. A third source (Okhlopkov, BRF-20261115-001) is a first-person account of one vault, with `low` source quality, no date, and no data. The Brain does not show that the authors are independent of each other. No source with data or tests yet. The credit to Karpathy is secondhand." The new text does not claim independence. The existing sentence "The Brain does not show that the authors are independent of each other." says so. The Orchestrator adds the new Change Order link to `change-orders` and updates `updated` when it applies the row. No other field changes.
- Evidence: Brain record only. The text of MOC-20261113-002 line 55 is the evidence. No source fact is added.
- Reason: KHR-20261115-007 H1. "Partly independent" conflicts with "independence not shown" in the same bullet. A reader can take it as shown independence. That overstates the evidence.

## 3. Impact

- Direct: one clause changes in one MOC bullet. No status, `confidence`, `evidence-strength`, link, or other record changes.
- Possible: none found. No other Brain record repeats the "partly independent" wording (the Managing Editor and the Orchestrator searched the Brain: one match, in MOC-002). CON-20261113-003, CON-20261115-001, CON-20261113-004, MOC-20261113-001 and CLM-20261113-001 say independence is not shown, or they do not mention it in this way.

## 4. Risks and limits

- If no action is taken: a reader can take the Wall source as partly independent evidence for the map-first idea. The Brain does not show this.
- Limit: this row uses only the Brain record. The Managing Editor did not open the Brief. The new clause does not depend on the source.
- Limit: the clause "describes the same map-first idea" repeats what the removed clause already said about the idea. It adds no new fact.

## 5. Priority

`low`. The effect is on wording only, in one record. No decision depends on it, and the risk of delay is a possible misreading of the evidence in one MOC bullet.

## 6. Decision required

Justin: approve X1 (replace the Wall clause in MOC-20261113-002 as shown), or reject it? There is one row, so there is nothing to decide row by row.

## 7. Decision record

2026-11-15T19:03. Justin: "Yes to all" (approve X1; the threshold stays 5; pass Phase 7). Decision: `approved`. Row X1, as written.

## 8. Implementation record

2026-11-15T19:06. The Orchestrator checked that `brain-version` (CO-20261115-007) matched the current Brain version before the change. Row X1 applied as written. File changed in `21 Brain`: MOC-20261113-002 (X1; `change-orders` and `updated` set). No Curator review: one record is below the threshold of 5 (Rulebook v0.7, KS-D-48). The Orchestrator checks: `git diff` matches the Change Order; Frontmatter Check and Link Check run.

Brain version after: CO-20261115-008.
