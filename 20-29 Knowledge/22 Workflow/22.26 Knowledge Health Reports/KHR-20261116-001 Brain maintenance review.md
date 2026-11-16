---
id: KHR-20261116-001
type: knowledge-health-report
title: Brain maintenance review
status: validated
created: 2026-11-16T00:03
updated: 2026-11-16T00:13
created-by: curator
schema-version: "0.13"
mode: maintenance
brain-version: CO-20261115-020
scope: all
trigger: "Curator Due.ps1: 21 of 15 Change Orders applied since KHR-20261113-001"
link-check: "Records checked: 25. Files checked: 26. Problems: 0."
change-orders:
  - "[[CO-20261116-001 Brain maintenance fixes from KHR-20261116-001]]"
---

<!-- Review the Brain. Do not change the Brain. Each finding needs evidence and a reason why it matters. A count with no context is not permitted. Schema §5.12. -->

## 1. Summary

The Brain has 25 records: 9 Claims (not 7), 11 Concepts, and 5 MOCs. All 9 Claims are `status: accepted`, `confidence: low`, and `evidence-strength: weak`. The links are sound (Link Check 0 problems, and each of CO-20261115-001 to -020 matches the `change-orders` lists of the records that it affected). The most important findings: MOC-20261115-002 has lines that contradict each other after six Change Orders (H1); 5 records keep process text about "draft titles" (H2); 5 records have corrupted characters (H3); 4 Concepts use a `kind` value that the Schema does not allow (H4); and 6 of 9 Claims have one supporting source, mostly vendors (H6).

## 2. Brain records reviewed

All 25 records and `Research Questions.md` were read in full. Review was complete for the records. Sources and Briefs were read only in part (see §8).

Claims:
- [[CLM-20261113-001 Lasting notes belong in open files]]
- [[CLM-20261115-001 Search plain files first, then add indexes]]
- [[CLM-20261115-002 Git history alone is not a full backup]]
- [[CLM-20261115-003 Text formats with direct access are easier for AI to read]]
- [[CLM-20261115-004 Simple structure helps AI tools read content correctly]]
- [[CLM-20261115-005 Start with the simplest agent design]]
- [[CLM-20261115-006 Agent autonomy raises cost and error risk]]
- [[CLM-20261115-007 Longer context can lower model performance]]
- [[CLM-20261115-008 Long context is not agent memory]]

Concepts:
- [[CON-20261113-001 File over app]]
- [[CON-20261113-002 Work with plain-text notes]]
- [[CON-20261113-003 AI-maintained wiki over files]]
- [[CON-20261113-004 Set up an AI-maintained wiki]]
- [[CON-20261115-001 Agent memory protocol for file-based memory]]
- [[CON-20261115-002 Design content for AI readers]]
- [[CON-20261115-003 Workflows and agents]]
- [[CON-20261115-004 Johnny.Decimal folder system]]
- [[CON-20261115-005 Context engineering]]
- [[CON-20261115-006 Agent memory]]
- [[CON-20261115-007 Claude Code instructions and memory]]

MOCs:
- [[MOC-20261113-001 Note durability]]
- [[MOC-20261113-002 AI-maintained knowledge bases]]
- [[MOC-20261115-001 Content for AI readers]]
- [[MOC-20261115-002 Building AI agents]]
- [[MOC-20261115-003 Organising files with numbered folders]]

Other: [[Research Questions]]

## 3. Link Check result

Output: "Records checked: 25. Files checked: 26. Problems: 0."

- No problem was reported, so there is no verdict to give on a single problem.
- I checked the `BACKLINK` rule by hand for CO-20261115-001 to -020. Each record in each `affected` list, and each new record, links the Change Order. Result: no gap. I did not repeat this for CO-20261113-001 to -008.
- A result of 0 does not mean that the Brain is clean. Link Check does not test text, encoding, or field values. This review found problems outside its scope: H1 to H5.

## 4. Health measures

