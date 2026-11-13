
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): [User Guide](https://claude.ai/artifact/FY9ztnZe7UNfSDXQwDpYCA)
> Edits made here do NOT sync back. Diagrams and embedded widgets are not included in the export.

# Bill Tracker — User Guide

Nov 3, 2026 · @Justin

The Bill Tracker tells you how much to move into the Bills checking account each payday so it never drops below $0 (or your cushion) for the next 13 months. [Open the tracker](https://claude.ai/artifact/7Yu5iGx3dMnDv3DoTpJGBF)

## Quick Start

Set it up once (about 20 minutes), then each payday takes under 5.

### First-time setup

1. **Open the tracker** and save the link to your phone's home screen so it's one tap away.
2. **Menu → Settings → Edit settings.** Enter the real Bills account balance and the date it's from. Leave the cushion off unless you want a minimum buffer kept in the account.
3. **Menu → Bills.** Tap **Import from a spreadsheet** and pick your filled-in template, or add bills one at a time with **+ Add bill**.
4. **Menu → Income Sources.** Add each paycheck with its schedule and take-home amount. Keep **Include in estimates** on for every paycheck that should fund transfers.
5. **Open Transfers.** The **Next transfer** card shows what to move into the Bills account on the next payday.

### Payday check-in (under 5 minutes)

1. **Open Home** and work down **Needs attention**, top to bottom.
2. **Paycheck landed?** Income tab → **Got it**.
3. **Last transfer happened?** Transfers tab → **Done** (or **Skip** if it didn't).
4. **Autopays cleared?** Bills Due → **Paid** on each flagged bill. Add the actual amount if it was different.
5. **Make the transfer in your bank** for the Next transfer amount, then mark it **Scheduled** (set up) or **Done** (sent).
6. **Glance at Plan.** No red days means you're done.

### Once a month

- **Correct the balance.** Plan → **+ Correct balance** with the real number from the bank. It resets the plan from that day and shows how far it had drifted.
- **Back it up.** Menu → **Export to spreadsheet**.

## How It Works

The tracker watches one account, Bills checking. Paychecks land in main checking and never touch it; only **transfers** add money, and **bills** take it out. The tool works out the transfers.

### Bills and the Bill Ledger

- Each bill on the master list (Menu → Bills) creates one ledger row per due date across **13 months**: last month, this month and the next 11. Monthly bills are due on a day (the 15th) or a weekday (the 2nd Tuesday).
- Money is planned to leave **1 day before** the due date (Withdrawal offset in Settings). Weekends and holidays aren't shifted; edit that row's withdrawal date if you need to.
- The **Expected** amount plans the year. An **Actual** amount or date you enter always wins.
- Editing a bill updates future rows you haven't touched. Rows you edited or marked, and past rows, stay as they are. Pausing or ending a bill removes only its untouched future rows; history stays.

### Statuses and flags

| Status | Means | Counts against Bills account |
| --- | --- | --- |
| Unpaid | Manual bill, not paid yet | Yes |
| Payment Scheduled | Set up in the bank, not withdrawn yet | Yes |
| Autopay | Pays itself from the Bills account | Yes |
| Paid | Money has left the account | Yes |
| Late | Past due and not paid | Yes, on today until paid |
| Paid from Other Account | Credit card or another account | No |

- **Autopay never marks itself Paid.** Once its date passes it's flagged **Needs review** until you confirm it.
- An **Unpaid** bill whose date passes switches to **Late**, gets flagged, and counts against today until it's paid.

### Income and transfer slots

- Each income source creates paydays: weekly, biweekly, semi-monthly, monthly on a date, monthly on the nth weekday, or irregular.
- Every payday with **Include in estimates** on gets a **transfer slot** that day. A slot's suggestion is never more than that paycheck.
- **Irregular** income (bonuses, side shifts) is logged by hand on the Income tab and doesn't get a slot.

### The Plan (daily balance)

- Starts from the starting balance on its date. Each day: start + transfers in − bills out = end of day.
- A **Balance Correction** resets a day to the real bank balance, and everything after recalculates. The difference it shows is how far the plan had drifted, usually a missed bill or transfer.
- On a correction day, the bank's number is assumed to include that day's activity, **except** Late bills and transfers that haven't happened yet. Those count the next day.
- **Red day** = below $0. **Below cushion** = under your cushion, when the cushion is on.

### Transfer suggestions

| Option | How each check is set | Good for |
| --- | --- | --- |
| Steady amount (default) | One amount for every check: the smallest that keeps you above the floor all year | Setting up a recurring bank transfer |
| Minimum needed | Just enough to stay above the floor until the next check | Keeping the most in main checking |
| Same percentage | The same share of every check | Splitting fairly between two incomes |

- Every option rounds **up to $10**, never goes over the paycheck, and looks a full year ahead, so a big annual bill is saved for in the checks before it.
- **Red-day repair:** if a day would still go red, the smallest earlier open check is raised first.
- **Shortfall:** if every earlier check is already maxed, the tool flags the date and the dollar gap. Fix it by moving a bill's date, logging irregular income, or lowering the cushion.
- **Your amounts win.** Typing an amount locks that check and the others recalculate. Scheduled, Done, Skipped and past checks are locked too. **Use suggestion** unlocks a typed one.
- Compare all three on the Transfers tab; **Use this** switches, and only open checks change.

### Housekeeping

- **Rolling window:** the first time you open the tool each month, it adds the new month and archives finished rows more than 30 days old. Archived rows still count in every balance; restore any of them from Menu → Archive.
- **Import bills:** Menu → Bills → Import from a spreadsheet. You see a preview of every row before anything saves.
- **Export:** Menu → Export to spreadsheet gives one sheet per table, archive included.
- **Undo:** every save shows **Undo** for a few seconds.
- **Delete all data:** Settings → Danger zone, behind a typed DELETE.

### Troubleshooting

| Problem | Fix |
| --- | --- |
| The plan doesn't match the bank | Enter a correction. A big difference usually means a bill or transfer wasn't marked |
| A bill says Late but you paid it | Bills Due → tap it → **Mark paid**, with the actual date |
| Red days ahead | Check Transfers for a Shortfall, try another option, move a bill, or log irregular income |
| The suggested transfer is more than you can send | Type your own amount. It locks, and the rest adjust |
| A bill changed for good | Edit it in Menu → Bills; future rows update |
| A bill changed just this month | Edit that row's actual amount in Bills Due |
| Paydays are missing | Check the income source's start date and **Include in estimates** |
| Nothing saves | Open the tracker on claude.ai, signed in to your account |

### Safety

- Never store account, card, routing or ID numbers. The tracker blocks long runs of digits; the last 4 is fine.
- There's no bank connection and no logins. You enter everything.
- Your data is saved online and private to you.
