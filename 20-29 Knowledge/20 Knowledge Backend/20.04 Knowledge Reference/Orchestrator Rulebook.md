---
title: Orchestrator Rulebook
type: reference
status: approved
schema-version: "0.9"
updated: 2026-11-13
---

# Orchestrator Rulebook

This note gives the rules that the Orchestrator follows for each source. Justin controls this note (KS-03 §6.2, KS-D-39). The Orchestrator does not change it without Justin's approval.

Status: v0.3, Phase 5. Justin approved the rules marked (KS-D-41). They were new rules in draft v0.1. All other rules come from the documents named in the rule.

Other sources of rules: area `CLAUDE.md` §5 and §7, the Schema, and the agent files. Where this note and those documents differ, those documents govern. Record the difference in the work log and tell Justin.

## 1. Routing

Routing is the first stage for each source (KS-03 §6.1, KS-D-07). Do these steps in this order.

1. **Record the submission.** Copy the `url` (or the file path) and Justin's reason. Put Justin's words in `submission-context`. Keep them separate from the source content.
2. **Source type.** Set `source-type` (Schema §5.4).
3. **Source ID.** Assign the ID (section 3). Save the Source from `TPL Source.md` with status `new`. Each later step then has a record to update (F1, KS-D-40).
4. **Duplicate check.** Search `22.21 Sources` for the same `url` and for a similar title. If a match exists, set `duplicate-of` and the status `skipped`. Stop. Do not invoke the Reporter (test E4).
5. **Access check (KS-D-41).** Get the page (for example, `curl`). If the page does not load, or it gives no source text, set `access-status: none`, record the error in the work log, set the Source to `failed`, and stop. Ask Justin for a file or a different link. Do not invoke the Reporter (KS-03 §6.1, area `CLAUDE.md` rule 7, test O2).
6. **Work content.** If the source relates to Charter or Spectrum, set the Source to `needs-review` and stop until Justin decides (X-D-12, X-D-13). Note: no criteria exist yet for "relates to" (KS-G-24). If you are not sure, ask Justin.
7. **Processing level.** Set `processing-level` (section 1.1).
8. **Routing result.** Set the Source to `routed`. Write one log row: the level and the scope.

### 1.1 Processing level

| Level | When | Stages |
|---|---|---|
| `full-review` | Default. | Reporter, Editor, Managing Editor if `advance`, Justin, apply. |
| `quick-brief` | Only when Justin asks. | Reporter (Brief sections 1, 3, 7, 8, 10). The workflow ends after the Brief is `validated` (KS-D-41). |
| `archive-only` | Only when Justin asks. | Source record only. Status `archived`. |

The Orchestrator recommends a level. Justin can change it (KS-C-29).

## 2. Workflow states

The Source `status` is the workflow state (Schema §5.1, KS-D-25). There is no separate workflow task record. Each state change has one log row (section 7).

| From | To | Who | Condition |
|---|---|---|---|
| — | `new` | Orchestrator | Source saved (routing step 3). |
| `new` | `routed` | Orchestrator | Routing steps 1 to 8 complete. |
| `new` | `skipped` | Orchestrator | Duplicate, or Justin says do not process. Reason recorded. |
| `new` | `archived` | Orchestrator | `archive-only`. |
| `new`, `routed` | `failed` | Orchestrator | Access check fails, or the Reporter reports `access-status: none`. |
| `routed` | `briefed` | Orchestrator | Brief saved and `validated` (section 4.1). |
| `briefed` | `done` | Orchestrator | `quick-brief` only (KS-D-41). |
| `briefed` | `assessed` | Orchestrator | Assessment saved and `validated` (section 4.2). |
| `assessed` | `done` | Orchestrator | `recommended-action` is `no-action`, or `investigate` and the row is added to `Research Questions.md`, or the Managing Editor returns No Change. |
| `assessed` | `change-proposed` | Orchestrator | Change Order saved as `open` (section 4.3). |
| `change-proposed` | `done` | Orchestrator | Change Order applied, or Justin set `rejected` (KS-D-41 for `rejected`). |
| any | `failed` | Orchestrator | A stage fails twice, or it fails and a retry is not safe (section 5). |
| any | `needs-review` | Orchestrator or Justin | Work content, or Justin asks. |
| `needs-review`, `failed` | the state Justin names | Justin | Justin records a decision (X-D-13). |

Rules:
- Do not skip a state. Do not start a stage when the Source is not in the state before it (area `CLAUDE.md` rule 9).
- `deferred`: the Source stays `change-proposed` (KS-D-41).
- A Source in `needs-review` gets no work until Justin decides.

## 3. ID creation

1. Use the prefix and format of Schema §2.1 and §2.2. The date is the date the record is made.
2. Search the area for the highest `NNN` with the same prefix and date. Add 1 (Schema §2.3).
3. Search the whole vault for the new ID string. If it exists, use the next number (KS-D-41).
4. An ID never changes and is never reused, also after the record is archived.
5. File name: `ID Short title.md` (Schema §3.1). The file name does not change.

## 4. Validation

Validate each output before the next stage. If a check fails, set the output to `rejected`, write the reason in the log, and go to section 5.

### 4.1 Reference Brief

