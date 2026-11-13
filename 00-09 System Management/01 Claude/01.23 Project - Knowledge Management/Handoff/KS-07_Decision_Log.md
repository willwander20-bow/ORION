---
title: Knowledge System — Decision Log
id: KS-07
system: Knowledge System
type: decision-log
status: draft-for-review
version: 0.3
created: 2026-11-12
sources: [KVC, K03]
---

# Knowledge System — Decision Log

## 1. Status

This log has two parts.

- Part A: decisions that the KMO package lists in a decision table [K03 §1].
- Part B: design statements in KVC. KVC has no decision table. KVC does not label these statements as decisions.

No source records the date of a decision or the person who made it.

Some entries conflict with entries in the other part. The "Conflict" column shows the register ID. A conflict means that the decision needs confirmation.

New decisions go in Part C. Part C overrides Parts A and B where they differ.

## 2. Part A: decisions in the KMO package [K03 §1]

| ID | Decision | Reason in source | Conflict |
|---|---|---|---|
| D-01 | Use a four-agent model. | Each agent has a distinct responsibility. | KS-C-17 |
| D-02 | Add a Knowledge Curator. | The Brain needs continuous maintenance and retrieval. | KS-C-19 |
| D-03 | Use an Orchestrator. | One role must coordinate tasks and workflow state. | KS-C-17 |
| D-04 | Keep the user as Knowledge Owner. | The user has final control of substantive knowledge. | None |
| D-05 | Use the Brain as the approved knowledge collection. | Proposed knowledge must stay separate from accepted knowledge. | KS-C-07 (term) |
| D-06 | Use Reference Briefs as Reporter output. | This makes a consistent source record. | KS-C-12 |
| D-07 | Use Knowledge Assessments as Editor output. | This records how a source relates to the Brain. | KS-C-16 |
| D-08 | Use Change Orders as Managing Editor output. | This makes a controlled change proposal. | KS-C-16, KS-C-32 |
| D-09 | Do not let agents approve substantive Brain changes. | This prevents self-approval and silent changes. | None |
| D-10 | Start with the Claude Code main session as Orchestrator. | This prevents workflow code that comes too early. | X-C-04 |
| D-11 | Use Markdown and YAML first. | This supports Obsidian and keeps data portable. | None |
| D-12 | Do not build more agents yet. | The four roles must prove their value first. | KS-C-17 |
| D-13 | Build the data model before advanced automation. | The workflow depends on clear records. | None |
| D-14 | Build Knowledge HQ after the core workflow. | The interface must show real system data. | KS-C-15 |
| D-15 | Make the future Mailroom the default intake path. | It gives the user one clear place to submit material. | X-C-01 |
| D-16 | Keep intake context optional. | The reason for a save can help assess relevance. | X-G-05 |
| D-17 | Keep intake channels open for later expansion. | Phone share and browser capture can use the same intake queue. | X-C-08 |

## 3. Part B: design statements in KVC

| ID | Statement | Source | Conflict |
|---|---|---|---|
| KV-01 | Use three layers: Source, Brief, Atomic Note. | KVC §2.1 | KS-C-06 |
| KV-02 | Use the term "brief". Use it in the folder name, the file name prefix, and the `type` field. | KVC §2.1 | KS-C-07 |
| KV-03 | The manual workflow comes first. The vault must work fully without AI. | KVC §1, §2.2 | KS-C-04 |
| KV-04 | Only the human marks a note as reviewed or promoted. AI can draft. | KVC §2.2, §6.4 | KS-C-05 |
| KV-05 | Topics, source types, and quality ratings come from fixed lists. | KVC §2.2 | KS-G-06 |
| KV-06 | Organize Sources and Briefs by type, not by topic. | KVC §5 | KS-C-13 |
| KV-07 | Keep topics in frontmatter tags and in MOCs, not in folders. | KVC §5 | None |
| KV-08 | Keep the raw extracted text next to its Brief. | KVC §5 | KS-C-21 |
| KV-09 | Use typed links only for important relationships. | KVC §6.5 | KS-C-22 |
| KV-10 | Record contradictions. Do not resolve them silently. | KVC §6.5 | None |
| KV-11 | Do the manual pilot before any agent instructions. | KVC §7 Phase 4 | KS-C-04, KS-C-25 |
| KV-12 | The Triage Assistant drafts Briefs only. It does not make or edit Atomic Notes. | KVC §7 Phase 5 | KS-C-05, KS-C-17 |
| KV-13 | One Schema note is the source of truth for manual notes and AI notes. | KVC §8, §10 | None |

