---
id: CON-20261113-001
type: concept
title: File over app
status: accepted
created: 2026-11-13T10:27
updated: 2026-11-13T12:18
created-by: orchestrator
schema-version: "0.6"
kind: concept
related:
  - "[[CON-20261113-002 Work with plain-text notes]]"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-001 Add file over app knowledge]]"
  - "[[CO-20261113-002 Write plain text files]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
aliases:
  - File over app principle
---

## Definition

A principle for digital work: work meant to last lives in files that the owner controls, in formats that are easy to retrieve and read. The file matters more than the app that made it.

## Explanation

Apps change, close, or lose support. A file in an open format, such as plain text, stays readable with many tools. A second source says that plain text can be converted into other formats, and that many standard formats (HTML, Markdown, JSON, LaTeX) are themselves plain text. So in that source, "plain text" includes these formats. The source gives no formal definition and no limits for conversion. Another source separates two layers of 'plain text': the storage type (text stored as a `text/*` type) and the subtype (the markup or display format inside it, for example Markdown, Org, or HTML). It says that Sivers and Nesbit conflate the two layers. The author predicts that the storage type lasts, and that a subtype lasts only as long as the software or people that process it. This is a prediction with no data. In this view, Markdown and HTML are plain text at the storage layer only. A file can be open at the storage layer and still depend on tools at the subtype layer. The principle also asks toolmakers to give users ownership of their data. Steph Ango, the CEO of Obsidian, named it in 2023.

## Related claims

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]]: applies the principle to notes.
- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]]: methods to keep work in plain files.

## Sources

- [[BRF-20261113-001 File over app|File over app (Ango, 2023)]] · E1
- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E8, E9, E11 · § UN-COMMERCIAL
- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E16, E17 · § EASIEST TO CONVERT
- [[BRF-20261113-005 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E4, E5, E6 · § The Plaintext is a Lie
