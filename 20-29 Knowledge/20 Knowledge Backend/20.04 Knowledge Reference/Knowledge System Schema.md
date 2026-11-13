---
title: Knowledge System Schema
type: reference
status: approved
schema-version: "0.6"
updated: 2026-11-13
---

# Knowledge System Schema

This note is the one source of truth for names, IDs, and fields in the Knowledge System (KV-13). Templates, agents, and Justin use the same rules.

Status: v0.6, Phase 1. Justin approved sections 1 to 4 (KS-D-21) and section 5 (KS-D-27). New records use the current `schema-version` in the frontmatter of this note. Phase 1 adds the fields for each record type in section 5.

## 1. Two kinds of ID

| Kind | Example | Rules |
|---|---|---|
| Johnny.Decimal ID | `22.21 Sources` | ORION house rules. A new one needs Justin's approval. |
| Record ID | `SRC-20261112-001` | This note. The Orchestrator assigns it. No approval for each ID. |

The ORION root `CLAUDE.md` §1.2 states this scope.

## 2. Record IDs

### 2.1 Format

`PREFIX-YYYYMMDD-NNN`

- `PREFIX`: the record type (table 2.2).
- `YYYYMMDD`: the date the record was created.
- `NNN`: a sequence number for that prefix on that date. Start at `001`.

Example: the second Source on 12 November 2026 is `SRC-20261112-002`.

### 2.2 Prefixes

| Record type | Prefix | `type` value |
|---|---|---|
Seven record types are notes (KS-D-25).

| Record type | Prefix | `type` value |
|---|---|---|
| Source | `SRC` | `source` |
| Reference Brief | `BRF` | `reference-brief` |
| Knowledge Assessment | `KAS` | `knowledge-assessment` |
| Change Order | `CO` | `change-order` |
| Brain Claim | `CLM` | `brain-claim` |
| Concept (includes processes) | `CON` | `concept` |
| MOC | `MOC` | `moc` |

Reserved prefix: `RQ` for a Research Question, if one becomes its own note later. The KMO prefixes `CCL`, `EVD`, `PRC`, `REL`, `TSK`, and `AUD` are not used. Refer to section 2.5.

### 2.3 ID rules

1. An ID never changes. An ID is never reused, also after the record is archived.
2. The title is not part of the ID.
3. To assign an ID, the Orchestrator searches the area for the highest `NNN` with the same prefix and date. Then it adds 1.
4. A script assigns IDs later, after the rules are stable (K05 §1).

### 2.4 Folder for each record type

| Record type | Folder |
|---|---|
| Source, with its stored source file | `22.21 Sources` |
| Reference Brief | `22.22 Reference Briefs` |
| Knowledge Assessment | `22.23 Knowledge Assessments` |
| Change Order, with the approval fields | `22.24 Change Orders` |
| Daily work log (`YYYY-MM-DD Knowledge Work Log.md`, no record ID), with audit rows and error records | `22.25 Workflow Log` |
| Brain Claim, Concept, MOC | `21 Brain`, flat (KS-D-10) |
| `Research Questions.md` (one list note, no record ID) | `21 Brain` |
| Routing rulebook | `20.04 Knowledge Reference` |

### 2.5 Content that is not a note (KS-D-25)

| Content | Where it goes |
|---|---|
| Claim Candidate | A table in the Reference Brief. Each row has a local label: `C1`, `C2`. |
| Evidence | A table in the Reference Brief. Each row has a local label: `E1`, `E2`, with excerpt and locator. A Brain Claim cites it as `[[BRF-… Title]] · E3 · p. 87`. |
| Relationship | Typed link fields on the Brain Claim (`supports`, `contradicts`, `refines`, and others), and one reason for each link in a "Relationships" section. |
| Process | A Concept with `kind: process`. Other Concepts have `kind: concept`. |
| Workflow Task | The `status` field of the Source. The review queue is a saved view of that field. |
| Audit Event | A row in the daily work log in `22.25`. |
| Change Order approval | Fields in the Change Order: `decision`, `decided`, `decision-note`. |
| No Change result | A value of the recommended action in the Knowledge Assessment. No Change Order. |
| Research Question | A row in `21 Brain\Research Questions.md`. A question becomes its own note (`RQ`) only when it collects links. |

