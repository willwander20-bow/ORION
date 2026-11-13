
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): [Calculation Logic](https://claude.ai/artifact/MWZhB8v6rqFD29DcXsPSSC)
> Edits made here do NOT sync back. Diagrams and embedded widgets are not included in the export.

# Bill Tracker — Calculation Logic

Nov 2, 2026 · @Justin

## Purpose

This doc defines how every calculated number in the Bill Tracker is produced. Table and field names come from the Data Model doc.

**Recalculation order.** Any edit to any table reruns these steps in order, so the plan is never stale:

1. Roll the window and archive finished rows
2. Generate or refresh Bill Ledger rows
3. Generate or refresh Income Ledger rows and transfer slots
4. Work out Amount used and Date used for every row
5. Calculate transfer suggestions
6. Calculate the Daily Balance
7. Set flags

The tool does the math. You only enter what actually happened, or override what it suggests.

## Generating the Bill Ledger

The tool creates one ledger row for each time an active bill falls due inside the 13-month window.

| Frequency | Occurrences |
| --- | --- |
| Monthly | Every month, on Due day |
| Monthly – nth weekday | Every month, on the 1st, 2nd, 3rd, 4th or last chosen weekday (e.g. 2nd Tuesday). Withdrawal date = that date − Withdrawal offset, as usual. |
| Quarterly | Every 3 months, counting from Next due date |
| Semi-annual | Every 6 months, counting from Next due date |
| Annual | Every 12 months, counting from Next due date |

- **Short months:** a Due day of 29–31 lands on the last day of shorter months (the 31st becomes Feb 28).
- **Withdrawal date** = Due date − Withdrawal offset (default 1 day). Weekends and holidays are not shifted. You edit those by hand.
- **Start and End dates:** no rows before Start date or after End date.
- **Default Status** comes from Paid from: autopay → Autopay, manual → Unpaid, other account → Paid from Other Account.

**When a bill changes:**

- Future rows that are **not** hand-edited and still have their default status are rebuilt from the new bill details.
- Hand-edited rows, rows with a changed status, and past rows are never touched.
- Setting a bill inactive, or adding an End date, removes its untouched future rows. History stays.

## Generating the Income Ledger and transfer slots

Every scheduled payday in the window gets an Income Ledger row. Every payday with Include in estimates = Yes also gets one Transfer row (a "slot") for the suggestion to fill.

| Income type | Paydays |
| --- | --- |
| Weekly | Anchor date ± every 7 days |
| Biweekly | Anchor date ± every 14 days |
| Semi-monthly | Both days of month, every month (short months clamp to last day) |
| Monthly – fixed date | Day of month, every month (clamped) |
| Monthly – nth weekday | The 1st, 2nd, 3rd, 4th or last chosen weekday of each month |
| Irregular | None generated. Added by hand, no transfer slot, never counted until an Actual amount is entered. |

- **Transfer slot date** = the payday's Date used. It can be edited on the transfer.
- **Paycheck cap** for a slot = the payday's Amount used. This is the most a suggestion can ask for.
- **Hand-added transfers** (any day, any amount) are always kept and are never resized by the suggestions.

## Values used

Every calculation reads one amount and one date per row. Actual always beats Expected or Planned.

| Row | Amount used | Date used |
| --- | --- | --- |
| Bill Ledger | Actual amount, else Expected amount | Actual date, else **today** if Status = Late, else Withdrawal date |
| Income Ledger | Actual amount, else Expected amount | Actual date, else Expected date |
| Transfer | $0 if Skipped, else Actual amount, else Planned amount | Actual date, else Planned date |

**Bill rows that count against the account:** Unpaid, Payment Scheduled, Autopay, Paid, Late. **Paid from Other Account is ignored** by every balance calculation.

## Daily Balance

Each day's Ending balance = Starting balance + Money in − Money out, unless a correction sets it.

- **Anchors:** the plan starts from Settings → Starting balance on its date. Each Balance Correction is a new anchor, and its entered balance becomes that day's Ending balance. Activity dated that day is assumed to already be in the bank's number.
- **Starting balance** of any day = the previous day's Ending balance.
- **Money out** = sum of counted bill rows whose Date used is that day.
- **Money in** = sum of transfers whose Date used is that day.
- **End of day only:** the view shows one closing balance per day and doesn't guess the order of transactions within a day. The withdrawal offset is the safety margin for that.
- **Correction difference** = entered balance − calculated balance that day. It's saved so you can see how far the plan drifted.

**Late bills on an anchor day:** a Late bill with no Actual date floats on today. If today is an anchor day (the starting balance date or a Balance Correction), the bill is not assumed to be in the bank's number, because it hasn't been paid. It counts against the next day instead, and keeps counting until it's paid.

**Transfers on an anchor day:** the same goes for a transfer dated today that is still Planned or Scheduled, with no Actual date. It hasn't moved yet, so it counts the next day instead of being absorbed by today's correction.

## Transfer suggestions

The tool fills each open transfer slot with the amount needed to keep the Daily Balance at or above the floor for the whole window. It calculates three options side by side so you can pick one.

**Floor** = Cushion amount if Use cushion = Yes, otherwise $0.

### Rules all options follow

- **Locked transfers are fixed.** A transfer is locked if it was added by hand, its Planned amount was typed over, its Status is Scheduled, Completed or Skipped, or its date has passed. Suggestions work around locked transfers and never change them.
- **Paycheck cap.** A suggestion never exceeds the linked payday's Amount used.
- **Whole window.** Suggestions look ahead across all 13 months, so a big annual bill (like insurance) gets saved for in the checks before it, not crammed into one.
- **Rounding.** Suggestions round up to the nearest $10, so every amount is easy to schedule.
- **Your override wins.** Typing a Planned amount locks that slot, and every other open slot recalculates around it.

### The three options

| Option | How each check's amount is set | Good for | Trade-off |
| --- | --- | --- | --- |
| **Minimum needed** | Each check sends just enough to stay above the floor until the next check. Any red days left over are fixed with the red-day rule below. | Keeping the most money in main checking | Amounts swing check to check |
| **Steady amount (default)** | One dollar amount for every check: the smallest that keeps the floor all year. A check smaller than that amount sends its whole cap. | Predictable, easy to preschedule as a recurring transfer | Builds a surplus in light months |
| **Same percentage** | Every check sends the same % of itself: the smallest % that keeps the floor all year. | Fair split between two incomes of different sizes | Amounts vary with paycheck size |

### Fixing red days and the cushion

The chosen option is applied first. Then the tool repairs any day that falls below the floor. A **red day** is any day with an Ending balance below $0.

1. Calculate the chosen option across the whole window.
2. Find the first day below the floor (a red day, or below the cushion when Use cushion = Yes).
3. Among open transfers dated on or before that day with room under their cap, raise the **smallest** one, the earliest if tied, by the gap (rounded up to $10, never past its cap).
4. If it hits its cap, raise the next smallest. Repeat until the day is fixed.
5. Move to the next day below the floor and repeat.
6. If a day can't be fixed because every earlier open transfer is at its cap, flag a Shortfall.

Over a full year this levels contributions out: lighter checks are topped up first, so no single paycheck carries a big bill alone.

### Comparing and applying

- All three options are recalculated after every change. Each shows its total transferred over the window, its lowest balance and that date, its largest single transfer, and any shortfall.
- The option set in Settings → Suggestion method fills Suggested amount (and so Planned amount) on open slots. Switching options re-fills only open slots.

### Shortfalls

If the floor can't be kept even with every open check at its cap, the plan is short. The tool then:

- Suggests the cap on every open check before the problem date
- Flags **Shortfall** with the first date and the dollar gap
- Leaves the fix to you: move a bill, add Irregular income, or lower the cushion

## Rolling window and archive

The window is always the previous month, the current month and the next 11 months. It rolls the first time the tool is opened in a new month.

1. Generate rows for the new month at the far end (bills, paydays, transfer slots)
2. Move finished rows to the Archive: Bill rows Paid or Paid from Other Account, income Received, transfers Completed or Skipped, with Date used more than 30 days ago
3. Keep anything unfinished (Unpaid, Late, Autopay or Scheduled awaiting confirmation) in view, however old
4. Rerun the suggestions

Restoring a row from the Archive puts it back exactly as it was.

## Flags

| Flag | Shows on | Raised when |
| --- | --- | --- |
| Red day | Daily Balance day | Ending balance < $0 |
| Below cushion | Daily Balance day | Use cushion = Yes and Ending balance < Cushion amount |
| Shortfall | Suggestions + first day affected | Floor can't be kept even with every open check at its cap |
| Needs review | Bill Ledger or Transfer row | Date used has passed and Status is still Autopay or Payment Scheduled, or an Unpaid bill was just auto-switched to Late, or a transfer's date has passed and it is still Planned or Scheduled |
| Late | Bill Ledger row | Status = Late (row floats on today) |
| Corrected | Daily Balance day | A Balance Correction exists that day |
| Over cap | Transfer row | A hand-entered Planned amount is bigger than its paycheck (a warning only, still allowed) |

## Decisions

| Question | Decision |
| --- | --- |
| Transfer date | Planned on the payday. Edit the transfer if needed. |
| Rounding | Up to the nearest $10 |
| Look-ahead | Yes. Suggestions plan across the whole year, and red days are fixed by raising the smallest earlier open transfer first. |
| Unpaid bills past their date | Auto-switch to Late and flag Needs review |
| Default option | **Steady amount. Easy to set as a recurring bank transfer.** |
| Late bill on a same-day correction | A correction or starting balance dated today doesn't absorb unpaid Late bills. They count the next day until paid. (Decided Nov 3, option b.) |
| Open transfer on a same-day correction | A Planned or Scheduled transfer dated today, with no Actual date, counts the next day. Extends the Late-bill rule. (Nov 3, built in step 4.) |
| Open slot whose date passes | Frozen at its last suggestion (locked) and flagged Needs review until marked Completed or Skipped. (Nov 3, built in step 4.) |
| Minimum needed when a check hits its cap | The red-day repair runs as each check is set, so later checks don't pay for a gap an earlier check already covers. Matches Test S5. (Nov 3.) |