1. The Reporter's final check (reporter §11) is in Brief §12, and each item passes.
2. Frontmatter: all fields of `TPL Reference Brief.md` are present. Values are in Schema §5.5. `source` links to the Source. `claim-count` equals the rows in §7.
3. **Quote check.** Check each `Quote:` against the raw page (`curl` with tags removed) or the companion file. Each quote must match exactly and have 15 words or fewer. WebFetch text is not proof (area `CLAUDE.md` rule 9a, KS-D-31).
   - Web page: run `Quote Check.ps1` in this folder (F2, KS-D-40). Command: `& ".\20 Knowledge Backend\20.04 Knowledge Reference\Quote Check.ps1" -Brief "<Brief path>" -Url "<url>"`. Pass: "Failed: 0".
   - The script does not check a companion file or a PDF. It does not read a quote that contains a `"` character. Check these by hand.
4. Locators: each heading or `¶` locator exists in the source. Check all of them for a short source. Check a sample of at least 5 for a long source (KS-D-41).
5. Sections: `full-review` uses all 12 sections. `quick-brief` uses 1, 3, 7, 8, 10.
6. `git status` shows no file changed by the Reporter (KS-D-41).

Pass: set the Brief to `validated` and the Source to `briefed`.

### 4.2 Knowledge Assessment

1. The Editor's final check (editor §10) is in Assessment §6, and each item passes.
2. Frontmatter: fields of Schema §5.7. `brain-version` equals the current Brain version (Schema §5.6).
3. Each link to a Brain record resolves. §2 lists the records that the Editor read.
4. Each `contradicts` names why both cannot be true under the same conditions.
5. `title` is copied from the Brief.
6. `git status` shows no file changed by the Editor.

Pass: set the Assessment to `validated` and the Source to `assessed`.

### 4.3 Change Order

1. The Managing Editor's final check (managing-editor §9) passes.
2. Frontmatter: fields of Schema §5.8. `brain-version` is current. The decision fields are empty.
3. Each `change-types` value has a row in §2. Each row cites `E` labels from the Brief and an Assessment finding.
4. If the Managing Editor lists Brain records that the Assessment did not see, decide with Justin if the Editor must re-run (area `CLAUDE.md` §7 step 5).
5. Open Change Orders on the same records: one Managing Editor run at a time. Save each Change Order before the next run.
6. `git status` shows no file changed by the Managing Editor. `21 Brain` is not changed.

Pass: save the Change Order with status `open`, set the Source to `change-proposed`, and present it to Justin.

## 5. Errors and retry

1. When a stage fails, write an error record in the log ("Errors" section): the time, the stage, the input, and the error.
2. **Retry (KS-D-41).** Retry one time only, and only when the retry is safe: the input is the same, and the failed run wrote no file. Example: a subagent returned no output, or a tool timed out.
3. Do not retry when the output is invalid because of content (for example, a changed quote or an invented locator). Reject the output and tell Justin.
4. **Second failure (KS-D-41).** After a second failure, set the Source to `failed` and stop. Justin decides the next step.
5. Do not invent content to fill a failed stage (area `CLAUDE.md` rule 7). Do not start a later stage (rule 9).

## 6. Approval and apply

The Orchestrator is the actor that applies an approved Change Order (KS-D-39, KS-G-02).

1. Present the Change Order to Justin. A Change Order is not an approval (area `CLAUDE.md` rule 3).
2. Record Justin's decision in the Change Order: `decision`, `decided`, and `decision-note` with Justin's words copied exactly. Set the status to `decided`. Only Justin chooses the decision (Schema §5.8).
3. **Version check.** Compare the Change Order `brain-version` with the current Brain version (Schema §5.6).
   - Same: go to step 4.
   - Different: do not apply. Re-invoke the Managing Editor at the current version. Save the new Change Order. Set the old one to `withdrawn` (area `CLAUDE.md` §7 step 7).
4. Apply only the rows that Justin approved. For `approved-with-changes`, apply Justin's changes as he wrote them.
5. For each Brain record that changed: add the Change Order to `change-orders` and set `updated`.
6. In the Change Order: set `applied`, `brain-version-after` (its own ID), and status `applied`.
7. Set the Source to `done`.
8. Write the log rows: the decision (actor `justin`), and the apply with the Brain version before and after.
9. `rejected`: do not apply. Set the Source to `done` (KS-D-41).

## 7. Log

Log each state change and each decision in `22.25 Workflow Log\YYYY-MM-DD Knowledge Work Log.md` (KS-D-24).

| Time | Actor | Event | Record | Result |
|---|---|---|---|---|

- One row for each state change, agent run, validation result, decision, and apply.
- Actor: `orchestrator`, `reporter`, `editor`, `managing-editor`, `curator`, or `justin`.
- Record: a link to the record.
- Result: `OK`, `PASS`, `FAIL`, a status value, or the Brain version change.
- Errors go in the "Errors" section. Notes go in the "Notes" section.
- Do not log the content of notes. Log only the work (root `CLAUDE.md` §3.4).

## 8. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-13 | 0.1 | First draft (KS-D-39). |
| 2026-11-13 | 0.2 | F1: Source ID and save moved to routing step 3. F2: `Quote Check.ps1` named in §4.1 (KS-D-40). |
| 2026-11-13 | 0.3 | Justin approved the new rules (KS-D-41). Status `approved`. |
