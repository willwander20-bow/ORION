---
id: SRC-20261116-013
type: source
title: "Connect"
status: change-proposed
created: 2026-11-16T05:56
updated: 2026-11-16T06:00
created-by: orchestrator
schema-version: "0.13"
url: https://ruben.substack.com/p/claude-connectors
source-type: article
author: Ruben Hassid
publisher: "Substack (ruben.substack.com)"
published: 2026-05-13
captured: 2026-11-16T05:56
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "From the same TikTok list (guides 8 to 15). Justin asked for them to be done in a new session. The list: https://www.tiktok.com/t/ZPLESTkK8/"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261116-006 Connect, Claude connectors, Hassid]]"
source-quality: medium
extraction-completeness: partial
extraction-confidence: medium
claim-count: 10
---

# Notes

Guide 13 of 15 in a TikTok post (author on TikTok: TheUncommonGrind). Access check: `curl` returns 200 with page text. Free post (audience: everyone). TikTok slide title: Connectors in Claude.

# Reference Brief

## 1. Executive summary

The author, Ruben Hassid, explains how to connect Claude to other apps with connectors. He gives setup steps, a list of nine favorite connectors, and rules for when not to use one. A last section tells developers how to build their own connector as an MCP server. The author runs a paid newsletter. The guide is a how-to with opinions, not a study.

## 2. Central premise and author intent

Premise: a connector lets Claude work with the apps a user already has, so the user opens Claude instead of each app. Intent: teach (setup, picks, cautions) and build the author's audience. The page asks readers to share it and has one line for paid subscribers. The author states that he mostly opens Claude now (WebFetch result, see §12).

## 3. Key takeaways

- A connector links Claude to an app. Setup is in the chat box: "+", then Connectors, then add the app.
- The author names nine favorite connectors. His examples include Granola (notes), HubSpot/Salesforce (CRM), Notion, Microsoft 365, Slack, Google Drive, Gamma, and Gmail.
- The author advises to start with three connectors.
- The author warns against three things: leaving all connectors on, using them for creative work, and giving write access too early.
- A developer can build a connector as an MCP server. The author estimates 3 to 4 hours for a beginner.

## 4. Facts and figures

- The author says the directory has over 200 connectors (his claim, no source given).
- The author estimates 3 to 4 hours to ship a connector for a person who has never coded (his estimate).
- No price, plan name, or percentage was in the text that WebFetch returned. WebFetch said the page mentions "1,000+ shares per article" as a weekly target (a count, not a percentage; not checked).

## 5. Methods and frameworks

- Connect an app: open "+" in the chat box, go to Connectors, add the app, turn it on in a new chat.
- Safe rollout: read-only first. Watch how Claude uses the connector for a week. Add write access after that.
- Build a connector (section V, steps 1 to 3): open Claude Code and paste the author's prompt; run the deploy command that Claude gives; add the result to Claude. The Brief does not copy the prompt.
- Start with three connectors: a notetaker, email, and a team channel (WebFetch summary).

## 6. Concepts and definitions

