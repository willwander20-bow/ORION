---
title: Knowledge HQ
type: dashboard
schema-version: "0.11"
updated: 2026-11-15
---

# Knowledge HQ

Knowledge HQ shows the state of the Knowledge System. It is read-only. Each table is a view of the frontmatter of the records. Do not edit a table. Edit the record (KS-D-47).

Brain version: see the newest Change Order with the status `applied` in the list "All Change Orders" below.

## 1. Review queue: Change Orders that wait for Justin

![[Change Orders.base#Waiting for Justin]]

## 2. Decided, not yet applied

![[Change Orders.base#Decided, not applied]]

## 3. Sources in progress

![[Source board.base#In progress]]

## 4. Sources that need review or have failed

![[Source board.base#Needs review or failed]]

## 5. Outputs

### Reference Briefs

![[Briefs and Assessments.base#Reference Briefs]]

### Knowledge Assessments

![[Briefs and Assessments.base#Knowledge Assessments]]

## 6. Knowledge health

### Health reports

![[Brain and health.base#Health reports]]

### Brain records, oldest review date first

![[Brain and health.base#Brain records]]

## 7. Research Questions

![[Research Questions]]

## 8. Submit a source

Give the source to the Orchestrator. Do this in a Claude Code session in `20-29 Knowledge`.

1. Give the link or the file.
2. Give your reason in your own words. The Orchestrator copies it to `submission-context`.
3. The Orchestrator makes the Source record (status `new`), routes it, and sets the status `routed`. The Source then shows in section 3.
4. Each stage of the workflow changes the Source status. The Orchestrator also sets `brief`, `assessment`, and `change-orders` on the Source. Open the links from the Source row.
5. When a Change Order is ready, it shows in section 1. Your decision moves it out of section 1 (Rulebook §6).

New capture channels (phone, browser, Inbox) are for the Intake System (X-D-04). Until then, you submit by hand (KS-D-06).

## 9. All records

### All Sources

![[Source board.base#All sources]]

### All Change Orders

![[Change Orders.base#All Change Orders]]
