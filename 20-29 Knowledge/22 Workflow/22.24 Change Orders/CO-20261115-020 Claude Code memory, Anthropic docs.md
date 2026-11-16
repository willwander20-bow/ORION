---
id: CO-20261115-020
type: change-order
title: Claude Code memory, Anthropic docs
status: open
created: 2026-11-15T23:50
updated: 2026-11-15T23:52
created-by: managing-editor
schema-version: "0.13"
assessment:
source: "[[SRC-20261115-011 Claude Code memory, Anthropic docs]]"
brain-version: CO-20261115-014
change-types: [create, relate]
affected:
  - "[[MOC-20261115-002 Building AI agents]]"
  - "[[CON-20261115-001 Agent memory protocol for file-based memory]]"
priority: low
decision:
decided:
decision-note:
applied:
brain-version-after:
---

<!-- Propose. Do not apply. Do not approve. Only Justin sets "decision". Schema §5.8. -->

## 1. Summary

The Brain has no record on how Claude Code keeps instructions and memory across sessions. Source [[SRC-20261115-011 Claude Code memory, Anthropic docs|SRC-20261115-011]] is the vendor's documentation page. It describes CLAUDE.md files (written by the user) and auto memory (written by Claude). This Change Order adds one Concept, marked with its currency, and links it to the MOC "Building AI agents" and to the memory protocol. It makes no Claim: the page describes a product, and its details can change with each version.

## 1a. Brief against the Brain

Labels A1 to A24 match C1 to C24 of the Brief. Records read: all 19 Brain notes by title; in full: CON-20261115-001, CON-20261115-003, MOC-20261115-002, and the open Change Orders CO-20261115-015 to -019 with the drafts in `.staging\proposed`. Grouped rows below.

| Label | Claim Candidate | Type | Brain record | One sentence |
|---|---|---|---|---|
| A1 to A3 | C1 to C3: fresh context each session; CLAUDE.md and auto memory; context, not enforcement | new | none | Vendor description of its own product (E1 to E3, E2 quote checked). In the Concept only. |
| A4, A5 | C4, C5: four scopes; load order and concatenation | new | none | Product behavior at the page's version (E4, E9, E10). In the Concept only. |
| A6, A7 | C6, C7: under 200 lines; specific instructions | new | none | Advice with no test data (E5, E6). In the Concept only, marked as advice. |
| A8 to A13, A18 to A21, A23, A24 | C8 to C13, C18 to C21, C23, C24: imports, rules, comments, AGENTS.md, `/init`, delivery, `/compact`, limits, excludes, audit | new | none | Feature detail that can change with each version. Not in the Brain, except the points named in the Concept. |
| A14 to A17 | C14 to C17: auto memory types, storage, `MEMORY.md` limit, `/memory` | new | none | The Concept names the mechanism and the load limit. It leaves out the other details. |
| A22 | C22: add to CLAUDE.md for facts needed each session | new | none | Advice with no test (E27). In the Concept only. |
| A25 | C3, C14, C16 against CON-20261115-001 | relates | CON-20261115-001 | The protocol's memory map file and the page's `MEMORY.md` index have a similar form. The Brief gives no information on whether they are the same. Link only (X3). |
| A26 | C1, C14 against CON-20261115-003 | relates | CON-20261115-003 | The "augmented LLM" there includes memory. The Concept links to it. I propose no row on CON-003, to keep this Change Order small. |

No Claim Candidate contradicts a Brain record. No Claim Candidate gets a Claim row: C2, C6, and C7 are the only ones with a general statement, and each rests on one vendor page with no test data. Overlap with open Change Orders: CO-20261115-017 X5 also edits CON-20261115-001 (X3 here, same place). CO-20261115-017 X3, CO-20261115-018 X3, and CO-20261115-019 X3 also edit MOC-20261115-002 (X2 here). The edits are additive and do not change the same sentence. The Orchestrator sets the order on apply. None of the records seen by this review is newer than the Brain version, except the drafts in `.staging\proposed`, which are not yet Brain records.

