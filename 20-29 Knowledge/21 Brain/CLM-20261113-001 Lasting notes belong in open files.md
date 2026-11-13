---
id: CLM-20261113-001
type: brain-claim
title: Lasting notes belong in open files
status: accepted
created: 2026-11-13T10:27
updated: 2026-11-13T12:18
created-by: orchestrator
schema-version: "0.6"
confidence: medium
evidence-strength: weak
supports: []
contradicts: []
refines: []
extends: []
related: []
concepts:
  - "[[CON-20261113-001 File over app]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-001 Add file over app knowledge]]"
  - "[[CO-20261113-002 Write plain text files]]"
  - "[[CO-20261113-005 NARA file format tables]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
aliases:
  - Durable notes need open files
---

## Claim

Notes meant to last should be stored as files that the owner controls, in open, readable formats such as plain text. Reason: apps become obsolete, but files can outlast them. A second reason, with weaker support: a file in an open format does not depend on one app, so the owner can still work when that app is not available.

## Context and conditions

Applies to personal knowledge that must stay usable for years or decades. It does not say that every tool must use plain text.

Condition for plain text: the character encoding is known. NARA requires agencies to identify the encoding of each text file, and it prefers ASCII 7-bit, UTF-8, and UTF-16. This rule is for the transfer of federal records. Its use for personal notes is an extension. NARA does not say why or how to record the encoding.

Condition for notes with links and metadata: plain-text storage possibly does not keep such a note fully usable on its own. One source agrees that plain text is necessary as the storage type. But it argues that when metadata, links, lists, and quotations are added, the file becomes non-portable, non-standard rich text. In that view, the format inside the file matters as well as the storage. The source is an opinion essay with no data.

Limit on 'readable': an open format can still have dialects. One source calls Markdown the de facto standard for notes, blogs, and docs, but says that it has many platform-specific behaviors. So a Markdown note possibly does not read the same in each tool. The source gives no list of the differences.

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
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E2, E3 · § All You Need is Plaintext · qualifies · metadata and links make a plain-text file non-standard rich text; argument only.
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E7 · § The Plaintext is a Lie · supports · plain text as the storage type is necessary.
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E8, E9 · § Screw .TXT, All My Homies Use Markdown · qualifies · Markdown has platform-specific behaviors; informal, no list.

## Relationships

- Concept [[CON-20261113-001 File over app|file over app]]: this claim applies the principle to notes.

## Disputes and caveats

- Two opinion sources. Ango leads Obsidian, so the principle supports his product. The Brief gives no information on the author's interests, so it does not show that the two authors are independent.
- One institutional source: NARA (BRF-20261113-002). It is independent of Obsidian, but its support is indirect. It ranks plain text above both Word formats for the transfer of federal records. It gives no reasons, so it does not support either reason in this claim. Its scope is federal records, not personal notes. The part of the page that the Brief read does not define 'preferred' and 'acceptable'.
- NARA also prefers ODT and PDF/A-1 and PDF/A-2, and lists general PDF 1.0–1.7 as acceptable only. NARA does not call these formats open. Openness alone possibly does not explain its ranking.
- Currency: the NARA page was last reviewed on 2026-03-11, but its DOCX row names Word 2007–2010 only. The lists can be older than the current versions of the formats. A format that is not listed is not shown to be rejected.
- No source gives data. NARA is from digital preservation work, but it gives a list with no reasons. Evidence strength stays `weak` until a source with data or reasons supports it.
- Scope: Sivers is broader and more absolute. He keeps almost everything important in plain text only. This claim stays limited to notes meant to last.
- One opinion source (Bologov, BRF-20261113-005, `source-quality: low`) qualifies the conditions of this claim. It does not contradict it. It gives no data. ORION applies this claim through Markdown files with YAML metadata and links, so ORION notes are the kind of note that the qualification is about. No source tests this.
- ORION applies this claim: root `CLAUDE.md` §4.4 and area rule 12 ("keep Markdown and YAML portable").
