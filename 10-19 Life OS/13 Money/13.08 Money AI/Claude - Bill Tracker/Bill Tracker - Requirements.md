
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): [Requirements](https://claude.ai/artifact/2f5syux9W4Q6gUxaVFvaXu)
> Edits made here do NOT sync back. Diagrams and embedded widgets are not included in the export.

# Bill Tracker — Requirements

Nov 2, 2026 · @Justin

## Goal

The Bill Tracker tells us how much to move into the Bills checking account each payday so it never goes below $0 (or the chosen cushion) for the next 13 months. It does the figuring that used to take an hour of spreadsheet work every payday.

**Success looks like:**

- No red days in the plan, or every one flagged in advance with the dollar gap
- Payday check-in takes **under 5 minutes** on a phone (old process: about 60)
- Marking a bill paid takes **3 taps or fewer**
- Nothing breaks when a bill, paycheck or date changes. There are no formulas to corrupt.
- We stop falling further behind. Catching up on past-due bills is out of scope.

Table and field names follow the Data Model doc. All math follows the Calculation Logic doc.

## Users and platform

|  | Detail |
| --- | --- |
| Primary user | Me: maintains bills, income and settings, and does the payday check-in |
| Secondary user | None in v1. A second user is a Later feature. |
| Device | Phone first. Must also work on a computer browser. |
| Data | Saved online, so it's the same on phone and computer |
| Starting state | Every table is blank. Nothing is pre-loaded. |
| Accounts tracked | The Bills checking account only. Main checking and credit cards are not tracked in v1. |

## Scope

| Stage | Includes |
| --- | --- |
| **v1** | Settings · Bills · Bill Ledger · Income Sources · Income Ledger · Transfers with three suggestion options (Steady default) · Balance Corrections · Daily Balance view · Flags · 13-month rolling window · Archive · Export to spreadsheet · Delete all data · Import bills from a spreadsheet · User Guide |
| **Fast follow** | Upload a bank statement CSV and match it to ledger rows to mark them paid |
| **Later** | Credit card tracking · Catch-up plan for past-due bills · Debt payoff planning · Bill categories · Tracking main checking · Payday reminders · Second user · Remove personal identifiers |
| **Out** | Live bank connections · Storing account, card or ID numbers · Investment or financial advice |

## Screens

There are five main tabs along the bottom of the phone screen. Setup screens sit behind a menu because they change rarely.

| Screen | Where | Shows | You can |
| --- | --- | --- | --- |
| **Home** | Tab 1 | Today's balance · next payday and its transfer amount · red day / shortfall alerts · count of rows needing review · bills leaving in the next 7 days | Jump to anything flagged · quick-add a transfer, correction or Irregular income |
| **Plan** | Tab 2 | Daily Balance, one row per day, red days highlighted · tap a day to see its bills and transfers | Add a correction for any day |
| **Bills Due** | Tab 3 | Bill Ledger grouped by month, current month first · filter by status · flagged rows at the top | Mark paid in one tap · change status · edit date or actual amount |
| **Transfers** | Tab 4 | Upcoming slots with suggested and planned amounts · comparison of the 3 options (total, lowest balance, largest transfer, shortfall) | Pick an option · override any amount · mark transferred · skip |
| **Income** | Tab 5 | Income Ledger: upcoming paydays, received status | Confirm a payday received · log actual amount · add Irregular income |
| **Bills (setup)** | Menu | Master bill list | Add, edit, pause, end a bill |
| **Income Sources (setup)** | Menu | Income streams and schedules | Add, edit, end a source |
| **Settings** | Menu | All settings from the Data Model | Change any setting |
| **Archive** | Menu | Finished rows older than 30 days | Search, view, restore |
| **Help** | Menu | The User Guide | Read Quick Start or How It Works |

## User stories

Each story is done when every one of its criteria passes.

| # | As a user, I want to… | Done when |
| --- | --- | --- |
| 1 | Set up the tool from blank | Entering a starting balance, one bill and one income source produces a Daily Balance and a suggestion with no other steps |
| 2 | Add, edit, pause or end a bill | Future untouched ledger rows update within the same save. Hand-edited and past rows are unchanged. |
| 3 | Add an income source with any schedule type | Paydays appear correctly for all 6 types, including 3rd Wednesday and biweekly |
| 4 | See how much to transfer each payday | Every open slot shows a suggested amount, rounded up to $10, never over its paycheck |
| 5 | Compare the three options | All three show total, lowest balance and date, largest transfer and shortfall, and switching updates only open slots |
| 6 | Override a suggested transfer | The typed amount sticks, the slot locks, and the other open slots recalculate |
| 7 | Add a transfer on any day | It saves without a linked payday and counts in the Daily Balance |
| 8 | Mark a bill paid | 3 taps or fewer from Home or Bills Due. An actual amount or date can be added in the same step. |
| 9 | Mark a bill as paid from another account | The amount stops counting against the Bills account immediately |
| 10 | Catch bills that slipped | Overdue Autopay or Scheduled rows show Needs review. Overdue Unpaid rows switch to Late, float on today and are flagged. |
| 11 | See red days ahead of time | Every day below $0 is highlighted, and the Home screen shows the first one |
| 12 | Use a cushion | With the cushion on, suggestions keep every day at or above the cushion amount |
| 13 | Correct the balance to the bank | Entering a real balance resets that day, shows the difference, and recalculates everything after it |
| 14 | Always see 13 months | Opening the tool in a new month adds the new far month and archives finished old rows |
| 15 | Find old records | Archived rows are searchable and can be restored unchanged |
| 16 | Learn and troubleshoot | Help shows a Quick Start and a How It Works guide |

## Quality requirements

| Area | Requirement |
| --- | --- |
| Phone use | Readable and usable at phone width with no sideways scrolling. Buttons are big enough to tap one-handed. |
| Speed of entry | Payday check-in is under 5 minutes. Marking paid takes 3 taps or fewer. Fields default from the setup tables. |
| Clarity | Red days, shortfalls and rows needing review stand out with color **and** a label, never color alone |
| Reliability | No editable formulas. Every calculated value is rebuilt from the stored data on every change. |
| Saved data | Data is saved online and looks the same on any device. Nothing lives only on one phone. |
| Data safety | No account, card or ID numbers are stored. No bank logins. Everything is entered by hand (or CSV in the fast follow). |
| Undo | Any edit or delete can be reversed. Archived rows are restorable. An Export button downloads every table as a spreadsheet file. |
| Dark mode | Works in both light and dark phone themes |

## Decisions

| Question | Decision |
| --- | --- |
| Husband's access | Moved to Later. v1 is single user. |
| Payday reminders | Later feature |
| Export / backup | In v1: export every table to a spreadsheet |
| Home screen | Approved as listed |
| Delete all data | Moved into v1 (Nov 3) so fake test data can be cleared before go-live. Lives in Settings, behind a typed confirm, with an Export offer first and a short Undo. |
| Import bills | Added to v1 (Nov 3) to make go-live fast. Bills only, from .xlsx, .xls or .csv (Google Sheets: download as either). Uses a template with the Bills table's fields, previews every row with errors before anything saves, skips names that already exist, and can be undone. |
