---
id: BRF-20261113-002
type: reference-brief
title: "Appendix A: Tables of File Formats — Born-Digital Textual Data"
status: draft
created: 2026-11-13T10:58
updated: 2026-11-13T10:58
created-by: reporter
schema-version: "0.6"
source: "[[SRC-20261113-002 NARA file format tables]]"
processing-level: full-review
source-quality: high
extraction-completeness: partial
extraction-confidence: medium
claim-count: 10
---

## 1. Executive summary

The "Born-Digital Textual Data" section of the NARA file format tables covers text records that agencies transfer to the National Archives. It splits textual data into two content types: unformatted plain text and formatted text. It says that agencies must identify the character encoding of each text file. It lists five preferred formats: ASCII 7-bit, Unicode UTF-8/UTF-16, ODT, PDF/A-1 and PDF/A-2. It lists three acceptable formats: PDF 1.0–1.7, DOCX (Word 2007–2010) and DOC (Word 97, 8.0).

## 2. Central premise and author intent

Source statement: the section names the file formats that NARA prefers or accepts for born-digital textual records. It also states one requirement for agencies: identify the character encoding.

Interpretation (Reporter): the section is transfer guidance for federal agencies, not a general recommendation. It gives the list without reasons. It does not say why a format is preferred or only acceptable. The page part read does not define "preferred" or "acceptable".

## 3. Key takeaways

- Agencies must identify the character encoding of each text file (C1).
- Preferred: ASCII 7-bit, Unicode UTF-8 and UTF-16, ODT (all versions), PDF/A-1, PDF/A-2 (C2–C4).
- Acceptable only: PDF 1.0–1.7, DOCX (OOXML, Word for Windows 2007–2010), DOC (Word 97 binary, 8.0) (C5–C7).
- The section puts the archival PDF profiles (PDF/A-1, PDF/A-2) above general PDF (C4, C5).
- Both Microsoft Word formats are only acceptable. Neither is preferred (C6, C7).
- The section splits textual data into plain text, which has no styling, and formatted text, which adds styling such as bold, italics, color and hyperlinks (C8–C10).

## 4. Facts and figures

- Preferred Formats table: 5 rows. ASCII Text (7 bit); Unicode Text (UTF-8, UTF-16); OpenDocument Text Format (ODT, all versions); PDF/A-1; PDF/A-2.
- Acceptable Formats table: 3 rows. PDF (PDF 1.7; PDF 1.0-1.6); Microsoft Word (DOCX) Office Open XML ("OOXML Microsoft Word for Windows, version 2007-2010"); Microsoft Word 97 Binary Document Format (DOC, 8.0).
- Table columns: "Preferred Formats" / "Acceptable Formats" | "Format Versions" | "Format Specifications". The Format Specifications column links to the specification of each format. I did not open these links.
- Page dates, from outside the section: "This page was last reviewed on March 11, 2026." Near the footer, the page also shows "Updated August 2025". The page does not say what was updated.

## 5. Methods and frameworks

- Two-tier classification of formats: Preferred and Acceptable. The page's Symbol Key, which is outside the scope, also names a third tier, "Acceptable for Imminent Transfer". The Born-Digital Textual Data section does not use it.
- Each table row gives the format, the versions and a link to the specification.
- Procedural requirement: identify the character encoding of each text file.

## 6. Concepts and definitions

