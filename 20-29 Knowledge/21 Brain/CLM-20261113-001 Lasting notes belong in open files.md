---
id: CLM-20261113-001
type: brain-claim
title: Lasting notes belong in open files
status: accepted
created: 2026-11-13T10:27
updated: 2026-11-15T18:55
created-by: orchestrator
schema-version: "0.6"
confidence: low
evidence-strength: weak
supports: []
contradicts: []
refines: []
extends: []
related: []
concepts:
  - "[[CON-20261113-001 File over app]]"
  - "[[CON-20261113-002 Work with plain-text notes]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-001 Add file over app knowledge]]"
  - "[[CO-20261113-002 Write plain text files]]"
  - "[[CO-20261113-005 NARA file format tables]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
  - "[[CO-20261113-007 LoC Recommended Formats, textual works]]"
  - "[[CO-20261115-001 Brain maintenance fixes from health reports]]"
  - "[[CO-20261115-002 Align LoC access-measures wording]]"
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
  - "[[CO-20261115-006 Fix opinion-source count and add back-links]]"
aliases:
  - Durable notes need open files
---

## Claim

Notes meant to last should be stored as files that the owner controls, in open, readable formats such as plain text. Reason: apps become obsolete, but files can outlast them. A second reason, with weaker support: a file in an open format does not depend on one app, so the owner can still work when that app is not available. Confidence is `low`. The direct support is opinion essays. The two institutional sources support the claim only in part and give no reasons. No source gives data. Evidence strength is `weak`.

## Context and conditions

Applies to personal knowledge that must stay usable for years or decades. It does not say that every tool must use plain text.

Condition for plain text: the character encoding is known. NARA requires agencies to identify the encoding of each text file, and it prefers ASCII 7-bit, UTF-8, and UTF-16. This rule is for the transfer of federal records. Its use for personal notes is an extension. NARA does not say why or how to record the encoding. The Library of Congress (LoC) prefers nearly the same set for digital textual works: UTF-8, UTF-16 (with BOM), and US-ASCII. This rule is for the works that LoC receives for its collection. Its use for personal notes is also an extension. LoC gives no reasons.

Condition for notes with links and metadata: plain-text storage possibly does not keep such a note fully usable on its own. One source agrees that plain text is necessary as the storage type. But it argues that when metadata, links, lists, and quotations are added, the file becomes non-portable, non-standard rich text. In that view, the format inside the file matters as well as the storage. The source is an opinion essay with no data.

Limit on 'readable': an open format can still have dialects. One source calls Markdown the de facto standard for notes, blogs, and docs, but says that it has many platform-specific behaviors. So a Markdown note possibly does not read the same in each tool. The source gives no list of the differences. One source proposes a way to reduce this limit: use standard relative Markdown links, not wikilinks, because they are more portable. It accepts wikilinks only if every reader supports them. It also puts YAML frontmatter with an `id` at the top of each note. This is a design opinion with no test or data on portability. It does not answer the Bologov qualification on notes with links and metadata. The two views differ in conditions: the source assumes a rule for link form, and Bologov argues about links and metadata in general.

Condition on access measures: the file has no measure that controls access to it or prevents its use. LoC states that digital textual files must contain no measures 'such as digital rights management [DRM] technologies or encryption' 'that control access to or prevent use of the digital work'. This rule is for the works that LoC receives. Its use for personal notes is an extension. LoC gives no reason.

## Evidence

