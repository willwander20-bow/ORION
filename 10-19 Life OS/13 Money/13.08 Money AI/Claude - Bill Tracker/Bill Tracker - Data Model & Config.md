
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): [Data Model & Config](https://claude.ai/artifact/D6pFrfTbqynuqfvBkirm6H)
> Edits made here do NOT sync back. Diagrams and embedded widgets are not included in the export.

# Bill Tracker — Data Model & Config

Nov 2, 2026 · @Justin

## Purpose

This doc is the source of truth for every table and field the Bill Tracker stores, plus their defaults and rules. The Requirements, Calculation Logic and User Guide docs use the names defined here.

- **Scope:** v1 tracks one account only, the **Bills checking account**.
- **Starts blank:** every table ships empty. Bills, income and settings are entered and maintained by the user. No sample or real data is built in.
- **Expected vs. actual:** every amount and date that can drift has an Expected value used for planning and an Actual value that overrides it once entered.
- **Phone first:** fields are kept to what's needed so entry stays quick on a phone.

## How the tables connect

There are five tables you maintain (Settings, Bills, Income Sources, Transfers, Balance Corrections), two generated ledgers, one calculated view, and an archive.

&#91;embedded content: data flow · 8 tables and views\]

Income never touches the Bills account directly. It only decides when a transfer can happen, and the transfer is what moves the balance.

## Settings

One record of global settings that applies to every table. Each setting can be changed at any time, and the plan recalculates.

| Setting | Type | Default | Notes |
| --- | --- | --- | --- |
| Account name | Text | Bills Checking | Display only |
| Starting balance | Currency | Blank | Real bank balance on the start date. Required before the Daily Balance view works. |
| Starting balance date | Date | Date entered | The first day of the plan |
| Withdrawal offset | Number (days) | 1 | Bills are planned this many days before their due date |
| Use cushion | Yes / No | No | When on, the transfer suggestions keep the balance at or above the cushion instead of $0 |
| Cushion amount | Currency | $0 | Used only when Use cushion = Yes |
| Suggestion method | Choice | Steady amount | Which transfer-suggestion option shows first. The options are defined in the Calculation Logic doc. |
| Planning window | Fixed rule | Previous month + current month + next 11 months (13 total) | Rolls forward automatically each month |
| Archive after | Number (days) | 30 | Days after a row's final date before it moves to the archive |

## Bills (master list)

The Bills table is the only place bills are defined. Adding, editing, pausing or ending a bill here flows into the Bill Ledger automatically.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| Bill ID | Auto | Yes | System | Never shown or edited |
| Bill name | Text | Yes |  | e.g. "Electric" |
| Frequency | Choice | Yes | Monthly | Monthly, Quarterly, Semi-annual, Annual |
| Due day | Number 1–31 | Yes |  | Monthly bills only. Day 29–31 falls on the last day in shorter months. Non-monthly bills use Next due date instead. |
| Due on (rule) + Nth weekday | Choice + choice + choice | Monthly bills | Day of month | Monthly bills are due on a Day of month (uses Due day) or an Nth weekday: 1st, 2nd, 3rd, 4th or Last + a weekday, e.g. 2nd Tuesday. Added Nov 3. |
| Next due date | Date | For non-monthly |  | Anchors quarterly, semi-annual and annual bills |
| Amount type | Choice | Yes | Fixed | Fixed or Variable |
| Expected amount | Currency | Yes |  | For variable bills, use the higher typical amount |
| Paid from | Choice | Yes | Bills account – autopay | Bills account – autopay, Bills account – manual, Other account. Sets the default ledger status. |
| Start date | Date | No | Today | No ledger rows before this date |
| End date | Date | No | Blank | Set when a loan is paid off. No ledger rows after this date. |
| Active | Yes / No | Yes | Yes | Off = pause without deleting history |
| Notes | Text | No |  | Account number hints, payee website, etc. Never full account numbers. |

**Default ledger status from Paid from:**

- Bills account – autopay → **Autopay**
- Bills account – manual → **Unpaid**
- Other account → **Paid from Other Account**

**Editing a bill** updates future ledger rows that haven't been touched by hand. Rows with any manual edit, or with a status changed from the default, are left alone. The Calculation Logic doc has the details.

## Bill Ledger

The Bill Ledger has one row per bill per occurrence in the planning window, generated from the Bills table. This is where you mark bills paid and fix dates or amounts that drift.

| Field | Type | Editable | Default | Notes |
| --- | --- | --- | --- | --- |
| Ledger ID | Auto | No | System |  |
| Bill | Link to Bills | No | From Bills | Name shown |
| Month | Month (YYYY-MM) | No | Calculated | Used for grouping and filters |
| Due date | Date | Yes | From due day |  |
| Withdrawal date | Date | Yes | Due date − withdrawal offset | Planned date the money leaves the account |
| Expected amount | Currency | Yes | From Bills |  |
| Actual amount | Currency | Yes | Blank | Overrides Expected once entered |
| Actual date | Date | Yes | Blank | Overrides Withdrawal date once entered |
| Status | Choice | Yes | From Paid from | See Status definitions |
| Counts against account | Yes / No | No | Calculated from Status |  |
| Hand-edited | Yes / No | No | System | Protects the row from being overwritten when the bill changes |
| Notes | Text | No |  |  |

**Values the math uses:**

- **Amount used** = Actual amount if entered, otherwise Expected amount
- **Date used** = Actual date if entered, otherwise Withdrawal date

**Late bills float:** while Status = Late and no Actual date is entered, Date used = today. The money keeps counting against the balance on the current day until it's paid.

**Needs review flag:** a row is flagged when its Date used is in the past and its Status is still Autopay or Payment Scheduled. Autopay never flips to Paid on its own. You confirm it. An Unpaid bill whose date passes switches to Late automatically and is flagged for review. A transfer whose date passes while still Planned or Scheduled is flagged too, since the plan is counting money that may not have moved.

## Income Sources

Income Sources defines each paycheck or other income stream and its schedule. Income lands in main checking, not the Bills account, so this table only tells the plan **when** a transfer can happen and roughly how much is available.

| Field | Type | Required | Default | Notes |
| --- | --- | --- | --- | --- |
| Source ID | Auto | Yes | System |  |
| Source name | Text | Yes |  | e.g. "My paycheck" |
| Earner | Text | No |  | Whose income it is |
| Income type | Choice | Yes | Biweekly | See Income types |
| Anchor date | Date | Weekly and biweekly |  | Any known past or future payday. The schedule counts from it. |
| Day(s) of month | Number(s) | Monthly fixed and semi-monthly |  | One day (monthly) or two days (semi-monthly) |
| Nth weekday | Choice + choice | Monthly nth weekday |  | e.g. 3rd + Wednesday |
| Expected amount | Currency | Yes, except Irregular |  | Take-home amount per payday |
| Include in estimates | Yes / No | Yes | Yes (No for Irregular, locked) |  |
| Start date / End date | Date | No | Blank | For jobs that start or end |
| Active | Yes / No | Yes | Yes |  |
| Notes | Text | No |  |  |

## Income Ledger and Transfers

The Income Ledger records paydays. Transfers record money actually moved into the Bills account. Only Transfers change the Bills balance.

### Income Ledger

Rows are generated from scheduled Income Sources across the planning window. Irregular income is added by hand on any day.

| Field | Type | Editable | Default | Notes |
| --- | --- | --- | --- | --- |
| Income ID | Auto | No | System |  |
| Source | Link to Income Sources | No | From source |  |
| Expected date | Date | Yes | From schedule | Blank for Irregular |
| Expected amount | Currency | Yes | From source | Blank for Irregular |
| Actual date | Date | Yes | Blank | Overrides Expected |
| Actual amount | Currency | Yes | Blank | Overrides Expected |
| Received | Yes / No | Yes | No |  |
| Notes | Text | No |  |  |

### Transfers

A transfer can be added on any day, whether or not it's tied to a payday.

| Field | Type | Editable | Default | Notes |
| --- | --- | --- | --- | --- |
| Transfer ID | Auto | No | System |  |
| Linked payday | Link to Income Ledger | Yes | Blank | Optional |
| Planned date | Date | Yes | Linked payday's date |  |
| Suggested amount | Currency | No | From analysis | Recalculates when the plan changes. Never more than the linked paycheck. |
| Planned amount | Currency | Yes | = Suggested amount | Overwrite with any amount |
| Actual date | Date | Yes | Blank | Overrides Planned date |
| Actual amount | Currency | Yes | Blank | Overrides Planned amount |
| Status | Choice | Yes | Planned | Planned, Scheduled, Completed, Skipped |
| Notes | Text | No |  |  |

**Amount used** = Actual if entered, otherwise Planned. Skipped = $0.

## Balance Corrections

A correction resets the plan to the real bank balance on a given day, so drift never piles up.

| Field | Type | Editable | Notes |
| --- | --- | --- | --- |
| Correction ID | Auto | No |  |
| Date | Date | Yes | Any day, defaults to today |
| Actual bank balance | Currency | Yes | End-of-day balance from the bank |
| Calculated balance | Currency | No | What the plan expected that day, saved at entry |
| Difference | Currency | No | Actual − Calculated. Helps spot a missed bill or transfer. |
| Note | Text | Yes | e.g. "Forgot to log water bill" |

The latest correction overrides the Starting balance for every day after it.

## Daily Balance (calculated view)

Daily Balance has one row per day of the planning window. It is never edited directly. Every number comes from the tables above.

| Column | Source |
| --- | --- |
| Date | Every day in the window, including days with no activity |
| Starting balance | Previous day's Ending balance (the first day uses Starting balance or the latest correction) |
| Money out | Sum of Bill Ledger rows on that Date used where Counts against account = Yes |
| Money in | Sum of Transfers on that date (Amount used) |
| Ending balance | Starting + Money in − Money out, or the corrected balance if a correction exists that day |
| Flag | Red day (below $0), Below cushion, or Corrected |

Tapping a day shows the bills and transfers behind its numbers.

## Archive rules

Rows that are finished and older than the Archive after setting (30 days) leave the active views. They stay in the Archive, where they can be viewed and restored.

| Table | Moves to archive when |
| --- | --- |
| Bill Ledger | Status is final (Paid, Paid from Other Account) and Date used is more than 30 days ago |
| Income Ledger | Received = Yes and Date used is more than 30 days ago |
| Transfers | Status is Completed or Skipped and Date used is more than 30 days ago |

- **Unfinished rows never archive.** Unpaid and Late bills stay visible until they're resolved.
- **The window rolls monthly.** The first time the tool is opened in a new month, a new month of ledger rows is generated at the far end, keeping 13 months in view.

## Definitions

### Bill statuses

| Status | Meaning | Counts against Bills account | Final (can archive) |
| --- | --- | --- | --- |
| Unpaid | Manual bill not paid yet | Yes | No |
| Payment Scheduled | Manual payment set up in the bank, not yet withdrawn | Yes | No |
| Autopay | Bill pays itself from the Bills account | Yes | No. You confirm it as Paid. |
| Paid | Money has left the Bills account | Yes | Yes |
| Late | Past due and not paid. Floats to today until paid. | Yes | No |
| Paid from Other Account | Paid by credit card or another account | **No** | Yes |

### Income types

| Type | Schedule fields used | Example |
| --- | --- | --- |
| Weekly | Anchor date | Every Friday |
| Biweekly | Anchor date | Every other Friday |
| Semi-monthly | Two days of month | 1st and 15th |
| Monthly – fixed date | One day of month | The 5th |
| Monthly – nth weekday | Nth + weekday | 3rd Wednesday |
| Irregular | None. Entered by hand, excluded from estimates. | Side shifts, bonuses, gifts |

### Glossary

- **Bills account:** the one checking account v1 tracks.
- **Withdrawal date:** due date minus the withdrawal offset. This is when the plan assumes the money leaves.
- **Expected / Actual:** planning value / real value. Actual always wins.
- **Date used / Amount used:** whichever of Expected or Actual the math uses.
- **Cushion:** optional minimum balance the suggestions protect.
- **Planning window:** previous month + current month + next 11 months (13 total), rolling.
- **Correction:** a real bank balance entered to realign the plan.

## Decisions

| Question | Decision |
| --- | --- |
| Window size | 13 months: previous + current + next 11 |
| Non-monthly bills | Kept. Insurance and quarterly/yearly subscriptions use Frequency. |
| Autopay after its date | Never auto-flips to Paid. Flagged Needs review until you confirm. |
| Late bills | Float on today's date until paid |
| Weekends and holidays | Edited by hand. No auto-shift. |
| Transfer cap | A suggestion never exceeds its linked paycheck |
| Bill categories | Left out of v1. Added to the roadmap. |
| Bills on an nth weekday | Added Nov 3: monthly bills can be due on the 1st–4th or last chosen weekday, like income sources. |
