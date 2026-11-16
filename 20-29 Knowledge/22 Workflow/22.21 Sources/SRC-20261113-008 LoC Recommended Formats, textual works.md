---
id: SRC-20261113-008
type: source
title: "Recommended Formats Statement - Textual Works"
status: done
created: 2026-11-13T13:35
updated: 2026-11-15T20:00
created-by: orchestrator
schema-version: "0.9"
url: https://www.loc.gov/preservation/resources/rfs/text.html
source-type: documentation
author:
publisher: Library of Congress
published:
captured: 2026-11-13T13:35
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: 'Phase 5 test O1 (KS-D-39). The Orchestrator proposed the source, and Justin approved it ("Approve all three"). Reason in the plan: the MOC asks for a source with reasons on format durability, and the Brain has none.'
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261113-007 LoC Recommended Formats, textual works]]"
source-quality: high
extraction-completeness: partial
extraction-confidence: medium
claim-count: 14
---

# Notes

Routing, 2026-11-13: duplicate check on `url` and title, no match. Access check: `curl` returned HTTP 200 with page text. Not work content. Level `full-review`. Scope: section "I. Textual Works" of the page.

# Reference Brief

Migrated from BRF-20261113-006.

## 1. Executive summary

Section I of the Library of Congress Recommended Formats Statement gives the Library's preferred and acceptable formats for textual works. It has three subsections: print, digital, and electronic serials. Each subsection lists preferences for characteristics such as paper, printing, binding, character encoding, file formats, completeness, metadata, and technological measures. The section states preferences. It does not give reasons for them, and it does not give durability data.

## 2. Central premise and author intent

The Library of Congress states which forms of a textual work it prefers to receive, and which forms it accepts. The page uses two labels, "Preferred" and "Acceptable". Some lists are "in order of preference". The section does not state the purpose of the statement or its audience. The page title ("Recommended Formats Statement") and the publisher's preservation path suggest a preservation and acquisition purpose. This is an inference, not a statement of the source.

## 3. Key takeaways

- Print: the Library prefers archival paper (ISO 11108:1996), offset lithography or inkjet with stable inks, and hard cover (library binding first) (C1, C3, C4).
- The Library states that it can preserve paper that does not meet the archival standard (C2).
- Digital text: the Library prefers UTF-8, UTF-16 (with BOM), or US-ASCII encoding, and XML-based markup, EPUB3, TEI/DocBook, PDF/UA, PDF/A, or high-quality PDF (C6, C7).
- RTF, plain text, and widely used proprietary word-processing formats are on the lower part of the digital list (C8).
- Digital files must not contain DRM or encryption that controls access to or prevents use of the digital work (C9).
- Electronic serials: content compliant with NISO JATS is preferred (C10).
- The Library wants complete works, with all components, updates, and supplements (C5, C13).

## 4. Facts and figures

- Standards that the section names: ISO 11108:1996 (archival paper), NISO Z39.78-2000 (library binding), ISO 19005 (PDF/A), ISO 14289-1 (PDF/UA), ANSI/NISO Z39.96-2015 (JATS), BITS version 2.0.
- Metadata standards that the section names for digital works: ONIX for Books, XMP, MODS, METS, MARCXML (from a tool summary).
- The fetched content shows no publication date and no revision date.

## 5. Methods and frameworks

- Two-tier structure: "Preferred" and "Acceptable" for each characteristic.
- Some lists have a rank ("in order of preference"). Examples: the print printing-process list. The tool reported that a digital "Other structured or markup formats" list is numbered 1 to 8 "in order of preference".
- The same set of headings repeats for the digital and serial subsections: A. Technical Characteristics, B. Formats, C. Rarity and Special Features, D. Completeness, E. Metadata, F. Technological Measures.

## 6. Concepts and definitions

