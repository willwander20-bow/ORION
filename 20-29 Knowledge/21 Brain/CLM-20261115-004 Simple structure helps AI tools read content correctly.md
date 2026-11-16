---
id: CLM-20261115-004
type: brain-claim
title: Simple document structure helps AI tools read content correctly
status: accepted
created: 2026-11-15T22:08
updated: 2026-11-16T00:16
created-by: orchestrator
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
  - "[[CON-20261115-002 Design content for AI readers]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-011 Structure documentation for AI and humans, Mintlify]]"
  - "[[CO-20261116-001 Brain maintenance fixes from KHR-20261116-001]]"
aliases:
  - Structure for AI readers
---

## Claim

One vendor article holds that AI tools split documents into small pieces, and that this can cause skipped or misread information. It holds that a simple, consistent structure helps these tools read the content correctly: clear headings, short paragraphs, lists for steps, and plain text, not hidden or interactive parts such as tabs and collapsibles. This is the source's view. The source shows no test and no data.

## Context and conditions

The source writes about documentation that must serve both AI systems and human readers. It says that structure helps most in large knowledge bases, developer documentation, and role-based documentation (E10, a WebFetch summary from an interested author). The Brief gives no information on personal notes, on Obsidian, or on which AI tools split documents and how. The source says that tabs and collapsibles "may" not be captured reliably. This is its own hedge.

## Evidence

- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E1 · unavailable (section not confirmed) · supports · quote: "AI doesn't actually read documents like a person does."; the quote was checked against the page; an assertion without data.
- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E2 · unavailable · supports · AI tools chunk documents, and chunking can lead to skipped or misread information; a WebFetch summary, not checked against the page.
- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E3 · § Minimal formatting for reliable extraction · supports · simple Markdown headings, short paragraphs, and lists for steps; a WebFetch summary, not checked; opinion of the source.
- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E4 · unavailable · supports · quote: "Avoid hidden or interactive content"; the quote was checked against the page.
- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E5 · § Minimal formatting for reliable extraction · supports · tabs and collapsibles may not be captured reliably; plain Markdown or a flat export such as llms-full.txt is easier to parse; a WebFetch summary, not checked.
- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E10 · § When structured formatting improves usability · supports (scope) · structure helps most in large knowledge bases, developer docs, and role-based documentation; a WebFetch summary, not checked; interested author.

## Relationships

- [[CON-20261113-002 Work with plain-text notes|Work with plain-text notes]] (concepts): plain Markdown is the kind of file that the source prefers. This is a link, not a dependency.
- [[CLM-20261115-003 Text formats with direct access are easier for AI to read|Text formats with direct access are easier for AI to read]] (related): that claim is about file formats (scan, PDF, DOCX, open text). This claim is about structure inside a document.
- [[CON-20261115-002 Design content for AI readers|Design content for AI readers]] (related): the steps that apply this claim.

## Disputes and caveats

- One source. The author writes for Mintlify, a documentation vendor, and the article ends in promotion of its Markdown-first product. `source-quality: medium`. Advice can favor the vendor's approach.
- The Brief reports no statistics, studies, or benchmarks for any claim. All claims are assertions by the source.
- The source advises against tabs, and it also presents tabs as a feature of its own product (§ How Mintlify supports structure and layers). The source does not resolve this.
- The Brief says that the page text came through WebFetch, which returned a summary. Only the quotes in E1, E4, and E6 were checked against the page. E2, E3, E5, and E10 are summaries.
- AI tool behavior changes. The article is dated 2025-10-06, so the advice can age.