## 3. File names and links

### 3.1 File names

`ID Short title.md`

Example: `CLM-20261112-001 Sleep debt reduces focus.md`

- The short title has a maximum of 60 characters. No `:` `/` `\` `?` `*` `"` `<` `>` `|` `#` `^` `[` `]`.
- The file name does not change after the record is created. If the title changes, change the `title` field only. Reason: agents write files outside Obsidian, so a rename does not update links.

Reasons for the ID in the file name: no name collisions, links stay valid, agents find a record with one file search, and the link shows the record type and date.

### 3.2 Links between records

- Use wikilinks to the full file name.
- In frontmatter, use the plain link: `"[[SRC-20261112-001 How sleep works]]"`. Put each link in quotes. Use a list for more than one link.
- In body text, add an alias so that the text reads naturally: `[[CLM-20261112-001 Sleep debt reduces focus|sleep debt reduces focus]]`.
- Obsidian then shows the links in the graph and in backlinks.

Note: wikilinks are an Obsidian format. They are plain text, so the files stay portable. KS-D-05 stays PINNED.

## 4. Fields

### 4.1 Field style (X-D-09)

| Item | Rule | Example |
|---|---|---|
| Field names | Lowercase. Hyphen between words. | `source-type`, `last-reviewed` |
| Values from a list | Lowercase. Hyphen between words. | `full-review`, `needs-review` |
| Date only | `YYYY-MM-DD` | `2026-11-12` |
| Date and time | `YYYY-MM-DDTHH:mm`, local time | `2026-11-12T21:30` |
| Empty value | Leave the field empty. Do not delete the field. | `published:` |

Reason for the date and time format: Obsidian Properties shows it as a date-time field.

### 4.2 Core frontmatter (all records)

Each record starts with this block. Each agent adds its own fields below the core block at its stage.

```yaml
---
id: SRC-20261112-001
type: source
title: How sleep works
status: new
created: 2026-11-12T21:30
updated: 2026-11-12T21:30
created-by: orchestrator
schema-version: "0.5"
---
```

| Field | Rule |
|---|---|
| `id` | Section 2. |
| `type` | Table 2.2. |
| `title` | Free text. Can change. |
| `status` | Values for each type come in Phase 1. Each type can use `needs-review` (X-D-13). |
| `created` | Set once. |
| `updated` | Set at each change. |
| `created-by` | `justin`, `orchestrator`, `reporter`, `editor`, `managing-editor`, `curator`. |
| `schema-version` | The version of this note that the record follows. |

### 4.3 Fields decided before Phase 1

| Field | Where | Source |
|---|---|---|
| `url` | Source | X-D-10 |
| `captured` | Source. Date and time. | X-D-10 |
| `change-orders` | Each Brain record. A list of links to each Change Order that changed it. | KS-D-03 |
| `routing-result` | Intake note. Values PINNED. | X-D-08 |

The core block has no `tags` field. Topics come later, with the topic list (KS-Q-01).

## 5. Fields for each record type

Phase 1. Refer to KS-04 §4 for the KMO starting point.

### 5.1 Status values (KS-D-26)

Brain Claim:

| Status | Meaning |
|---|---|
| `accepted` | Approved. The normal state. |
| `disputed` | Credible conflicting evidence exists. Not resolved. Both sides are linked. |
| `superseded` | Replaced by a newer claim. The field `superseded-by` links to it. |
| `retired` | No longer held. The note stays in place. |
| `needs-review` | Stops all work until Justin decides (X-D-13). |

A Brain Claim exists only after an approved Change Order. Each status change needs a Change Order (KS-D-03).

Source (the status is also the workflow state):

| Status | Meaning |
|---|---|
| `new` | Record made. Not routed. |
| `routed` | Routing result recorded. |
| `briefed` | Reference Brief saved. |
| `assessed` | Knowledge Assessment saved. |
| `change-proposed` | A Change Order waits for Justin. |
| `done` | Workflow complete. |
| `archived` | Archive only. No Brief. |
| `skipped` | Not processed. The reason is recorded. |
| `failed` | A stage failed. The error is in the work log. |
| `needs-review` | Stops all work until Justin decides (X-D-13). |

Status lists for the Reference Brief, Knowledge Assessment, Change Order, Concept, and MOC come with the templates.

