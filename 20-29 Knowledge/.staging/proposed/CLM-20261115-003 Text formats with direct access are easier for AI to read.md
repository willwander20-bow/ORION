---
id: CLM-20261115-003
type: brain-claim
title: Text formats with direct access are easier for AI to read
status: accepted
created:
updated:
created-by:
schema-version: "0.13"
confidence: low
evidence-strength: weak
supports: []
contradicts: []
refines: []
extends: []
related: []
concepts:
  - "[[CON-20261113-002 Work with plain-text notes]]"
superseded-by:
valid-from:
valid-to:
last-reviewed:
change-orders: []
aliases:
  - Formats for AI readers
---

## Claim

One source holds that AI models process content more easily when it is in a format that gives direct access to the text (HTML, XML, or Markdown) than when it is a scanned file or a PDF. It rates DOCX as less ideal than those three formats, but better than a PDF. This is the source's guidance. The source shows no test.

## Context and conditions

The source writes about content that people publish for AI models, especially large language models. It does not name the AI models or tools. The Brief gives no information on personal notes. The source gives no error rates and no benchmarks. The source's own reason: for a scanned file or a PDF, the computer must recognize the text and infer its structure, and this adds errors (E1 is a summary, not a quote).

## Evidence

- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E1 · § Tactic 1: selecting the best file format · supports · a scan makes the computer recognize text and infer structure; the quote is the opening sentence only, and the error claim is a WebFetch summary.
- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E2 · § Tactic 1: selecting the best file format · supports · quote: "a computer can directly access the text as it was originally written"; the quote was checked against the page.
- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E3 · § Tactic 1: selecting the best file format · supports · DOCX is less ideal than the open formats and better than a PDF; a WebFetch summary, not checked against the page; opinion of the source.

## Relationships

- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (concepts): Markdown is one of the formats that the source names. This is a link, not a dependency.

## Disputes and caveats

- One source, one author with a partnerships and advocacy role (Nava Labs). `source-quality: medium`. The Brief reports no tests, data, or citations for the claim.
- The Brief says that the page text came through WebFetch. Only the quotes were checked against the page. Section content is a mix of summary and a few quotes.
- The claim is about reading by AI, not about how long a file lasts. It is a different reason from the one in [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]].
