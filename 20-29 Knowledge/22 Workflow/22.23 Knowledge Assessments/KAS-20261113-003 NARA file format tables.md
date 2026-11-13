---
id: KAS-20261113-003
type: knowledge-assessment
title: NARA file format tables
status: validated
created: 2026-11-13T11:21
updated: 2026-11-13T11:21
created-by: editor
schema-version: "0.8"
source: "[[SRC-20261113-002 NARA file format tables]]"
brief: "[[BRF-20261113-002 NARA file format tables]]"
brain-version: CO-20261113-001
relevance: medium
recommended-action: advance
---

## 1. Summary of relevance

This Brief comes from a primary, institutional source: NARA's transfer guidance for born-digital textual records. It lists plain text (ASCII, UTF-8, UTF-16) as a preferred format and both Microsoft Word formats as acceptable only. That ranking agrees with the direction of the Brain claim on open files. It is also the independent digital-preservation source that the MOC asks for. But the source gives no reasons for its ranking, and its scope is federal record transfer, not personal notes. So it supports the Brain claim only indirectly. It also adds detail that the Brain does not have: a rule to identify the encoding, named plain text encodings, formatted formats that are also preferred (ODT, PDF/A), and a definition of plain text.

## 2. Brain records reviewed

- [[CLM-20261113-001 Lasting notes belong in open files|Lasting notes belong in open files]] (read in full)
- [[CON-20261113-001 File over app|File over app]] (read in full)
- [[MOC-20261113-001 Note durability|Note durability]] (read in full)
- `Research Questions.md`: not present in `21 Brain`.

The Brain has 3 notes. I read all of them, so the Brain context is complete for version CO-20261113-001.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C2, C6, C7 | supports | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | The Brain claim says that lasting notes belong in "open, readable formats such as plain text". NARA lists ASCII 7-bit and Unicode UTF-8/UTF-16 text as preferred (C2). It lists the two Microsoft Word formats as acceptable only (C6, C7). The ranking points the same way as the claim, and it comes from a source that is independent of Obsidian. But the support is weak and indirect for three reasons. (1) The section gives no reasons for its ranking (Brief §2, §10). It does not support the claim's reason, "apps become obsolete, but files can outlast them". (2) Scope differs. The guidance is for federal records sent to NARA, and the claim is about personal notes. The Brief says that general use of the guidance is an extension (Brief §10). (3) "Acceptable" formats are still accepted, and the Brief does not define the tiers. The evidence for the ranking itself is direct and authoritative (E2, E6, E7, source quality high). The link from the ranking to the claim is an inference. One more source helps with the "one source" caveat in the claim, but the evidence strength does not go far above `weak`. |
| A2 | C1, C2 | refines | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | The claim names "plain text" as the example format, but it does not say which encoding. NARA makes this more exact: it lists the encodings (ASCII 7-bit, UTF-8, UTF-16) and requires agencies to identify the encoding of each text file (C1, E1, direct, normative). This adds a condition for durable plain text: the encoding is known and is one of the listed encodings. Limits: the rule applies to agency transfers, and it does not say why or how to record the encoding (E1 limits). The missing UTF-32 does not show that NARA rejects it (E2 limits). |
| A3 | C3, C4 | extends | [[CLM-20261113-001 Lasting notes belong in open files\|Lasting notes belong in open files]] | The claim gives plain text as the example of an open, readable format. NARA puts two kinds of formatted text in the same preferred tier: ODT, all versions (C3), and PDF/A-1 and PDF/A-2 (C4). So the set of preferred formats is wider than plain text, and it includes formatted formats. This extends the claim's example set. It does not change its core. NARA does not call these formats "open". That label would be my interpretation, not a source statement. Table entries only, with no reasons (E3, E4). |
| A4 | C5 | qualifies | [[CON-20261113-001 File over app\|File over app]] | The Concept says that "a file in an open format ... stays readable with many tools", so openness is the reason that a format lasts. In NARA's list, general PDF 1.0–1.7 is acceptable only, while the PDF/A profiles are preferred (C4, C5). The Brief notes that plain PDF is also an ISO standard, so "open versus proprietary" does not fully explain the ranking (Brief §10). This difference is about the condition, not a contradiction. An institutional preservation ranking can use criteria other than openness, for example an archival profile. The source gives no reasons, so this is a possible qualification. It is not proof that openness is insufficient. |
| A5 | C8, C9, C10 | new-concept | [[CON-20261113-001 File over app\|File over app]] | The Brain uses the term "plain text" (Concept, Claim) but does not define it. NARA gives a definition: unformatted plain text (MIME `text/plain`) holds characters and control codes and "lacks styling information" (C9). Formatted text adds styling such as bold, italics, colors, and hyperlinks (C10). The split into two types is explicit (C8, direct). C9 and C10 have medium confidence because the paragraph was summarized, with short quoted fragments. The Brief does not say how NARA treats text formats that use markup syntax in plain text, so this Assessment does not say how the definition applies to Markdown. |
| A6 | C2 | research-gap | [[MOC-20261113-001 Note durability\|Note durability]] | The MOC asks: "Does plain text stay readable on future computers as well as it has since the 1960s?" NARA prefers plain text, but the Brief gives no evidence or reasons about future readability. The preference is consistent with the question, but it does not answer it. Also, the source does not say why it ranks the formats as it does. The Brief does not define "preferred" and "acceptable" (Brief §10). These gaps stay open. |
| A7 | — | qualifies | [[MOC-20261113-001 Note durability\|Note durability]] | Date and currency condition. The page was last reviewed on 2026-03-11, but the DOCX row names Word 2007–2010 only (E6 limits, Brief §11 Currency 3). The lists can be older than current versions of the formats. The Brief says that a missing format does not show that NARA rejects it. If this source goes into the MOC's "Evidence for and against", it needs this date caveat. |

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 3 | The general direction (plain text preferred over proprietary word-processor formats) matches the Brain. The encoding rule, the named encodings, the preferred formatted formats (ODT, PDF/A), and the plain text definition are new to the Brain. |
| Significance | 3 | The source is primary and authoritative (Authority 5). But it is a list with no reasons, so it cannot make the reasoning of the Brain claim much stronger. |
| Applicability | 3 | The rules apply to federal record transfer. Using them for personal notes is an extension (Brief §10). The encoding rule (A2) is easy to apply to personal plain text files. |
| Relevance to the Brain | 4 | It is about the topic of the only MOC (Note durability). It partly fills the MOC gap: "Look for an independent source, for example from digital preservation work". |

