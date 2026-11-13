---
id: KHR-20261113-001
type: knowledge-health-report
title: Brain maintenance review
status: validated
created: 2026-11-13T17:10
updated: 2026-11-13T17:10
created-by: curator
schema-version: "0.10"
mode: maintenance
brain-version: CO-20261113-007
scope: all
trigger:
link-check: "Records checked: 4. Files checked: 4. Problems: 0."
change-orders: []
---

## 1. Summary

The Brain has four records: one Brain Claim, two Concepts (one is a process), and one MOC. All of them are on the topic of note durability. The structure is sound. There are no broken links and no orphans, each record is linked from the MOC, and each record links each Change Order that changed it. The main findings are content and navigation gaps. The process Concept is not related to the claim that it serves (H1). The Concept states a durability point without the limits that the claim records (H2). The `confidence: medium` value has no stated basis beside `evidence-strength: weak` (H3). The MOC has a research-question reference that a reader cannot follow (H4).

## 2. Brain records reviewed

- [[CLM-20261113-001 Lasting notes belong in open files]]
- [[CON-20261113-001 File over app]]
- [[CON-20261113-002 Work with plain-text notes]]
- [[MOC-20261113-001 Note durability]]

`21 Brain\Research Questions.md` does not exist. Schema §2.5 says that the Orchestrator makes it at the first `investigate` result, so its absence is not a problem.

The review was complete for the four records. To check the evidence, I read these Briefs: BRF-20261113-006 in full, and the evidence and claim rows of BRF-20261113-001, -002, -003 and -005. I also read the frontmatter of the seven Change Orders, and parts of the body of CO-20261113-007.

## 3. Link Check result

The output was "Records checked: 4. Files checked: 4. Problems: 0." There is no problem to give a verdict on.

I did a manual check of the `BACKLINK` and `CO-STATE` items against the Change Orders. The result agrees with the Link Check:
- CO-20261113-001 (it created CLM-001, CON-001 and MOC-001) is listed in all three records.
- CO-20261113-002 (it created CON-002; `affected` is CLM-001, CON-001 and MOC-001) is listed in all four records.
- CO-20261113-005 is listed in CLM-001 and MOC-001. CO-20261113-006 is listed in all four records. CO-20261113-007 is listed in CLM-001 and MOC-001. Each of these lists matches the `affected` field of the Change Order.
- CO-20261113-003 and CO-20261113-004 have the status `withdrawn`. No record lists them, which is correct.

The Brain version is correct. CO-20261113-007 has the newest `applied` time (2026-11-13T14:55). No Change Order has the status `draft`, `open` or `decided`, so no content is proposed.

## 4. Health measures

| Measure | Value | Meaning |
|---|---|---|
| Claims with no evidence | 0 of 1 | The one claim has 17 evidence rows. |
| Claims with one source only | 0 of 1 | CLM-001 cites five sources (Ango, Sivers, NARA, LoC, Bologov). But the direct support comes from opinion essays only. The two institutional sources are indirect, and they give no reasons. This is why `evidence-strength: weak` is correct. Separately, the steps of the process CON-002 come from one source (Sivers). |
| Disputed claims | 0 | No credible contrary evidence is recorded. The MOC says "Against: none yet." The LoC and Bologov sources qualify the claim. They do not contradict it. |
| Claims not reviewed in the target period | Not assessed | No target period is decided. The oldest `last-reviewed` date is 2026-11-13, which is the same for all four records. The Brain was made today. |
| Broken links | 0 | This agrees with the Link Check. Each link target that I followed exists. |
| Orphaned records | 0 | CLM-001 is linked from CON-001 and the MOC. CON-001 is linked from CLM-001, CON-002 and the MOC. CON-002 is linked from CON-001 and the MOC. But CON-002 has no link with CLM-001 (H1). |
| Duplicate concepts | 0 | CON-001 (the general principle) and CLM-001 (the principle applied to notes, with conditions) have different scopes. They overlap in part (H2), but they are not duplicates. |
| MOC coverage | 3 of 3 | Each Claim and Concept is linked from MOC-001. No new MOC is necessary, because no second topic has three or more records. |
| Open Research Questions | No list note; 2 open questions in the MOC | The MOC has 2 open questions. They are not tracked in a Research Questions list, because no list note exists yet. One of them has a source reference that a reader cannot follow (H4). |

