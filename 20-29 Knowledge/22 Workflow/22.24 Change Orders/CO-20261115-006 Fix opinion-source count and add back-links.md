---
id: CO-20261115-006
type: change-order
title: "Fix the opinion-source count and add back-links (KHR-20261115-004 H1, H2)"
status: open
created: 2026-11-15T18:51
updated: 2026-11-15T18:51
created-by: managing-editor
schema-version: "0.11"
assessment:
source:
brain-version: CO-20261115-005
change-types:
  - refine
  - relate
affected:
  - "[[CLM-20261113-001 Lasting notes belong in open files]]"
  - "[[MOC-20261113-001 Note durability]]"
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
  - "[[CON-20261113-004 Set up an AI-maintained wiki]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

This Change Order comes from the Knowledge Health Report [[KHR-20261115-004 Impact review of CO-20261115-004]], findings H1 and H2 (approved by Justin). H1: two dispute texts still say "Two opinion sources", but the same records now list three supporting opinion sources (Ango, Sivers, Wall) and one qualifying opinion source (Bologov). X1 and X2 correct the count and keep the statement that independence is not shown. H2: CON-003 and CON-004 have no link back to the three new records of CO-20261115-004. X3 and X4 add only the links that have one reason each. No claim, confidence value, or evidence strength changes.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | refine | [[CLM-20261113-001 Lasting notes belong in open files]] | Replace the first "Disputes and caveats" bullet: name the three supporting opinion sources and drop the wrong clause on the Ango Brief. |
| X2 | refine | [[MOC-20261113-001 Note durability]] | Replace the first "Disputes and gaps" bullet: name three supporting opinion sources and one qualifying source. Keep the rest. |
| X3 | relate | [[CON-20261113-003 AI-maintained wiki over files]] | Add links to CLM-20261115-001 and CON-20261115-001 (body and `related`). |
| X4 | relate | [[CON-20261113-004 Set up an AI-maintained wiki]] | Add a link to CON-20261115-001 (body and `related`). |

### X1

- Current state: In "Disputes and caveats", the first bullet reads: "Two opinion sources. Ango leads Obsidian, so the principle supports his product. The Brief gives no information on the author's interests, so it does not show that the two authors are independent." The last bullet of the section names Wall as the "Third opinion source". The Bologov bullet counts one qualifying opinion source.
- Proposed state: Replace that first bullet with exactly this text. Change nothing else in the record. "- Three opinion sources support the claim: Ango (BRF-20261113-001), Sivers (BRF-20261113-003), and Wall (BRF-20261115-002). One more opinion source, Bologov (BRF-20261113-005), qualifies its conditions (see below). Ango leads Obsidian, so the principle supports his product (BRF-20261113-001 states this conflict of interest). The publisher of Wall sells a related product (see the Wall bullet below). The Brain does not show that these authors are independent of each other."
- Evidence: Brain record only. The Ango and Wall interest facts are already in this record and in the two Briefs (BRF-20261113-001 conflict-of-interest line; BRF-20261115-002 objectivity 2 of 5). No new source fact.
- Reason: KHR-20261115-004 H1. The bullet says two sources. The evidence list of the same record has three supporting opinion sources and one qualifying source. The old clause "The Brief gives no information on the author's interests" is not correct for Ango: BRF-20261113-001 states the conflict of interest (the Orchestrator confirmed this on line 75 of the Brief). The new text keeps the independence caveat.

### X2

- Current state: In "Disputes and gaps", the first bullet starts: "Two opinion sources, no data. Their independence is not shown. Two institutional sources give format lists with no reasons and no data." The rest of the bullet is: "NARA supports the direction of the claim, but not its reasons. LoC (BRF-20261113-006) supports the encoding condition, but ranks plain text below structured formats. The two institutions do not rank plain text the same way. Look for a source with data or reasons on how long file formats stay readable." The "Important claims" line in the same MOC says "three opinion sources, one of them partly promotional".
- Proposed state: Replace only the first two sentences with this text. Keep the rest of the bullet word for word. "Three opinion sources support the claim, with no data: Ango, Sivers, and Wall. Ango leads Obsidian, and the publisher of Wall sells a related product. The Brain does not show that the authors are independent of each other. One more opinion source, Bologov, qualifies the conditions of the claim (see the next bullet)." The bullet then continues: "Two institutional sources give format lists with no reasons and no data. NARA supports ..." (unchanged).
- Evidence: Brain record only. The text uses the Brain records CLM-20261113-001 (Evidence and Disputes sections) and this MOC's "Evidence for and against" section.
- Reason: KHR-20261115-004 H1. The same MOC says "three opinion sources" in "Important claims" and lists Ango, Sivers and Wall as "For" in "Evidence for and against". The dispute bullet says two. X2 matches the count to the MOC's own lists.

### X3

- Current state: CON-003 has `related` in frontmatter with one entry: CON-20261113-004. Its "Related claims" section has one bullet: "[[CON-20261113-004 Set up an AI-maintained wiki|Set up an AI-maintained wiki]]: the setup steps for this method." It has no link to CLM-20261115-001 or CON-20261115-001. CLM-20261115-001 lists CON-003 under `concepts`. CON-20261115-001 lists CON-003 in `related`.
- Proposed state:
  1. In frontmatter, change `related` to two entries: `"[[CON-20261113-004 Set up an AI-maintained wiki]]"` and `"[[CON-20261115-001 Agent memory protocol for file-based memory]]"`.
  2. In "Related claims", add two bullets after the existing bullet: "- [[CLM-20261115-001 Search plain files first, then add indexes|Search plain files first, then add indexes]]: this method builds an index (a map) over plain files. That claim says when an index is needed at all. A link, not a dependency." and "- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: also an agent that reads a map first. There the map is part of a written protocol. A link, not a dependency."
  The two new bullets use the existing "Related claims" list, where CON-004 (a Concept) is already listed. No new section. No link to CLM-20261115-002 (see Reason).