Threshold: yes. The Change Order makes a record. The Orchestrator runs the Editor second look and merges it as section 1b.

## 1b. Editor second look

The Editor assessed the same Brief at the threshold (Rulebook section 4.5). Relevance: high. Recommended action: advance. Brain version: CO-20261115-014.

### Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C1, C3, C14, C15 | new | — | No Brain record covers how Claude Code carries knowledge across sessions. These candidates can stand alone: sessions start fresh; the user writes CLAUDE.md; Claude writes auto memory; four note types; stored per project and machine-local. Evidence is direct but comes from the maker, with no test. It supports "what the product does at this version", not "what works well". |
| A2 | C1, C16 | supports | [[CON-20261113-003 AI-maintained wiki over files]] | The Brain concept has an AI read a map file first (`index.md`) so it need not re-read all files each session. The Brain also holds the reason as untested. The page gives a product-side counterpart: a fresh context each session, so an index (`MEMORY.md`) loads at start and topic files load on demand. This matches the map-first design. It is a design fact, not a test of the benefit, so it adds no data to the Lipsky reason. Vendor documentation. Weak support for the idea. |
| A3 | C16 | qualifies | [[CON-20261113-003 AI-maintained wiki over files]]; [[CLM-20261115-001 Search plain files first, then add indexes]] | Difference in conditions. The Brain describes an `index.md` that links to every page and that the AI reads. The page says an index that loads automatically (`MEMORY.md`) is cut at the first 200 lines or 25KB. An index that must load every session therefore has a size limit in Claude Code. Both can be true. The limit applies to the auto-loaded index, not to an index that the AI opens on demand. Version-dependent. |
| A4 | C1, C14, C15 | extends | [[CON-20261115-001 Agent memory protocol for file-based memory]] | The Brain concept has rules for an agent that reads and writes a file-based memory (read the memory map first, log decisions). Claude Code has its own file-based memory with a map (`MEMORY.md`), per-memory topic files, and a type field. This extends the concept with one concrete implementation. It does not show that Wall's rules are used or that they work. The auto memory writes are chosen by Claude. The Brain protocol step 4 ("do not silently rewrite decisions, sources, or personal facts") has no counterpart on the page. Compare A9. |
| A5 | C2, C19, C7 | new | — | A claim that stands alone: CLAUDE.md and auto memory are context, delivered as a user message after the system prompt, with no guarantee of strict compliance, and conflicting instructions can lead Claude to pick one arbitrarily. Explicit statement (E2, E21, E26, E6). The page gives no test data. Vendor description of its own product. |
| A6 | C2, C19 | qualifies | [[CON-20261115-001 Agent memory protocol for file-based memory]]; [[CON-20261113-004 Set up an AI-maintained wiki]] | Difference in scope and enforcement. The Brain protocol (steps 2 to 5) and the setup ground rules ("get an explicit yes before a file is moved", "never delete") are written as instructions to an AI. The page says that in Claude Code such instructions are not an enforcement layer, and it points to hooks and `permissions.deny` for what must always happen. This does not contradict the Brain: the Brain never states that the rules are enforced. It weakens any reading that the rules are a safeguard. The Brain's own approval-gate caveat in CON-004 is therefore stronger than the Brain says. The page is about Claude Code, not Cowork, which CON-004 uses. |
| A7 | C12 | extends | [[CON-20261115-002 Design content for AI readers]] | Step 9 of the concept says to avoid hidden or interactive parts. The page adds one concrete case from a named tool: block-level HTML comments in CLAUDE.md are removed before the content reaches Claude, but they stay in code blocks and in a Read tool view. Text in such a comment is hidden from the model in this tool. Direct, one tool, version-dependent. |
| A8 | C6, C7, C22 | supports | [[CLM-20261115-004 Simple structure helps AI tools read content correctly]] | Indirect support, same kind of source. The page advises concrete instructions, markdown headers and bullets, and under 200 lines. CLM-004 claims that simple structure helps AI tools read documents. The topics differ: the page is about instruction files that Claude follows, CLM-004 is about documents that AI chunks and reads. Both are vendor advice with no data (Brief §10). They do not raise the evidence strength by much. The 200-line target is also close to the size limit in A3, so it may be a load-limit effect, not a reading effect. The Brief does not say. |
| A9 | C14 | research-gap | [[CON-20261115-001 Agent memory protocol for file-based memory]] | The Brief says the page does not state how Claude decides what auto memory is worth saving (§10). The page also gives no review step for these notes. The Brain protocol asks that agents do not silently rewrite decisions and personal facts. Whether auto memory fits that rule is not known from this source. This is a gap in the source, not a finding against the Brain. |
| A10 | C13 | qualifies | [[CON-20261113-004 Set up an AI-maintained wiki]] | Difference in tool and conditions. Step 4 of the setup asks for "a `claude.md` or `Agents.md` file". The Okhlopkov account (cited in CON-004) uses a central `AGENTS.md`. The page says that Claude Code reads AGENTS.md by default only when no CLAUDE.md or CLAUDE.local.md exists in or above the working directory, needs v2.1.277 or later, and some sessions cannot read it. A vault whose rules are in AGENTS.md may not be read by Claude Code in every setup. The Brain sources do not say which tool they used. Version-dependent. |
| A11 | C24 | supports | [[CON-20261113-004 Set up an AI-maintained wiki]] | Step 5 (Tidy) lists contradictions, outdated claims, and missing topics, and does not fix them automatically. `/doctor prompt-audit` reports outdated, missing-reference, and conflicting instructions and changes nothing until the user asks. The pattern matches. The page describes a feature, not a result, and the audit covers instruction files, not a wiki. Weak support for the idea of an audit that only reports. Needs v2.1.283 or later. |
| A12 | C4, C5, C8, C9, C10, C11, C20, C21, C23 | new-concept | — | The Brain has no concept for how Claude Code loads instruction files: four scopes (managed, user, project, local) that concatenate and do not override; subdirectory files and path-scoped rules that load on demand; imports up to four hops that do not cut context cost; root CLAUDE.md re-read after `/compact`; per-file limits for on-demand files; managed files that `claudeMdExcludes` cannot remove. These are product facts and several are tied to versions (up to v2.1.309) and to context-window sizes and named models. They can age fast. They are a mechanism, not a claim about what works. |
| A13 | C22, C18 | new-process | — | A possible process: add to CLAUDE.md when the same mistake repeats, a review catches a miss, or a correction repeats; keep facts needed in every session; move multi-step or part-of-codebase items to a skill or path-scoped rule; generate a start with `/init`. Source advice, not tested (E27, E24). The Brain has no process on maintaining instruction files. |
| A14 | C6, C7 | research-gap | [[Research Questions]] | The page gives no benchmark that file length (200 lines) or specific wording changes adherence (Brief §10). Row 5 of Research Questions asks if structure changes how well an AI reads and answers. That row is about documents, so it does not cover instruction files. The gap is close but not the same. |
| A15 | C2, C7 | new-relationship | [[CLM-20261115-006 Agent autonomy raises cost and error risk]] | Weak link. CLM-006 says that agent autonomy raises cost and compounding errors (one sentence, no data). The page says that instructions to Claude are not enforced and may conflict. Both are cautions from the same vendor about reliance on agent behavior. The page does not mention cost or compounding. I do not claim support. A "related" link at most. |

