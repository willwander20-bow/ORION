
> [!warning] EXPORT — NOT A LIVE FILE
> Exported from Claude on 2026-11-10. This is a read-only snapshot and is overwritten at the end of each desktop working session.
> Live version (source of truth): [Test Scenarios](https://claude.ai/artifact/HFfFATSBimoYQYdMTLNrcK)
> Edits made here do NOT sync back. Diagrams and embedded widgets are not included in the export.

# Bill Tracker — Test Scenarios

Nov 2, 2026 · @Justin

## How to run these tests

Each test starts from a blank tool with the shared setup below. Enter only what the test lists, compare the result to Expected, and mark Pass or Fail. All data is fake. The build includes a test-only "pretend today" setting so these dates can be run any time. It is hidden once real data goes in.

**Shared setup (unless a test says otherwise):**

- Today = **Jan 1, 2027** (a Friday), so the window runs Dec 2026 – Dec 2027
- Withdrawal offset = 1 day · Use cushion = No · Rounding = up to $10
- Bills in balance and suggestion tests use **Annual** frequency, so each one occurs only once in the window and the math stays checkable by hand
- Starting balance = $0 on Jan 1, 2027

## Ledger generation

These tests check that bills and paydays land on the right dates.

| # | Enter | Expected | Pass? |
| --- | --- | --- | --- |
| G1 | Bill "Rent": monthly, due day 1, $1,000, Bills account – autopay | 12 rows, Jan – Dec 2027 (no December 2026 row, because Start date defaults to today). Jan row: due Jan 1, withdrawal Dec 31, 2026, status Autopay. |  |
| G2 | Bill "Phone": monthly, due day 31, $80 | Feb row: due Feb 28, withdrawal Feb 27. Apr row: due Apr 30, withdrawal Apr 29. |  |
| G3 | Bill "Insurance": quarterly, next due date Jan 15, 2027, $600 | Rows only on Jan 15, Apr 15, Jul 15 and Oct 15, 2027 |  |
| G4 | G1, then set End date Jun 30, 2027 | No Rent rows after June 2027. Earlier rows unchanged. |  |
| G5 | Bill "Streaming": Paid from = Other account | Every row defaults to Paid from Other Account |  |
| G6 | Income: monthly nth weekday, 3rd Wednesday, $2,000 | Paydays Jan 20, Feb 17, Mar 17, 2027 |  |
| G7 | Income: biweekly, anchor date Jan 8, 2027, $2,000 | Paydays Jan 8, Jan 22, Feb 5, Feb 19, Mar 5… |  |
| G8 | Income: semi-monthly, days 15 and 31 | February paydays: Feb 15 and Feb 28 |  |
| G9 | Income: Irregular | No paydays and no transfer slots generated |  |
| G10 | Any scheduled income with Include in estimates = Yes | One transfer slot per payday, dated on the payday |  |

## Daily Balance

These tests check the running balance. Every one starts from the same base data.

**Base data:** Starting balance **$500** on Jan 1, 2027. No income sources.

- Bill A: annual, due Jan 6, $200, autopay (withdrawal Jan 5)
- Bill B: annual, due Jan 11, $700, manual (withdrawal Jan 10)
- Transfer added by hand: $300 on Jan 8

| # | Change from base | Expected | Pass? |
| --- | --- | --- | --- |
| D1 | None | Ending balance: Jan 1–4 $500 · Jan 5 $300 · Jan 8 $600 · Jan 10 **−$100**, red day from Jan 10 onward |  |
| D2 | Bill B status → Paid from Other Account | Jan 10 stays $600. No red days. |  |
| D3 | Bill A Actual amount = $250 | Jan 5 $250 · Jan 8 $550 · Jan 10 −$150 |  |
| D4 | Correction on Jan 6: bank balance $250 | Difference shows −$50. Jan 6 $250 (flagged Corrected) · Jan 8 $550 · Jan 10 −$150 |  |
| D5 | Bill A Actual date = Jan 7 | Jan 5–6 $500 · Jan 7 $300 |  |
| D6 | Today = Jan 12. Bill B status → Late, no Actual date | Jan 10–11 $600 (Bill B no longer on Jan 10) · Jan 12 −$100 |  |

## Transfer suggestions

These tests check the transfer math, the part the old spreadsheet made you do by hand.

**Base data:** Starting balance $0 on Jan 1, 2027. Income "Pay": biweekly, anchor Jan 8, 2027, start date Jan 1, 2027 (paydays Jan 8, Jan 22, Feb 5…). Bills are annual, so each happens once.

**Set 1:** Pay = $2,000. Bill X $995 due Jan 15 (withdrawal Jan 14). Bill Y $1,000 due Jan 29 (withdrawal Jan 28).

| # | Option / change | Expected | Pass? |
| --- | --- | --- | --- |
| S1 | Steady amount (default) | Every slot $1,000, all year. Jan 14 ends $5, Jan 28 ends $5. No red days. |  |
| S2 | Minimum needed | Jan 8 $1,000 · Jan 22 $1,000 · every later slot $0 |  |
| S3 | Same percentage | Every slot $1,000 (about 49.9% of pay, rounded up to $10) |  |
| S4 | Steady, starting balance $200, cushion on at $200 | Every slot $1,000. Jan 14 ends $205, Jan 28 ends $205. (With the cushion off, the same data gives $900 a slot.) |  |

**Set 2:** Pay = $1,000 (so the cap matters). One bill $1,500 due Jan 29 (withdrawal Jan 28).

| # | Option / change | Expected | Pass? |
| --- | --- | --- | --- |
| S5 | Minimum needed | Before repair: Jan 8 $0, Jan 22 $1,000 (cap), Jan 28 red at −$500. After repair: **Jan 8 raised to $500** (smallest earlier open slot). Jan 28 ends $0. |  |
| S6 | Steady amount | Every slot $750. Jan 28 ends $0. |  |
| S7 | Steady, then type Jan 22 planned = $1,000 | Jan 22 locked at $1,000. Jan 8 and every later open slot recalculate to $500. Jan 28 ends $0. |  |
| S8 | Bill raised to $2,500, any option | Jan 8 and Jan 22 both $1,000 (cap). **Shortfall** flagged on Jan 28, gap $500. Jan 28 red at −$500. |  |
| S9 | Type a $1,200 planned amount on a $1,000 payday | Saves, and shows an Over cap warning |  |

## Statuses, window and housekeeping

These tests use G1 (Rent, $1,000 autopay) and a manual bill "Water" (monthly, due day 3, $60, withdrawal Jan 2). For W5, the December bill needs a Start date of Dec 1, 2026.

| # | Enter / do | Expected | Pass? |
| --- | --- | --- | --- |
| W1 | Today = Jan 3. Leave Rent's Dec 31 row as Autopay. | Row flagged Needs review, stays Autopay, still counts on Dec 31 |  |
| W2 | Today = Jan 3. Leave Water Unpaid. | Water auto-switches to Late, is flagged for review, and counts on Jan 3 |  |
| W3 | Hand-edit Rent's March Actual amount to $1,050, then change Rent to $1,100 in Bills | Untouched future rows show $1,100. March stays $1,050. Past rows unchanged. |  |
| W4 | Set Rent Active = No | Untouched future Rent rows disappear. Paid rows stay. |  |
| W5 | Mark Rent's Dec 31 row Paid. Add a bill with Start date Dec 1, 2026 and leave its December row Unpaid. Open the tool on Feb 1, 2027. | Window becomes Jan 2027 – Jan 2028. Jan 2028 rows created. Rent's Dec 31 row moves to Archive. The Unpaid December row stays in view. |  |
| W6 | Restore Rent's Dec 31 row from the Archive | Back in the ledger exactly as it was |  |
| W7 | Tap Export | A spreadsheet downloads with one sheet per table, archived rows included |  |
| W8 | Mark a bill paid on your phone, then open the tool on a computer | The change shows there after refreshing |  |

## Test run · Nov 3, 2026 (v7)

Run by Claude against the tool's own code, using the "pretend today" setting each test calls for. Every expected value was checked to the dollar and the day.

| Group | Tests | Result |
| --- | --- | --- |
| Ledger generation | G1–G10 | 10 of 10 pass |
| Daily Balance | D1–D6 | 6 of 6 pass |
| Transfer suggestions | S1–S9 | 9 of 9 pass |
| Statuses, window, housekeeping | W1–W6 | 6 of 6 pass |
| Bug #1 fix | Earlier Start date backfills paydays | Pass |
| Hands-on only | W7 Export, W8 phone → computer | Justin to run |

Notes: S5 failed on the first run in Session 5 (a stray $500 on a later check under Minimum needed). It was fixed before this run. In W5 both monthly bills correctly get a January 2028 row.
