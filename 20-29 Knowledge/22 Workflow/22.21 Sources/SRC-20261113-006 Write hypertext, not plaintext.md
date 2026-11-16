---
id: SRC-20261113-006
type: source
title: Write hypertext, not plaintext
status: done
created: 2026-11-13T11:23
updated: 2026-11-15T20:00
created-by: orchestrator
schema-version: "0.8"
url: https://aartaka.me/hypertext
source-type: article
author: Artyom Bologov
publisher: aartaka.me
published:
captured: 2026-11-13T11:23
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "Phase 3 test E3 (challenges), KS-08 §8.9."
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261113-004 Write hypertext, not plaintext]]"
  - "[[CO-20261113-006 Write hypertext, not plaintext]]"
source-quality: low
extraction-completeness: full
extraction-confidence: medium
claim-count: 18
---

# Notes

- Phase 3 test E3 (KS-08 §8.9).
- Duplicate check: no Source in `22.21` has this `url`.
- Routing: `full-review`. Scope: the article body, not the feedback link at the end.
- No companion text file.
- `published` is empty. The page gives no first publication date. Footer: "2022-2026". Update notes in the body run from Dec 2023 to Aug 2026.
- The page is licensed CC-BY 4.0 (footer).
- Reporter access result: `full`. Brief [[BRF-20261113-005 Write hypertext, not plaintext]] saved as `draft`. Status set to `briefed`.
- Related: this source answers [[SRC-20261113-003 Write plain text files]].
- Justin validated the Brief in chat (11:31). Phase 3 test E3: Editor Assessment [[KAS-20261113-005 Write hypertext, not plaintext]] saved as `draft`. Status set to `assessed`.

# Reference Brief

Migrated from BRF-20261113-005.

## 1. Executive summary

Artyom Bologov wrote this opinion essay on his personal blog. He argues against the advice to "write plain text files" (Derek Sivers, Scott Nesbit). He says "plaintext" has two meanings: a storage type, which lasts, and a subtype (the markup or format), which does not last. He also says that plain text grows into non-standard rich text when you add metadata and links. He says Markdown has platform quirks and that tools such as Obsidian can disappear. He recommends HTML hypertext: plain-text storage with a standard, semantic, linkable format. His slogan is "Write Hypertext Knowledge Webs, Not Plain Text Files."

## 2. Central premise and author intent

Premise: storing text as plain text is necessary but not enough. Long-term value also needs a reliable, standard format that supports links and metadata. The author says HTML is that format.

Intent: to persuade. The essay answers Sivers' "Write Plain Text Files" (https://sive.rs/plaintext) and Nesbit's "Why Plain Text Matters." It argues for the author's own practice (HTML knowledge webs). The headings are polemical, for example "Screw .TXT, All My Homies Use Markdown." The author calls himself "a paranoid."

## 3. Key takeaways

- The author separates plain text as a storage type (MIME `text/*`) from its subtype (the markup or display format). He says Sivers and Nesbit confuse the two.
- He says that the storage type lasts and the subtypes are as short-lived as the software or people that process them.
- He says that a plain-text file with metadata, links, lists, and quotes becomes non-standard rich text. He concludes that "plaintext is not enough."
- He rates Markdown as the de facto standard for notes, blogs, and docs, but says it has many platform-specific behaviors.
- He predicts that Obsidian will end, by comparison with Myspace and Google Reader. He says that tool-based knowledge webs give him no assurance.
- He proposes academic-style referencing as a way to link knowledge that does not depend on a tool.
- He recommends HTML (with HTTP and URIs) as a format for knowledge webs that is safe, portable, rich in metadata, and linked.
- He rejects Gemtext as a markup language, not a hypertext format.
- His own blog shows the limits of his scheme. He added paragraph-level link signs (pilcrows), removed them, restored them, and then removed them again "as useless and noisy."

## 4. Facts and figures

- Dates of the updates in the article: Dec 2023 (pilcrows removed), Jan 2024 ("Interlude on Tools" added), Mar 2024 (pilcrows restored), Aug 2026 (pilcrows gone).
- The source reports Nesbit's statement that a 1991 text file opens in modern editors with no loss of information.
- The source says that HTTP, URI, and HTML came from academia in the nineties. The source gives no citation for this.
- The author says that his blog source is Lisp processed with a C preprocessor.
- The article gives no date of first publication. The footer gives "2022-2026" and a generation date of 15 Sep 2026 (footer, outside the scope).