No finding contradicts a Brain record. No Brain Claim is weakened by a direct conflict. A3, A6, and A10 qualify the Brain by scope, tool, and version.

### Recommended action

`advance`. Findings A1, A5, A6, A12, and A13 are possible reasons to change the Brain. A1, A5, and A12 add records the Brain lacks. A6 qualifies two existing records. A3, A7, and A10 are smaller qualifications or extensions that the Managing Editor can weigh. A2, A4, A8, A11, and A15 are weak links, to add only as related links with the evidence level stated.

Reason: the source is direct and explicit for what the product does, and Justin's purpose is clear. Three cautions for the Change Order. First, this is vendor documentation: it is strong for "the page says X about the product at this version" and not for "this practice works". Evidence strength for any advice claim (200 lines, specific instructions, when to add) should stay `weak`. Second, mark currency and version on each product-behavior fact. Third, do not state the quotes that the Brief marks as partial sentences (E5, E13, E14, E17, E21) as full sentences.

### Orchestrator comparison of 1a and 1b

The Orchestrator compared 1a (Managing Editor) with 1b (Editor, independent) on 2026-11-15, as Rulebook §4.5 item 3 requires. Both say `advance`. They agree on the action. The Editor rates relevance `high`, because the vault itself runs on Claude Code. It finds more qualifying points than the Change Order uses.

