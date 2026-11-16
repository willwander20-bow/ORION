---
id:
type: concept
title: Connect Claude to apps with connectors
status: accepted
created:
updated:
created-by: managing-editor
schema-version: "0.13"
kind: process
related:
  - "[[CON-20261116-002 Set up Claude Cowork with Skills and Projects]]"
  - "[[CON-20261115-005 Context engineering]]"
last-reviewed:
change-orders: []
aliases:
  - Claude connectors
---

## Definition

A connector links Claude to an app that the user already has. One author describes a connector as an MCP server with a public URL. The author gave this advice on 2026-05-13. Claude and its connectors change fast. Treat the steps as dated advice from one source, not as a test result.

## Explanation

The terms and rules are the author's own (SRC-20261116-013). The Brief did not check them against Anthropic documentation.

Setup (as the author describes it):

1. In the chat box, open "+".
2. Open Connectors and add the app.
3. Check that the connector is on in a new chat.

Rules of use (author's advice):

- Start with a small number of connectors. The author says: "Pick 3." (E6)
- Do not leave all connectors on. The author says: "Connectors burn tokens before you type." (E4) He shows no measurement.
- Give read-only access first. The author says: "Read-only first. Watch how Claude uses it for a week." (E5) Add write access after that. One week is the author's choice.
- The author advises against connectors for creative work (E8). The Brief did not check his reason.

Definition (author's, for developers):

- "A Connector is just an MCP server with a public URL." (E1)

Caveats:

- One source. The author sells a paid newsletter and asks readers to share the page (objectivity 2 of 5; Brief §11).
- All points are opinion or experience. The page gives no test, no data, and no comparison of connectors.
- The Brief gives no information on the use of each connector, on the build prompt for developers, or on whether the build steps work.
- Directory size, the author's list of favorite connectors, and his build-time estimate are not kept here. The Brief gives no source for them, and the interface and the directory may have changed after 2026-05-13.
- The Brain makes no Claim from this advice. It is opinion from one source, dated 2026-05-13.

## Related claims

- None yet.

## Related concepts

- [[CON-20261116-002 Set up Claude Cowork with Skills and Projects|Set up Claude Cowork with Skills and Projects]]: the same author advises few settings there. Both pieces of advice concern what Claude loads before the user types. A link, not a dependency.
- [[CON-20261115-005 Context engineering|Context engineering]]: the token remark concerns what enters the context of Claude. A link, not a dependency.

## Sources

- [[SRC-20261116-013 Connect, Claude connectors, Hassid|Connect (Hassid, 2026-05-13)]] · E1, E2, E4, E5, E6, E8 · quotes checked against the page on 2026-11-16
