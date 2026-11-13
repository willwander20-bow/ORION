---
id: MOC-20261113-001
type: moc
title: Note durability
status: active
created: 2026-11-13T10:27
updated: 2026-11-13T14:55
created-by: orchestrator
schema-version: "0.6"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-001 Add file over app knowledge]]"
  - "[[CO-20261113-002 Write plain text files]]"
  - "[[CO-20261113-005 NARA file format tables]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
  - "[[CO-20261113-007 LoC Recommended Formats, textual works]]"
---

## Topic summary

How to keep notes readable and usable for many years: file formats, ownership, and independence from one app.

## Key concepts

- [[CON-20261113-001 File over app|File over app]]

## Important claims

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]] (evidence `weak`, two opinion sources and one institutional source with indirect support; one more opinion source qualifies its conditions; a second institutional source supports the encoding condition and ranks plain text lower)

## Processes and methods

- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (advice from one source, no tests)

## Evidence for and against

- For: [[BRF-20261113-001 File over app|File over app (Ango, 2023)]]. Opinion essay.
- For: [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]]. Opinion essay.
- For (indirect): [[BRF-20261113-002 NARA file format tables|NARA file format tables (reviewed 2026)]]. Transfer guidance for federal records. It ranks plain text above Word formats. It gives no reasons. The lists can be older than the current format versions (page reviewed 2026-03-11; the DOCX row names Word 2007–2010 only).
- Qualifies: [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]]. Opinion essay, low source quality. It agrees that plain-text storage lasts. It says that storage alone is not enough for notes with links and metadata, and that Markdown has platform-specific behaviors. It does not contradict the claim.
- Qualifies, and supports in part: [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]]. The preferences of the Library of Congress for the textual works that it receives. It prefers nearly the same encodings as NARA. It ranks structured formats (XML with a schema, EPUB3, PDF/A, PDF/UA) above plain text, which is acceptable only. It requires no DRM or encryption that restricts access. It gives no reasons and no durability data. It does not contradict the claim.
- Against: none yet.

## Related MOCs

-

## Open research questions

- Do most digital artifacts sit in closed formats or behind logins? (Brief C3; not measured.)
- Does plain text stay readable on future computers as well as it has since the 1960s? Conditions to check: character encoding and storage media. (BRF-20261113-001 C4. BRF-20261113-003 C4 and C15 predict yes, with no evidence. Neither of these two sources discusses encoding. BRF-20261113-002 C1 and C2: NARA requires that the encoding of each text file is identified, and it prefers ASCII 7-bit, UTF-8, and UTF-16. BRF-20261113-006 C6: LoC prefers UTF-8, UTF-16 (with BOM), and US-ASCII. Neither institution gives evidence on future readability, so the question stays open.)

## Disputes and gaps

- Two opinion sources, no data. Their independence is not shown. Two institutional sources give format lists with no reasons and no data. NARA supports the direction of the claim, but not its reasons. LoC (BRF-20261113-006) supports the encoding condition, but ranks plain text below structured formats. The two institutions do not rank plain text the same way. Look for a source with data or reasons on how long file formats stay readable.
- No source tests if notes with links and metadata stay usable when only the file survives, or how much Markdown dialects differ between tools. No source compares Markdown with HTML over time.