**They agree on:** a new Concept on how Claude Code loads instructions and memory, with a currency note (no page date, versions up to v2.1.309) (X1); no Claim from feature descriptions, because they change with each version; a link in MOC-20261115-002 (X2) and in CON-20261115-001 (X3); no contradiction.

**They differ on:**
1. **The main finding (Editor A6).** The page says CLAUDE.md content is context, not enforced configuration. The Brain's agent protocol (CON-20261115-001) and the wiki setup rules (CON-20261113-004: "get an explicit yes before a file is moved", "never delete") are written as instructions only. The Editor says the page qualifies them. This Change Order only links CON-20261115-001 and adds no caveat. It does not touch CON-20261113-004. **This matters for Justin's own vault**: his approval rules in `CLAUDE.md` are instructions, not hard enforcement.
2. **Other qualifying points.** The Editor says the page qualifies CON-20261113-003 and CLM-20261115-001 on indexes (A3: an auto-loaded index file is cut after a size limit) and CON-20261113-004 on `AGENTS.md` (A10). This Change Order edits none of them.
3. **A Process.** The Editor says "when to add to CLAUDE.md" can be a Process (A13). The Managing Editor keeps it as advice inside the Concept.
4. **Research Questions.** The Editor says A14 may justify a row. This Change Order adds none.