- Unformatted plain text: MIME type `text/plain`. It holds basic characters and control or non-printing codes. It "lacks styling information" (E9).
- Formatted text files: these have the features of plain text plus "extended formatting capabilities", for example italics, bold, colors and hyperlinks (E10).
- Preferred and acceptable: the page uses these tiers but does not define them in the part read (§10).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | Agencies must identify the character encoding method of each text file that they transfer as born-digital textual data. | normative | explicit | E1 | high |
| C2 | NARA lists ASCII Text (7 bit) and Unicode Text (UTF-8, UTF-16) as preferred formats for born-digital textual data. | factual | explicit | E2 | high |
| C3 | NARA lists OpenDocument Text Format (ODT), all versions, as a preferred format for born-digital textual data. | factual | explicit | E3 | high |
| C4 | NARA lists PDF/A-1 and PDF/A-2 as preferred formats for born-digital textual data. | factual | explicit | E4 | high |
| C5 | NARA lists PDF versions 1.0 to 1.7 as acceptable, not preferred, for born-digital textual data. | factual | explicit | E5 | high |
| C6 | NARA lists Microsoft Word DOCX (OOXML, Word for Windows 2007–2010) as acceptable, not preferred, for born-digital textual data. | factual | explicit | E6 | high |
| C7 | NARA lists the Microsoft Word 97 Binary Document Format (DOC, version 8.0) as acceptable, not preferred, for born-digital textual data. | factual | explicit | E7 | high |
| C8 | NARA divides born-digital textual data into two content types: unformatted plain text and formatted text. | factual | explicit | E8 | high |
| C9 | In NARA's description, unformatted plain text (MIME `text/plain`) holds characters and control codes but no styling information. | factual | explicit | E9 | medium |
| C10 | In NARA's description, formatted text files have the features of plain text plus formatting such as italics, bold, colors and hyperlinks. | factual | explicit | E10 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Agencies must identify the character encoding method used with each text file." | § Born-Digital Textual Data (prose before the tables) | C1 | supports | direct | Does not say how or where to record the encoding. Gives no reason. |
| E2 | Summary: The Preferred Formats table lists "ASCII Text" with version 7 bit and "Unicode Text" with versions UTF-8 and UTF-16. | § Born-Digital Textual Data, Preferred Formats table, rows ASCII Text and Unicode Text | C2 | supports | direct | Table entry only. No reason for the ranking. Other Unicode encodings, for example UTF-32, are not listed. That absence does not show that NARA rejects them. |
| E3 | Summary: The Preferred Formats table lists OpenDocument Text Format (ODT), all versions. | § Born-Digital Textual Data, Preferred Formats table, row ODT | C3 | supports | direct | Table entry only. No reason given. |
| E4 | Summary: The Preferred Formats table lists PDF/A-1 and PDF/A-2 as separate rows. | § Born-Digital Textual Data, Preferred Formats table, rows PDF/A-1 and PDF/A-2 | C4 | supports | direct | Table entry only. Later PDF/A parts are not listed. That absence does not show that NARA rejects them. |
| E5 | Summary: The Acceptable Formats table lists PDF with versions "PDF 1.7" and "PDF 1.0-1.6". | § Born-Digital Textual Data, Acceptable Formats table, row PDF | C5 | supports | direct | Table entry only. PDF 2.0 is not listed, and the absence is not evidence either way. |
| E6 | Quote: "OOXML Microsoft Word for Windows, version 2007-2010" (Format Versions cell). | § Born-Digital Textual Data, Acceptable Formats table, row Microsoft Word (DOCX) Office Open XML | C6 | supports | direct | The version range ends at 2010. It is not clear whether later Word versions are covered. |
| E7 | Summary: The Acceptable Formats table lists Microsoft Word 97 Binary Document Format (DOC), version 8.0. | § Born-Digital Textual Data, Acceptable Formats table, row DOC | C7 | supports | direct | Table entry only. |
| E8 | Quote: "two general content types" | § Born-Digital Textual Data, ¶1 (sentence 1) | C8 | supports | direct | Short fragment. The type names, "Unformatted plain text" and "Formatted text files", come from the same paragraph. |
| E9 | Summary: Plain text (MIME `text/plain`) holds basic characters and control or non-printing codes, and it "lacks styling information". | § Born-Digital Textual Data, ¶1 (sentence 2) | C9 | supports | direct | Descriptive definition. No examples of file types. The wording comes through the fetch tool. |
| E10 | Summary: Formatted text files have the plain text features plus "extended formatting capabilities", for example italics, bold, colors and hyperlinks. | § Born-Digital Textual Data, ¶1 (sentence 3) | C10 | supports | direct | Lists examples only. It does not mention page layout or fonts. The wording comes through the fetch tool. |

## 9. Tools and resources

- Specification links in the "Format Specifications" column, one for each format. I did not open them.
- MIME type `text/plain`, named in the section.
- Related page context, outside the scope: NARA Bulletin 2014-04 Appendix A is named in another section of the page as the parent guidance.

