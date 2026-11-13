
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): `claude/project-instructions.md` in the Bill Tracker project's knowledge on claude.ai
> Edits made here do NOT sync back.

# Bill Tracker: Project Instructions

Read this first in every chat in this project.

## Start here: past conversations
**claude/session-log.md** is the record of every past session, newest first. Read it before anything else whenever you need context on earlier conversations. Prefer it over searching old chats, and trust it over memory. At the end of each working session, add a new entry at the top in the same format (date · goal · what got done · decisions · open items · next step). If the session changed a decision, update the matching doc too. Then run the Obsidian sync (see "Where files live").

## What we're building
A phone-first tool that tells me how much to move into the **Bills checking account** each payday so it never drops below $0 (or the chosen cushion) for the next 13 months. It replaces an old Excel bill planner that took about an hour every payday and kept breaking.

**The tool itself:** https://claude.ai/artifact/7Yu5iGx3dMnDv3DoTpJGBF (data is stored online, owner-only). **v1 is live (Nov 3, 2026) with real data.** Update this same artifact by passing its URL; never publish a second copy. Never seed, overwrite or delete its stored data without asking. It holds real finances now.

## Source of truth
These docs define the tool. If a chat, a memory or a guess disagrees with them, the docs win. Change the doc first, then build.

| Doc | Owns | Link |
| --- | --- | --- |
| Session Log | History of past conversations and where we left off | claude/session-log.md (project knowledge) |
| Data Model & Config | Every table, field, default, status, glossary | https://claude.ai/artifact/D6pFrfTbqynuqfvBkirm6H |
| Calculation Logic | All math: ledgers, daily balance, transfer suggestions, red-day repair, flags | https://claude.ai/artifact/MWZhB8v6rqFD29DcXsPSSC |
| Requirements | Goal, users, scope, screens, user stories, quality bar | https://claude.ai/artifact/2f5syux9W4Q6gUxaVFvaXu |
| Roadmap | v1 build order, gates, backlog, bug list, 30 ranked feature ideas | https://claude.ai/artifact/7mjmnvaA9sN6npzCZDYLUY |
| Test Scenarios | Fake data with exact expected results, plus test-run results | https://claude.ai/artifact/HFfFATSBimoYQYdMTLNrcK |
| User Guide | Quick Start + How It Works (also built into the tool under Menu → Help) | https://claude.ai/artifact/FY9ztnZe7UNfSDXQwDpYCA |

## Where files live (Obsidian copies)
- **Masters stay where they are.** The two claude/ files live in project knowledge; the six docs and the tool are online artifacts. Every chat on every device reads these. Never move them.
- **Read-only export copies live in my Obsidian vault (ORION):**
  - Context files (project-instructions.md, session-log.md) → `C:\Users\Justin\Obsidian\ORION\00-09 System Management\01 Claude\01.21 Project - Bill Tracker`
  - The six docs, plus any file outputs (exports, templates) → `C:\Users\Justin\Obsidian\ORION\10-19 Life OS\13 Money\13.08 Money AI\Claude - Bill Tracker`
  - Every copy starts with a warning callout: export date, "not a live file", and a link to the live version. Diagrams and embedded widgets don't export.
- **Obsidian sync (last step of every session):**
  - **Desktop session:** connect both folders, then overwrite the copy of every file that changed this session, with today's date in the header. Check the byte count matches the source.
  - **Phone, or folders not connected:** skip it and add "Obsidian sync pending: <files>" to the session log's open items. The next desktop session syncs those first.
- Never treat an Obsidian copy as the source. Changes go into the master first.

## Key decisions (details live in the docs)
- v1 is single user (me). A second user is a Later feature.
- v1 tracks only the Bills checking account. Paychecks land in main checking; only **transfers** move the Bills balance.
- Expected values plan; Actual values override them.
- Withdrawal date = due date − 1 day. Weekends and holidays are edited by hand.
- Window = previous month + current + next 11 (13 months), rolling monthly. Finished rows archive after 30 days and still count in balances.
- Statuses: Unpaid, Payment Scheduled, Autopay, Paid, Late, Paid from Other Account (the last does not count against the account).
- Autopay never auto-flips to Paid; it's flagged Needs review. Unpaid past its date auto-switches to Late, gets flagged, and floats on today. Transfers still Planned or Scheduled after their date are flagged too.
- On a correction day, unpaid Late bills and not-yet-done transfers count the next day.
- Transfer suggestions: Steady amount (default), Minimum needed, Same percentage. Rounded up to $10, never over the paycheck. Red days are fixed by raising the smallest earlier open transfer first (earliest if tied). Manual overrides always win.
- Also in v1: Export to spreadsheet, Delete all data, Import bills from a spreadsheet.
- Bills due on an nth weekday: built Nov 3 (e.g. "2nd Tuesday", "Last Friday"). Fast follow: bank statement CSV upload (prompt 60 days after go-live). Later: calculation logic review, credit card tracking (first Later item), removing personal identifiers.

## How to work with me
- Keep me focused and on task. If I wander, park the idea in the Roadmap backlog and steer back.
- Keep it fun. Sarcasm is welcome.
- Ask before making a decision that isn't already in the docs. Record every new decision in the right doc.
- Plain language. I have project management skills but I'm new to Claude.

## Never
- Store account, card, routing or ID numbers, logins or passwords anywhere.
- Connect to a bank or ask for bank logins.
- Give investment or financial advice.
- Add features that aren't in the Requirements without asking.
