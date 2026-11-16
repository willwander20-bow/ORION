---
id: SRC-20261115-004
type: source
title: "Readable AI content (Nava PBC toolkit)"
status: change-proposed
created: 2026-11-15T21:50
updated: 2026-11-15T21:56
created-by: orchestrator
schema-version: "0.13"
url: https://www.navapbc.com/toolkits/readable-ai-content
source-type: article
author: Greg Jordan-Detamore
publisher: Nava PBC
published: 2025-03-06
captured: 2026-11-15T21:50
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "relates to both note formatting and ai"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-010 Readable AI content, Nava]]"
source-quality: medium
extraction-completeness: full
extraction-confidence: medium
claim-count: 8
---

# Notes

First real test of the new flow (staging, merged records; KS-D-50 and KS-D-51). Justin: "Lets run these sources".

# Reference Brief

## 1. Executive summary

The Nava toolkit (titled "How to make your content AI-readable") gives two tactics for making content easier for AI models, especially large language models, to process. The first is to choose machine-readable file formats. The second is to design the content with plain language, clear headings, lists, defined terms, and metadata. The source says the same steps help accessibility and skimmability for people.

## 2. Central premise and author intent

The source holds that content that is easy for AI to read is also easier for people to read, including people who use assistive technology. The intent is practical guidance for people who publish documents and data. The author works for a nonprofit technology organization (Nava Labs), and the toolkit appears to be advocacy and guidance, not research.

## 3. Key takeaways

- Scanned files and PDFs make a computer infer text and structure, and this adds errors (source's claim, in summary).
- HTML, XML, and Markdown give direct access to the text. DOCX is a middle option.
- Structured data is best in CSV, JSON, or XML.
- Use real heading styles, not larger or bold text, so the file tags headings.
- Use plain language, lists, defined terms or a glossary, and metadata such as dates and topic tags.
- The tactics work best together. One small step still helps.

## 4. Facts and figures

- The page gives a publication date of 2025-03-06 and an author, Greg Jordan-Detamore (Partnerships and Advocacy Lead, Nava Labs). WebFetch reported both. Not checked on the raw page.
- The page gives no figures, studies, or benchmarks.

## 5. Methods and frameworks

- Tactic 1: select the best file format.
- Tactic 2: optimize content design.
- The source also has a section on combining both tactics, and a conclusion.

## 6. Concepts and definitions

- Machine-readable format: a format where "a computer can directly access the text as it was originally written" (E2).
- Paragraph styles: the word-processor feature that tags headings as headings (summary, E7).

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The source says scanned documents and PDFs force a computer to recognize text and infer structure, which adds errors. | causal | explicit | E1 | high |
| C2 | The source says HTML, XML, and Markdown give a computer direct access to the text. | factual | explicit | E2 | high |
| C3 | The source rates DOCX as less ideal than HTML, XML, or Markdown, but better than a PDF. | normative | explicit | E3 | high |
| C4 | The source recommends CSV, JSON, or XML for structured data. | procedural | explicit | E4 | high |
| C5 | The source recommends plain language, a clear heading hierarchy, and bulleted or numbered lists. | procedural | explicit | E5, E6 | high |
| C6 | The source recommends heading styles of the editing tool, not larger or bold text, so that the file tags headings. | procedural | explicit | E7 | medium |
| C7 | The source states that these practices also improve accessibility and skimmability for people. | causal | explicit | E8 | medium |
| C8 | The source says the two tactics work best together, but a single improvement helps. | normative | explicit | E9 | medium |

## 8. Evidence and locators

Quotes were returned by WebFetch (a model processed the page). Word counts are in the Limits column.

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Imagine you scan a printed document, creating a PDF, JPG, or PNG." Summary: the source then explains that the computer must recognize text and infer structure, which adds errors. | § Tactic 1: selecting the best file format | C1 | supports | direct | Quote 12 words. The error claim is a summary, not a quote. No data on error rates. |
| E2 | Quote: "a computer can directly access the text as it was originally written" | § Tactic 1: selecting the best file format | C2 | supports | direct | 12 words. Paragraph number unverified, so not given. |
| E3 | Summary: the source says DOCX (or DOC) is less ideal than open formats but still better than a PDF. | § Tactic 1: selecting the best file format | C3 | supports | direct | Opinion of the source. No test shown. |
| E4 | Quote: "it’s best to supply it in a format such as CSV, JSON, or XML" | § Tactic 1: selecting the best file format | C4 | supports | direct | 14 words. Curly apostrophe as returned by the tool. |
| E5 | Quote: "Write using plain language" | § Tactic 2: optimizing content design | C5 | supports | direct | 4 words. List item. No evidence that it improves AI results. |
| E6 | Quote: "Organize lists of items as bulleted or numbered lists" | § Tactic 2: optimizing content design | C5 | supports | direct | 9 words. List item. Heading hierarchy, glossary, and metadata items are in the same list (summary from WebFetch). |
| E7 | Summary: the source tells the reader to apply the paragraph-styles feature for headings, so that the file tags them as headings. | § Tactic 2: optimizing content design | C6 | supports | direct | Paraphrase from WebFetch only. |
| E8 | Summary: the introduction says the practices also help accessibility and skimmability, including for assistive technology users. | § Intro | C7 | supports | direct | Paraphrase from WebFetch only. No data. |
| E9 | Summary: the source says the two tactics work best together, and that small steps such as clear headings or an open format give a base. | § Combining both tactics; § Conclusion | C8 | supports | direct | Paraphrase from WebFetch only. |

## 9. Tools and resources

- Export from Word as HTML, or from Google Docs as Markdown, and ask for the original source document (summary from WebFetch).

## 10. Limitations and caveats

- The source gives no tests, data, or citations for its claims that these formats and designs improve AI reading. The claims are guidance.
- The source does not name the AI models or tools it considers.
- The author and publisher are an interested party (advocacy and partnerships role). No conflict was seen, but none was assessed.
- The page text came through WebFetch, not a companion file. The date, author, and paragraph numbers could not be verified.
- The scope of this Brief is the main toolkit text. Navigation, footer, and related links were not analyzed.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 3 | Nava is a known civic technology organization. The author has a partnerships and advocacy role, not a research role. |
| Transparency | 3 | Author and date are shown (per WebFetch). No references or method for the claims. |
| Accuracy | — | The claims are plausible and match common practice, but the source gives no evidence to check. |
| Objectivity | 3 | Practical guidance with a stated aim. No sign of sales content. |
| Currency | 3 | Dated 2025-03-06 (per WebFetch). The field changes fast. |

## 12. Extraction notes

- Access: full for the main text, through WebFetch only. The tool refused to return the full text and gave a summary and a few quotes. Section content is therefore a mix of summary and a few quotes.
- The Orchestrator must check each `Quote:` (E1, E2, E4, E5, E6) against the raw page. WebFetch does not return exact text.
- The Source frontmatter has empty `author` and `published`. WebFetch gave Greg Jordan-Detamore and 2025-03-06. The Orchestrator can check and fill them.
- `access-status` in the Source is `not-checked`. The Reporter result is `full`.
- No text aimed at an AI was found. The work does not relate to Charter or Spectrum.
- Final check: C1 to C8 each have evidence. Each row has a locator. Quote word counts: E1 12, E2 12, E4 14, E5 4, E6 9 (all 15 or fewer). claim-count is 8, equal to the rows in §7.
- Completeness is `full` for the scoped main text, but confidence is `medium` because the text is second-hand through WebFetch.