| Measure | Value | Meaning |
|---|---|---|
| Claims with no evidence | 0 of 9 | Each Claim has at least one Evidence row. Some rows are weak: CLM-20261115-002 and -006 each rest on one sentence, and -007 rests on one quote fragment and one unchecked summary. |
| Claims with one source only | 6 of 9 (CLM-20261115-001, -002, -004, -006, -007, -008) | Each has one supporting source. CLM-001 and CLM-008 also have a second source that only qualifies. The other 3 have two or more supporting sources (CLM-20261113-001; -003 with one indirect; -005 with two vendors). No Claim has a source that is independent of the vendor or publisher (H6). |
| Disputed claims | 0 | No Claim is `disputed`, and no Claim uses `contradicts`. Two qualifying sources exist (Karpathy against CLM-20261115-001; Jiang against CLM-20261115-008). They are shown as `qualifies` rows. The low count does not show agreement. It shows that few sources were read. |
| Claims not reviewed in the target period | 0 of 9. Oldest `last-reviewed`: 2026-11-13 (CLM-20261113-001, CON-001 to -003, MOC-001, MOC-002) | All dates are 2 to 3 days old, so the 12-month target (KS-D-46) cannot find anything yet. The dates did not move although these records got 5 to 11 Change Orders after 2026-11-13 (H13). No empty date. No date before `created`. |
| Broken links | 0 | Link Check, and each wikilink in the records that I read, resolved. The Karpathy and arXiv rows have corrupted characters, but their links work (H3). |
| Orphaned records | 0 | Each Claim and Concept has at least one inbound link, including from a MOC. |
| Duplicate concepts | 0 exact; 2 partial overlaps | CON-20261115-002 steps 7 and 9 repeat CLM-20261115-004. CLM-20261115-005 and -006 come from one article and give one reason for the other (H7). No Concept repeats another Concept. |
| MOC coverage | 20 of 20 Claims and Concepts are linked from at least one MOC | Coverage is complete. MOC-20261115-003 covers 1 record (H9). MOC-20261115-002 covers 8 records and is the widest. |
| Open Research Questions | 5 in the list; 5 more in MOCs that are not in the list | The list has no row for the 4 questions in MOC-20261115-002 or the 1 in MOC-20261115-003 (H10). |

## 5. Findings

| Label | Record | Problem | Why it matters | Recommended action | Approval |
|---|---|---|---|---|---|
| H1 | MOC-20261115-002 | Gap lines are old and contradict each other; summary and evidence labels are out of date | The MOC shows the wrong state of the evidence after 6 Change Orders | Rewrite the Disputes and gaps list and the Topic summary as one current text; fix the count and the label of SRC-20261115-014; link CON-20261115-001 | yes |
| H2 | CLM-20261115-004, -005, -006; CON-20261115-002, -003 | Text about "draft title" and "the Orchestrator sets the final name" is still in the records | The text describes a step that is done. A reader can think that a link is not final | Remove the stale sentences | yes |
| H3 | CLM-20261115-001, -008; CON-20261113-003, -004; CON-20261115-006 | Corrupted characters ("·", "§") in Evidence and Sources rows for SRC-20261115-009 and SRC-20261115-014 | The rows are hard to read. The error is in 5 records and in CO-20261115-016 | Replace the characters. Ask the Orchestrator to add an encoding check to the scripts | yes |
| H4 | CON-20261115-003, -005, -006, -007 | `kind: definition` is not an allowed value (Schema §5.10: `concept`, `process`) | `Frontmatter Check.ps1` reported 0 problems, so the check does not test this field. Views that filter by `kind` miss 4 Concepts | Set a valid value, or ask Justin to add a value to the Schema. Add the `kind` check to the script | yes |
| H5 | MOC-20261115-001; CON-20261115-004, -005, -006, -007; CLM-20261115-007, -008; MOC-20261115-003; records of CO-016 | The `created` and `updated` times are before the Change Order `decided` time. CO-20261115-012 has `applied` before `decided` | The audit trail shows Brain text written before approval. This is probably a stamp error, but a reader cannot tell | Orchestrator to check the clock source and the order of the stamps. No change to the Brain text | no |
| H6 | CLM-20261115-001 to -008 | One supporting source, or only vendor and publisher sources | Each Claim can show the interest of its author. "Accepted" can be read as "well supported" | Look for an independent source for each Claim, in this order: -005, -006, -007, -004, -003 | no |
| H7 | CON-20261115-002; CLM-20261115-004; CLM-20261115-005, -006 | Partial overlap | Two records say the same thing in two places. A later edit can change one and not the other | Link the records with a reason. Keep the steps in the Concept and cite the Claim | yes |
| H8 | CON-20261115-004 | The text does not say that the `.11` start is the source's example. One bullet states a limit wrongly | A reader can take `.11` as a rule, and can mix the source's example with ORION's own use (`.11` to `.19` reserved) | Reword the caveat and the ID bullet. Do not link the vault rules in the Concept | yes |
| H9 | MOC-20261115-003 | A MOC for one Concept | Below the threshold of 3 records. It adds a MOC, two empty sections, and one link | Justin to decide: keep until more records exist, or fold the Concept into Note durability | yes, if folded |
| H10 | `Research Questions.md` | 5 open questions in MOCs are not in the list | The list is the review queue. These questions are not tracked | Orchestrator to add 5 rows (no Change Order) | no |
| H11 | CLM-20261115-004, -005, -006, -007, -008 | Typed link fields are empty while the text links related records | The typed fields are what views and the Curator read. CLM-007 and CLM-008 are not linked to each other | Add `related` links, one reason each. Use a better reason than "another one-source caution" for CLM-007 to CLM-006 | yes |
| H12 | MOC-20261113-001; MOC-20261113-002 | Note durability omits Nava in Evidence. AI-maintained knowledge bases omits the Karpathy difference from CLM-20261115-001 | The Evidence list and the dispute list are not as complete as the Claims | Add the Nava row, and a dispute line on the starting point (`index.md` first or search first) | yes |
| H13 | CLM-20261113-001; CON-20261113-001 to -004; MOC-20261113-001, -002 | `last-reviewed: 2026-11-13` after 5 to 11 later edits | The date says "reviewed", but the text changed. The age check cannot work if the date does not move | Justin to decide what `last-reviewed` means after an edit. Then set a rule | no |