- [[BRF-20261113-001 File over app|File over app (Ango, 2023)]] · E1 · ¶1 · supports · definition of the principle.
- [[BRF-20261113-001 File over app|File over app (Ango, 2023)]] · E2 · ¶3 · supports · apps fade; files can last.
- [[BRF-20261113-001 File over app|File over app (Ango, 2023)]] · E6 · ¶10 · supports · the author's own practice.
- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E26 · § CONCLUSION · supports · the author's summary of reasons for plain text.
- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E4 · § Write plain text files (opening section, before § PORTABLE) · supports · the author's own practice: plain text only.
- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E5 · § PORTABLE · supports · files kept across operating systems since 1990 (self-report, not checked).
- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E14, E15 · § NO DEPENDENCIES · supports · no dependency on one app; reasoning and opinion only.
- [[BRF-20261113-002 NARA file format tables|NARA file format tables (reviewed 2026)]] · E2 · § Born-Digital Textual Data, Preferred Formats table, rows ASCII Text and Unicode Text · supports (indirect) · NARA prefers plain text for textual records.
- [[BRF-20261113-002 NARA file format tables|NARA file format tables (reviewed 2026)]] · E6 · § Born-Digital Textual Data, Acceptable Formats table, row Microsoft Word (DOCX) Office Open XML · supports (indirect) · DOCX is acceptable only, not preferred.
- [[BRF-20261113-002 NARA file format tables|NARA file format tables (reviewed 2026)]] · E7 · § Born-Digital Textual Data, Acceptable Formats table, row DOC · supports (indirect) · DOC is acceptable only, not preferred.
- [[BRF-20261113-002 NARA file format tables|NARA file format tables (reviewed 2026)]] · E1 · § Born-Digital Textual Data (prose before the tables) · supports · encoding rule for plain text.
- [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]] · E8 · § ii. Textual Works - Digital, A. Technical Characteristics · supports (indirect) · encoding list for digital text, nearly the same as NARA's.
- [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]] · E11, E12, E13 · § ii. Textual Works - Digital, B. Formats · qualifies · structured formats preferred; plain text acceptable only; no reasons.
- [[BRF-20261113-006 LoC Recommended Formats, textual works|LoC Recommended Formats, textual works (undated)]] · E14 · § ii. Textual Works - Digital, F. Technological Measures · qualifies · no DRM or encryption that controls access to or prevents use of the digital work; no reason given; the Orchestrator checked the full sentence against the raw LoC page on 2026-11-15.
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E2, E3 · § All You Need is Plaintext · qualifies · metadata and links make a plain-text file non-standard rich text; argument only.
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E7 · § The Plaintext is a Lie · supports · plain text as the storage type is necessary.
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E8, E9 · § Screw .TXT, All My Homies Use Markdown · qualifies · Markdown has platform-specific behaviors; informal, no list.
- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E1 · § Obsidian Is Optional: Build an AI Second Brain With Plain Markdown (opening section, before § What a second brain actually needs) · supports · a folder of plain Markdown files can provide the durable memory layer for a second brain; opinion, no data.
- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E7 · § The practical answer · supports · "The durable second brain is not the app"; a conclusion, not evidence.
- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E2 · § Use a portable note contract, § Prefer standard relative links · qualifies · standard relative links preferred for portability; no test.

## Relationships

- Concept [[CON-20261113-001 File over app|file over app]]: this claim applies the principle to notes.
- Concept [[CON-20261113-002 Work with plain-text notes|work with plain-text notes]]: methods for notes kept as plain text. Both records cite BRF-20261113-005 E2, which qualifies step 2 of the process and the condition of this claim for notes with links and metadata. A link, not a dependency.

## Disputes and caveats

- Three opinion sources support the claim: Ango (BRF-20261113-001), Sivers (BRF-20261113-003), and Wall (BRF-20261115-002). One more opinion source, Bologov (BRF-20261113-005), qualifies its conditions (see below). Ango leads Obsidian, so the principle supports his product (BRF-20261113-001 states this conflict of interest). The publisher of Wall sells a related product (see the Wall bullet below). The Brain does not show that these authors are independent of each other.
- First institutional source: NARA (BRF-20261113-002). It is independent of Obsidian, but its support is indirect. It ranks plain text above both Word formats for the transfer of federal records. It gives no reasons, so it does not support either reason in this claim. Its scope is federal records, not personal notes. The part of the page that the Brief read does not define 'preferred' and 'acceptable'.
- NARA also prefers ODT and PDF/A-1 and PDF/A-2, and lists general PDF 1.0–1.7 as acceptable only. NARA does not call these formats open. Openness alone possibly does not explain its ranking.
- Second institutional source: the Library of Congress (LoC, BRF-20261113-006). It does not rank plain text first. For digital textual works, it prefers structured formats with a schema or a standard: XML-based markup with a DTD or schema, EPUB3, other book DTDs (TEI, DocBook), PDF/UA, PDF/A, and PDF of the highest quality. It lists plain text as acceptable only, under "Other formats", with RTF and proprietary word-processing formats. LoC gives no reasons, and not every LoC preference is a durability judgment. Its scope is the textual works that it receives for its collection, not personal notes. So NARA's rank for plain text is not a shared institutional view. LoC does not say that plain text fails to last. This is a difference in scope and conditions, not a contradiction.
- Currency: the NARA page was last reviewed on 2026-03-11, but its DOCX row names Word 2007–2010 only. The lists can be older than the current versions of the formats. A format that is not listed is not shown to be rejected.
- No source gives data. NARA is from digital preservation work, but it gives a list with no reasons. LoC (BRF-20261113-006) also gives preferences with no reasons and no durability data. Evidence strength stays `weak` until a source with data or reasons supports it.
- Scope: Sivers is broader and more absolute. He keeps almost everything important in plain text only. This claim stays limited to notes meant to last.
- One opinion source (Bologov, BRF-20261113-005, `source-quality: low`) qualifies the conditions of this claim. It does not contradict it. It gives no data. ORION applies this claim through Markdown files with YAML metadata and links, so ORION notes are the kind of note that the qualification is about. No source tests this.
- ORION applies this claim: root `CLAUDE.md` §4.4 and area rule 12 ("keep Markdown and YAML portable").
- Third opinion source (Wall, BRF-20261115-002, `source-quality: medium`). It agrees in direction. It does not argue from app obsolescence, and it is about AI second brains. The publisher sells a related product (Brief objectivity 2 of 5), so it is not independent of its own products. It gives no data. Confidence stays `low` and evidence strength stays `weak`.
