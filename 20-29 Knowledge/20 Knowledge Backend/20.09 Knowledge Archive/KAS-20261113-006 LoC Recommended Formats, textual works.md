---
id: KAS-20261113-006
type: knowledge-assessment
title: "LoC Recommended Formats, textual works"
status: validated
created: 2026-11-13T14:10
updated: 2026-11-13T14:20
created-by: editor
schema-version: "0.9"
source: "[[SRC-20261113-008 LoC Recommended Formats, textual works]]"
brief: "[[BRF-20261113-006 LoC Recommended Formats, textual works]]"
brain-version: CO-20261113-006
relevance: medium
recommended-action: advance
---

## 1. Summary of relevance

The Library of Congress (LoC) section on textual works is a second institutional source next to NARA. It adds to the encoding condition of [[CLM-20261113-001 Lasting notes belong in open files|lasting notes belong in open files]]: LoC prefers UTF-8, UTF-16 (with BOM), and US-ASCII. It also qualifies the claim. LoC places plain text below structured formats (XML with schema, EPUB3, PDF/A, PDF/UA), which NARA does not do. It adds one new condition: no DRM or encryption that restricts access. LoC gives no reasons and no durability data, so the source does not make the evidence for the claim stronger.

## 2. Brain records reviewed

The Brain has four notes. I read all four in full. `21 Brain\Research Questions.md` does not exist.

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]]
- [[CON-20261113-001 File over app|File over app]]
- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]]
- [[MOC-20261113-001 Note durability|Note durability]]

