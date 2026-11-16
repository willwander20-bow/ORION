---
id: BRF-20261113-003
type: reference-brief
title: Write plain text files
status: validated
created: 2026-11-13T11:08
updated: 2026-11-13T11:08
created-by: reporter
schema-version: "0.6"
source: "[[SRC-20261113-003 Write plain text files]]"
processing-level: full-review
source-quality: medium
extraction-completeness: full
extraction-confidence: medium
claim-count: 16
---

## 1. Executive summary

Derek Sivers argues that a person should keep important writing in plain text files. He says plain text is portable across devices and decades, free of a vendor, usable offline, needs no special tools, and is easy to convert. He gives practical advice: use folders for hierarchy, add custom metadata lines that scripts can read, and keep graphics in separate files next to the text. The support is the author's personal experience since 1990, plus reasoning and predictions. The article gives no data.

## 2. Central premise and author intent

Premise: your written words are your most valuable asset, so store them in the format most likely to stay readable and under your control. The author says that format is plain text.

Intent: to persuade readers, mainly people who write a lot, to give up proprietary or app-specific formats (named: Microsoft Word, Evernote, Notion) and use plain text files. The tone is advocacy and personal practice. It is not a neutral comparison.

## 3. Key takeaways

- The author keeps nearly all important writing in plain text and calls it his "extended memory" (C1, C2).
- Portability: he has moved his text files across operating systems since 1990. He says every device, present or future, can read plain text (C3, C4).
- Vendor risk: companies that push special formats can fail and trap your work. Plain text avoids this (C5, C6, C7).
- Offline use and focus: plain text works without a connection, and being offline helps focus (C8).
- No dependencies: a basic text editor is enough. App lock-in stops work when the app is not there (C9).
- Conversion: many standard formats (HTML, Markdown, JSON, LaTeX) are themselves plain text (C10, C11).
- Practices: custom metadata lines read by scripts (C12), folders for hierarchy (C13), separate graphics files next to plain text (C14).
- Prediction: plain text will be readable for hundreds of years (C15).

## 4. Facts and figures

- The author has kept his text files since 1990 (§ PORTABLE).
- Operating systems named: Mac, Windows, Linux, BSD (§ PORTABLE).
- The author says he has written four books and four hundred blog posts in plain text (§ EASIEST TO CONVERT).
- Plain-text formats named: HTML, Markdown, JSON, LaTeX (§ EASIEST TO CONVERT).
- Scripting languages named for reading metadata: Ruby, Python, JavaScript (§ EASIEST TO CONVERT).
- Graphics format named: SVG (§ NEED VISUALS OR GRAPHICS?).
- Publication date on the page: 2022-03-02, as reported by the fetch tool. Not verified. Refer to §10.

## 5. Methods and frameworks

- Custom metadata: put a few metadata lines at the top of each file (the example uses a diary entry with a date and tags in the first two lines). Then use a small script to read them (§ EASIEST TO CONVERT).
- Hierarchy: use directories (folders) to organize files, and keep text together with related images and audio (§ NEED HIERARCHY?).
- Visuals: make mind maps or drawings in graphics files (for example SVG), keep them next to the text files, and keep the text as plain text (§ NEED VISUALS OR GRAPHICS?).
- The argument has six named benefit sections: Portable, Un-commercial, Offline, No dependencies, Easiest to convert, plus a conclusion.

## 6. Concepts and definitions