### 5.2 Stored source text (KS-D-26)

1. When the Reporter gets the full content, it saves a companion file next to the Source in `22.21 Sources`.
2. File name: `SRC-… Short title (text).md`. For a PDF, save the PDF with the same name and its own extension.
3. Content: the extracted text, or a video transcript with time stamps.
4. Books, and sources that the Reporter cannot get: no companion file. The Brief uses excerpts and locators only.
5. Each locator in the Brief points into the companion file, or to a page of a source that Justin has.
6. The companion file is source data. It is not a record, and it has no core frontmatter.

### 5.3 Templates

Templates are in `20.07 Knowledge Templates`. File name: `TPL Record type.md`. They are plain Markdown with empty fields. They use no Templater code, so that agents and Justin use the same file. The allowed values are in this note, not in the template. Reason: Obsidian Properties removes YAML comments.

### 5.4 Source fields

Below the core block.

| Field | Value | Rule |
|---|---|---|
| `url` | Text | Empty for a file or a book. |
| `source-type` | `article`, `video`, `podcast`, `paper`, `book`, `course`, `documentation`, `forum`, `social-post`, `other` | One value. The kind of source, not the file format. A paper in a PDF is `paper`. `social-post`: a post on a social platform, for example X, LinkedIn, or Bluesky. `forum`: a thread on a discussion site, for example Reddit or Stack Overflow. |
| `author` | Text | Empty if not known. Do not guess. |
| `publisher` | Text | Site, channel, or publisher. |
| `published` | Date | Empty if not known. |
| `captured` | Date and time | When Justin gave the source. |
| `language` | `en` or other code | |
| `access-status` | `not-checked`, `full`, `partial`, `none` | Set by the Reporter. `none` stops the work (KS-R-03). |
| `text-file` | Link | The companion file (§5.2). Empty if none. |
| `processing-level` | `archive-only`, `quick-brief`, `full-review` | Set at routing. |
| `submission-context` | Text | Justin's reason for the save, in his words. Keep it separate from the source content. |
| `duplicate-of` | Link | Only if the source is a duplicate. |
| `brief` | Link | The Reference Brief. |

The Source has no `content_hash` field (KS-D-27). Evidence rows in the Brief (§8) record directness and limits only. Brief §11 records source quality.

### 5.5 Reference Brief fields

| Field | Value | Rule |
|---|---|---|
| `source` | Link | The Source. Required. |
| `processing-level` | `quick-brief`, `full-review` | Copy from the Source. |
| `source-quality` | `high`, `medium`, `low`, `unrated` | Overall rating. The reasons are in the body. |
| `extraction-completeness` | `full`, `partial`, `minimal` | How much of the source the Brief covers. |
| `extraction-confidence` | `high`, `medium`, `low` | The Reporter's confidence in its extraction. |
| `claim-count` | Number | Rows in the Claim Candidates table. |

Reference Brief status: `draft` (saved by the Reporter), `validated` (the Orchestrator checked it), `rejected` (not valid; the reason is in the work log), `superseded` (a newer Brief replaces it), `needs-review`.

Sections: a full review uses all 12 body sections of the template. A quick brief uses sections 1, 3, 7, 8, and 10 only (KS-G-08).

### 5.6 Brain version (KS-D-27)

The Brain version is the ID of the last applied Change Order. Example: `CO-20261112-003`. An empty Brain has the version `none`.

- The Editor and the Managing Editor record the version that they reviewed.
- Before the Orchestrator applies a Change Order, it compares the recorded version with the current version. If they differ, it asks for a re-check (KS-R-15).
- To find the current version, search `22.24 Change Orders` for the newest `applied` time.

This closes KS-G-01. Git (X-D-25) keeps the file history and the backup. A Git commit is not the Brain version, because one commit can hold many changes.

### 5.7 Knowledge Assessment fields

| Field | Value | Rule |
|---|---|---|
| `source` | Link | Required. |
| `brief` | Link | Required. |
| `brain-version` | Change Order ID or `none` | §5.6. Required. |
| `relevance` | `high`, `medium`, `low` | Overall. The reasons are in the body. |
| `recommended-action` | `advance`, `investigate`, `no-action` | `advance`: a Change Order is possibly justified. `investigate`: add a row to `Research Questions.md`. `no-action`: the workflow ends. |