**Options for Justin**
- **A.** Approve X1 to X3 as written (the Managing Editor's proposal).
- **B.** Approve X1 and X2, reject X3 (the link). The Concept stands alone.
- **C.** Approve X1 to X3 and ask for more rows: a caveat on CON-20261115-001 and CON-20261113-004 about instructions and enforcement (item 1), plus items 2 and 4. The Orchestrator asks the Managing Editor for a new draft.
- **D.** Reject this Change Order.

**Overlap:** X2 edits MOC-20261115-002, as do CO-017, -018, and -019. X3 edits CON-20261115-001, as does CO-017 X5. The edits are additive. Apply one at a time and rebase.

## 2. Proposed changes

| Label | Change type | Record | Change |
|---|---|---|---|
| X1 | create | new: Claude Code instructions and memory | New Concept: two mechanisms, scopes, loading, advice, currency, caveats |
| X2 | relate | [[MOC-20261115-002 Building AI agents]] | Add the Concept, the source, and one gap |
| X3 | relate | [[CON-20261115-001 Agent memory protocol for file-based memory]] | Add one link to the new Concept |

### X1

- Current: none
- Proposed: Draft: `.staging\proposed\CC Claude Code instructions and memory.md`. Title "Claude Code instructions and memory", Concept (`kind: definition`), status `accepted`. Concepts carry no `confidence` or `evidence-strength`.
- Evidence: [[SRC-20261115-011 Claude Code memory, Anthropic docs|Claude Code memory]] · E1 to E10, E12, E13, E15 to E19, E21 to E23, E25 to E28
- Reason: A1 to A24. The Concept states the page's terms as the vendor's description and marks the currency (no page date; versions up to v2.1.309; captured 2026-11-15). Quotes E1, E2, E5, E6, E9, E21, E22, E23, and E26 were checked against the page (14 of 14 in the Brief). I kept version limits out, except the 200-line size advice and the `MEMORY.md` load limit, each marked as the page's text at capture.

### X2

- Current (MOC-002, Key concepts): one bullet, "[[CON-20261115-003 Workflows and agents|Workflows and agents]] (definitions and five patterns from one vendor article)". Other open Change Orders add more bullets.
- Proposed, new Key concepts bullet: "- [[Claude Code instructions and memory]] (how one product loads user instructions and keeps notes; vendor documentation, can change by version)". Draft title. The Orchestrator sets the final name.
- Proposed, new Evidence "For" line: "- For: [[SRC-20261115-011 Claude Code memory, Anthropic docs|How Claude remembers your project (Anthropic, Claude Code documentation, undated, captured 2026-11-15)]]. Product documentation by the vendor, `source-quality: high`, currency 4 of 5. Describes CLAUDE.md files and auto memory. No data, no test of the advice. Version-dependent."
- Proposed, new Disputes and gaps bullet: "- The Claude Code documentation page has no date or version and changes with each release. The Brain keeps no Claim from it."
- Evidence: [[SRC-20261115-011 Claude Code memory, Anthropic docs|Claude Code memory]] · E2, E5
- Reason: A1 to A3. The new Concept needs a MOC link. The change is additive and edits no existing sentence. CO-20261115-017, -018, and -019 also add lines to this MOC. The Orchestrator merges the four edits on apply.

### X3

- Current (CON-001, Related concepts): two bullets (CON-003 of the wiki and CON-004 of the setup). CO-20261115-017 X5 adds a third bullet.
- Proposed, new last Related concepts bullet: "- [[Claude Code instructions and memory]]: one product's way to load user-written instructions (CLAUDE.md) and Claude-written notes (auto memory, with an index file). The Brief gives no information on whether its index file is the same as this protocol's memory map file. A link, not a dependency." Add the same link to `related` in the frontmatter. Draft title.
- Evidence: [[SRC-20261115-011 Claude Code memory, Anthropic docs|Claude Code memory]] · E3, E17
- Reason: A25. This row edits the same record and the same list as CO-20261115-017 X5. Both rows only add a bullet and a `related` entry, so they do not conflict. If both apply, the order of the two bullets is the order of apply. The Editor did not review the link between the two new Concepts.

## 3. Impact

Direct:
- One new Brain record (a Concept).
- MOC-002 gets two bullets and one evidence line. No existing sentence changes.
- CON-001 gets one link and one `related` entry. No step or caveat changes.
- The Source note `change-orders` field gets this Change Order.

Possible:
- The Knowledge System of this vault uses CLAUDE.md files and `.claude\agents\`. The Brain makes no statement on that design. A link is not a dependency.
- The Curator can flag the Concept for review when the page changes.
- The Concept can link to the draft Concept "Agent memory" (CO-20261115-018 X1) after apply. I propose no row for it.

## 4. Risks and limits

- Product documentation with no date or version. The Concept can become outdated without notice. It carries a currency note, and no Claim depends on it.
- One source, from the vendor, with no test of its advice.
- The draft links use draft titles. The Orchestrator sets the final IDs and changes the links in the draft and in X2 and X3.
- Three other open Change Orders edit the same MOC, and one edits the same Concept. Apply order matters only for the line order.
- If no action is taken: the Brain has no record on this tool. No decision depends on it, so the risk is low.

## 5. Priority

`low`. The change is additive and small: one Concept and two links. It matters to Justin's own vault tools, but no Brain decision depends on it, and delay carries no risk. The content can change with each version, so urgency is low.

## 6. Decision required

Approve the Change Order, approve rows one by one, or reject it?

- X2 and X3 depend on X1. X3 can be decided alone only if X1 is approved.
- Question: do you want a Concept on how Claude Code loads instructions and memory, marked as version-dependent vendor documentation, with no Claim?
