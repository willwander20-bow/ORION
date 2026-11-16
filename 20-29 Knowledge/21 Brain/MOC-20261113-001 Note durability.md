---
id: MOC-20261113-001
type: moc
title: Note durability
status: active
created: 2026-11-13T10:27
updated: 2026-11-15T20:08
created-by: orchestrator
schema-version: "0.6"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-001 Add file over app knowledge]]"
  - "[[CO-20261113-002 Write plain text files]]"
  - "[[CO-20261113-005 NARA file format tables]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
  - "[[CO-20261113-007 LoC Recommended Formats, textual works]]"
  - "[[CO-20261113-008 Self-improving Claude knowledge base, Lipsky]]"
  - "[[CO-20261115-001 Brain maintenance fixes from health reports]]"
  - "[[CO-20261115-002 Align LoC access-measures wording]]"
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
  - "[[CO-20261115-006 Fix opinion-source count and add back-links]]"
  - "[[CO-20261115-009 Repoint Brain citations to Source notes]]"
---

## Topic summary

How to keep notes readable and usable for many years: file formats, ownership, and independence from one app.

## Key concepts

- [[CON-20261113-001 File over app|File over app]]

## Important claims

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]] (evidence `weak`, three opinion sources, one of them partly promotional, and one institutional source with indirect support; one more opinion source qualifies its conditions; a second institutional source supports the encoding condition and ranks plain text lower)
- [[CLM-20261115-002 Git history alone is not a full backup|Git history alone is not a full backup]] (evidence `weak`, one short opinion statement; recovery, not format)

## Processes and methods

- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (advice from one source, no tests)

## Evidence for and against

- For: [[SRC-20261113-001 File over app|File over app (Ango, 2023)]]. Opinion essay.
- For: [[SRC-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]]. Opinion essay.
- For: [[SRC-20261115-001 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]]. Opinion and design article. It says that a folder of plain Markdown files can be the durable memory layer. It also proposes standard relative links for portability. No data. The publisher sells a related product.
- For (indirect): [[SRC-20261113-002 NARA file format tables|NARA file format tables (reviewed 2026)]]. Transfer guidance for federal records. It ranks plain text above Word formats. It gives no reasons. The lists can be older than the current format versions (page reviewed 2026-03-11; the DOCX row names Word 2007–2010 only).
- Qualifies: [[SRC-20261113-006 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]]. Opinion essay, low source quality. It agrees that plain-text storage lasts. It says that storage alone is not enough for notes with links and metadata, and that Markdown has platform-specific behaviors. It does not contradict the claim.
- Qualifies, and supports in part: [[SRC-20261113-008 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]]. The preferences of the Library of Congress for the textual works that it receives. It prefers nearly the same encodings as NARA. It ranks structured formats (XML with a schema, EPUB3, PDF/A, PDF/UA) above plain text, which is acceptable only. It requires no DRM or encryption that controls access to or prevents use of the digital work. It gives no reasons and no durability data. It does not contradict the claim.
- Against: none yet.

## Related MOCs

- [[MOC-20261113-002 AI-maintained knowledge bases|AI-maintained knowledge bases]]: one method in that topic keeps its wiki as plain Markdown files with Markdown links, for portability. A link, not a dependency.

## Open research questions

- Do most digital artifacts sit in closed formats or behind logins? (SRC-20261113-001 C3; not measured.)
- Does plain text stay readable on future computers as well as it has since the 1960s? Conditions to check: character encoding and storage media. (SRC-20261113-001 C4. SRC-20261113-003 C4 and C15 predict yes, with no evidence. Neither of these two sources discusses encoding. SRC-20261113-002 C1 and C2: NARA requires that the encoding of each text file is identified, and it prefers ASCII 7-bit, UTF-8, and UTF-16. SRC-20261113-008 C6: LoC prefers UTF-8, UTF-16 (with BOM), and US-ASCII. Neither institution gives evidence on future readability, so the question stays open.)

## Disputes and gaps

- Three opinion sources support the claim, with no data: Ango, Sivers, and Wall. Ango leads Obsidian, and the publisher of Wall sells a related product. The Brain does not show that the authors are independent of each other. One more opinion source, Bologov, qualifies the conditions of the claim (see the next bullet). Two institutional sources give format lists with no reasons and no data. NARA supports the direction of the claim, but not its reasons. LoC (SRC-20261113-008) supports the encoding condition, but ranks plain text below structured formats. The two institutions do not rank plain text the same way. Look for a source with data or reasons on how long file formats stay readable.
- No source tests if notes with links and metadata stay usable when only the file survives, or how much Markdown dialects differ between tools. No source compares Markdown with HTML over time.
- The LoC rule on access measures (SRC-20261113-008 E14) is for the works that LoC receives. An owner can choose encryption for privacy. The Brief gives no information on that case. No source in the Brain says whether the rule applies to personal notes. CLM-20261113-001 applies it to personal notes only as an extension.