### H1

Record: [[MOC-20261115-002 Building AI agents]]. The Disputes and gaps list now holds 7 bullets from 4 different times. Quotations:
- "Two sources, both from vendors." The MOC now lists 6 sources.
- "The Brain has no newer source on this topic." The MOC itself lists sources dated 2025-09-29, 2026-03-08, and 2026-05-20.
- "Three sources are vendor articles (two from the same vendor)." There are 4 vendor sources: 3 from Anthropic (building agents, context engineering, Claude Code docs) and 1 from Udacity.
- "One source on this topic is not from a vendor (a survey preprint)." Two bullets later: "Two memory papers by different authors". There are 2 non-vendor preprints.
- Evidence: SRC-20261115-014 is labelled "For:", but [[CLM-20261115-008 Long context is not agent memory]] has this row from the same source: "qualifies". The MOC also says "Against: none yet."
- Topic summary: "the terms, the patterns, and the advice on when to use them". It does not cover context, memory, or product documentation, which are 3 of the 4 Concepts.
- Key concepts and Related MOCs: [[CON-20261115-001 Agent memory protocol for file-based memory]] is not linked, but 3 Concepts here link to it. The only related MOC is Knowledge bases.
- Shape: 8 records on three sub-topics (design, context, memory). Not a reason for a new MOC now. Watch for a split when a further source on memory arrives. Agent memory has 4 records (CON-20261115-001, -006, -007; CLM-20261115-008) in two MOCs.

### H2

Quotations: "Link written with the draft title. The Orchestrator sets the final name." in [[CLM-20261115-004 Simple structure helps AI tools read content correctly]] (2 times), [[CLM-20261115-005 Start with the simplest agent design]], [[CLM-20261115-006 Agent autonomy raises cost and error risk]], [[CON-20261115-002 Design content for AI readers]]; "draft title. The Orchestrator sets the final name." in [[CON-20261115-003 Workflows and agents]] (2 times). Each link works (Link Check 0 problems).

### H3