## 5. Methods and frameworks

- Two-layer model of "plaintext": the storage type (`text/*`) and the subtype (the markup or display format). The author uses this model to judge formats.
- Criteria for choosing a format, as the source lists them: safe, portable, pretty, rich in metadata, and linked.
- Referencing scheme: silcrow (§) and pilcrow (¶) anchors on headings and paragraphs. The author compares this scheme to Bible-style references. He later dropped the pilcrows.
- Academic citation practice, with tools such as Zotero and Citation Machine, as a way to link knowledge that does not depend on a tool.

## 6. Concepts and definitions

- **Plaintext as a storage type:** text stored as a `text/*` MIME type. The author calls it "eternal."
- **Plaintext subtype:** the markup or display format inside the text, for example Markdown, Org, or HTML. The author calls it ephemeral.
- **Hypertext:** the source quotes a Wikipedia definition, which it summarizes as text on a display with links to other text.
- **Knowledge web:** a set of documents linked to each other, for example in Obsidian, in Zettelkasten, or in HTML.
- **Gemtext:** the markup of the Gemini protocol. The author calls it "a markup language, not a Hypertext format."

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source quotes Sivers' "Write Plain Text Files," which calls plain text files the most reliable, flexible, and long-lasting option. | factual | explicit | E1 | high |
| C2 | The author argues that a plain-text file with added metadata, links, lists, and quotations becomes non-portable, non-standard rich text, so "plaintext is not enough." | normative | explicit | E2, E3 | high |
| C3 | The author says that "plaintext" has two meanings, a storage type (`text/*`) and a subtype (markup or display format), and that Sivers and Nesbit conflate them. | normative | explicit | E4, E5 | high |
| C4 | The author predicts that the plain-text storage type lasts, while subtypes are only as long-lived as the software or people that process them. | predictive | explicit | E6 | high |
| C5 | The author recommends using plain text as the storage type and choosing a reliable subtype. | normative | explicit | E7 | high |
| C6 | The author rates Markdown as the de facto standard for Zettelkasten notes, blogs, and docs, but says it has many platform-specific behaviors. | normative | explicit | E8, E9 | high |
| C7 | The author says that knowledge-web tools such as Obsidian give him no assurance, and he predicts that Obsidian will end, as Myspace and Google Reader did. | predictive | explicit | E10, E11 | high |
| C8 | The author recommends the academic referencing system (aided by tools such as Zotero and Citation Machine) as a tool-independent way to link knowledge, because it has lasted a long time. | normative | explicit | E12, E13 | high |
| C9 | The source states that HTTP, URI, and HTML came from academia in the nineties. | factual | explicit | E14 | high |
| C10 | The author claims that HTTP is plain text "in the most reliable meaning" and that URIs give unique, linkable references. | normative | explicit | E15, E16 | medium |
| C11 | The author rates HTML as "Markdown but with all the possible metadata one needs," and says that HTML5 structural and semantic elements cover most writing needs. | normative | explicit | E17, E18 | high |
| C12 | The author concludes that people should write hypertext knowledge webs (HTML), not plain text files, because HTML keeps data safe, portable, pretty, rich in metadata, and linked. | normative | explicit | E19, E20 | high |
| C13 | The source quotes a Wikipedia definition of hypertext: text on an electronic display with links to other text. | factual | explicit | E21 | medium |
| C14 | The author argues that HTML fits hypertext because links and metadata are built in, tools support them, and browsers are forgiving, while other markup languages are not necessarily meant for display. | normative | explicit | E22, E23 | medium |
| C15 | The author rates Gemtext as simple but lacking tables, images, forms, and standard metadata. He says it is a markup language, not a hypertext format, and is not suitable for semantic knowledge webs. | normative | explicit | E24, E25, E26 | high |
| C16 | The author reports that he added pilcrow (paragraph) link signs to his blog, removed them in Dec 2023, restored them in Mar 2024, and by Aug 2026 had dropped them "as useless and noisy." | factual | explicit | E27, E28 | high |
| C17 | The author states that his own blog source is Lisp processed with a C preprocessor, so the source text is messy while the output is readable. | factual | explicit | E29 | medium |
| C18 | The source reports Nesbit's statement that he can open a 1991 text file in modern editors with no loss of information. | factual | explicit | E30 | medium |

