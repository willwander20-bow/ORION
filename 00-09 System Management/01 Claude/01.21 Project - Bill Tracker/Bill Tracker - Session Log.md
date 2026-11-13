
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): `claude/session-log.md` in the Bill Tracker project's knowledge on claude.ai
> Edits made here do NOT sync back.

# Bill Tracker: Session Log

A running summary of every working session in this project, **newest first**. Read this before anything else for context on past conversations. Add a new entry at the top at the end of each session.

Entry format: date · goal · what got done · decisions made · open items · next step.

---

## Session 9: Tue Nov 10, 2026 (evening) · Obsidian export copies

**Goal:** Keep an easy-to-reach copy of every project file in Obsidian (ORION) without breaking or orphaning anything.

**What got done:**
- Explained project knowledge vs. adding a folder. Project knowledge is what every chat reads, on any device. A folder is a live link to the PC that only works in a desktop chat with the folder connected.
- **Decided the setup:** masters stay in project knowledge and the online artifacts. Obsidian gets read-only export copies. Nothing was moved or deleted, so every link still works.
- **Exported all 8 files** with a warning header (export date, "not a live file", link to the live version). Byte counts matched the source on every doc.
  - 01.21 Project - Bill Tracker: Project Instructions, Session Log
  - 13.08 Money AI → Claude - Bill Tracker: Data Model & Config, Calculation Logic, Requirements, Roadmap, Test Scenarios, User Guide
- **Project Instructions:** new "Where files live" section, the Obsidian sync added as the last end-of-session step, and the stale "nth weekday, meaning to confirm" line corrected to built.

**Decisions:**
- Project knowledge and the artifacts stay the master. Obsidian copies are snapshots, never edited as the source.
- Last step of every **desktop** session: overwrite the Obsidian copy of each file that changed. **Phone** sessions log "Obsidian sync pending: <files>" and the next desktop session catches up.
- Context files go to 01.21. The six docs and any file outputs (exports, templates) go to 13.08 → Claude - Bill Tracker.

**Open items:**
- Diagrams don't export (the Data Model data-flow diagram and the Roadmap at-a-glance graphic show as a placeholder line in the copies)
- Old Bill Tracker exports and the bills template sitting in Downloads: Justin to move them into 13.08 → Claude - Bill Tracker himself
- Carried over: time the next few payday check-ins; CSV upload prompt around Jan 2, 2027; review the 30 feature ideas; the template file in an earlier chat still says Due day 1–31 (the in-app "Download template" is current)

**Next step:** Use the tracker for a few paydays and time each check-in. Then the calculation logic review and the 60-day CSV upload prompt.

---

## Session 8: Tue Nov 3, 2026 (late morning) · Go live, User Guide, bills on an nth weekday

**Goal:** Go live with real data, Roadmap step 8 (User Guide), then bills due on an nth weekday.