- Archival quality paper: paper per ISO 11108:1996. The section does not define it further.
- Technological measures: in this section, measures such as DRM technologies or encryption that control access to or prevent use of the digital work.
- Completeness: the whole work, with all its components, updates, and supplements.
- The section gives no definition of "preferred" or "acceptable".

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | For print textual works, the Library of Congress states that it prefers archival quality paper per ISO 11108:1996. | normative | explicit | E1 | high |
| C2 | The Library of Congress states that it can still preserve paper that does not meet the archival paper standard. | factual | explicit | E2 | medium |
| C3 | For print, the Library of Congress prefers offset lithography and inkjet with stable pigment or dye-based inks, and rates xerography as acceptable. | normative | explicit | E3, E4 | high |
| C4 | For print, the Library of Congress prefers hard cover (library binding per NISO Z39.78-2000 first) and rates soft cover and unbound material as acceptable. | normative | explicit | E5, E6 | high |
| C5 | For print, the Library of Congress asks for the complete work, including all separately published components. | procedural | explicit | E7 | high |
| C6 | For digital textual works, the Library of Congress prefers UTF-8, UTF-16 (with BOM), or US-ASCII character encoding. | normative | explicit | E8 | high |
| C7 | For digital textual works, the Library of Congress prefers XML-based markup with DTD/schema and stylesheets, EPUB3, other widely used book DTDs (TEI, DocBook), PDF/UA, PDF/A, and highest-quality PDF. | normative | explicit | E9, E10, E11 | medium |
| C8 | For digital textual works, the Library of Congress places XHTML/HTML, XML document formats, SGML, BITS 2.0, web-optimized PDF, RTF, plain text, and widely used proprietary word-processing formats below its preferred formats. | normative | explicit | E12, E13 | medium |
| C9 | The Library of Congress states that digital textual files must contain no measures, such as DRM or encryption, that control access to or prevent use of the digital work. | procedural | explicit | E14 | high |
| C10 | For electronic serials, the Library of Congress prefers content compliant with NISO JATS (ANSI/NISO Z39.96-2015). | normative | explicit | E15 | high |
| C11 | For print, the Library of Congress asks for metadata such as title, creator, dates, place, publisher, and ISBN/ISSN, as shown on the item. | procedural | explicit | E16 | medium |
| C12 | For digital textual works, the Library of Congress asks for standards-based metadata, for example ONIX for Books, XMP, MODS, METS, or MARCXML. | procedural | explicit | E17 | medium |
| C13 | For electronic serials, the Library of Congress asks for all integral elements (for example articles, tables of contents, front and back matter), plus updates and supplements. | procedural | explicit | E18 | medium |
| C14 | For print, the Library of Congress prefers limited editions, editions with special features, and illustrated editions, with original color illustrations over black-and-white reproductions. | normative | explicit | E19 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Archival quality paper (ISO 11108: 1996 for Archival Paper)" | § i. Textual Works - Print (books, etc.), A. Paper | C1 | supports | direct | A preference only. No reason or durability data. Quote from WebFetch, not checked. |
| E2 | Quote: "can successfully be preserved by the Library of Congress" | § i. Textual Works - Print (books, etc.), A. Paper | C2 | supports | direct | Fragment. The tool reported that the subject is paper that does not meet the standard. The Orchestrator must check the full sentence. No evidence for the statement is given. |
| E3 | Summary: Under the preferred printing processes, the section lists "Lithography (offset printing press)" first, then inkjet with stable pigment or dye-based inks. | § i. Textual Works - Print (books, etc.), B. Printing Process, in order of preference | C3 | supports | direct | No reason given for the order. |
| E4 | Quote: "Xerography (Electrophotography)" | § i. Textual Works - Print (books, etc.), B. Printing Process, in order of preference | C3 | supports | direct | Tool placed it under "Acceptable". Column placement not checked against the raw page. |
| E5 | Quote: "Library binding (NISO Z39.78-2000)" | § i. Textual Works - Print (books, etc.), C. Binding and Packaging | C4 | supports | direct | Listed under "Hard cover" as the first preferred binding, per the tool. |
| E6 | Summary: The acceptable list has soft cover (sewn, glued only, spiral- or plastic-bound, stapled) and unbound material such as manuscripts and ring binders. | § i. Textual Works - Print (books, etc.), C. Binding and Packaging | C4 | supports | direct | No reason given. |
| E7 | Quote: "Complete work. For items published in a finite number of separate components" | § i. Textual Works - Print (books, etc.), E. Completeness | C5 | supports | direct | Sentence fragment. The rest of the item is not quoted. |
| E8 | Quote: "UTF-8, UTF-16 (with BOM), US-ASCII" | § ii. Textual Works - Digital, A. Technical Characteristics | C6 | supports | direct | A tool summary says ISO 8859 follows. Not checked. |
| E9 | Quote: "EPUB3-compliant." | § ii. Textual Works - Digital, B. Formats | C7 | supports | direct | A second tool call returned "Other versions of EPUB are also preferred formats". The exact EPUB wording is not certain. |
| E10 | Quote: "PDF/A (ISO 19005-compliant)" | § ii. Textual Works - Digital, B. Formats | C7 | supports | direct | Same text also reported for electronic serials. |
| E11 | Summary: The preferred list has XML-based markup with included or accessible DTD/schema, XSD/XSL stylesheets, and stated character encoding; EPUB3; other widely used book DTDs (TEI, DocBook); PDF/UA; PDF/A; and PDF of the highest quality available. | § ii. Textual Works - Digital, B. Formats | C7 | supports | direct | The tool said that the flattened page text does not clearly separate the "Preferred" and "Acceptable" columns. The split is the tool's reading of the layout. |
| E12 | Summary: The lower list has XHTML or HTML with DOCTYPE and stylesheets, publicly documented XML document formats (for example DOCX/OOXML, ODF), SGML with DTD, BITS 2.0, web-optimized PDF, RTF, plain text, and widely used proprietary word-processing formats. | § ii. Textual Works - Digital, B. Formats | C8 | supports | direct | Same column problem as E11. The tool also reported a ranked list, "in order of preference", numbered 1 to 8. Which items are in it is not confirmed. |
| E13 | Quote: "Plain text" | § ii. Textual Works - Digital, B. Formats | C8 | supports | direct | Two-word item. Its position in the list comes from the tool. |
| E14 | Quote: "Files must contain no measures (such as digital rights management [DRM] technologies or encryption)" | § ii. Textual Works - Digital, F. Technological Measures | C9 | supports | direct | The sentence continues past the quote. The Orchestrator checked the full sentence against the raw page on 2026-11-15. It ends "that control access to or prevent use of the digital work." The same sentence appears in the electronic serials section. |
| E15 | Quote: "Content compliant with the NISO JATS: Journal Article Tag Suite (ANSI/NISO Z39.96-2015)" | § iii. Textual Works - Electronic Serials, B. Formats | C10 | supports | direct | Quote from WebFetch, not checked. |
| E16 | Summary: The required metadata, as shown on the item, includes title, creator, dates, place, publisher, ISBN/ISSN, and contact information. The optional metadata includes other identifiers, edition, subjects, abstracts, and license or copyright status. | § i. Textual Works - Print (books, etc.), F. Metadata | C11 | supports | direct | From one tool summary only. The list of fields is possibly not complete. |
| E17 | Summary: The digital metadata must be standards-based (for example ONIX for Books, XMP, MODS, METS, MARCXML). It includes the core print items, plus language and other identifiers. The first item reads "As supported by format". | § ii. Textual Works - Digital, E. Metadata | C12 | supports | direct | From tool summaries. Not checked. |
| E18 | Summary: The Library asks for all integral elements of a serial, such as articles, tables of contents, and front and back matter, plus updates and supplements. | § iii. Textual Works - Electronic Serials, D. Completeness | C13 | supports | direct | From one tool summary. |
| E19 | Summary: The Library prefers limited editions, editions with many special features (for example pop-ups or tabs), and illustrated editions. It prefers original color illustrations to black-and-white reproductions. | § i. Textual Works - Print (books, etc.), D. Rarity, Special Features, Illustrations | C14 | supports | direct | From one tool summary. These preferences are about collection value, not only durability. |

