---
id: CO-20261116-001
type: change-order
title: Brain maintenance fixes, KHR-20261116-001
status: open
created: 2026-11-16T00:13
updated: 2026-11-16T00:13
created-by: managing-editor
schema-version: "0.13"
assessment:
source:
brain-version: CO-20261115-020
change-types: [refine, relate]
affected:
  - "[[MOC-20261115-002 Building AI agents]]"
  - "[[CLM-20261115-004 Simple structure helps AI tools read content correctly]]"
  - "[[CLM-20261115-005 Start with the simplest agent design]]"
  - "[[CLM-20261115-006 Agent autonomy raises cost and error risk]]"
  - "[[CON-20261115-002 Design content for AI readers]]"
  - "[[CON-20261115-003 Workflows and agents]]"
  - "[[CON-20261115-004 Johnny.Decimal folder system]]"
  - "[[CON-20261115-005 Context engineering]]"
  - "[[CON-20261115-006 Agent memory]]"
  - "[[CON-20261115-007 Claude Code instructions and memory]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

This Change Order applies five findings of [[KHR-20261116-001 Brain maintenance review]] that Justin approved: H1, H2, H4, H7, H8. It brings the MOC "Building AI agents" up to date (H1). It removes process text about "draft titles" from five records (H2). It sets a valid `kind` in four Concepts (H4). It links overlapping records and removes one repeated sentence (H7). It corrects two sentences in the Johnny.Decimal Concept (H8). No Claim text, `status`, `confidence`, or `evidence-strength` changes. No new record.

I checked the Curator statements in the Brain records. All five findings are correct. I also checked H8 in the Source note SRC-20261115-012 (Brief §3, §4, §10). The other rows depend on Brain records only.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | MOC-20261115-002 | New Topic summary sentence (H1) |
| X2 | relate | MOC-20261115-002 | Add CON-20261115-001 to Key concepts (H1) |
| X3 | refine | MOC-20261115-002 | Correct the label of SRC-20261115-014 and the "Against" line (H1) |
| X4 | refine | MOC-20261115-002 | Replace the 7 Disputes and gaps bullets with a current list (H1) |
| X5 | refine | CLM-20261115-004 | Remove stale sentences, 2 lines (H2) |
| X6 | refine | CLM-20261115-005 | Remove stale sentence (H2) |
| X7 | refine | CLM-20261115-006 | Remove stale sentence (H2) |
| X8 | refine | CON-20261115-002 | Remove stale sentence (H2) |
| X9 | refine | CON-20261115-003 | Replace stale text with a reason, 2 lines (H2) |
| X10 | refine | CON-20261115-003, -005, -006, -007 | `kind: definition` to `kind: concept` (H4) |
| X11 | refine | CON-20261115-002 | Remove the repeated sentence in step 9 (H7) |
| X12 | relate | CON-20261115-002 | Link CLM-20261115-004 in Related claims (H7) |
| X13 | relate | CLM-20261115-004 | Add CON-20261115-002 to `concepts` (H7) |
| X14 | relate | CLM-20261115-005, -006 | Add `related` link between them (H7) |
| X15 | refine | CON-20261115-004 | Correct the ID bullet (H8) |
| X16 | refine | CON-20261115-004 | Reword the `.11` caveat (H8) |

### X1

- Current: "How people design systems in which an LLM uses tools and directs its own steps: the terms, the patterns, and the advice on when to use them."
- Proposed: "How people design systems in which an LLM uses tools and directs its own steps: the terms, the patterns, the advice on when to use them, and what an agent holds in its context and its memory (including how one product loads instructions)."
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H1. Context, memory, and product documentation are 3 of the 4 Concepts and are not in the summary.

### X2

- Current: the Key concepts list has 4 Concepts. CON-20261115-001 is not in it.
- Proposed: add the line "- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]] (rules for an agent that reads and writes a file-based memory)".
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H1. CON-20261115-003 links CON-20261115-001 as related, but the MOC does not list it.

### X3