## 8. Evidence and locators

All locators use headings only. The two WebFetch calls gave different paragraph numbers for the same text, so I do not give `¶` numbers.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "They are the most reliable, flexible, and long-lasting option." | § All You Need is Plaintext | C1 | supports | direct | Sivers' words as the source quotes them. I did not open the original Sivers page. |
| E2 | Summary: Sivers adds his own metadata headers (date, tags, title). When metadata, links, lists, and quotations are added, the file becomes non-portable, non-standard rich text. | § All You Need is Plaintext | C2 | supports | direct | The author's argument. No data on how often this happens. |
| E3 | Quote: "Plaintext is not enough." | § All You Need is Plaintext | C2 | supports | direct | A conclusion, not evidence. |
| E4 | Quote: "there are actually two types of "plaintext" we're talking about here." | § The Plaintext is a Lie | C3 | supports | direct | The author's analytical framing. |
| E5 | Quote: "Both Derek Sivers and Scott Nesbit make the mistake of conflating these types." | § The Plaintext is a Lie | C3 | supports | direct | The author's view of other writers. Sivers and Nesbit do not respond here. |
| E6 | Quote: "The former is eternal, and the latter is as ephemeral as the software/human processing it." | § The Plaintext is a Lie | C4 | supports | direct | A prediction with no data. "Eternal" is the author's rhetoric. |
| E7 | Quote: "You must use plaintext as a storage type," | § The Plaintext is a Lie | C5 | supports | direct | The quote is part of a sentence. The rest, "choose a reliable subtype," is from the WebFetch summary. |
| E8 | Summary: Markdown is the de facto standard for Zettelkasten notes, blogs, and docs. It has headings, lists, links, metadata, and HTML injection. | § Screw .TXT, All My Homies Use Markdown | C6 | supports | direct | "De facto standard" is the author's judgment, with no usage data. |
| E9 | Quote: "Like, a lot of really platform-specific behaviors" | § Screw .TXT, All My Homies Use Markdown | C6 | supports | direct | Informal statement. Links to the GFM spec, but no list of the differences is extracted. |
| E10 | Quote: "But, for a paranoid like me, these systems are no consolation." | § Screw .TXT, All My Homies Use Markdown | C7 | supports | direct | Personal attitude. The author describes himself as paranoid. |
| E11 | Quote: "Obsidian will end. Myspace, Google Reader, and dozen other vital tech products did." | § Knowledge Webs. Better ones. | C7 | supports | direct | A prediction based on examples. Past product shutdowns do not prove that this tool will end. No date or mechanism. |
| E12 | Summary: A tech-agnostic social solution is to adopt a reliable referencing system, such as the academic one, with tools such as Zotero and Citation Machine. | § Knowledge Webs. Better ones. | C8 | supports | direct | Recommendation only. No comparison or data. |
| E13 | Quote: "It's been there for an eternity, and will likely last" | § Knowledge Webs. Better ones. | C8 | supports | direct | Rhetorical. No evidence of durability is given. |
| E14 | Quote: "The academy made a live-changing gift to modern civilization in the nineties." | § Hypertext | C9 | supports | indirect | No citation. The "academia" origin is the author's statement. "live-changing" is copied as the tool returned it (possibly a typo in the source). |
| E15 | Quote: "HTTP is plaintext in the most reliable meaning of plaintext" | § Hypertext | C10 | supports | direct | No evidence or version detail. The source states it without qualification. |
| E16 | Summary: URIs give unique, linkable references (part of a three-point list on HTML, HTTP, and URI). | § Hypertext | C10 | supports | direct | Summary from WebFetch only. No exact wording available. |
| E17 | Quote: "HTML is Markdown but with all the possible metadata one needs." | § Hypertext | C11 | supports | direct | Rhetorical comparison. The author's rating. |
| E18 | Summary: The `<a href>` tag and the HTML5 structural and semantic elements cover most writing needs. The author finds the MDN and WHATWG references thorough. | § Hypertext | C11 | supports | direct | Author's judgment. "Most writing needs" is not defined. |
| E19 | Summary: HTML keeps data safe, portable, pretty, rich in metadata, and linked. | § Hypertext | C12 | supports | direct | A list of benefits with no test or comparison. |
| E20 | Quote: "Write Hypertext Knowledge Webs, Not Plain Text Files." | § Hypertext | C12 | supports | direct | Closing slogan. Not evidence. |
| E21 | Quote: "Hypertext is text displayed on a computer display or other electronic devices" | § Interlude on Tools | C13 | supports | direct | A quote of Wikipedia inside the source, not the author's own words. The excerpt is truncated at 12 words. Added in the Jan 2024 update. |
| E22 | Summary: HTML fits because links and metadata are built in, tools support them, and browsers are forgiving. | § Interlude on Tools | C14 | supports | direct | Summary from WebFetch. Author's reasoning, no data. |
| E23 | Quote: "Other markup languages are not necessarily intended for immediate display." | § Interlude on Tools | C14 | supports | direct | General statement. No specific formats named in this excerpt. |
| E24 | Summary: The author likes Gemtext's simplicity and focus. It lacks tables, images, forms, user feedback, and standard metadata, and overuses preformatted text. | § Gemtext | C15 | supports | direct | Author's assessment. Not checked against the Gemtext specification. |
| E25 | Quote: "And, most importantly, Gemtext is a markup language, not a Hypertext format." | § Gemtext | C15 | supports | direct | Depends on the author's definition of hypertext (C13, C14). |
| E26 | Quote: "It's not suitable for semantic knowledge webs." | § Gemtext | C15 | supports | direct | Author's judgment. |
| E27 | Quote: "I removed the pilcrow signs, because they were too noisy" | § Hypertext | C16 | supports | direct | The quote is part of the Dec 2023 update note. The author reports on his own site. |
| E28 | Quote: "Pilcrow signs have been gone for a long time, as useless and noisy." | § Hypertext | C16 | supports | direct | Update note from Aug 2026. It qualifies the referencing scheme that the author praises in the same section. |
| E29 | Summary: The author's blog is built from Lisp with a C preprocessor. The source text is messy, although the output is readable. | § The Plaintext is a Lie | C17 | supports | direct | Summary from WebFetch only. The author reports on his own setup. |
| E30 | Summary: Nesbit says that he can open a 1991 text file in modern editors with no loss of information. | § The Plaintext is a Lie | C18 | supports | direct | Second-hand. The original Nesbit article was not opened. One example. |