- Plain text file: the article does not define it formally. It treats it as a file that any basic text editor can read and edit, and it includes HTML, Markdown, JSON, and LaTeX in the category.
- Un-commercial: the author's term for a format that no company controls or sells.
- Extended memory / "noted self": the author's term for his body of personal writing.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The author writes almost everything important in his life in files, and these files act as his extended memory. | factual | explicit | E1, E2 | high |
| C2 | The author treats his written words as his most precious asset, and for this reason he uses plain text files. | causal | explicit | E3, E4 | high |
| C3 | The author has kept his text files since 1990 across many operating systems (Mac, Windows, Linux, BSD). | factual | explicit | E5 | high |
| C4 | Every device, including devices not yet invented, can read and edit plain text. | predictive | explicit | E6 | high |
| C5 | It is uncertain whether proprietary apps such as Microsoft Word, Evernote, or Notion will still be able to read your files in the future. | predictive | explicit | E7 | high |
| C6 | A company that promotes its own special format can go out of business and leave the user's work trapped in an unusable format. | causal | explicit | E8, E9 | high |
| C7 | Users will outlive these companies, and free non-commercial software for plain text will always exist. | predictive | explicit | E10, E11 | high |
| C8 | Plain text lets you work offline, and being intentionally offline helps you focus. | causal | explicit | E12, E13 | medium |
| C9 | If you rely on a specific app, you cannot work without that app. Plain text files and a basic text editor are enough. | causal | explicit | E14, E15 | high |
| C10 | Plain text can be converted into any other format, because many standard formats (HTML, Markdown, JSON, LaTeX) are plain text. | factual | explicit | E16, E17 | high |
| C11 | The author has written four books and four hundred blog posts in plain text. | factual | explicit | E18 | high |
| C12 | You can add custom metadata lines to plain text files and read them with a small script in a common language. | procedural | explicit | E19 | medium |
| C13 | Use directories (folders) for hierarchy, and keep text files together with related images and audio. | procedural | explicit | E20, E21 | high |
| C14 | For visuals, use separate graphics files (for example SVG) next to the text files, and keep the text as plain text. | procedural | explicit | E22, E23, E24 | high |
| C15 | Plain text files will be readable by future generations, hundreds of years from now. | predictive | explicit | E25 | high |
| C16 | People should write and keep their important writing in plain text files, because plain text is reliable, flexible, portable, independent, and long-lasting. | normative | explicit | E26, E27 | high |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "I write almost everything important in my life" | § Write plain text files (opening section, before § PORTABLE) | C1 | supports | direct | Self-report. One person. |
| E2 | Quote: "They are my extended memory — my noted self — my organized thoughts." | § Write plain text files (opening section, before § PORTABLE) | C1 | supports | direct | Self-report. Metaphor, not a measurable claim. |
| E3 | Quote: "My written words are my most precious asset." | § Write plain text files (opening section, before § PORTABLE) | C2 | supports | direct | Personal value judgment. |
| E4 | Summary: Because of this value, the author says he uses plain text files only. | § Write plain text files (opening section, before § PORTABLE) | C2 | supports | direct | Self-report. The link between the value and the choice is the author's reasoning. |
| E5 | Quote: "I’ve brought my text files with me since 1990" | § PORTABLE | C3 | supports | direct | Self-report. No independent check. The OS list (Mac, Windows, Linux, BSD) continues in the same sentence. |
| E6 | Quote: "ones not invented yet, can read and edit plain text." | § PORTABLE | C4 | supports | direct | A prediction about devices that do not exist yet. No evidence given. Character encoding is not discussed. |
| E7 | Quote: "Will Microsoft Word? Evernote? Notion? Maybe. Maybe not." | § PORTABLE | C5 | supports | direct | A rhetorical question, not a finding. No data on how long these apps last. |
| E8 | Quote: "Every few years a new company says you should use their special format." | § UN-COMMERCIAL | C6 | supports | direct | Generalization. No named company failures given as examples. |
| E9 | Quote: "your work is trapped in an unusable format." | § UN-COMMERCIAL | C6 | supports | direct | A hypothetical scenario. No case or data. |
| E10 | Quote: "You will outlive these companies." | § UN-COMMERCIAL | C7 | supports | direct | A prediction stated as certain. No evidence. |
| E11 | Quote: "There will always be plenty of free, non-commercial software" | § UN-COMMERCIAL | C7 | supports | direct | A prediction. No evidence. |
| E12 | Quote: "There are great benefits to being intentionally offline and unreachable, to focus." | § OFFLINE | C8 | supports | direct | Opinion. No study cited. |
| E13 | Summary: The section says there are places and times when you cannot get online, and plain text lets you write and use your work there. | § OFFLINE | C8 | supports | indirect | The tool-mediated summary does not show whether the author contrasts this with specific cloud apps. Many non-plain-text apps also work offline. The article does not discuss this. |
| E14 | Summary: The section says that if you rely on Word, Evernote, or Notion, you cannot work unless you have that app. | § NO DEPENDENCIES | C9 | supports | direct | Reasoning only. No case given. |
| E15 | Quote: "Plain text files and a basic text editor are enough." | § NO DEPENDENCIES | C9 | supports | direct | Opinion. Holds for the author's use. Not tested for other needs. |
| E16 | Quote: "Plain text can be converted into anything else." | § EASIEST TO CONVERT | C10 | supports | direct | An absolute claim. No conversion limits are discussed. |
| E17 | Quote: "HTML, Markdown, JSON, LaTeX, and many other standard formats, are just plain text." | § EASIEST TO CONVERT | C10 | supports | direct | Correct as a description of these formats. It shows that they are text-based, not that every conversion is easy. |
| E18 | Quote: "I’ve written four books and four hundred blog posts in plain text." | § EASIEST TO CONVERT | C11 | supports | direct | Self-report. Not checked. One person's experience. |
| E19 | Summary: The author suggests putting metadata in the first lines of each file (example: a diary entry with a date and tags). He says a small script in Ruby, Python, or JavaScript can read it, and that a beginner programmer can do this. | § EASIEST TO CONVERT | C12 | supports | direct | Assumes basic programming skill. The section placement was reported differently by two fetches (refer to §12). |
| E20 | Quote: "Use directories — also known as folders." | § NEED HIERARCHY? | C13 | supports | direct | Advice only. |
| E21 | Quote: "keeping your text together with other files like images and audio" | § NEED HIERARCHY? | C13 | supports | direct | Advice only. |
| E22 | Summary: The section starts with visual mind-mapping as a need and suggests digital drawing into SVG files. | § NEED VISUALS OR GRAPHICS? | C14 | supports | direct | Advice only. Does not cover how to link the graphics to the text. |
| E23 | Quote: "Keep your graphics files alongside your text files." | § NEED VISUALS OR GRAPHICS? | C14 | supports | direct | Advice only. |
| E24 | Quote: "But keep your text as plain text." | § NEED VISUALS OR GRAPHICS? | C14 | supports | direct | Advice only. |
| E25 | Quote: "Plain text files will be readable by future generations, hundreds of years from now." | § CONCLUSION | C15 | supports | direct | A long-range prediction. No evidence. The article does not discuss storage media, encoding, or format change. |
| E26 | Quote: "Reliable, flexible, portable, independent, and long-lasting." | § CONCLUSION | C16 | supports | direct | A summary of the author's own arguments, not new evidence. |
| E27 | Summary: The title is an instruction to the reader: "Write plain text files". | § Write plain text files (page title) | C16 | supports | direct | A title, not an argument. |