- Current: "- For: [[SRC-20261115-014 …|Anatomy of agentic memory (Jiang et al., arXiv, 2026-05-20)]] …" and "- Against: none yet."
- Proposed: the label "For:" becomes "Qualifies [[CLM-20261115-008 Long context is not agent memory]]:" on the SRC-20261115-014 line (the rest of the line stays). "- Against: none yet." becomes "- Against: none. No source contradicts a Claim. One source qualifies one Claim (line above)."
- Evidence: Brain record only. The Evidence row of CLM-20261115-008 for SRC-20261115-014 is "qualifies" (E2, E9).
- Reason: KHR-20261116-001 H1. The MOC label disagrees with the Claim row.

### X4

- Current: the 7 bullets under "Disputes and gaps". Four disagree with the MOC's own lists (the report quotes them).
- Proposed: replace all 7 with these bullets:
  - "Six sources: four from vendors (three from Anthropic, one from Udacity) and two survey preprints (Du; Jiang et al.). The Brain does not show that the vendor sources are independent, nor that the two preprints are."
  - "The vendor articles give no data. Du gives no primary data. Jiang et al. report a small empirical study."
  - "The oldest source is dated 2024-12-19 and says that tooling has changed. Newer sources are dated 2025-09-29, 2026-03-08, and 2026-05-20. The Brain does not show if the oldest advice still holds."
  - "Both preprints are about memory. They do not test the design or context advice on this page."
  - "Two memory papers by different authors agree that evaluation is weak. Both are preprints. Jiang et al. say that on some benchmarks a full-context baseline can match memory systems. This qualifies [[CLM-20261115-008 Long context is not agent memory]]."
  - "The Brief for Building effective agents does not cover the detail inside each pattern, the two appendices, or the named frameworks. The Brief for the context article gives no information on the three techniques side by side."
  - "The Claude Code documentation page has no date or version and changes with each release. The Brain keeps no Claim from it."