The characters appear in [[CLM-20261115-001 Search plain files first, then add indexes]] (Karpathy row), [[CLM-20261115-008 Long context is not agent memory]] (Jiang row), [[CON-20261113-003 AI-maintained wiki over files]], [[CON-20261113-004 Set up an AI-maintained wiki]], [[CON-20261115-006 Agent memory]]. A search of the whole area found the same error in [[CO-20261115-016 LLM Wiki, Karpathy]], which is where it probably started. Example: "· E11 · § Indexing and logging".

### H4

Quotation: `kind: definition` in the frontmatter of [[CON-20261115-003 Workflows and agents]], [[CON-20261115-005 Context engineering]], [[CON-20261115-006 Agent memory]], [[CON-20261115-007 Claude Code instructions and memory]]. Schema §5.10: "`concept`, `process`". Note that these four have a "Steps: None." section, so `concept` is the likely value. Justin can instead add `definition` to the Schema.

### H5

Times (system values in the files):
- CO-20261115-012: `decided: 2026-11-15T22:14`, `applied: 2026-11-15T22:12`. [[MOC-20261115-001 Content for AI readers]] `created: 2026-11-15T22:12`.
- CO-20261115-015 to -020: `decided` and `applied` 23:58. [[CON-20261115-004 Johnny.Decimal folder system]], [[MOC-20261115-003 Organising files with numbered folders]], [[CON-20261115-005 Context engineering]], [[CON-20261115-006 Agent memory]], [[CON-20261115-007 Claude Code instructions and memory]], [[CLM-20261115-007 Longer context can lower model performance]], and [[CLM-20261115-008 Long context is not agent memory]] are stamped 23:55 to 23:57. [[CLM-20261115-001 Search plain files first, then add indexes]], [[CON-20261113-003 AI-maintained wiki over files]], and [[MOC-20261113-002 AI-maintained knowledge bases]] have `updated: 23:56`, and CO-20261115-016 is 23:58.
- Other timestamps are consistent (for example CO-20261115-009 applied 20:08, and records `updated` 20:08).
- Other `change-orders` lists and `updated` times looked right. `created-by` differs between records of the same batch (`orchestrator` and `managing-editor`). This is a note only.

### H6

All supporting sources, by Claim:
- [[CLM-20261115-001 Search plain files first, then add indexes]]: Wall (a publisher that sells a related product). Karpathy only qualifies.
- [[CLM-20261115-002 Git history alone is not a full backup]]: Wall, one sentence: "Git is not automatically a complete backup."
- [[CLM-20261115-003 Text formats with direct access are easier for AI to read]]: Nava (nonprofit toolkit) and Mintlify (vendor, indirect). Most rows are unchecked summaries.
- [[CLM-20261115-004 Simple structure helps AI tools read content correctly]]: Mintlify only. E1, E2, and E4 have the locator "unavailable".
- [[CLM-20261115-005 Start with the simplest agent design]]: Anthropic and Udacity, both vendors. The Udacity rows are unchecked.
- [[CLM-20261115-006 Agent autonomy raises cost and error risk]]: Anthropic, one sentence.
- [[CLM-20261115-007 Longer context can lower model performance]]: Anthropic only. "Studies ... have uncovered the concept of context rot" names no study.
- [[CLM-20261115-008 Long context is not agent memory]]: Du (one-author preprint, version 1, no sign of peer review). Jiang qualifies.
- [[CLM-20261113-001 Lasting notes belong in open files]]: the only Claim with an institutional source, but those rows are indirect.

Concepts that rest on one vendor only: [[CON-20261115-005 Context engineering]], [[CON-20261115-007 Claude Code instructions and memory]], [[CON-20261115-004 Johnny.Decimal folder system]] (the publisher of the system itself).

### H7

- [[CON-20261115-002 Design content for AI readers]] step 9 ("hidden or interactive parts, such as tabs and collapsibles") states the claim of [[CLM-20261115-004 Simple structure helps AI tools read content correctly]] ("not hidden or interactive parts such as tabs and collapsibles"). The Concept does not link the Claim, and the Claim's frontmatter has `related: []`.
- [[CLM-20261115-005 Start with the simplest agent design]] and [[CLM-20261115-006 Agent autonomy raises cost and error risk]]: one article; the second gives the reason for the first. They are different statements, so no merge is advised. They need a typed link.
- [[CON-20261115-006 Agent memory]] holds findings with figures ("SimpleMem 1.20% to 4.82%") that are claim-like. The table cells are unchecked. This is a Concept, so no Claim is made. Do not move it to a Claim before the cells are checked.
- Not an overlap: [[CLM-20261115-003 Text formats with direct access are easier for AI to read]] (file format) and [[CLM-20261115-004 Simple structure helps AI tools read content correctly]] (structure inside a document). They are different statements, and the Relationships section says so.