## 4. Recommendations in the sources that are not decisions

K05 §3 lists eight recommendations. They are not decisions.

| ID | Recommendation | Note |
|---|---|---|
| REC-01 | Add a processing level: archive only, quick brief, full review. | K02 and K06 use it as design. Refer to KS-C-29. |
| REC-02 | Keep the submission context separate from source content. | K07 and KCM use it as design. |
| REC-03 | Add a Research Question Registry. | Refer to KS-C-30. |
| REC-04 | Design retrieval as a core feature from the start. | K02 §11 uses it as design. |
| REC-05 | Add an audit trail early. | K04 Phase 1 includes Audit Event. |
| REC-06 | Keep the Curator permissions narrow. | K03 §5 uses it as design. |
| REC-07 | Design for knowledge that depends on time, place, version, or conditions. | K07 §9 has `valid_from` and `valid_to`. |
| REC-08 | Do not add more agents yet. | Same as D-12. |

K05 §1 also gives a recommendation for each open decision. Refer to KS-08, section 6.

## 5. Part C: decisions from the review

Record each new decision here.

| ID | Date | Decision | Reason | Items closed | Documents to update |
|---|---|---|---|---|---|
| KS-D-01 | 2026-11-12 | The baseline is a defined combination. The KMO package is the later evolution of KVC. Default rule: where KVC and KMO differ, KMO governs, unless a different Part C decision applies. KVC content with no KMO equivalent stays in the baseline. Items that the default rule closes need confirmation in development. | Justin: KVC was the first idea. KMO grew from it to automate more. | KS-C-01. Refer to KS-08, section 8. | All KS documents |
| KS-D-02 | 2026-11-12 | Remove the manual pilot. Agent work does not wait for a pilot. | Justin: "it's gone". | KS-C-04. Retires KS-CON-04, KS-CON-05, KS-NF-01, KS-NF-02, KS-NF-12, KS-BR-03. | KS-01, KS-02, KS-06 |
| KS-D-03 | 2026-11-12 | AI can write to the Brain only after Justin approves the change. No agent creates, edits, or deletes Brain content without approval. The Change Order is the full record of each applied change: what changed, why, the evidence, and the approval. Each Brain note links to each Change Order that changed it. | Justin accepts AI writes if each change is documented and approved. | KS-C-05. Retires KS-HA-09, KS-HA-10. KS-G-02 stays open: no agent is named to apply the change. | KS-02, KS-03, KS-04 |
| KS-D-04 | 2026-11-12 | Keep all 14 record types for now. Review them against the vault in development, and trim where useful. | ChatGPT made the KMO package with no knowledge of the vault. It used app terms such as "objects". | KS-C-06 PINNED. KS-C-35 PINNED. | KS-04 |
| KS-D-05 | 2026-11-12 | Dependence on Obsidian features is PINNED. The default rule does not apply. The KMO rule "do not lock to Obsidian" possibly has the same cause as KS-D-04. | Review note from the review. | KS-C-14 PINNED. | KS-02, KS-03 |
| KS-D-06 | 2026-11-12 | Until the Intake System exists, Justin gives each source to the Reporter by hand. | X-D-02 | | KS-05 |
| KS-D-07 | 2026-11-12 | The Orchestrator owns the routing rulebook and records a routing result on each item. | X-D-07, X-D-08 | KS-C-29 in part. KS-BR-05 in part. | KS-02, KS-03, KS-05 |
| KS-D-08 | 2026-11-12 | The store of accepted knowledge is "the Brain" for now. The system name stays a working name. | Justin's choice. | KS-C-02 in part, KS-C-07 in part. | PRG-00 |
| KS-D-09 | 2026-11-12 | The term is "Reference Brief". Justin renamed the agents in a later ChatGPT session. Justin updates the agent names by hand. Review the names in development. | Justin's choice. | KS-C-07 in part. | PRG-00, KS-05 |
| KS-D-10 | 2026-11-12 | The Brain does not use Johnny.Decimal inside its area. It is mostly flat, as in a Zettelkasten main slip box. Folders by record type at most. No topic folders. | Justin's intent. Zettelkasten practice. | KS-C-13, KS-C-37, KS-Q-03. KS-Q-12 in part. | KS-03 |
| KS-D-11 | 2026-11-12 | The Knowledge System work package ID waits for the location decision. | Justin | X-G-08 in part | |
| KS-D-12 | 2026-11-12 | The Reporter supersedes the Triage Assistant (default rule). Confirm in development. | KS-D-01 | KS-C-17 DEFAULT | KS-03, KS-05 |
| KS-D-13 | 2026-11-12 | The `.claude/skills/` procedures and the output templates are development deliverables. | Justin | KS-G-03, KS-G-14 PLANNED | KS-05 |
| KS-D-14 | 2026-11-12 | Remove the capture channels from KMO Phase 8. They move to the Intake System. Phase 8 keeps scheduled Curator review, event-triggered review, and external integrations. | X-D-04 | X-C-08 | KS-06 |
| KS-D-15 | 2026-11-12 | Four cross-system decisions apply to the Knowledge System. They are X-D-11 (no paid tools), X-D-12 (work content), X-D-13 (needs-review gate), and X-D-14 (5 to 10 hours each week). | PRG-00, section 11 | | KS-01, KS-02 |
| KS-D-16 | 2026-11-12 | Location (Phase 0). The Knowledge System lives in the new ORION area `20-29 Knowledge`. Categories: `20 Knowledge Backend`, `21 Brain`, `22 Workflow`. The Orchestrator `CLAUDE.md` and `.claude/agents/` are at the area root. Claude Code starts in the area folder. Agent write access is limited to the area. Refer to X-D-20. | Justin selected the recommended option. A separate area gives room to grow and one folder tree to limit agent writes. | KS-C-03, KS-Q-19, X-D-15 | KS-01, KS-03 |
| KS-D-17 | 2026-11-12 | Project documents (Phase 0). The project documents go in `01 Claude\01.23 Project - Knowledge Management`. This replaces `01.99`. No work package. The area ID `20-29` is the Knowledge System ID. Refer to X-D-21. | Justin's choice. | KS-D-11 | PRG-00 |
| KS-D-18 | 2026-11-12 | Package import (Phase 0). The KMO package and KVC are copied, with no changes, to `20.04 Knowledge Reference\Source Package - KMO and KVC\`. The source-copy `CLAUDE.md` is renamed `KCM - KMO CLAUDE (source copy).md`. The source-copy `.claude` folder is renamed `_claude`. The four agent files are installed, with no changes, in `20-29 Knowledge\.claude\agents\` as draft input. | Justin approved the Phase 0 order. The renames prevent Claude Code from loading the old instructions. | KS-DEP-05 in part | KS-05 |
| KS-D-19 | 2026-11-12 | First drafts (Phase 0): ORION root `CLAUDE.md` (house rules, v0.1) and the Orchestrator `CLAUDE.md` in `20-29 Knowledge` (v0.1). Justin must review both. | Phase 0 deliverables (KS-06 §3, X-D-20). | X-C-04 in part | PRG-00 §3.2 |
| KS-D-20 | 2026-11-12 | Justin reviewed the Orchestrator `CLAUDE.md` (now v0.2). Keep the write scope: agents write only in `20-29 Knowledge`. The routing result on Intake notes needs approval until X-G-10 is decided. Keep the rules "no Knowledge HQ yet" and "portable Markdown and YAML". Keep the ASD-STE100 style. | Justin: STE keeps the documents clear and short, and saves usage. | | |
| KS-D-21 | 2026-11-12 | Naming and ID rules (Phase 0), in `20.04 Knowledge Reference\Knowledge System Schema.md` v0.2. Record ID: `PREFIX-YYYYMMDD-NNN`, sequence for each prefix and day. 14 prefixes; `MOC` added. File name: `ID Short title.md`; the name does not change. Links: wikilinks; aliases in body text. Field style: lowercase with hyphens; `YYYY-MM-DD` and `YYYY-MM-DDTHH:mm`. Core frontmatter: `id`, `type`, `title`, `status`, `created`, `updated`, `created-by`, `schema-version`. No `tags` yet. The root house ID rules apply to Johnny.Decimal IDs only. | Justin. ID in the file name: no collisions, stable links, fast agent search. | KS-C-08, KS-C-24, KS-Q-11, KS-G-23. X-D-09 in part. | KS-04 |
| KS-D-22 | 2026-11-12 | `22 Workflow` folders (Phase 0): `22.21 Sources`, `22.22 Reference Briefs`, `22.23 Knowledge Assessments`, `22.24 Change Orders`, `22.25 Workflow Log`. No folders yet for Claim Candidates, Evidence, or Research Questions. `21 Brain` stays flat. The routing rulebook goes in `20.04`. Schema §2.4. | Justin. IDs start at `.21` (X-D-24). Folders that can retire are not made, because IDs are never reused. | KS-Q-12 in part | KS-03 |
| KS-D-23 | 2026-11-12 | Phase 0 exit test PASSED. A fresh read-only session in `20-29 Knowledge` loaded both `CLAUDE.md` files and answered 9 of 9 role and rule questions correctly, with sources. Fixes from its gap list: area `CLAUDE.md` v0.3 (agent phase table, area archive `20.09`), Schema v0.3 version text. Other gaps go to KS-08 §8.5. Phase 0 is complete, except backup and version control, which Justin deferred. | Exit test of KS-06 §3. | KS-DEP-05 | KS-06, KS-08 |
| KS-D-24 | 2026-11-12 | Sessions in `20-29 Knowledge` log in `22.25 Workflow Log`, file `YYYY-MM-DD Knowledge Work Log.md`. They do not write to `01.13`. Root `CLAUDE.md` §3.5 lets an area name its own log. The project manager session in `01.23` still logs in `01.13`. | Justin. The write scope stays inside the area. | KS-C-39 | |
| KS-D-25 | 2026-11-12 | Record types (Phase 1). Seven types are notes: Source, Reference Brief, Knowledge Assessment, Change Order, Brain Claim, Concept, MOC. Claim Candidates and Evidence are tables in the Brief, with local labels. Relationships are typed link fields on the Brain Claim, with a reason for each. Process is a Concept with `kind: process`. Workflow state is the `status` of the Source. Audit events are rows in the daily work log. Research Questions are rows in one list note. The approval is a set of fields in the Change Order. "No Change" is a value in the Assessment. Schema §2.2, §2.5. | Justin agreed with all recommendations. A note only where a record is linked from many places, has its own lifecycle, is approved as a unit, or is one agent's output. Full review: 3 to 4 notes for each source, not 10 to 15. | KS-C-06, KS-C-22, KS-C-27, KS-C-35, KS-G-25. KS-C-30 in part. KS-R-22 reduced. | KS-04, KS-05 |
| KS-D-26 | 2026-11-12 | Status values and stored source text (Phase 1). Brain Claim status: `accepted`, `disputed`, `superseded`, `retired`, `needs-review`. Source status (also the workflow state): `new`, `routed`, `briefed`, `assessed`, `change-proposed`, `done`, `archived`, `skipped`, `failed`, `needs-review`. Stored text: when the Reporter gets the full content, it saves a companion file `SRC-… Short title (text).md` (or the PDF) in `22.21`. Books and sources it cannot get: excerpts and locators only. Schema §5.1, §5.2. | Justin accepted all recommendations. Proposals live in the Change Order, so a Brain Claim needs no proposal states. Stored text lets a person check each locator (KS-R-02). | KS-C-09, KS-C-21, KS-Q-05, KS-Q-15 in part, KS-Q-18 in part | KS-04 |
| KS-D-27 | 2026-11-13 | Justin approved the Phase 1 template drafts (Schema v0.6, six review items). (1) `source-type`: 10 values; `pdf` removed, `social-post` added. (2) No `content_hash` on the Source. Evidence rows keep directness and limits only. (3) Brain version = ID of the last applied Change Order. A Git commit is not the version. (4) Change Order: no `investigate` or "No Change" type; `retire` added; `status` and `decision` are separate fields. (5) Brain Claim: `evidence-strength` field and five relationship types. (6) Each MOC edit needs a Change Order until Phase 6 (KS-C-38). Templates `schema-version` "0.6". | Justin accepted items 2 to 6 as recommended. Item 1: `pdf` is a format, not a kind of source; social posts need their own value. | KS-G-01, KS-G-04, KS-G-05, KS-C-26 confirmed. KS-Q-15 in part. | KS-04 |
| KS-D-28 | 2026-11-13 | Phase 1 exit test PASSED. Justin read the seven records in Obsidian: "They read fine". Phase 1 is complete. Source "File over app" (Steph Ango, 2023) gave one record of each of the seven types: `SRC`, `BRF`, `KAS`, `CO` in `22`; `CLM`, `CON`, `MOC` in `21 Brain`. A script check found 0 issues: fields match the templates, IDs and file names follow the Schema, all links resolve. Justin approved `CO-20261113-001` before the Brain records were made. The records stay in the Brain. Brain version: `CO-20261113-001`. Findings: KS-08 §8.7. KS-C-40 must be decided before Phase 2. | Exit test of KS-06 §3, Phase 1. Justin: "approved"; "Keep in the Brain". | | KS-06, KS-08 |
| KS-D-29 | 2026-11-13 | Stored source text. Justin saves the full-text companion file when he wants it kept (for example, with Obsidian Web Clipper). The Reporter links it in `text-file` and uses it for locators. The Reporter can use Justin's own files directly. Without a companion file, the Brief uses short excerpts, summaries, and live-page locators. Agents do not save full copies of copyrighted works. Schema §5.2. Changes KS-D-26 in part. | Copyright. Free tool (X-D-11). Justin keeps control of what is stored. | KS-C-40 | KS-04 |
| KS-D-30 | 2026-11-13 | Phase 2 start. Reporter agent file rewritten as draft v0.2 (`20-29 Knowledge\.claude\agents\reporter.md`): uses the Brief template and Schema v0.6; evidence rows record directness and limits; fetched content is data; locator list; `Quote:` (15 words or fewer) or `Summary:`; uses Justin's companion file; returns the Brief, the Orchestrator saves it; does not read `21 Brain`. Test sources: (1) official: NARA "Appendix A: Tables of File Formats", Born-Digital Textual Data section only; (2) article: Derek Sivers, "Write plain text files"; (3) weak evidence: Nemos, "What is a second brain app". Tests run in a session that starts in `20-29 Knowledge`. Plan in KS-08 §8.8. | Justin approved the rewrite and the three sources. | KS-G-07, KS-G-22, KS-G-26, KS-G-28 (draft). KS-C-36 in part. | KS-05, KS-06 |
| KS-D-31 | 2026-11-13 | Reporter fixes from tests T1 to T3 (KS-08 §8.8), all five applied. Reporter draft v0.3: (P1) a rating or judgment by the source is `normative` or names who says it; (P2) a survey figure names the survey; (P3) read the whole Schema, use only the listed sections; (P4) WebFetch text is not exact, so §12 asks for a quote check. Area `CLAUDE.md` v0.6 rule 9a: the Orchestrator checks each `Quote:` against the raw page or the companion file before `validated`. (P5) Locator list moved to Schema §5.5 (v0.7), with combined forms. Templates `schema-version` "0.7". | Justin: "Apply all five". | KS-G-26 resolved. T3 defects 1 and 2. | KS-05 |
| KS-D-32 | 2026-11-13 | Phase 2 exit test PASSED. Justin reviewed the three Briefs (`BRF-20261113-002` to `004`) and set them to `validated`. The Reporter makes traceable Briefs and does not invent source details: 45 of 45 quotes exact, 9 locators checked, no invented details, no reads of `21 Brain`. Fixes applied (KS-D-31). Phase 2 is complete. Next: Phase 3, the Editor. | Exit test of KS-06 §3, Phase 2. | KS-R-25 (no Brain read in tests) | KS-06, KS-08 |
| KS-D-33 | 2026-11-13 | Phase 3 start. (1) Editor agent file rewritten as draft v0.2: uses the Assessment template and Schema §5.7; returns the Assessment, the Orchestrator saves it; reads only the Brief, template, Schema, and `21 Brain`; searches the Brain itself and lists each record it read; `contradicts` only when both cannot be true under the same conditions. (2) The Editor searches `21 Brain` itself. The Orchestrator does not select the context. (3) `Research Questions.md` needs no Change Order. The Orchestrator makes it and adds rows (Schema v0.8 §2.5, area `CLAUDE.md` rule 2). (4) The real Brain is the test Brain. (5) Tests E1 to E5 in KS-08 §8.9: Sivers (supports), NARA (new and qualifies), Bologov "Write Hypertext, not Plaintext" (challenges), File over app again (duplicate), Nemos (weak). | Justin approved all recommendations. The Brain is small, so a direct search is simple and complete. | KS-G-27 | KS-05, KS-06 |
| KS-D-34 | 2026-11-13 | Editor fixes from tests E1 to E5 (KS-08 §8.9), all three applied. Editor draft v0.3: (D1) `new`, `new-concept`, `new-process` use `—` when no Brain record is related; the final check requires a link only for the relationship types and `research-gap`. (D2) `new` when a Claim Candidate can stand as its own Brain Claim; a relationship type when it adds to an existing claim; one row for each if both apply. (D3) The Assessment copies `title` from the Brief. | Justin: "Apply all three". D2 accepts the Editor's typing in E2 as correct. | E2 deviation | KS-05 |
| KS-D-35 | 2026-11-13 | Phase 3 exit test PASSED. Justin reviewed the four Assessments (`KAS-20261113-002` to `005`) and set them to `validated`. The Editor identifies useful relationships and explains its reasons: no wrong `contradicts`, each difference in scope, definition, condition, or date named, weak evidence weighed. The Orchestrator caught the duplicate (E4). Fixes applied (KS-D-34). Phase 3 is complete. Next: Phase 4, the Managing Editor. Input: three `advance` Assessments (KAS-002 Sivers, KAS-003 NARA, KAS-005 Bologov). | Exit test of KS-06 §3, Phase 3. Justin: "Yes, commit and pass". | | KS-06, KS-08 |
| KS-D-36 | 2026-11-13 | Phase 4 start. (1) Managing Editor agent file rewritten as draft v0.2: change types from Schema §5.8; returns the Change Order as text, the Orchestrator saves it with status `open`; decision fields stay empty; No Change is a reply, not a Change Order; reads open Change Orders on the same records; final check. (2) Tests M0 to M5 in KS-08 §8.10: KAS-004 (wrong input), KAS-002 Sivers (main types), KAS-003 NARA (more than one claim), KAS-005 Bologov (overlap), stale Brain version (after the first applied Change Order), clarity review by Justin. | Justin: "Approve, run M0-M3". | | KS-05, KS-06 |
| KS-D-37 | 2026-11-13 | Phase 4 exit test PASSED. The Managing Editor makes clear proposals and never changes the Brain: no agent changed a file in 6 runs; Justin decided CO-002, CO-005, and CO-006 from the Change Orders; the version check stopped CO-003 and CO-004, and the re-checks (CO-005, CO-006) found what had changed. Brain version `CO-20261113-006`. Proposed edits R1 to R5 (KS-08 §8.10) stay open. Python is a possible enhancement for bulk edits, not installed now. Phase 4 is complete. Next: Phase 5, Orchestration. | Exit test of KS-06 §3, Phase 4. Justin: "Commit changes and pass this testing". | R1 to R5 open | KS-06, KS-08 |

## 6. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First consolidated draft. |
| 2026-11-12 | 0.2 | Added Part C decisions KS-D-01 to KS-D-15 from the review. |
| 2026-11-12 | 0.3 | Phase 0: added KS-D-16 (location) and KS-D-17 (project documents). |
| 2026-11-12 | 0.4 | Phase 0: added KS-D-18 (package import) and KS-D-19 (first `CLAUDE.md` drafts). |
| 2026-11-12 | 0.5 | Phase 0: added KS-D-20 (Orchestrator `CLAUDE.md` review). |
| 2026-11-12 | 0.6 | Phase 0: added KS-D-21 (naming, IDs, core frontmatter). |
| 2026-11-12 | 0.7 | Phase 0: added KS-D-22 (`22 Workflow` folders). |
| 2026-11-12 | 0.8 | Phase 0: added KS-D-23 (exit test passed). |
| 2026-11-12 | 0.9 | Added KS-D-24 (Knowledge System work log). |
| 2026-11-12 | 0.10 | Phase 1: added KS-D-25 (record types). |
| 2026-11-12 | 0.11 | Phase 1: added KS-D-26 (status values, stored source text). |
| 2026-11-13 | 0.12 | Phase 1: added KS-D-27 (template review). |
| 2026-11-13 | 0.13 | Phase 1: added KS-D-28 (exit test). |
| 2026-11-13 | 0.14 | Added KS-D-29 (stored source text). |
| 2026-11-13 | 0.15 | Phase 2: added KS-D-30 (Reporter draft, test sources). |
| 2026-11-13 | 0.16 | Phase 2: added KS-D-31 (Reporter fixes P1 to P5). |
| 2026-11-13 | 0.17 | Added KS-D-32 (Phase 2 exit test passed). |
| 2026-11-13 | 0.18 | Phase 3: added KS-D-33 (Editor draft, Brain search, Research Questions, tests). |
| 2026-11-13 | 0.19 | Phase 3: added KS-D-34 (Editor fixes D1 to D3). |
| 2026-11-13 | 0.20 | Added KS-D-35 (Phase 3 exit test passed). |
| 2026-11-13 | 0.21 | Phase 4: added KS-D-36 (Managing Editor draft, tests). |
| 2026-11-13 | 0.22 | Added KS-D-37 (Phase 4 exit test passed). |