## 9. Tools and resources

- Software named as examples of dependency or lock-in: Microsoft Word, Evernote, Notion.
- Formats named as plain text: HTML, Markdown, JSON, LaTeX.
- Scripting languages named for reading metadata: Ruby, Python, JavaScript.
- Graphics format named: SVG.
- A basic text editor (no specific product named).

## 10. Limitations and caveats

- Evidence base: the article is a personal essay. The support is the author's own experience since 1990, plus reasoning and predictions. It gives no data, studies, or cases of company failure.
- Several claims are absolute or predictive (C4, C7, C15: "every device", "always", "hundreds of years"). They are the author's predictions, not facts that the article shows.
- Not discussed in the extracted text: character encoding, collaboration, rich formatting needs, or the cost of a script-based workflow for people who do not program.
- Self-reports (C1, C3, C11) are not checked by an independent source.
- The tool reported a publication date of 2022-03-02, but it also reported a comment by the author dated 2022-03-01. So the exact date is uncertain. The Source field `published` stays empty until someone checks it.
- Currency: the named apps (Word, Evernote, Notion) were as of about 2022. The general argument does not depend much on the date.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Experienced writer and programmer with long personal practice. No formal expertise in digital preservation is shown in the article. |
| Transparency | 3 | The author's position and reasons are clear, and he says the support is his own experience. He cites no external sources. |
| Accuracy | 3 | The descriptive claims (HTML, Markdown, JSON, LaTeX are plain text) are correct as stated. The main predictions cannot be checked from the article. |
| Objectivity | 2 | Openly one-sided. No trade-offs or counterarguments are discussed. |
| Currency | 4 | About 2022 (tool-reported date). The topic changes slowly. App examples may age. |