### H8

Question 5 of the request. [[CON-20261115-004 Johnny.Decimal folder system]] never says that `.11` is the source's example. The only mention is this caveat: "It does not explain why IDs start at `.11`". That can be read as a rule of the system. The Source note says: "Example: IDs start at `.11`." (SRC-20261115-012, §7 and §8, from the example of `life admin`). The Concept does not say what ORION does, which is right for a Concept: the vault reserves `.11` to `.19` (root `CLAUDE.md` §1.1a). A reader who compares the two can think that ORION breaks the source's rule. Also wrong: "an ID folder holds no more than 100 IDs in a category". The source says: "A category holds no more than 100 IDs." (a category holds IDs, not an ID folder). The later "Limits" bullet is correct.

### H9

Question 3 of the request, MOC-20261115-003. Agent file §5: "Do not propose a MOC for one or two records." This MOC has one Concept, no Claim, no process, and one source. Key concepts and Evidence are filled; Important claims and Processes say "None yet". It is not wrong, and the topic is distinct from durability. The cost is a MOC with one link, and a Research Question that is not in the list (H10). The agent file has no rule to remove a MOC that is below the threshold. Justin decides.

The other three MOCs (question 3): MOC-20261113-002 holds 4 records, MOC-20261115-001 holds exactly 3 (2 Claims, 1 Concept), and MOC-20261115-002 holds 8. All meet the threshold. MOC-20261115-001 and MOC-20261115-002 each have one weak spot (H1, H12). No MOC overlaps another MOC in the topic. The agent topic is spread over two MOCs (H1, memory).

### H10

[[Research Questions]] has 5 rows (all `open`). Not in the list: the 4 questions in [[MOC-20261115-002 Building AI agents]] (simplest design across models; context rot in current models; long context versus a memory system; memory systems against a full-context baseline) and the 1 question in [[MOC-20261115-003 Organising files with numbered folders]] (do numbered folders help find files faster). The Orchestrator adds rows without a Change Order (Schema §2.5).

### H11

- [[CLM-20261115-005 Start with the simplest agent design]] and [[CLM-20261115-006 Agent autonomy raises cost and error risk]]: `related: []`, but the text says "(related)" and links the other Claim.
- [[CLM-20261115-004 Simple structure helps AI tools read content correctly]]: `related: []`; the Relationships section links CLM-20261115-003 and CON-20261115-002 as "(related)".
- [[CLM-20261115-007 Longer context can lower model performance]] links CLM-20261115-006 with the reason "another one-source caution on agent design". That is a shared topic, not a reason. The Claims that fit are [[CLM-20261115-008 Long context is not agent memory]] (both are about context length) and [[CON-20261115-005 Context engineering]]. CLM-20261115-007 and CLM-20261115-008 do not link each other. CLM-20261115-008 does not mention the Anthropic context-rot claim.
- [[CLM-20261115-008 Long context is not agent memory]]: `related: []`; the second paper SRC-20261115-014 is in Context and conditions, not in Relationships.

### H12

- [[CLM-20261113-001 Lasting notes belong in open files]] cites Nava as "supports (indirect)" (4th opinion source). [[MOC-20261113-001 Note durability]] does not list Nava in "Evidence for and against", and its claim line does not mention it. Checklist item 4.
- [[CLM-20261115-001 Search plain files first, then add indexes]] has a `qualifies` row for Karpathy: "An `index.md` catalog that the LLM reads first works at about 100 sources". [[MOC-20261113-002 AI-maintained knowledge bases]] lists Karpathy as "Describes" and its Disputes and gaps list does not show this difference (it says only "does not close the gap on evidence"). Checklist item 7.

### H13

