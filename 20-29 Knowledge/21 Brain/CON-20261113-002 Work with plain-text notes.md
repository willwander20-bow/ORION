---
id: CON-20261113-002
type: concept
title: Work with plain-text notes
status: accepted
created: 2026-11-13T12:05
updated: 2026-11-15T23:56
created-by: orchestrator
schema-version: "0.8"
kind: process
related:
  - "[[CON-20261113-001 File over app]]"
  - "[[CON-20261115-004 Johnny.Decimal folder system]]"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-002 Write plain text files]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
  - "[[CO-20261115-001 Brain maintenance fixes from health reports]]"
  - "[[CO-20261115-009 Repoint Brain citations to Source notes]]"
  - "[[CO-20261115-015 Johnny.Decimal introduction]]"
aliases:
  - Plain-text note methods
---

## Definition

Methods to organize and extend notes that are kept as plain text files.

## Explanation

The steps are independent. Use the ones that you need.

Caveats:
- The steps come from one source (Sivers, SRC-20261113-003). Advice only, with no tests.
- Step 2 needs basic programming skill. The locator of E19 has `medium` confidence.
- Step 3 does not say how to link a graphic to its text.
- Step 2: another source (Bologov, opinion, low source quality) argues that metadata lines of this kind make a plain-text file non-portable, non-standard rich text. Its example is Sivers's own date, tags, and title headers. Argument only, no data.

## Steps

1. Use folders for hierarchy. Keep text files in the same folder as related images and audio.
2. Put a few metadata lines at the top of each file, for example a date and tags. Read them with a small script, for example in Ruby, Python, or JavaScript.
3. Make drawings or mind maps in separate graphics files, for example SVG. Keep them next to the text files. Keep the text as plain text.

## Related claims

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]]: the claim that these methods serve. Step 2 is qualified by a source that CLM-001 also cites for its conditions.

## Related concepts

- [[CON-20261113-001 File over app|File over app]]: these methods help keep work in plain files.
- [[CON-20261115-004 Johnny.Decimal folder system|Johnny.Decimal folder system]]: a named way to number the folders of step 1. A link, not a dependency.

## Sources

- [[SRC-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E19, E20, E21, E22, E23, E24
- [[SRC-20261113-006 Write hypertext, not plaintext|Write hypertext, not plaintext (Bologov, undated, updates 2023–2026)]] · E2 · § All You Need is Plaintext · qualifies step 2