- Evidence: Brain record only. The reasons come from CLM-20261115-001 "Relationships" and CON-20261115-001 "Related concepts". Both already state them.
- Reason: KHR-20261115-004 H2. Each link has one reason and is already stated in the target record, so the link works in both directions. CLM-20261115-002 (Git is not a full backup) gets no link. It is about recovery after loss. Neither CON-003 nor CLM-20261115-002 states a relation, and CLM-002 links only CLM-20261113-001. A link there would have no reason from the Brain.

### X4

- Current state: CON-004 has `related` with two entries: CON-20261113-003 and CON-20261113-002. Its "Related claims" section has two bullets (CON-003 and CON-002). It has no link to CON-20261115-001. CON-20261115-001 lists CON-004 in `related`. CON-004 and CON-20261115-001 both cite BRF-20261115-002 E6 (§ Give the agent a memory protocol). CON-004 already describes that Wall write-boundary option in its "Explanation" caveats.
- Proposed state:
  1. In frontmatter, change `related` to three entries: `"[[CON-20261113-003 AI-maintained wiki over files]]"`, `"[[CON-20261113-002 Work with plain-text notes]]"`, and `"[[CON-20261115-001 Agent memory protocol for file-based memory]]"`.
  2. In "Related claims", add one bullet after the existing two: "- [[CON-20261115-001 Agent memory protocol for file-based memory|Agent memory protocol for file-based memory]]: a set of rules for how an agent reads and writes a file-based memory, from the same Wall source. It includes the write boundary named in the Explanation. This setup is a prompt, not a protocol. A link, not a dependency."
  No link to CLM-20261115-001 or CLM-20261115-002 (see Reason).
- Evidence: Brain record only. CON-004 "Explanation" (Wall bullet) and "Sources" (BRF-20261115-002 E6) and CON-20261115-001 "Sources" (same E6) are the basis.
- Reason: KHR-20261115-004 H2. The one reason is the shared Wall rules (E6). CLM-20261115-001 needs no link from CON-004. It links only CON-003, and the index idea is covered by the X3 link. CLM-20261115-002 has no relation to the setup prompt. The Curator listed CON-004 as needing links to the new records. Only CON-20261115-001 is justified. The Editor did not review this link. CO-20261115-005 changed CON-004 after KHR-20261115-004, but the new link does not depend on that change.

## 3. Impact

Direct effects:
- CLM-20261113-001 and MOC-20261113-001: one bullet each changes. The count and the independence caveat agree with the rest of each record.
- CON-20261113-003 and CON-20261113-004: `related` and the "Related claims" lists gain links. A reader of either record finds CON-20261115-001. A reader of CON-003 also finds CLM-20261115-001.
- No change to `status`, `confidence`, `evidence-strength`, or any claim text. No Evidence row changes.

Possible downstream effects:
- Possible: the `updated` and `change-orders` fields of the four records need the new Change Order ID. The Orchestrator does this at apply.
- Possible: Link Check counts new links, so the new targets must exist. All three targets exist now.

## 4. Risks and limits

- Risk if no action is taken: a reader sees "two" and "three" opinion sources in one record. The Ango clause that the Brief gives no information on his interests stays wrong. CON-003 and CON-004 stay one-way: readers do not find the memory-protocol concept or the search-first claim.
- Limit: X1 and X2 do not add the Okhlopkov source (BRF-20261115-001). It is a source for CON-004, CON-20261115-001 and MOC-002, not for CLM-001 or MOC-001. It does not change the count of opinion sources in those two records.
- Limit: the Brain does not show whether Sivers has an interest in the claim. The new text says only that independence between the authors is not shown.
- Limit: the Managing Editor did not read the Source pages. Both X1 and X2 use only text already in the Brain and the two Briefs.
- Limit: the `source` field is empty because no single source applies (Schema §5.8, health report mode).
- Related finding not in this Change Order: KHR-20261115-005 H1 (a "One source" count beside "second source" in CON-20261115-001, CON-004 and MOC-002) and H2 (the unchecked evidence is not marked in the caveat bullets). These touch CON-004, CON-20261115-001 and MOC-002. They are for a separate Change Order after this one is decided.

## 5. Priority

`low`. Text and link clean-up only. Nothing in the content of any claim changes. Delay has little risk, since the records are readable. The only harm of delay is a wrong count and a one-way link. The scope is four records.

## 6. Decision required

Justin: approve, change, or reject each row. The rows can be decided one by one.
- X1: replace the first "Disputes and caveats" bullet in CLM-20261113-001 with the text above?
- X2: replace the first two sentences of the first "Disputes and gaps" bullet in MOC-20261113-001 with the text above?
- X3: add the CLM-20261115-001 and CON-20261115-001 links to CON-20261113-003?
- X4: add the CON-20261115-001 link to CON-20261113-004?

## 7. Decision record

## 8. Implementation record