Overall `source-quality: medium`. It is a clear, credible practitioner opinion with no outside evidence.

## 12. Extraction notes

- Scope: the article body only, from the title to the end of § CONCLUSION. The reader comments are not analyzed, as instructed.
- Access: `full` for the scope. WebFetch read characters 0 to 100,000 of 107,748. The unread end is in the comments section.
- Method: no companion file. I fetched the live page with WebFetch three times: once for structure and twice for exact sentences. WebFetch uses a summarizing model, which would not return the full text verbatim. The quotations come from targeted requests for exact wording, and I could not compare them against the raw page. Curly apostrophes (’) are copied as the tool returned them. **The Orchestrator should spot-check the quotations against the live page before validation.**
- Locators: the article has uppercase subheadings (PORTABLE, UN-COMMERCIAL, OFFLINE, NO DEPENDENCIES, EASIEST TO CONVERT, NEED HIERARCHY?, NEED VISUALS OR GRAPHICS?, CONCLUSION). The opening part has no subheading, so it is located as "§ Write plain text files (opening section, before § PORTABLE)". No ¶ numbers are used, because the tool did not give reliable paragraph boundaries.
- Inconsistency: the first fetch listed "custom metadata" and "hierarchy" as separate items and used the label "Easy to convert". The second fetch gave the exact heading "EASIEST TO CONVERT" and placed the metadata text there. I used the second result. E19's locator is therefore `medium` confidence.
- Text directed at an AI: none found in the article body. The comments were not reviewed.
- Completeness `full`: all body sections are covered by at least one claim. Confidence `medium`: the tool path stops a direct check of the exact wording.
- Final check:
  1. Each Claim Candidate has at least one evidence row: yes.
  2. Each evidence row has a locator: yes. None is `unavailable`.
  3. Each `Quote:` has 15 words or fewer: yes. "Exact" depends on the tool output (refer to the method note above).
  4. Facts, statements of the source, and interpretations are separate: yes. Predictions and opinions are typed `predictive` or `normative`, not `factual`.
  5. Limits and uncertainty are visible in §8, §10, and §11: yes.
  6. No claim is presented as a verified fact without evidence: yes. Self-reports are marked as not checked.
  7. `claim-count` (16) equals the rows in §7: yes.

## Orchestrator check (2026-11-13)

- Reporter §11 checklist: confirmed. 16 claims, 27 evidence rows, each with a locator.
- Quotes: all 21 `Quote:` excerpts are exact in the raw page HTML (fetched with curl, tags stripped).
- Locators checked: E5 (§ PORTABLE), E12 (§ OFFLINE), E19 (§ EASIEST TO CONVERT). All correct. The page has eight `h2` headings in the body, as the Reporter listed.
- Date conflict confirmed: the page `time` element says 2022-03-02. The first reader comment, by "Derek", is dated 2022-03-01. `published` stays empty.
- Error found: §5 says "six named benefit sections" and lists five plus the conclusion. It leaves out § NEED HIERARCHY? and § NEED VISUALS OR GRAPHICS?. The page has eight sections. Low impact: the claims and evidence cover all eight.
- Files read by the Reporter: the Source record, `TPL Reference Brief.md`, `Knowledge System Schema.md` (whole file). No file in `21 Brain` (KS-R-25).