[[CLM-20261113-001 Lasting notes belong in open files]] lists 11 Change Orders and has `last-reviewed: 2026-11-13`; `updated: 2026-11-15T22:08`. The same is true for CON-20261113-001 (5 COs), -002 (5), -003 (5), -004 (7), MOC-20261113-001 (12), and MOC-20261113-002 (10). The Concepts of 2026-11-15 have `last-reviewed` equal to `created`.

## 6. MOC review

| Item | MOC-20261113-001 Note durability | MOC-20261113-002 AI-maintained knowledge bases | MOC-20261115-001 Content for AI readers | MOC-20261115-002 Building AI agents | MOC-20261115-003 Numbered folders |
|---|---|---|---|---|---|
| 1 Topic summary | pass | pass | pass | gap: no context, memory, or product documentation (H1) | pass |
| 2 Concepts and Claims linked | pass | pass | pass | pass | pass |
| 3 Processes linked | pass | pass | pass | gap: CON-20261115-001 (process) is in the other MOC only; "None yet" here | not applicable: no process |
| 4 Evidence for and against, same weight | gap: Nava omitted (H12) | pass | pass | gap: SRC-20261115-014 labelled "For" but qualifies CLM-008 (H1) | pass |
| 5 Related MOCs | pass; gap: no link to MOC-20261115-003 (small) | pass | pass | pass (1 related MOC) | pass |
| 6 Open Research Questions listed | pass (2, both in the list) | pass (2, both in the list) | pass (1, in the list) | gap: 4 questions, none in the list (H10) | gap: 1 question, not in the list (H10) |
| 7 Disputes and gaps shown | pass | gap: Karpathy difference not shown (H12) | pass | gap: lines contradict each other (H1) | pass |
| 8 Status of claims that are not `accepted` | not applicable: all `accepted` | not applicable | not applicable | not applicable | not applicable |
| 9 Reason for each interpretive link | pass | pass | pass | pass | pass |

Coverage: 20 of 20 Claims and Concepts are linked from at least one MOC. New MOC: none proposed. No topic with 3 or more uncovered records.

Question 4 of the request: MOC-20261115-002 was edited by CO-013, -014, -017, -018, -019, and -020. It reads well in the Key concepts, Important claims, and Evidence sections. The Disputes and gaps list is the problem (H1). The list has no exact duplicate line, but it has 4 lines that disagree with the current content.

## 7. Impact

Not applicable.

## 8. Confidence and limits

- I read each Brain record and `Research Questions.md` in full, the 20 Change Orders of 2026-11-15 (frontmatter: `affected`, `decided`, `applied`), and part of one Source note (SRC-20261115-012). I did not read the other Source notes, Briefs, or the rest of the Change Order bodies. So I did not check if each Evidence row matches the Brief row that it cites, except for the `.11` text (H8). Rows marked "unchecked" in the records stay unchecked.
- I did not check the `change-orders` lists of CO-20261113-001 to -008 against their `affected` lists.
- I did not check the length of each quotation in Evidence rows (15 words or fewer). I did not check any URL. I have no web tool.
- I did not find Charter or Spectrum content in the records that I read.
- Measures for "one source only" count supporting sources. A different reading (all sources, qualifying included) gives 4 of 9 (CLM-20261115-002, -004, -006, -007).
- The request said 7 Claims. I count 9 (CLM-20261113-001 and CLM-20261115-001 to -008).
- No finding changes `status`, `confidence`, or `evidence-strength`. Those fields look right for the evidence read: `low` and `weak` match one-source or opinion evidence. No field value is unsupported.
- Point 2 of the request (vendor-only evidence) is H6. Point 1 (size and shape) is in §1 and H6, H7. Point 3 is H9. Point 4 is H1. Point 5 is H8. Point 6 is H5 and H13.

## 9. Decision (Orchestrator note, 2026-11-16T00:10)

Justin: "Yes I agree with those fixes. Keep the MOC for now. It will get built out." Approved for a Change Order: H1, H2, H4, H7, H8 (and H3, which the Orchestrator had already fixed as an encoding error of its own apply). H9: keep MOC-20261115-003, no change. H5, H6, H10, H11, H12, H13: not approved now; they stay as report items.
