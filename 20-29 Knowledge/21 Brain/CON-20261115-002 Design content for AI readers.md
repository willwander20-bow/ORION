---
id: CON-20261115-002
type: concept
title: Design content for AI readers
status: accepted
created: 2026-11-15T22:08
updated: 2026-11-16T00:16
created-by: orchestrator
schema-version: "0.13"
kind: process
related:
  - "[[CON-20261113-002 Work with plain-text notes]]"
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-010 Readable AI content, Nava]]"
  - "[[CO-20261115-011 Structure documentation for AI and humans, Mintlify]]"
  - "[[CO-20261116-001 Brain maintenance fixes from KHR-20261116-001]]"
aliases:
  - AI-readable content design
---

## Definition

A set of content design steps that one source recommends so that AI models can process a document more easily.

## Explanation

Steps 1 to 6 come from one source (Nava toolkit, Tactic 2 and the section on combining both tactics). Steps 7 to 10 and the test come from a second source (Mintlify article, a vendor). The source says that the steps also help accessibility and skimmability for people. The steps are independent. The source says that the tactics work best together, and that one small step still helps.

Caveats:
- Guidance from one author. The Brief reports no test or data that the steps improve AI results.
- The Brief quotes only two list items (plain language, lists). The other steps come from WebFetch summaries and were not checked against the page.
- The benefit for people is the source's statement (a WebFetch summary). The Brief reports no data.
- The author works in a partnerships and advocacy role. `source-quality: medium`.
- Bologov (cited in CLM-20261113-001) argues that metadata makes plain text less portable. The two views serve different purposes (AI reading, portability). Neither is tested.
- Steps 7 to 10 and the test: guidance from a documentation vendor (Mintlify, `source-quality: medium`). The article ends in product promotion. It gives no data. It advises against tabs, and it also presents tabs as a feature of its own product. Only three quotes were checked against the page (E1, E4, E6). The other items are WebFetch summaries.

## Steps

1. Write in plain language.
2. Use a clear heading hierarchy. Apply the heading or paragraph styles of the editing tool, not larger or bold text, so that the file tags the headings.
3. Organize lists of items as bulleted or numbered lists.
4. Define terms, or add a glossary.
5. Add metadata, such as dates and topic tags, or YAML frontmatter.
6. For structured data, supply CSV, JSON, or XML.
7. Keep paragraphs short.
8. Put code in fenced blocks, separate from prose.
9. Do not put content that AI must read in hidden or interactive parts, such as tabs and collapsibles.
10. Use active voice, descriptive link text and alt text, the same term for the same concept, and fewer vague pronouns.

## Test (one source, untested)

The Mintlify source proposes this plan: (1) check raw-text readability; (2) get human baseline feedback; (3) add interface layers and run usability tests; (4) run human usability tasks; (5) compare with the baseline and retest. It also proposes to prompt an LLM with real support questions. The source gives no result for this plan.

## Related claims

- [[CLM-20261115-003 Text formats with direct access are easier for AI to read|Text formats with direct access are easier for AI to read]]: the same source's first tactic (file format).
- [[CLM-20261115-004 Simple structure helps AI tools read content correctly|Simple structure helps AI tools read content correctly]]: the source's view behind steps 7 and 9. The Concept holds the steps. The Claim holds the view and its limits. A link, not a dependency.

## Sources

- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E5, E6 · § Tactic 2: optimizing content design · steps 1 and 3; quotes checked against the page
- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E4 · § Tactic 1: selecting the best file format · step 6; quote checked against the page
- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E7 · § Tactic 2: optimizing content design · step 2; WebFetch summary, not checked
- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E6 (list context) · steps 2, 4, 5 are in the same list; WebFetch summary, not checked
- [[SRC-20261115-004 Readable AI content, Nava|Nava toolkit (2025-03-06)]] · E8, E9 · § Intro; § Combining both tactics · benefit for people; tactics work best together; WebFetch summaries, not checked
- [[SRC-20261115-005 Structure documentation for AI and humans, Mintlify|Mintlify article (2025-10-06)]] · E3, E4, E5, E6, E7, E8, E9 · § Minimal formatting for reliable extraction; § Writing habits that improve AI processing; § Testing readability with AI and humans · steps 5, 7 to 10 and the test; E4 and E6 are quotes checked against the page; the other items are WebFetch summaries, not checked
