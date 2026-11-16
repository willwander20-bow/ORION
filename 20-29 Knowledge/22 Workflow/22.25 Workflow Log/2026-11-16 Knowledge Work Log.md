# Knowledge Work Log — 2026-11-16

Earlier events of this session, after midnight (the Curator maintenance run, CO-20261116-001, CO-20261116-002), are in the log of 2026-11-15, because the session started on that day.

## Audit events

| Time | Actor | Event | Record | Result |
|---|---|---|---|---|
| 00:25 | orchestrator | **TikTok list, first 7 guides.** Justin asked for the links of a TikTok post (a 4-slide carousel by TheUncommonGrind, 15 Claude guides, all on ruben.substack.com), then: "Do the first 7". The links were read from the slide images (TikTok showed a login prompt; the Orchestrator closed it and entered nothing). Truncated addresses were completed from the Substack sitemap. 7 Source notes SRC-20261116-001 to -007 made and routed (`full-review`). No duplicate by url. Access: 200 on all; posts 002, 003, 005, 006 are paid-subscriber posts, so only the free preview is visible: access `partial`. The paywall was not bypassed. Author Ruben Hassid (sells a paid newsletter). | SRC-20261116-001 to -007 | routed |
| 00:31 | reporter | Seven Reporters in parallel (about 35,000 to 52,000 tokens each). Quote Check before fixes: 006 failed 1 of 3, 003 failed 4 of 10, 007 failed 1 of 8, 001 failed 6 of 21, 004 failed 1 of 22. Every failure was a straight apostrophe where the page has a curly one, a trailing full stop that the page does not have, or inner quotation marks. The Orchestrator corrected each quote to the page text in the draft (13 quotes, drafts only) and re-ran: all pass (001 21 of 21, 002 1 of 1, 003 10 of 10, 004 22 of 22, 005 none, 006 3 of 3, 007 8 of 8). Heading locators checked against the raw pages: all found; 006 locators are `unavailable` (the Reporter could not give any). Briefs merged into the Source notes. A first merge attempt failed on a path error; no draft was deleted. | SRC-20261116-001 to -007 | briefed |
| 00:32 | managing-editor | Seven Managing Editor runs (merged mode), 001 first, then 002 to 007 in parallel. **Change Orders:** CO-20261116-003 (001: Concept of five prompting rules, MOC "Using Claude", one MOC line; 3 rows), CO-20261116-004 (004, Cowork setup: Concept, MOC listing, one link; 3 rows), CO-20261116-005 (002: 2 rows that edit the drafts of CO-003; depends on CO-003; below the threshold, no Editor). **No Change:** 003 (tip headings only), 005 (design how-to, summary evidence), 006 (an untested trick), 007 (unsourced prices and costs). The four sources are `done`. | CO-20261116-003 to -005 | open |
| 00:33 | editor | Second look on 001 and 004 (threshold: new records). **001: the Editor says `investigate`, relevance `low`; the Managing Editor proposes records.** Both views are shown to Justin in the "Orchestrator comparison" of CO-003, with options A to D. 004: both say `advance`; comparison in CO-004 (the Editor wants a caveat on CON-20261113-003 and -004 that the Change Order lacks). | CO-20261116-003, -004 | compared |
| 00:34 | orchestrator | Research Questions: 2 rows added by the Orchestrator (no Change Order needed, Schema §2.5): goal-based prompting (007), "Use ASD-STE100" in a prompt (006). A third row for the 001 Editor question (investigate). No row for 003 and 005 (weak). | Research Questions | OK |
| 00:34 | orchestrator | Checks: Frontmatter Check 0 problems (103 files), Link Check 0 problems. `21 Brain` changed only in `Research Questions.md`. `.staging\proposed` holds 3 drafts (UC x2, P4 x1). Dependencies: CO-005 and CO-004 depend on CO-003. | | OK |
| 05:46 | justin | **Decision:** "Approve as written. Ive read the other COs and they'll add to the new MOC". CO-20261116-003 approved, option A. The remark on the other Change Orders is not read as an approval of CO-004 or CO-005. | CO-20261116-003 | approved |
| 05:46 | orchestrator | **Apply CO-20261116-003.** Brain version CO-20261116-002 to CO-20261116-003. New: CON-20261116-001 Prompting rules in a Claude beginner guide, MOC-20261116-001 Using Claude. Edited: one line in MOC-20261115-002 (Related MOCs). SRC-20261116-001 set to `done`. Frontmatter Check 0 (105 files), Link Check 0 (27 records). Curator Due: not due (3 of 15). | CO-20261116-003 | applied |

## Decisions

CO-20261116-003: approved (see above). CO-20261116-004 and CO-20261116-005: not decided.

## Open

- CO-20261116-004 and CO-20261116-005 wait for Justin. Both depend on CO-003 (applied): after approval each needs a rebase onto CO-20261116-003 and its draft links changed to the real IDs (MOC-20261116-001, CON-20261116-001).
- The other 8 guides of the TikTok list (SRC not made) wait for Justin.
- Paid posts: only the free preview was read. A saved copy of the full text from Justin would allow a fuller Brief.

## Notes

- Quote fixes: five quote strings in 003 and 006 (found twice each in the draft), and 8 quote strings in 001, 004, and 007. A fixer script tried only two variants (curly apostrophe, trailing punctuation) and changed a quote only when the variant was found on the page. Quotes in the Source notes now equal the page text.
- Slip: two merge commands failed on a shell path variable. The merge checks before it deletes a draft, so no file was lost.
- Times in this log come from the system clock (the file times of the records). The Orchestrator wrote the link list for Justin from the slide images. The titles on the slides differ from the post titles for guides 2, 3, 4, 7, 10, 11, 14 (see the Source notes).