## 5. Recommended action

`advance`. Findings A1, A2, and A3 are possibly a reason to change the Brain:

- A1: the first independent, institutional source for the direction of CLM-20261113-001. The claim and the MOC say that only one source exists. Justin can decide whether to add this source as evidence, with its scope and "no reasons given" limits. The evidence strength stays low, because the source supports the ranking but not the claim's reason.
- A2: the encoding rule makes "plain text" in the claim more exact.
- A3: the preferred tier includes formatted formats, not only plain text.

A4 to A7 are context and caveats for those changes. They are not separate reasons. A6 also gives a possible open question for `Research Questions.md`, if Justin wants it: "Why does NARA prefer some textual formats (plain text, ODT, PDF/A) over others (PDF, DOCX, DOC), and what do 'preferred' and 'acceptable' mean in practice?" The Orchestrator and Justin decide this. This Assessment does not propose a Change Order or the text of a Brain record.

## 6. Confidence and limits

- Confidence: medium. The Brief is validated, and the Orchestrator checked its quotes against the raw HTML. The table claims (C1 to C8) are direct and high confidence. C9 and C10 are medium.
- Main limit: the Brief covers one section of the page only (`extraction-completeness: partial`). The parts that define the tiers, if any exist, were not analyzed. A1, A3, and A4 depend on what the tiers mean, and that is not known.
- The link from NARA's ranking to "open formats last longer" is an inference. I marked it as an inference in A1, A3, and A4. I did not add facts from my own knowledge.
- The Brain claim is `accepted`, but I did not take it as correct. Its own evidence is `weak` (one opinion source).
- No finding is `contradicts`. A4 and A7 are differences in condition and date. A1 names the difference in scope.
- Final check (editor.md §10):
  1. Each finding has a Claim Candidate label (or `—` for A7), a type, and an explanation: yes.
  2. Each finding that is not `new` links to a Brain record: yes (there are no `new` findings).
  3. `contradicts` rule: there are no `contradicts` findings. Scope (A1), condition (A4), and date (A7) differences are named.
  4. §2 lists every Brain record that I read: yes, all 3. `Research Questions.md` does not exist.
  5. `brain-version` = CO-20261113-001, the same as the Orchestrator's input: yes.
  6. The recommended action has a reason: yes (`advance`, with A1 to A3 named).

## Orchestrator check (2026-11-13)

- Phase 3 test E2 (KS-08 §8.9). Editor draft v0.2. The Orchestrator saved the Editor's text with one change: `title` was "NARA file format tables compared with the Brain". The Orchestrator set it to the Source title, as in KAS-20261113-001 and -002.
- Brain version `CO-20261113-001` confirmed (newest `applied` Change Order in `22.24`).
- Editor §10 checklist: confirmed. 7 findings, each with a label, a type, a Brain record, and a reason. No `contradicts`.
- Encoding condition: found as A2, type `refines`, on CLM-20261113-001. The difference is named: the claim says "plain text" with no encoding; the source names the encodings and requires that the encoding is identified.
- Preferred text formats: typed `supports` (A1) and `extends` (A3), not `new`. The test plan expected `new`. The Editor linked them to the existing claim, with reasons. Refer to KS-08 §8.9 Test results.
- `new-concept` (A5) links to an existing Concept, because Editor §10 item 2 requires a Brain record for each finding that is not `new`. Refer to KS-08 §8.9 Test results, proposed edit.
- Spot-checked Brain quotes: "open, readable formats such as plain text" (CLM), "apps become obsolete, but files can outlast them" (CLM), "Look for an independent source, for example from digital preservation work" (MOC). All exact. Brief details checked: `extraction-completeness: partial`, the ISO note in Brief §10, Currency 3, E2 UTF-32 limit. All correct. No invented detail found.
- Files read by the Editor (from its access log): the Brief, `TPL Knowledge Assessment.md`, the Schema (whole file), the three Brain notes. No other file.
- `advance` is recorded only. No Change Order is made in Phase 3. The optional question in §5 is not added to `Research Questions.md`, because the recommended action is not `investigate`.
