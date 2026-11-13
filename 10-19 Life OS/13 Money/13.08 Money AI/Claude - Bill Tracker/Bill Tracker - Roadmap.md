
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): [Roadmap](https://claude.ai/artifact/7mjmnvaA9sN6npzCZDYLUY)
> Edits made here do NOT sync back. Diagrams and embedded widgets are not included in the export.

# Bill Tracker — Roadmap

Nov 2, 2026 · @Justin

v1 builds the core planner and gets tested with fake data before real numbers go in. Every other idea waits in the backlog so v1 stays small.

## At a glance

&#91;embedded content: roadmap · 3 stages, 2 gates\]

Nothing moves to the next stage until its gate is met.

## v1 build order

Each step is built and checked before the next one starts, so a problem shows up where it was made.

1. **Foundation:** Settings, Bills and Income Sources setup screens, and online data storage
2. **Ledgers:** Bill Ledger and Income Ledger generation, statuses, Late float, Needs review
3. **Daily Balance:** the Plan view, Balance Corrections, red day and cushion flags
4. **Transfers:** transfer slots, the three suggestion options (Steady default), red-day repair, overrides, Shortfall
5. **Home and housekeeping:** Home screen, 13-month rolling window, Archive, Export to spreadsheet
6. **Test:** run every Test Scenario with fake data (using a test-only "pretend today" date) and fix anything that fails. Clear the fake data before go-live.
7. **Go live:** enter real bills, income and starting balance
8. **User Guide:** Quick Start and How It Works, written from the finished tool

## Backlog

Every idea parked so far. New ones get added here instead of sneaking into v1.

| Feature | Stage | What it would do |
| --- | --- | --- |
| Bank statement CSV upload | Fast follow | Upload the Bills account statement, match transactions to ledger rows, mark them paid |
| Credit card tracking | Later | Track the card balance and which bills ride on it. First Later item. |
| Catch-up plan | Later | Plan paying down past-due bills |
| Debt payoff planning | Later | Payoff order and timeline for debts |
| Bill categories | Later | Group and filter bills (housing, utilities, debt) |
| Main checking tracking | Later | Track the account paychecks land in |
| Payday reminders | Later | Phone notification on payday: "transfer $X" |
| Second user | Later | Let my husband sign in and use the same data |
| Remove personal identifiers | Later | Rewrite docs and the tool in neutral language ("the user", "a second user") with no personal or household details |
| Merge anchor date into start date | Fast follow | For weekly and biweekly income, the Start date is the first real payday and the schedule counts from it. Removes the separate Anchor date field. |
| Delete all data | v1 (moved Nov 3, built) | A Delete all option in Settings that wipes every table back to blank, with a strong confirm step |
| Bills due on an nth weekday | Built Nov 3 (v1 add) | Let a bill be due on, say, the 2nd Tuesday or last Friday of the month, the way income sources already can. Confirmed by Justin. |
| Calculation logic review | Later (asked Nov 3) | Revisit the Calculation Logic doc after a few real paydays for possible improvements (suggestion options, rounding, red-day repair, anchor-day rules). |

## Bug list

Bugs found while testing. Each one is fixed before the Test step signs off.

| # | Found | Bug | Expected | Status |
| --- | --- | --- | --- | --- |
| 1 | Nov 3, 2026 | Editing an income source's Start date to an earlier date doesn't add the missing past paydays. Backfill only happens when a source is first created. | Moving the Start date earlier fills in the past paydays from the new date, with no need to delete and re-add | Fixed (Nov 3, v7). Also applied to bills. |
| 2 | Nov 3, 2026 | Deleting a bill or income source made its Paid bills and Received paydays disappear. Possible cause: Bills Due shows an empty screen when no bills exist, hiding rows that are still stored. | Deleting a bill or source removes only untouched future rows. Paid, Late, edited and Received rows stay, still count in the balance, and stay visible. | Fixed (Nov 3, v7). Data was never lost; Bills Due now shows kept rows even with no bills. |

## Feature ideas

These are brainstormed from everything decided so far. The fast-follow ideas are light, high-impact add-ons that reuse data v1 already has. Priority 1 is the first to build after the CSV upload.

### Fast follow ideas

| Priority | Feature | Impact | Effort | What it would do |
| --- | --- | --- | --- | --- |
| 1 | Payday checklist | High | Small | One guided screen each payday: confirm the paycheck landed, confirm the last transfer, clear flagged bills, approve this transfer |
| 2 | Recurring transfer helper | High | Small | Copy-ready bank instructions for the Steady amount ("$X every other Friday starting …"), plus a warning when the amount changes |
| 3 | Bulk confirm autopays | High | Small | After checking the bank, mark every flagged Autopay row Paid in one tap |
| 4 | Bill change prompt | Medium–High | Small | When an Actual amount is more than 10% off Expected, offer to update the bill |
| 5 | Smart estimate for variable bills | Medium | Small | Suggest Expected from the highest of the last 3 actuals |
| 6 | Surplus meter | Medium | Small | Show the extra building above the floor, ready for catch-up or debt |
| 7 | Payee quick links | Medium | Small | Tap a manual bill to open its payment website straight from the ledger |
| 8 | Snooze a flag | Medium | Small | "Remind me tomorrow" on a Needs review row, so flags don't pile up into noise |
| 9 | Late fee logger | Medium | Small | Record late fees on Late bills and show the running total. Motivation to stay current. |
| 10 | Cushion suggester | Medium | Small | Recommend a cushion amount based on how much the variable bills swing |
| 11 | Wins tracker | Medium | Small | Count paydays with no red days and bills paid on time. A little dopamine for good habits. |
| 12 | Search | Medium | Small | One search box across bills, ledger rows and transfers |
| 13 | Backup nudge | Medium | Small | Monthly reminder to tap Export, with the date of the last backup |
| 14 | Duplicate a bill | Low–Medium | Small | Copy an existing bill as the starting point for a new one |
| 15 | Copy plan summary | Low–Medium | Small | One tap copies a plain-text summary (next transfer, red days, bills this week) to paste anywhere |

### Later ideas

| Priority | Feature | Impact | Effort | What it would do |
| --- | --- | --- | --- | --- |
| 16 | What-if scenarios | High | Medium | Try changes without saving them (a paycheck stops, a bonus lands, a bill ends) and see the effect on red days and transfers |
| 17 | Due-date shift advisor | High | Medium | Suggest which bills to ask the company to move to a different due date so paychecks even out and red days disappear |
| 18 | Irregular income planner | High | Medium | When a bonus or side-shift pay lands, suggest a split between cushion, catch-up and debt |
| 19 | Ask Claude about the plan | High | Medium | Ask questions in plain words ("Can we cover a $400 repair this month?") and get an answer from the live plan |
| 20 | Install as a phone app | High | Medium | Add to the home screen, open full screen, and work faster on a phone |
| 21 | Big-bill savings tracker | Medium | Medium | Progress bars showing how much is set aside for each large annual or quarterly bill |
| 22 | Subscription audit | Medium | Medium | List small recurring bills with their yearly cost to spot easy cuts |
| 23 | Monthly drift review | Medium | Medium | End-of-month recap of planned vs. actual, corrections made and bills that moved |
| 24 | Savings goal | Medium | Medium | Point the surplus at a goal, like an emergency fund, and track progress |
| 25 | Bill price history | Medium | Medium | Each bill's amount over time, so increases stand out |
| 26 | Envelopes inside the Bills account | Medium | Large | Split the Bills balance into buckets (monthly bills, annual bills, cushion) |
| 27 | Voice entry | Medium | Medium | Say "mark electric paid" or "add a $50 transfer Friday" instead of tapping |
| 28 | Year-over-year trends | Medium | Medium | Chart total bills by month, compared with last year |
| 29 | Calendar view | Low–Medium | Medium | Month grid of bills and paydays as another way to read the Plan |
| 30 | Year-end totals export | Low | Medium | Yearly totals by bill for taxes or annual budgeting |

## Decisions

| Question | Decision |
| --- | --- |
| Fast follow gate | Prompt to start the CSV upload 60 days after v1 goes live |
| First Later item | Credit card tracking |