## 9. Tools and resources

These are named or linked in the source. I did not open any of them.

- Derek Sivers, "Write Plain Text Files": https://sive.rs/plaintext
- Scott Nesbit, The Plain Text Project, "Why Plain Text Matters": https://plaintextproject.online/articles/2017/07/11/matters.html
- A define-syntax tutorial (a plain-text example): https://hipster.home.xs4all.nl/lib/scheme/gauche/define-syntax-primer.txt
- The GitHub Flavored Markdown spec: https://github.github.com/gfm
- Hugo: https://gohugo.io
- Org Mode (https://orgmode.org) and Orgdown (https://gitlab.com/publicvoit/orgdown)
- Obsidian (named; no link extracted)
- Zotero (https://zotero.org) and Citation Machine (https://citationmachine.net)
- The MDN HTML and CSS references: https://developer.mozilla.org/en-US/docs/Web/HTML/Element and https://developer.mozilla.org/en-US/docs/Web/CSS/Reference
- The WHATWG HTML specification (named; no link extracted)
- Jeff Huang, "Designed to Last": https://jeffhuang.com/designed_to_last
- Wikipedia: "Zettelkasten," and the "Hypertext" definition that the source quotes
- Gemtext (Gemini protocol; named)

## 10. Limitations and caveats

- This is an opinion essay. It gives no data, studies, or measurements. Most claims are the author's judgments or predictions (C2 to C8, C10 to C12, C14, C15).
- The author takes sides openly. He calls himself "a paranoid" and uses polemical headings. He argues for his own practice.
- The predictions about Obsidian (C7) and about formats that last (C4) rest on examples and reasoning, not on evidence.
- The history claim (C9) has no citation.
- The views of Sivers and Nesbit come to us through this source only (C1, C18). Their own texts were not checked here.
- The author's own experience partly qualifies his proposal. He dropped the paragraph-level anchors as "useless and noisy" (C16), and his own blog source is not clean (C17).
- The page gives no date of first publication. The updates run from Dec 2023 to Aug 2026, so the main text is from Dec 2023 or earlier. Some parts can be older than the updates.
- The source does not test HTML against Markdown or plain text over time. It does not discuss the cost of authoring in HTML, except where it mentions tooling.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 2 | A personal blog. The article gives no credentials. The author writes from his own practice as someone who builds websites. |
| Transparency | 4 | Links to the works it criticizes and to the specifications. Marks each change with a dated update note. Licensed CC-BY 4.0. |
| Accuracy | — | Few statements that a person can check. The history claim has no citation. I did not verify any claim, because the Reporter scope does not include that. |
| Objectivity | 2 | Polemical and argues for the author's own practice. It does give some fair points, for example the merits of Gemtext and the case for Markdown. |
| Currency | 3 | No date of first publication. Updates run to Aug 2026. The topic (formats that last) changes slowly. |

Overall `source-quality: low`. This rates the source as evidence for factual claims. As a clear, well-linked argument for one position, it is more useful than the rating suggests.

## 12. Extraction notes

- **Scope:** the article body only, from the title to the end of § Gemtext. This includes the opening section, the subheading "The perfect plaintext file," and the update notes in the body. I did not analyze the section "Leave feedback! (via email)," the footer, or the site navigation.
- **Access:** `full`. There is no companion file (`text-file` is empty). I used WebFetch on the `url` twice.
- **Quote check needed (rule 9a):** WebFetch does not return exact text. The first call refused to give the text word for word and gave a structured summary. The second call gave short quotes. I copied each `Quote:` exactly as the tool returned it. The Orchestrator must check all 19 `Quote:` rows (E1, E3 to E7, E9 to E11, E13 to E15, E17, E20, E21, E23, E25 to E28) against the raw page. Points to watch:
  - E14: the word "live-changing".
  - E4: the inner quotation marks.
  - E7 and E27: these quotes are parts of sentences.
- **Locators:** headings only, because the two calls gave different paragraph numbers. The heading list was the same in both calls.
- **Completeness `full`:** all body sections are covered.
- **Confidence `medium`:** the text came only through WebFetch, and five Summary rows (E16, E22, E29, E30, and partly E7) rest on the tool's paraphrase.
- **Facts and interpretation:** C1, C13, and C18 report what other people say (Sivers, Wikipedia, Nesbit), as the source quotes them. C9, C16, and C17 are statements that a person can check. All other claims are the author's ratings or predictions, and each one names the author.
- **Related source:** this source answers Sivers' "Write Plain Text Files" (https://sive.rs/plaintext). The Orchestrator can note this if another Source in the workflow has that `url`. I did not read any other Source and made no Brain comparison.
- **Text aimed at an AI:** none seen. The WebFetch output is processed by a model, so I cannot fully exclude hidden text.
- **Charter or Spectrum:** not related.
- **Final check (§11 of the agent file):**
  1. Pass. Each claim has evidence.
  2. Pass. Each evidence row has a locator.
  3. Pass. Each quote is 15 words or fewer and copied as returned. The Orchestrator must check the quotes against the raw page.
  4. Pass. Facts, statements of the source, and interpretations are separate.
  5. Pass. Limits are in §8, §10, and §11.
  6. Pass. Each rating names the author. There are no survey figures.
  7. Pass. `claim-count` is 18, and §7 has 18 rows.

## Orchestrator check (2026-11-13)

- Phase 3 test E3, Reporter step (KS-08 §8.9). Reporter v0.3. The Orchestrator saved the Reporter's text without changes, and added this section.
- Reporter §11 checklist: confirmed. 18 claims, 30 evidence rows, each with a locator.
- Quote check (rule 9a): the Orchestrator got the page with `curl` (raw HTML, tags removed, white space joined) and searched for each `Quote:` as an exact string. All 20 `Quote:` rows are exact, each with 15 words or fewer. E14 "live-changing" is in the source. E4 inner quotation marks match.
- Count error: §12 says "19 `Quote:` rows". Its own list has 20 rows. Low impact: all 20 were checked.
- Locators checked: E10 (§ Screw .TXT, All My Homies Use Markdown), E27 (§ Hypertext), E29 (§ The Plaintext is a Lie). All correct. The body headings are as the Reporter listed.
- Paraphrase error: E18 and C11 say HTML5 elements "cover most writing needs". The source says they "cover all the possible needs of a writer". The Brief makes the author's claim weaker than it is. Low impact for the Brain comparison, but Justin can correct it before validation.
- Links in §9: all URLs are in the raw HTML. "WHATWG" is named without a link, as the Brief says.
- Dates: no first publication date. Footer: "2022-2026" and a build time in Sep 2026. `published` stays empty.
- License: the page footer gives CC-BY 4.0. Justin can save a companion file (Schema §5.2) if he wants exact locators.
- Related records: the source answers [[SRC-20261113-003 Write plain text files]] (Sivers), which has a validated Brief, [[BRF-20261113-003 Write plain text files]].
- Text directed at an AI: none in the raw text of the body.
- Files read by the Reporter (from its access log): the Source record, `TPL Reference Brief.md`, the Schema (whole file). Two WebFetch calls to the `url`. No WebSearch. No links opened. No file in `21 Brain` (KS-R-25).
- Status `draft`. Justin validates the Brief before the Editor runs (KS-08 §8.9, E3).
- Justin validated the Brief in chat, 2026-11-13T11:31. E18 and C11 were not changed.

# Assessment (migrated)

Migrated from KAS-20261113-005. Relevance: medium. Recommended action: advance. Brain version when it was made: CO-20261113-001.

## 1. Summary of relevance

The source deals directly with the only topic in the Brain: how long notes last, and why files matter more than apps. It agrees with the Brain that plain-text storage lasts and that apps end (C4, C7). It disagrees on one thing. It says that "plain text" is not enough, because the markup inside the file, the links, and the metadata do not last as well as the storage layer does (C2, C3, C6). This qualifies [[CLM-20261113-001 Lasting notes belong in open files|lasting notes belong in open files]]. It is not a contradiction. The source is a low-quality opinion essay (Brief §11), so it gives the Brain new points of view and caveats, not stronger evidence.

## 2. Brain records reviewed

- [[CLM-20261113-001 Lasting notes belong in open files]] (read in full)
- [[CON-20261113-001 File over app]] (read in full)
- [[MOC-20261113-001 Note durability]] (read in full, including its "Open research questions")
- `Research Questions.md`: does not exist in `21 Brain`.

The Brain has 3 notes. I read all 3, so the Brain context is complete for this version.

## 3. Findings

| Label | Claim Candidate | Type | Brain record | Explanation |
|---|---|---|---|---|
| A1 | C3, C4 | new-concept | [[CON-20261113-001 File over app]] | The Brief gives a two-layer model of "plaintext": a storage type (`text/*`) and a subtype (the markup or display format). The Concept says only "a file in an open format, such as plain text", and does not separate the two layers. The model gives a more exact meaning to "open format" in the Concept. The author's own view is that the storage layer is "eternal" and the subtype is "ephemeral" (E6). This is a prediction with no data. |
| A2 | C2, C5 | qualifies | [[CLM-20261113-001 Lasting notes belong in open files]] | The Claim says that notes in "open, readable formats such as plain text" last. The Brief agrees that plain-text storage is necessary (C5). It says that this is not sufficient: a plain-text note with metadata, links, lists, and quotations becomes "non-portable, non-standard rich text" (E2, E3). The difference is in the **conditions**. The Claim does not say if a note with links and metadata stays fully usable when only the file survives. Both statements can be true together, so this is not `contradicts`. The evidence is the author's argument, with no data (E2 limits). It is relevant to ORION, because the Claim's caveat says that ORION applies the Claim through portable Markdown and YAML. |
| A3 | C6 | qualifies | [[CLM-20261113-001 Lasting notes belong in open files]] | The Claim names plain text as an example of an open format. The Brief says that Markdown is the de facto standard for notes, but has "a lot of really platform-specific behaviors" (E9). The difference is in **definition**: an "open" format can still have dialects that work differently on each platform. This limits how far the Claim's "readable" quality goes for Markdown notes. The evidence is informal. The Brief extracted no list of the differences (E9 limits). |
| A4 | C7 | supports | [[CON-20261113-001 File over app]] | The Concept says that "apps change, close, or lose support". The Brief's author predicts that "Obsidian will end", by comparison with Myspace and Google Reader (E11). This supports the reason behind the Concept. It is interesting because the Concept comes from the CEO of Obsidian, and an independent author uses the same reasoning against Obsidian. But the support is weak. It is a prediction from examples, with no date or mechanism (E11 limits), from a low-quality source. It does not meet the Claim's own condition for a better `evidence-strength`, because it is not stronger evidence than the first source. It is only one more opinion. |
| A5 | C11, C12, C14 | extends | [[CLM-20261113-001 Lasting notes belong in open files]] | The Claim gives one criterion: an open, readable file. The Brief adds more criteria for a format that lasts: safe, portable, pretty, rich in metadata, and linked (E19). It names HTML as the format that meets them (C12). The headline "not plain text files" can look like a contradiction, but it is a **definition** difference. The author means plain text as a format with no markup (`.txt`), not as a storage type. He says that HTML is plain-text storage (C5, C10). So the recommendation fits inside the Claim. All the reasons for HTML are the author's judgments, with no test or comparison (E19, E22 limits). The author's own practice also weakens the proposal. He dropped his paragraph anchors as "useless and noisy" (C16), and his blog source is "messy" (C17). |
| A6 | C8 | new-process | [[MOC-20261113-001 Note durability]] | The MOC topic includes "independence from one app", and its "Processes and methods" section is empty. The Brief proposes academic-style referencing (with Zotero or Citation Machine) as a way to link notes that does not depend on a tool (E12). The Brain has no method for links that last. The Brain covers only files. The evidence is a recommendation only, and "it's been there for an eternity" (E13) is rhetoric, not data. |
| A7 | C1, C18 | supports | [[CLM-20261113-001 Lasting notes belong in open files]] | The Brief reports Sivers ("most reliable, flexible, and long-lasting option", E1) and Nesbit (a 1991 text file opens in modern editors with no loss, E30). Both support the Claim's storage-layer statement. C18 also relates to the MOC open question about plain text that stays readable. The evidence is second-hand: the Reporter did not open either original (E1, E30 limits). E30 is one example. Do not count this as independent support until the original sources are processed. The Brief's Orchestrator check notes that the Sivers source has its own Brief (BRF-20261113-003). I did not read that Brief. |
| A8 | — | research-gap | [[MOC-20261113-001 Note durability]] | The MOC's open questions ask if plain text stays readable. Neither the Brain nor this source tests the subtype layer. Nothing compares Markdown (with links and metadata) with HTML over time (Brief §10). Question: "Do Markdown notes with links and metadata stay usable across tools over many years, compared with HTML or unmarked plain text?" |

Not mapped to the Brain: C9 (the academic origin of HTTP, URI, and HTML, with no citation), C10 (HTTP as plain text), C13 (the Wikipedia definition of hypertext), C15 (Gemtext), C16 and C17 (used only as a limit in A5). No Brain record covers these topics. No finding is `contradicts`.

## 4. Knowledge relevance

| Dimension | Score | Reason |
|---|---|---|
| Novelty | 4 | The Brain has no separation between the storage layer and the format layer (A1). It does not cover links or metadata as a risk to durability (A2, A5), and it has no method for links (A6). |
| Significance | 3 | These points could narrow the conditions of the only Brain Claim. Because the source is a low-quality opinion essay, it can add caveats but cannot change the confidence much. |
| Applicability | 4 | ORION stores its notes in Markdown with YAML frontmatter and wikilinks, which is the setup that the source criticizes (A2, A3). The Brain Claim's own caveat links the Claim to ORION's portability rules. |
| Relevance to the Brain | 4 | The source deals directly with CLM-20261113-001, CON-20261113-001, and the MOC topic. The MOC records "Against: none yet", and this is the first source that partly disagrees. |

## 5. Recommended action

`advance`, for A2 and A3, and possibly A1.

Reason: A2 and A3 qualify the conditions of CLM-20261113-001. They say that plain-text storage alone may not keep notes with links, metadata, and Markdown dialects fully usable. A Change Order is possibly justified to record this qualification and this source as partial counter-evidence. The MOC now says "Against: none yet". A1 is possibly a reason for a new Concept, or for a change to the Concept's explanation of "open format". Justin decides if the low source quality is enough for that.

These findings do not justify a change: A4 and A7 give weak or second-hand support, so they do not raise the `confidence` or `evidence-strength` of CLM-20261113-001. A5 and A6 rest on the author's judgments only. They can be noted, but alone they are not a reason for new Brain Claims.

A8 is a research gap. The question is written in A8, if the Orchestrator or Justin wants to record it in `Research Questions.md`.

## 6. Confidence and limits

- Confidence in the comparison: medium to high. The Brain is small (3 notes), and I read all of it. The Brief gives clear evidence rows and limits.
- Confidence in the source content: low. The Brief rates `source-quality: low` and `extraction-confidence: medium`. Several evidence rows are WebFetch summaries (E16, E22, E29, E30). The Orchestrator checked all `Quote:` rows against the raw page.
- The Brief's Orchestrator check reports a paraphrase error. The source says that HTML5 elements "cover all the possible needs of a writer", not "most writing needs" (E18, C11). The real claim is stronger, and so less careful, than the Brief shows. This does not change A5.
- I used only the Brief as my view of the source. I did not read the Source page, BRF-20261113-001 (the Brain's evidence), or BRF-20261113-003 (Sivers).
- I added no facts from outside the Brief and the Brain.

Final check (Editor §10):
1. Pass. Each finding has a Claim Candidate label (or `—` for A8), a type, and an explanation.
2. Pass. Each finding links to a Brain record. No finding is `new`.
3. Pass. No finding is `contradicts`. A2 (conditions), A3 (definition), and A5 (definition) name the difference.
4. Pass. §2 lists all 3 Brain records that I read, and records that `Research Questions.md` is missing.
5. Pass. `brain-version` is `CO-20261113-001`, as the Orchestrator gave.
6. Pass. The recommended action `advance` has a reason and names the findings.

## Orchestrator check (2026-11-13)

- Phase 3 test E3, Editor step (KS-08 §8.9). Editor draft v0.2. Justin validated the Brief in chat at 11:31. The Orchestrator saved the Editor's text without changes, and added this section.
- Brain version `CO-20261113-001` confirmed (newest `applied` Change Order in `22.24`).
- Editor §10 checklist: confirmed. 8 findings, each with a label, a type, a Brain record, and a reason. No `contradicts`.
- Contradiction against definition: A5 names the headline "not plain text files" as a definition difference, because the author treats HTML as plain-text storage. A2 is a difference in conditions, and A3 a difference in definition. This meets the "Pass if" of E3. Editor §6 rule for `contradicts` is respected.
- Citation detail: A5 cites C5 and C10 for "HTML is plain-text storage". C10 is about HTTP, and the Brief has no row that says HTML is plain text. The statement is correct: the raw page says "Your data is safe in HTML because it's still plaintext". But the Brief does not carry it (E19 is a summary without this reason). Low impact.
- Spot-checked Brain quotes: "a file in an open format, such as plain text" (CON), "apps change, close, or lose support" (CON, capital A in the note), "Against: none yet" (MOC), the CLM caveat on Markdown and YAML. All correct. Brief details checked: E2 wording, E9, E11 limits, C17 "messy". All correct. No invented detail found.
- `new-concept` (A1) and `new-process` (A6) link to the nearest Brain record. Same pattern as E1 and E2. Refer to proposed edit D1 in KS-08 §8.9.
- The A8 question is not added to `Research Questions.md`, because the recommended action is `advance`, not `investigate`.
- Files read by the Editor (from its access log): the Brief, `TPL Knowledge Assessment.md`, the Schema (whole file), the three Brain notes. No other file.
- `advance` is recorded only. No Change Order is made in Phase 3.
