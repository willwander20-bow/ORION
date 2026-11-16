---
id: MOC-20261115-001
type: moc
title: Content for AI readers
status: active
created: 2026-11-15T22:12
updated: 2026-11-15T22:12
created-by: orchestrator
schema-version: "0.13"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-012 Content for AI readers MOC]]"
---

## Topic summary

How to write and store content so that AI tools read it correctly: the file format, the structure inside a document, and how to test both. This topic is about reading by AI. Note durability is about how long files last.

## Key concepts

- None yet.

## Important claims

- [[CLM-20261115-003 Text formats with direct access are easier for AI to read|Text formats with direct access are easier for AI to read]] (evidence `weak`, one toolkit and one vendor article with indirect support; about reading by AI, not durability)
- [[CLM-20261115-004 Simple structure helps AI tools read content correctly|Simple structure helps AI tools read content correctly]] (evidence `weak`, one vendor article)

## Processes and methods

- [[CON-20261115-002 Design content for AI readers|Design content for AI readers]] (steps 1 to 6 from one toolkit, steps 7 to 10 and a test plan from one vendor article; no tests)

## Evidence for and against

- For: [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]]. Guidance from a government-technology nonprofit, `source-quality: medium`. It rates open text formats above DOCX and PDF for AI reading. No data and no tests.
- For (indirect): [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]]. Vendor article, `source-quality: medium`. It ends in product promotion. It says that simple structure helps AI tools, and that plain text is easier to parse than tabs. No data.
- Against: none yet.

## Related MOCs

- [[MOC-20261113-001 Note durability|Note durability]]: both topics rank open file formats, for different reasons. Here the reason is reading by AI. There the reason is how long files last. The rankings can differ: NARA and LoC prefer PDF/A for preservation, and Nava rates PDF lowest for AI reading. A link, not a dependency.
- [[MOC-20261113-002 AI-maintained knowledge bases|AI-maintained knowledge bases]]: an AI that keeps a wiki over plain files also reads those files. A link, not a dependency.

## Open research questions

- Does the structure of a document (headings, chunk size, frontmatter, hidden content), or its file format, change how well an AI tool reads and answers from it, and how can this be tested? (Raised by the second looks of the Editor on SRC-20261115-004 and SRC-20261115-005. No source tests it.)

## Disputes and gaps

- Two sources, no data. One is a nonprofit toolkit. The other is a vendor article from a company that sells a documentation product. The Brain does not show that the authors are independent of each other.
- No source in the Brain tests if format or structure changes AI results.
- The vendor article advises against tabs and also presents tabs as a feature of its own product.
- Most of the evidence is WebFetch summary that was not checked against the page. Only a few quotes were checked.
- The Brain does not show if these steps help personal notes or Obsidian.