- Connector: the author defines it as an MCP server with a public URL. He also calls it a 1-click bridge between Claude and an app (that sentence is more than 15 words, so it is not quoted).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author states that a Claude connector is an MCP server with a public URL. | factual | explicit | E1 | medium |
| C2 | The author describes the setup: open "+" in the chat box, go to Connectors, add the app, and turn it on in a new chat. | procedural | explicit | E2 | medium |
| C3 | The author states that the Claude connector directory has over 200 connectors. | factual | explicit | E3 | medium |
| C4 | The author states that connectors use tokens before the user types, so they should not all stay on by default. | causal | explicit | E4 | medium |
| C5 | The author advises read-only access first, and write access only after the user trusts the read flow. | normative | explicit | E5 | high |
| C6 | The author recommends that a reader starts with three connectors. | normative | explicit | E6 | medium |
| C7 | The author estimates that a person with no coding experience can ship a connector in about 3 to 4 hours. | predictive | explicit | E7 | medium |
| C8 | The author advises against connectors for creative work. | normative | explicit | E8 | medium |
| C9 | The author names Granola, HubSpot/Salesforce, Notion, Microsoft 365, Slack, Google Drive, Gamma, and Gmail among his nine favorite connectors. | normative | explicit | E9 | medium |
| C10 | The page invites paid newsletter subscribers to contact the author by direct message (sales content, not a knowledge claim). | factual | explicit | E10 | medium |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "A Connector is just an MCP server with a public URL." (11 words) | § V. Build your own connector (for devs) | C1 | supports | direct | Author's definition for developers. No link to MCP documentation was seen. Paragraph not counted. |
| E2 | Summary: Section I tells the reader to use the "+" in the chat box, open Connectors, add an app, and check it is on in a new chat. | § I - How to connect your app to Claude | C2 | supports | direct | Interface may change. Page date is 2026-05-13. |
| E3 | Quote: "The directory is 200+ Connectors and growing." (7 words) | § III. The entire list of Claude Connectors | C3 | supports | direct | Count is the author's. No date or source for the count. |
| E4 | Quote: "Connectors burn tokens before you type." (6 words) | § IV. When NOT to use a Connector | C4 | supports | direct | No measurement of token use is shown. |
| E5 | Quote: "Read-only first. Watch how Claude uses it for a week." (10 words) | § IV. When NOT to use a Connector | C5 | supports | direct | Advice from one user. No evidence that one week is the right period. |
| E6 | Quote: "Pick 3." (2 words) | § Where to start | C6 | supports | direct | Short quote. The kinds (notetaker, email, team channel) come from the WebFetch summary. |
| E7 | Quote: "You can ship one in maybe 3-4 hours if you’ve never touched code." (13 words) | § V. Build your own connector (for devs) | C7 | supports | direct | Author's estimate. The word "maybe" hedges it. No case or test. |
| E8 | Summary: One sub-heading under section IV says not to use connectors for creative work. | § IV. When NOT to use a Connector | C8 | supports | direct | Reasoning for the rule was not checked in the text returned. |
| E9 | Summary: Section II lists the author's nine favorite connectors with a use for each. The tool returned eight names in one pass and a heading list that skips item 3. | § II - My 9 favorite Claude connectors | C9 | supports | direct | Opinion list. The author is not shown to be independent of any vendor. Item 3 not confirmed. |
| E10 | Quote: "If you are a paid subscriber to this newsletter, hit me up by DM!" (14 words) | § I - How to connect your app to Claude | C10 | supports | direct | Promotion. The Brief does not use it as support for any other claim. |

## 9. Tools and resources

- Claude connectors directory (claude.com, and Manage connectors inside Claude), as named by the author.
- Connectors named by the author: Granola, HubSpot, Salesforce, Notion, Microsoft 365, Slack, Google Drive, Gamma, Gmail.
- Claude Code and Claude Cowork (mentioned for building a connector and for spreadsheets).
- MCP (Model Context Protocol) server.

## 10. Limitations and caveats

- WebFetch gave a processed page, not exact text. The Orchestrator must check each quote against the raw page (see §12).
- The article gives no price, plan name, or percentage in the text returned. If the Orchestrator finds one in the raw page, treat it as unsourced and as promotion.
- All claims are the author's opinion or experience. No data, no test, no comparison between connectors.
- The author runs a paid newsletter and asks for shares. The "favorite" list is opinion and may be shaped by his audience goals.
- Connector availability, the interface, and the count of 200+ may change after 2026-05-13.
- The build instructions for developers are not checked here. The Brief does not say they work.
- The "3-4 hours" estimate has no support beyond the author's word.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Known Claude-focused newsletter author, shown as a practitioner. No stated credentials from Anthropic or the connector vendors. |
| Transparency | 3 | States his own use and opinion. Gives no data source for the connector count or the time estimate. |
| Accuracy | 3 | The setup and MCP definition fit common descriptions, but the Brief did not check them against Anthropic documentation. |
| Objectivity | 2 | Promotional. He sells a paid newsletter, asks for shares, and presents a personal favorites list. |
| Currency | 4 | Published 2026-05-13. About six months old at capture, in a fast-changing product area. |

## 12. Extraction notes

- Access: full, with WebFetch on the url (two calls). No companion file.
- WebFetch refused verbatim output in the first call and gave a summary. The second call gave headings and short sentences. Every `Quote:` is as the tool returned it and was not checked against the raw page. The Orchestrator must check each quote against the raw page. The tool returned curly apostrophes (for example "you’ve"); check the final full stop of each quote on the page.
- Headings as the tool returned them: the list skips "3." in section II (items 1, 2, 4 to 9). The Brief does not know if item 3 exists on the page. Locators use headings only, with no paragraph numbers, because the paragraph counts are unknown.
- Quote word counts: E1 11, E3 7, E4 6, E5 10, E6 2, E7 13, E10 14. All are 15 or fewer.
- Not covered: the individual use descriptions for each connector, the exact build prompt in section V, the closing text, and the page comments.
- extraction-completeness is `partial` because the page text came from a model, not the raw page. extraction-confidence is `medium` for the same reason.
- No text aimed at an AI was found. No link to Charter or Spectrum work was found.
- Final check: each claim has an evidence row (C1 to C10, E1 to E10). Each evidence row has a locator. Ratings and estimates name the author. claim-count is 10.
