---
id: CLM-20261115-001
type: brain-claim
title: Search plain files first, then add indexes
status: accepted
created: 2026-11-15T18:39
updated: 2026-11-15T18:39
created-by: orchestrator
schema-version: "0.11"
confidence: low
evidence-strength: weak
supports: []
contradicts: []
refines: []
extends: []
related: []
concepts:
  - "[[CON-20261113-003 AI-maintained wiki over files]]"
superseded-by:
valid-from:
valid-to:
last-reviewed: 2026-11-15
change-orders:
  - "[[CO-20261115-004 Obsidian is optional, plain Markdown]]"
aliases:
  - Search first, index later
---

## Claim

For a knowledge base kept as plain Markdown files, start retrieval with plain-text search (for example `rg`) and frontmatter queries. Add a derived index (for example SQLite FTS5 or a vector index) only if search is slow or imprecise. Build each index so that it can be rebuilt from the Markdown files. Reason given by one source: an index that is corrupted, stale, or tied to a vendor is rebuilt, because the files stay the source of truth.

## Context and conditions

One source, an opinion and design article. It gives no benchmarks and no vault size for 'slow'. The test of 'slow or imprecise' is not defined. The Brain has no test of this order.

## Evidence

- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E3 · § Search first, index later · supports · Quote: "If an index is corrupted, stale, or tied to a vendor, you rebuild it." A design opinion. No performance data.
- [[BRF-20261115-002 Obsidian is optional, plain Markdown|Obsidian Is Optional (Wall, 2026-08-29)]] · E4 · § Search first, index later · supports · start with `rg` and frontmatter queries; add indexes only if retrieval is slow or imprecise. E4 is a WebFetch summary that was not checked against the page.

## Relationships

- Concept [[CON-20261113-003 AI-maintained wiki over files|AI-maintained wiki over files]]: that method builds an index (a map) over plain files. This claim says when an index is needed at all. A link, not a dependency.
- Row 2 of [[Research Questions]] asks if an AI-maintained index makes answers faster or better than reading the raw files. This claim gives a view ("slow or imprecise" as the test) and no test. It does not answer the question.

## Disputes and caveats

- One opinion source. The publisher sells a related product (Brief objectivity 2 of 5).
- No benchmark, no vault size, no definition of 'slow or imprecise'.
- The Brain does not show that a plain search is enough for a larger set of files.