## 9. Tools and resources

- Standards named in the source: ISO 11108:1996, NISO Z39.78-2000, ISO 19005 (PDF/A), ISO 14289-1 (PDF/UA), ANSI/NISO Z39.96-2015 (JATS), BITS 2.0, EPUB3, TEI, DocBook.
- Metadata standards named in the source: ONIX for Books, XMP, MODS, METS, MARCXML.
- The section refers readers to a separate Musical Scores section of the statement. This Brief does not cover it.

## 10. Limitations and caveats

- The section gives preferences, not reasons. It contains no stated reasons and no data about format durability. The Source submission context expects reasons on format durability. This section does not supply them. This is a statement about this section only. Other parts of the Recommended Formats Statement (out of scope) can possibly give reasons.
- The preferences are those of one institution, for its own collection and preservation needs. Some preferences (rarity, illustrations, limited editions) reflect collection value, not file or material durability. Do not read every preference as a durability judgment.
- An item that is not on a list does not show that the Library rejects it.
- The fetched content shows no publication date or revision date. The current status of the preferences is not known.
- WebFetch could not cleanly separate the "Preferred" and "Acceptable" columns in the digital formats list (E11, E12). C7 and C8 have medium confidence for this reason.
- Two tool calls gave different EPUB wording ("EPUB3-compliant." and "Other versions of EPUB are also preferred formats"). Both lines possibly exist on the page.
- Several rows (E16 to E19) come from tool summaries only, with no quote.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 5 | The publisher is the Library of Congress, a national library. For claims about its own preferences, it is the primary source. |
| Transparency | 2 | The section gives no reasons, no method, and no date. It names standards, so the preferences can be traced to their technical bases. |
| Accuracy | 4 | The standard numbers that it names (ISO, NISO) can be checked. The fetched content shows no errors. This Brief did not check the standards. |
| Objectivity | 4 | An institutional statement that is not commercial. It reflects the needs of one institution, which is not necessarily the need of a personal archive. |
| Currency | — | The fetched content shows no date. The items listed (EPUB3, PDF/UA, BITS 2.0, JATS 2015) suggest a revision that is not old, but this is an inference only. |