Status: `draft`, `validated`, `rejected`, `superseded` (a newer Assessment replaces it), `needs-review`.

Contribution types for findings: `new`, `supports`, `contradicts`, `qualifies`, `refines`, `extends`, `new-concept`, `new-process`, `new-relationship`, `research-gap`.

### 5.8 Change Order fields

| Field | Value | Rule |
|---|---|---|
| `assessment` | Link | The Assessment that started it. Empty for a Curator proposal. |
| `source` | Link | |
| `brain-version` | Change Order ID or `none` | The version at review (§5.6). |
| `change-types` | List: `create`, `add-evidence`, `refine`, `qualify`, `extend`, `relate`, `challenge`, `supersede`, `merge`, `retire` | One or more. |
| `affected` | List of links | Existing Brain records only. New records are in the body. |
| `priority` | `critical`, `high`, `normal`, `low` | The reason is in the body. |
| `decision` | `approved`, `approved-with-changes`, `rejected`, `deferred` | Justin only. |
| `decided` | Date and time | |
| `decision-note` | Text | Justin's reason or his changes. |
| `applied` | Date and time | When the change was written to the Brain. |
| `brain-version-after` | Change Order ID | The ID of this Change Order, after it is applied. |

Status: `draft`, `open` (waits for Justin), `decided`, `applied`, `withdrawn`, `needs-review`.

Rules:
- Only Justin sets `decision`. An agent never sets it.
- `challenge` sets a claim to `disputed`. `supersede` and `retire` set the other two end states.
- "No Change" and "Investigate" are not Change Orders (KS-D-25).

### 5.9 Brain Claim fields

| Field | Value | Rule |
|---|---|---|
| `confidence` | `high`, `medium`, `low` | Confidence in the claim, from the evidence. |
| `evidence-strength` | `strong`, `moderate`, `weak` | Summary of the Evidence section. The Curator uses it. |
| `supports` | List of links | Typed links (§2.5). Each link has one reason in the Relationships section. |
| `contradicts` | List of links | |
| `refines` | List of links | |
| `extends` | List of links | |
| `related` | List of links | Use only when no other type fits. |
| `concepts` | List of links | |
| `superseded-by` | Link | Only when status is `superseded`. |
| `valid-from` | Date | Only if the claim is true for a period. |
| `valid-to` | Date | |
| `last-reviewed` | Date | |
| `change-orders` | List of links | Each Change Order that changed this claim (KS-D-03). |
| `aliases` | List | Other names, for Obsidian search and links. |

### 5.10 Concept fields

| Field | Value | Rule |
|---|---|---|
| `kind` | `concept`, `process` | A process has a Steps section. |
| `aliases` | List | |
| `related` | List of links | Other Concepts. |
| `last-reviewed` | Date | |
| `change-orders` | List of links | KS-D-03. |

Status: the Brain Claim list (§5.1).

### 5.11 MOC fields

| Field | Value | Rule |
|---|---|---|
| `last-reviewed` | Date | |
| `change-orders` | List of links | KS-D-03. |

Status: `active`, `retired`, `needs-review`.

A MOC is Brain content, so each change needs a Change Order. This includes a change to a link only. KS-C-38 can change this rule for navigation-only edits in Phase 6 (KS-D-27).

## 6. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-12 | 0.1 | First draft. |
| 2026-11-12 | 0.2 | Justin's decisions: ID scope, `ID Short title` file names, aliases in body links, 8-field core block (KS-D-21). |
| 2026-11-12 | 0.3 | Added §2.4 folders for each record type (KS-D-22). |
| 2026-11-12 | 0.4 | Record types cut from 14 to 7 notes. Added §2.5 (KS-D-25). |
| 2026-11-12 | 0.5 | Added §5.1 status values and §5.2 stored source text (KS-D-26). Added §5.3 to §5.5: templates, Source fields, Reference Brief fields (draft, Justin to review). Added §5.6 to §5.11: Brain version, Assessment, Change Order, Brain Claim, Concept, MOC fields (draft, Justin to review). |
| 2026-11-13 | 0.6 | Justin approved section 5 (KS-D-27). `source-type`: `pdf` removed, `social-post` added. §5.6 Git note. §5.11 rule made clear. |