## 5. Findings

| Label | Record | Problem | Why it matters | Recommended action | Approval |
|---|---|---|---|---|---|
| H1 | CLM-20261113-001, CON-20261113-002 | No typed link between the claim and the process, but both records cite the same qualification of metadata lines. | A reader of the claim does not find the method that applies it. A change to one record will not show the other as affected. | Add a relationship between CLM-001 and CON-002 (for example in the claim's `concepts` field), with a reason in the Relationships section. | yes |
| H2 | CON-20261113-001 | The Explanation states that open-format files stay readable, as a fact with no source. CLM-001 qualifies the same point. | Readers can take the Concept as settled knowledge and skip the limits and the `weak` evidence in the claim. | Give the statement a source, or point to CLM-001 for its evidence and limits. | yes |
| H3 | CLM-20261113-001 | `confidence: medium` with `evidence-strength: weak`. The record gives no reason for the confidence value. | Field values must agree with the record text (Schema §5.9). A reader cannot tell why the confidence is higher than the evidence. | Justin to confirm the value. Add a reason for it, or review it. | yes |
| H4 | MOC-20261113-001 | The open question cites "Brief C3" but does not name the Brief. | Four Briefs have a C3, and each one is different. A reader cannot follow the reference. | Name the Brief (BRF-20261113-001 C3 matches the text). | yes |
| H5 | CON-20261113-002 | The caveat "One source." stayed after CO-20261113-006 added a second Brief. | Readers can misread the evidence base. The steps come from one source, but a second source now qualifies step 2. | Clarify that the steps come from one source. | yes |
| H6 | CLM-20261113-001 | The body presents "that restrict access or use" as a statement of LoC. Those words come from a tool summary and were not checked. | One condition in the claim depends partly on text that nobody has checked against the source. | Orchestrator: check the full E14 sentence against the raw LoC page. If the words are not confirmed, give the result to the Managing Editor. | no |
| H7 | CON-20261113-001, CON-20261113-002 | The "Related claims" sections list Concepts as if they were claims. CON-002 lists no claim. | It confuses record types for readers and makes it harder to see the gap in H1. | Correct the entries, or show which entry is a Concept. Do this with H1. | yes |

### H1

- CON-002 step 2: "Put a few metadata lines at the top of each file". Its Sources section cites Bologov E2 as "qualifies step 2".
- CLM-001 Context: "Condition for notes with links and metadata". It cites the same Bologov E2.
- CLM-001 `concepts` lists only "[[CON-20261113-001 File over app]]". Its Relationships section has only the CON-001 line.
- Neither CON-002 nor CLM-001 links to the other. The two records connect only through CON-001 and the MOC.

### H2

- CON-001 Explanation: "A file in an open format, such as plain text, stays readable with many tools." The statement has no attribution.
- CLM-001 limits this point. It gives the encoding condition and the Markdown dialect limit ("possibly does not read the same in each tool"). It reports that LoC "lists plain text as acceptable only", and it says "Evidence strength stays `weak`".
- The other statements in the CON-001 Explanation are attributed ("A second source says", "Another source separates"). This sentence is not.

### H3

- CLM-001 frontmatter: `confidence: medium` and `evidence-strength: weak`.
- Disputes and caveats: "No source gives data." The text explains the `weak` value. No text explains the `medium` value.
- The two values do not clearly conflict, like the "high with weak" example in the agent rules. But the record does not support the higher value. This is for Justin to decide. I do not recommend a value.

### H4

- MOC Open research questions: "(Brief C3; not measured.)"
- BRF-20261113-001 C3: "Most digital artifacts today sit on servers, behind logins, or in proprietary formats". This matches the question.
- BRF-20261113-002, -003 and -005 each have a different C3: ODT, Sivers since 1990, and the two meanings of plaintext.

### H5

- CON-002 Caveats: "One source. Advice only, with no tests."
- The CON-002 Sources section lists two Briefs: BRF-20261113-003 (Sivers) and BRF-20261113-005 (Bologov, "qualifies step 2"). CO-20261113-006 added the Bologov line.
- The MOC wording "advice from one source, no tests" stays correct for the steps.

### H6

- CLM-001 Context: "LoC states that digital textual files must contain no measures ... that restrict access or use." In the record, the quoted part sits between single quotation marks.
- BRF-20261113-006 E14, Limits column: "The sentence continues past the quote. The tool summary says that the end of the sentence is about measures that restrict access or use."
- The CLM-001 evidence row tells the reader ("the end of the sentence comes from a tool summary"). CO-20261113-007 told Justin before he approved it. The body sentence gives the words to LoC with no flag. This is a check to do, not an error that I can show.

### H7

- CON-001 "Related claims" lists "[[CON-20261113-002 Work with plain-text notes|...]]", which is a process Concept, not a claim.
- CON-002 "Related claims" lists only "[[CON-20261113-001 File over app|File over app]]", which is a Concept. It lists no claim.

## 6. MOC review

MOC-20261113-001 Note durability:

| # | Check | Result | Reason |
|---|---|---|---|
| 1 | Topic summary explains the topic | pass | "How to keep notes readable and usable for many years: file formats, ownership..." |
| 2 | Links each Concept and Brain Claim on its topic | pass | It links CON-001 and CLM-001. |
| 3 | Links each process on its topic | pass | It links CON-002, with the note "advice from one source, no tests". |
| 4 | Evidence for and against, with the same weight as the claims | pass | It lists all five sources with their type and limits. The LoC and Bologov sources are marked "Qualifies". It says "Against: none yet". The LoC DRM condition is in the LoC line. |
| 5 | Links related MOCs | not applicable | Only one MOC exists. The section has one empty bullet. |
| 6 | Lists the open Research Questions | gap | It lists 2 questions. One has a reference that a reader cannot follow (H4). They cannot be checked against a Research Questions list, because no list note exists. |
| 7 | Shows each dispute and gap | pass | The "Disputes and gaps" section covers the lack of data, the independence question, the different NARA and LoC rankings, and the untested Markdown and metadata questions. |
| 8 | Shows the status of each claim that is not `accepted` | not applicable | All records are `accepted`. |
| 9 | Gives a reason for each interpretive link | pass, with a note | The links to the claim and the process have notes. The Key concepts link to CON-001 has no note. It is a topic link, not an interpretive one, so no reason is required. |

New MOC: none proposed. All three content records are on the topic of this MOC.

## 7. Impact

Not applicable.

## 8. Confidence and limits

- I did not read the Knowledge Assessments or the work log (they are outside my file list). CO-20261113-007 says that the Orchestrator confirmed the LoC column placement (E11 to E13, "Plain text" in the "Acceptable" cell) against the raw page. That note is in KAS-20261113-006, and I did not read it. The CLM-001 text "under 'Other formats'" depends on that check, and the Brief does not contain those words. I accept the check on the basis of the Change Order.
- I checked the evidence rows against the claim and evidence rows of the Briefs, not against the original sources. I did not check that quotations match the sources. That is the Orchestrator's quote check (rule 9a).
- I did not check that a Brief locator points to the correct place in its source.
- I could not judge if the review dates are old, because no target period is decided.
- I found no text in a record, Brief or Change Order that gives an instruction to an agent.