Overall `source-quality: high`, as a primary source for what the Library of Congress prefers. As evidence for why a format is durable, the section is weak, because it gives no reasons (§10).

## 12. Extraction notes

- Scope: section "I. Textual Works" only, as the Orchestrator asked. Site navigation, footer, and the Musical Scores section are not covered. The tool reported that the page has no introductory text before the section heading, only navigation, the page title, a breadcrumb, and a script fragment.
- Access: `full` for the scope, through three WebFetch calls. No companion file. I had no shell tool, so I could not get the raw page with `curl`.
- Completeness `partial`: the Brief covers the main preferences in each subsection. It does not cover each sub-item (for example all binding sub-types, broadsides and musical compositions, all optional metadata, and the rarity sections for digital and serials).
- Confidence `medium`: WebFetch processes the page with a model. The column split in the digital formats list is not certain, and the EPUB wording differed between calls.
- Quote check (rule 9a): **the Orchestrator must check each `Quote:` (E1, E2, E4, E5, E7, E8, E9, E10, E13, E14, E15) against the raw page before it sets this Brief to `validated`.** Each quote is copied as WebFetch returned it.
- Text directed at an AI: none found. The tool also reported none.

Final check:
1. Each Claim Candidate has at least one evidence row: yes (C1 to C14).
2. Each evidence row has a locator: yes. All are heading locators. I took the heading text from the tool output, and the Orchestrator must check it too.
3. Each `Quote:` is copied as the tool returned it and has 15 words or fewer: yes. The longest quote (E14) has 14 words. This section asks for the quote check.
4. Facts, statements of the source, and interpretations are separate: yes. The inferences are marked in §2, §10, and §11.
5. Limits and uncertainty are visible in §8, §10, and §11: yes.
6. Each rating or preference names its source (the Library of Congress). No survey figures: yes.
7. `claim-count` (14) equals the rows in §7 (14): yes.

# Assessment (migrated)

Migrated from KAS-20261113-006. Relevance: medium. Recommended action: advance. Brain version when it was made: CO-20261113-006.

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