- Evidence: Brain record only (the MOC's own Evidence list; CLM-20261115-008 Context and conditions).
- Reason: KHR-20261116-001 H1. Four lines were written when the MOC had 2 or 3 sources. The new text keeps each line that is still true.

### X5

- Current (Relationships, 2 lines): "… Link written with the draft title. The Orchestrator sets the final name."
- Proposed: the same lines without "Link written with the draft title. The Orchestrator sets the final name."
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H2. The link is final and works.

### X6

- Current (Relationships, link to CLM-20261115-006): "… A link, not a dependency. Link written with the draft title."
- Proposed: "… A link, not a dependency."
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H2.

### X7

- Current (Relationships, link to CLM-20261115-005): "… A link, not a dependency. Link written with the draft title."
- Proposed: "… A link, not a dependency."
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H2.

### X8

- Current (Related claims, link to CLM-20261115-003): "… the same source's first tactic (file format). Link written with the draft title. The Orchestrator sets the final name."
- Proposed: "… the same source's first tactic (file format)."
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H2.

### X9

- Current (Related claims, 2 lines): "[[CLM-20261115-005 …]]: draft title. The Orchestrator sets the final name." and "[[CLM-20261115-006 …]]: draft title. The Orchestrator sets the final name."
- Proposed: line 1 "…: the source's advice to add complexity only when needed. A link, not a dependency." Line 2 "…: the source's statement that autonomy means higher costs and compounding errors. A link, not a dependency."
- Evidence: Brain record only (the Claim sections of CLM-20261115-005 and -006).
- Reason: KHR-20261116-001 H2. The two lines have only the stale text and no reason. The reasons come from the two Claims.

### X10

- Current: `kind: definition` in CON-20261115-003, -005, -006, -007.
- Proposed: `kind: concept` in the four records.
- Evidence: Brain record only. Schema §5.10 allows `concept` and `process`. Each of the four has "Steps: None."
- Reason: KHR-20261116-001 H4. This uses a valid value, so the Schema does not change. One row for four records, because the change is the same.

### X11

- Current (step 9): "Do not put content that AI must read in hidden or interactive parts, such as tabs and collapsibles. The source says that plain Markdown or a flat text export is easier to parse."
- Proposed: "Do not put content that AI must read in hidden or interactive parts, such as tabs and collapsibles."
- Evidence: Brain record only. The removed sentence is also in CLM-20261115-004 (E5).
- Reason: KHR-20261116-001 H7. All 10 steps stay. Only the sentence that the Claim also holds is removed.

### X12

- Current (Related claims): one bullet, for CLM-20261115-003.
- Proposed: add "- [[CLM-20261115-004 Simple structure helps AI tools read content correctly|Simple structure helps AI tools read content correctly]]: the source's view behind steps 7 and 9. The Concept holds the steps. The Claim holds the view and its limits. A link, not a dependency."
- Evidence: Brain record only.
- Reason: KHR-20261116-001 H7. The Concept did not link the Claim.

### X13

- Current: `concepts:` lists only [[CON-20261113-002 Work with plain-text notes]].
- Proposed: add "[[CON-20261115-002 Design content for AI readers]]".
- Evidence: Brain record only. The Relationships section of the Claim already links it.
- Reason: KHR-20261116-001 H7. The typed field has no link to the Concept that applies the Claim.

### X14

- Current: `related: []` in CLM-20261115-005 and CLM-20261115-006.
- Proposed: CLM-20261115-005 `related`: "[[CLM-20261115-006 Agent autonomy raises cost and error risk]]". CLM-20261115-006 `related`: "[[CLM-20261115-005 Start with the simplest agent design]]".
- Evidence: Brain record only. The Relationships sections of both Claims give the reason.
- Reason: KHR-20261116-001 H7. One article; one Claim gives the reason for the other; different statements, so no merge. Typed links for CLM-20261115-007 and -008 are H11, which is not approved.

### X15

- Current (Explanation, ID bullet): "ID: the folder where files are saved. The source says an ID folder holds no more than 100 IDs in a category. The ID gives the exact place of an item (E5)."
- Proposed: "ID: the folder where files are saved. The source says a category holds no more than 100 IDs (E3). The ID gives the exact place of an item (E5)."
- Evidence: [[SRC-20261115-012 Johnny.Decimal introduction]] · Brief §3 ("A category holds no more than 100 IDs.") and E3.
- Reason: KHR-20261116-001 H8. The source puts the limit on a category. The later "Limits" bullet is already correct.

### X16

- Current (Caveats): "The page is an introduction. It does not explain why IDs start at `.11`, nor any rule for use beyond the three levels."
- Proposed: "The page is an introduction. Its example uses IDs that start at `.11`. It does not say if this is a rule of the system, and it gives no rule for use beyond the three levels."
- Evidence: [[SRC-20261115-012 Johnny.Decimal introduction]] · Brief §4 ("Example: IDs start at `.11`.") and §10 (the page leaves out why IDs start at `.11`). No E label covers this point.
- Reason: KHR-20261116-001 H8. The old text can read as a rule of the system. The new text says it is the source's example. The Concept does not mention ORION's own use, as the report advises.

## 3. Impact

Direct:
- 10 existing Brain records change: MOC-20261115-002, CLM-20261115-004, -005, -006, CON-20261115-002, -003, -004, -005, -006, -007.
- The MOC states the current evidence, and its gap list agrees with its own lists.
- Four Concepts have a valid `kind`. Views that filter by `kind` find them.
- Five records lose text about a step that is done.
- Each changed record needs this Change Order in `change-orders` and a new `updated` stamp (Orchestrator at apply).

Possible: a view or script that reads `kind: definition` or a removed sentence would change. I did not check scripts. `Frontmatter Check.ps1` does not test `kind` (report H4). Adding that test is for the Orchestrator and is not in this Change Order.

## 4. Risks and limits

- If no action is taken: the MOC keeps lines that disagree with its lists, four Concepts keep an invalid `kind`, and a reader can take `.11` as a rule of the system.
- X4 is the largest edit. Justin can approve X1 to X3 and reject X4. Then the old bullets stay.
- X15 and X16 rest on the Source note. I did not read the raw page.
- Outside the list, not proposed: CLM-20261115-004 has the frontmatter title "Simple document structure helps AI tools read content correctly". The file name and each link use "Simple structure helps AI tools read content correctly".
- Not covered: H3 (done), H9 (kept), H5, H6, H10 to H13 (not approved).

## 5. Priority

`low`. Impact: wording and field values; no Claim change. Urgency: none. Scope: 10 records. Risk of delay: small. The only wrong statements are in the MOC gap list and the `.11` text.

## 6. Decision required

Approve this Change Order, or approve only some rows? The rows can be decided one by one. Groups that belong together: X1 to X4 (H1), X5 to X9 (H2), X10 (H4), X11 to X14 (H7), X15 and X16 (H8).

## 7. Decision record

## 8. Implementation record