## 10. Limitations and caveats

- Scope: this Brief covers only the "Born-Digital Textual Data" section. The other format categories, the Case Files section and the Symbol Key were not analyzed. Only page dates and tier names were noted from them.
- The part read does not define "preferred" or "acceptable". The Brief does not describe what each tier means in practice, for example any rule about migration or transfer.
- The section gives no reasons for its ranking. The idea that NARA ranks open or archival formats above proprietary or general-purpose formats is a Reporter interpretation, not a source statement. Plain PDF is also an ISO standard, so "open versus proprietary" does not fully explain the ranking. I did not use this interpretation as a claim.
- The guidance applies to transfers of US federal records to NARA. Using it as general advice on preservation formats is an extension of the source.
- Currency: the page was last reviewed on March 11, 2026, but the DOCX row names Word 2007–2010 only. The lists can be out of date compared with current versions of the formats. That a format is missing from the list does not show that NARA rejects it.
- Quotes come from model-processed fetch output, not raw HTML. Section 12 gives details.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 5 | NARA is the US federal agency that sets these transfer requirements. It is the primary source for its own guidance. |
| Transparency | 3 | Each format has a link to its specification. The section gives no reasons for the ranking and does not define the tiers. |
| Accuracy | 4 | The format names and versions are consistent and refer to specifications. I did not check them against the specifications. |
| Objectivity | 4 | A government agency with no visible commercial interest. It names commercial formats only by their tier. |
| Currency | 3 | Last reviewed March 11, 2026, and "Updated August 2025". Some version ranges, for example DOCX 2007–2010, look old. |

Overall `source-quality: high`. The source is authoritative and primary for its own requirements. The weak points are the missing reasons and the old version ranges.

## 12. Extraction notes

- Coverage: all prose and both tables of the "Born-Digital Textual Data" section. `extraction-completeness: partial` because the Brief covers one section of a multi-section page, as the Orchestrator assigned. Inside the assigned scope, the coverage is complete.
- `extraction-confidence: medium`. WebFetch returns text that a model has processed, not the raw page. I fetched the page four times. The table contents and the encoding sentence were the same in each result. The short quotes in E1, E6, E8, E9 and E10 come from that output. They are probably exact, but the Orchestrator or Justin should check them against the live page, or against a companion file if Justin saves one. The fetch tool would not give the paragraph word for word, so E8 to E10 use summaries with short quoted fragments. The ¶ and sentence numbers in E8 to E10 come from the tool's description of the paragraph order.
- Instruction-like text: none found. The fetch result found no text addressed to an AI.
- Final check (reporter.md §11):
  1. Each Claim Candidate has at least one evidence row: yes.
  2. Each evidence row has a locator: yes. All locators are section headings with a table row or paragraph.
  3. Each `Quote:` is 15 words or fewer: yes. The longest, E1, has 13 words. Exactness depends on the fetch tool, as stated above.
  4. Facts, source statements and interpretations are separate: yes. Interpretations are marked in §2 and §10.
  5. Limits and uncertainty are visible in §8, §10 and §11: yes.
  6. No claim is presented as a verified fact without evidence: yes. The claims state what NARA lists, not that the ranking is correct.
  7. `claim-count` equals the rows in §7: 10 = 10. Yes.

## Orchestrator check (2026-11-13)

- Reporter §11 checklist: confirmed. 10 claims, 10 evidence rows, each with a locator.
- Quotes and quoted fragments (E1, E6, E8, E9, E10, and "Updated August 2025"): all exact in the raw page HTML (fetched with curl, tags stripped). Not only through WebFetch.
- Locators checked: E1 (§ Born-Digital Textual Data, before the tables), E5 (Acceptable Formats, row PDF, "PDF 1.7" and "PDF 1.0-1.6"), E8 (¶1 of the section). All correct.
- Files read by the Reporter: the Source record, `TPL Reference Brief.md`, `Knowledge System Schema.md` (whole file; the Read tool cannot read only some sections). No file in `21 Brain` (KS-R-25).