**What got done:**
- **v1 is live.** Justin cleared the test data, went live, imported real bills and set up income. **First real payday check-in: 15 minutes** (old process about 60; target under 5).
- Before go-live, Claude filled the bills template from Justin's own bill list (23 bills, $5,300/month). FC 2945 = the Bills account (Autopay or Manual by his Autopay column), and the CC cards = Other account. **Logins and passwords were deliberately left out.** Justin resolved the 7 flagged rows.
- **User Guide doc:** [Bill Tracker — User Guide](https://claude.ai/artifact/FY9ztnZe7UNfSDXQwDpYCA) (Quick Start + How It Works). Justin: "looks good."
- **In-app Help** (story 16): Menu → Help, the same guide plus a link to the doc. Version 11.
- **Bills on an nth weekday** (Justin confirmed the meaning: "2nd Tuesday" style). Version 12. Monthly bills now have "Due on: A day of the month / A weekday", with 1st–4th or Last + a weekday. Import accepts "2nd Tuesday" or "last fri" in the Due day column, and Export shows the rule. Checked that existing bills keep exactly the same dates, so no real data moved.
- Docs updated: Data Model (Bills field and a Decisions row), Calculation Logic (bill occurrences row), Roadmap (marked built), User Guide (one line), Project Instructions (User Guide link, v1 live, never touch stored data without asking).

**Parked:** Calculation logic review (Later). Revisit after a few real paydays.

**Open items:**
- Time the next few payday check-ins; anything that keeps them over 5 minutes feeds the calculation review
- Fast follow: CSV bank statement upload, prompted 60 days after go-live (around Jan 2, 2027)
- Review the 30 feature ideas at a future date
- The template file in chat still says Due day is 1–31; the in-app "Download template" has the new wording

**Next step:** Use it for a few paydays. Then the calculation logic review, and the 60-day CSV upload prompt.

---

## Session 7: Tue Nov 3, 2026 (morning) · Step 6, Test (+ two v1 additions)

**What got done:** Published (versions 7–10). Pretend today (test-only) and a go-live switch. Bugs #1 and #2 fixed. **32 of 32 Test Scenarios pass** (G1–G10, D1–D6, S1–S9, W1–W6), and Justin ran W7 and W8: good. Delete all data (Settings → Danger zone, typed DELETE, Undo). Import bills from .xlsx, .xls or .csv with a row-by-row preview, plus a template file.

**Decisions:** "Delete all data" moved to v1; "Import bills from a spreadsheet" added to v1 (bills only). Both are recorded in Requirements and the Roadmap.

---

## Session 6: Tue Nov 3, 2026 (morning) · Build step 5, Home and housekeeping

**What got done:** Published (version 6). Home (today's balance, next transfer, Needs attention, the next 7 days, Quick add). Rolling window with a monthly archive pass. Archive with search and exact Restore (archived rows still count in balances). Export to .xlsx, one sheet per table.

**Decisions:** Archiving is a flag on the row, so restores are exact and balances never change. A restored row stays in view.

---

## Session 5: Tue Nov 3, 2026 (morning) · Build step 4, Transfers

**What got done:** Published (version 5). Transfer slots, the three suggestion options (Steady default), red-day repair, overrides and locking, Shortfall, the Transfers tab with an option comparison. Tested S1–S8: all match.

**Decisions (in the Calculation Logic doc):** open transfers on a same-day correction count the next day; open slots freeze when their date passes; Minimum needed repairs as it goes; suggestions are calculated live and saved only when locked.

---

## Session 4: Tue Nov 3, 2026 (morning) · Build step 3, Daily Balance

**What got done:** Plan tab, Red day / Below cushion / Corrected flags, day detail, Balance Corrections. Justin tested: all good.

**Decisions:** **Late bills on an anchor day (option b):** they count the next day until paid.

---

## Session 3: Tue Nov 3, 2026 (morning) · Build step 2, Ledgers

**What got done:** Bill and Income Ledgers across the window, Late auto-switch, Needs review, the Bills Due and Income tabs with one-tap Paid and Got it.

**Decisions:** Monthly nth weekday (income) includes **Last**. A new income source with no start date gets paydays from today on.

---

## Session 2: Tue Nov 3, 2026 (morning) · Build step 1, Foundation

**What got done:** Built and published the tool: [Bill Tracker](https://claude.ai/artifact/7Yu5iGx3dMnDv3DoTpJGBF). App shell, setup screens, Undo, an account-number guard, and online owner-only storage.

**Decisions:** Money is stored as whole cents. Read-only schedule previews on the setup forms.

---

## Session 1: Mon Nov 2, 2026 (evening) · Planning and docs

**What got done:** Drafted and finalized [Data Model & Config](https://claude.ai/artifact/D6pFrfTbqynuqfvBkirm6H) · [Calculation Logic](https://claude.ai/artifact/MWZhB8v6rqFD29DcXsPSSC) · [Requirements](https://claude.ai/artifact/2f5syux9W4Q6gUxaVFvaXu) · [Roadmap](https://claude.ai/artifact/7mjmnvaA9sN6npzCZDYLUY) · [Test Scenarios](https://claude.ai/artifact/HFfFATSBimoYQYdMTLNrcK), saved the Project Instructions, and ranked 30 feature ideas in the Roadmap.

**Key decisions:** Bills checking only; only transfers move its balance. Expected plans, Actual overrides. Withdrawal = due − 1 day. 13-month rolling window. Six bill statuses; Autopay never auto-Paid; Unpaid → Late. Steady (default), Minimum needed and Same percentage suggestions, rounded up to $10, capped at the paycheck, with red-day repair. Cushion optional. Single user.

**Open items:**
- Optional: paste "Read claude/session-log.md and claude/project-instructions.md first" into the project's custom instructions