The Brain context is complete. I also searched `21 Brain` for "Library of Congress", "PDF/A", "EPUB", "UTF", "DRM", "encrypt", "XML", and "metadata". Only the four notes above matched.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C6 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | The claim's "Condition for plain text" says that the character encoding must be known, and it cites NARA's preferred list: ASCII 7-bit, UTF-8, UTF-16. LoC (E8, direct, quote checked) prefers UTF-8, UTF-16 (with BOM), and US-ASCII. This is nearly the same set. The difference is that LoC adds "with BOM" for UTF-16. Its preferred XML entry also asks for a "stated character encoding" (E11, summary). So a second institution independently names the same encodings. Limits: the scope is deposits to the LoC collection, not personal notes. LoC gives no reasons. The section has no date. This support is indirect, as for NARA. It confirms the encoding list, not the reasons for the claim. |
| A2 | C8, C7 | qualifies | [[CLM-20261113-001 Lasting notes belong in open files]] | The claim names plain text as an example of an open, readable format. The Brain's institutional support is NARA, which prefers plain text. LoC places plain text, RTF, and proprietary word-processing formats below its preferred formats (E12, E13). Its preferred list has structured formats with a schema or a standard: XML with DTD/schema, EPUB3, TEI/DocBook, PDF/UA, PDF/A, and high-quality PDF (E9 to E11). This is not a contradiction. The claim does not say that plain text is the best format, and LoC does not say that plain text fails to last. The difference is one of scope and conditions: LoC deals with published textual works for a national collection, the claim with personal notes. LoC gives no reasons. The Brief warns that some preferences reflect collection value, not durability. The finding weakens one reading of the evidence: institutions do not all rank plain text first, so NARA's ranking is not a general institutional view. It agrees with the existing caveat that "openness alone possibly does not explain its ranking". Confidence is medium. The tool could not clearly separate the Preferred and Acceptable columns (E11, E12), and the position of "Plain text" comes from the tool, not from the quote check. |
| A3 | C7 | extends | [[CON-20261113-001 File over app]] | The Concept separates the storage layer from the subtype (markup) layer, and says that a file can be open at the storage layer and still depend on tools at the subtype layer (Bologov's view). LoC's preferred XML entry asks for an included or accessible DTD/schema and stylesheets (E11). This is an institutional example of a rule about the markup layer: the definition of the markup must come with the file. This is my interpretation of the connection. LoC does not state this reason, and E11 is a summary with uncertain column placement. Weak. |
| A4 | C9 | extends | [[CLM-20261113-001 Lasting notes belong in open files]] | The claim says that files must be "controlled by the owner" and not depend on one app. LoC states that digital files must contain no DRM or encryption that restricts access or use (E14, direct, quote checked; the end of the sentence comes from a tool summary). This adds a condition that the claim does not state: no access-restricting measures in the file. The evidence is direct for what LoC requires. LoC gives no reason. The rule is for deposits to an institution, so the Brief does not show that it applies to personal notes. Its use for personal notes is an extension. |
| A5 | C11, C12 | research-gap | [[MOC-20261113-001 Note durability]] | The MOC gap says that no source tests whether notes with links and metadata stay usable when only the file survives. The Brain's "Condition for notes with links and metadata" (CLM-20261113-001, Bologov) says that metadata inside a plain-text file makes it non-standard. LoC asks for standards-based metadata for digital works (ONIX, XMP, MODS, METS, MARCXML; E17), and for print metadata as shown on the item (E16). This shows that one institution expects metadata in a named standard. It does not say anything about metadata inside personal notes (for example YAML), and it gives no reasons. E16 and E17 come from tool summaries only. The gap stays open. |
| A6 | — | research-gap | [[MOC-20261113-001 Note durability]] | The MOC asks for "a source with data or reasons on how long file formats stay readable". This source does not supply it. The Brief (§10, §11) states that the section gives preferences, not reasons, and no durability data. Source quality is high only as a primary source for what LoC prefers. So the source does not change the claim's `weak` evidence strength or the open question on future readability. |
| A7 | C1, C2, C3, C4, C5, C10, C13, C14 | new | — | These candidates are about print (paper, printing, binding, completeness, rarity) and electronic serials (JATS, completeness). Each can stand as a factual claim about LoC's stated preferences, and the evidence is direct (C1, C3, C4, C10 high confidence). No Brain record covers print or serials. The MOC topic is digital note durability. C2 (LoC can preserve paper that does not meet the archival standard) has no evidence given for it. C14 is about collection value, not durability. Listed for completeness. I do not recommend these for the Brain now. |

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 3 | The encoding list repeats NARA (A1). The lower rank for plain text (A2) and the DRM condition (A4) are new to the Brain. |
| Significance | 3 | A2 changes how the institutional evidence is read: two institutions do not rank plain text the same way. It does not change the direction of the claim. No reasons or data are added (A6). |
| Applicability | 3 | The encoding list and the no-DRM condition apply directly to ORION's Markdown files. The format ranking is for published works in a national collection, so its use for personal notes is indirect. |
| Relevance to the Brain | 3 | It relates to the one Brain Claim, its conditions, and one Concept. The print and serial content (A7) is outside the Brain's topic. |

Overall relevance: `medium`.

## 5. Recommended action

`advance`. Findings A1, A2, and A4 are possibly reasons to change [[CLM-20261113-001 Lasting notes belong in open files|lasting notes belong in open files]] and [[MOC-20261113-001 Note durability|note durability]]:

- A1 adds a second institutional source to the encoding condition.
- A2 qualifies the institutional support for plain text. Not including it would hide a finding that weakens the evidence.
- A4 adds a condition on access-restricting measures.

A3 and A5 are weak. They can go in as context, at the Managing Editor's judgment. A6 confirms that the existing MOC gap stays open and that the evidence strength stays `weak`. A7 is out of scope.

Before a Change Order relies on A2, the Orchestrator can check the position of "Plain text" and the other C8 items (Preferred or Acceptable column) against the raw page. The quote check confirmed the words, not the column.

No new research question is needed. The open questions in the MOC already cover A5 and A6.

## 6. Confidence and limits

- The Brief is the only view of the source. The Orchestrator checked all 11 quotes and 19 heading locators. The column split in the digital formats list (E11, E12) and rows E16 to E19 come from tool summaries only. A2, A3, and A5 depend on these rows.
- The source has no date. The current status of the LoC preferences is not known.
- The LoC scope (deposits of published textual works to a national collection) differs from the Brain's scope (personal notes). Each link to personal notes is an extension, and the findings say so.
- No finding is `contradicts`. A2 differs in scope and conditions. It is not a statement that cannot be true at the same time as the claim.

Final check:
1. Each finding has a Claim Candidate label (or `—`), a type, and an explanation: yes (A1 to A7).
2. Each finding of type `supports`, `qualifies`, `extends`, or `research-gap` links to a Brain record: yes (A1 to A6). A7 is `new` with no related record.
3. Each `contradicts` passes the rule: none used. The scope and condition difference for A2 is named.
4. §2 lists every Brain record that I read: yes (4 of 4; `Research Questions.md` does not exist).
5. `brain-version` equals the version from the Orchestrator: yes, `CO-20261113-006`.
6. The recommended action has a reason: yes (`advance`, A1, A2, A4).

## Orchestrator validation note

2026-11-13T14:20. Column check against the raw page HTML (asked for in §5): the digital "B. Formats" row has two cells under the headers "Preferred" and "Acceptable". The Preferred cell has XML-based markup (with EPUB3 and other book DTDs as sub-items) and page-layout formats (PDF/UA, PDF/A, PDF of the highest quality). The Acceptable cell has "Other structured or markup formats in order of preference", a list of 6 numbered items. "Plain text" is a sub-item of item 6, "Other formats", with RTF and proprietary word-processing formats. The column placement in E11, E12, and E13 is confirmed. The list has 6 numbered items, not 8 as Brief §5 reported. No claim depends on that number.
