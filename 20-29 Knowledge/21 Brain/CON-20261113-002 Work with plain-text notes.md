---
id: CON-20261113-002
type: concept
title: Work with plain-text notes
status: accepted
created: 2026-11-13T12:05
updated: 2026-11-13T12:05
created-by: orchestrator
schema-version: "0.8"
kind: process
related:
  - "[[CON-20261113-001 File over app]]"
last-reviewed: 2026-11-13
change-orders:
  - "[[CO-20261113-002 Write plain text files]]"
aliases:
  - Plain-text note methods
---

## Definition

Methods to organize and extend notes that are kept as plain text files.

## Explanation

The steps are independent. Use the ones that you need.

Caveats:
- One source. Advice only, with no tests.
- Step 2 needs basic programming skill. The locator of E19 has `medium` confidence.
- Step 3 does not say how to link a graphic to its text.

## Steps

1. Use folders for hierarchy. Keep text files in the same folder as related images and audio.
2. Put a few metadata lines at the top of each file, for example a date and tags. Read them with a small script, for example in Ruby, Python, or JavaScript.
3. Make drawings or mind maps in separate graphics files, for example SVG. Keep them next to the text files. Keep the text as plain text.

## Related claims

- [[CON-20261113-001 File over app|File over app]]: these methods help keep work in plain files.

## Sources

- [[BRF-20261113-003 Write plain text files|Write plain text files (Sivers, about 2022)]] · E19, E20, E21, E22, E23, E24
