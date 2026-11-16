---
id: SRC-20261115-011
type: source
title: "How Claude remembers your project (Claude Code memory)"
status: done
created: 2026-11-15T23:39
updated: 2026-11-15T23:58
created-by: orchestrator
schema-version: "0.13"
url: https://code.claude.com/docs/en/memory
source-type: documentation
author:
publisher: Anthropic
published:
captured: 2026-11-15T23:39
language: en
access-status: full
text-file:
processing-level: full-review
submission-context: "Chosen by the Orchestrator from the topics of the Brain. Justin approved the list of six with \"Go\" on 2026-11-15. Topic: Claude Code memory and instructions"
duplicate-of:
brief:
assessment:
change-orders:
  - "[[CO-20261115-020 Claude Code memory, Anthropic docs]]"
source-quality: high
extraction-completeness: full
extraction-confidence: high
claim-count: 24
---

# Notes

The old address (docs.claude.com/en/docs/claude-code/memory) redirects (301) to this `url`. Quote check ran against the new address. One quote had a straight apostrophe where the page has a curly one; the Orchestrator corrected that one character to the page text.

Overnight batch (6 sources, Justin's permission). Access check: `curl` returns 200 with page text. No Charter or Spectrum content expected.

# Reference Brief

<!-- Staging draft (KS-D-51): for a new source the Orchestrator merges this draft into the Source note with Merge Draft.ps1. No BRF note is made. -->

## 1. Executive summary

The page is Anthropic's documentation on how Claude Code keeps knowledge across sessions. It describes two mechanisms: CLAUDE.md files (instructions the user writes, with AGENTS.md as an alternative) and auto memory (notes Claude writes). It explains where CLAUDE.md files live, how they load, how imports and `.claude/rules/` work, how auto memory is stored and loaded, and how to fix instructions that Claude does not follow. The page says both mechanisms give context, not enforced configuration.

## 2. Central premise and author intent

Premise (as the page states it): each session starts with a fresh context window, so persistent knowledge must come from files that load at the start. The page is reference documentation for users of Claude Code. Its intent is to teach configuration and give advice on size, structure, and debugging. No author is shown. The publisher is Anthropic. The page describes its own product.

## 3. Key takeaways

- Two mechanisms carry knowledge across sessions: CLAUDE.md files (written by the user) and auto memory (written by Claude).
- Both are context, not enforced configuration. For enforcement, the page points to hooks (PreToolUse) and managed settings (`permissions.deny`).
- CLAUDE.md files exist at four scopes: managed policy, user, project, and local. They concatenate into context. They do not override each other.
- Recommended size: under 200 lines per CLAUDE.md file. Imports organize a file but do not reduce its context cost.
- `.claude/rules/` splits instructions into topic files. A rule with `paths` frontmatter loads only when Claude works with matching files.
- Auto memory keeps an index (`MEMORY.md`) and topic files. Only the first 200 lines or 25KB of the index load at session start.
- Specific, non-conflicting instructions are followed more reliably.

## 4. Facts and figures

- CLAUDE.md size target: under 200 lines per file (§ Write effective instructions).
- Import depth: a maximum of four hops (§ Import additional files).
- `MEMORY.md` load limit: first 200 lines or first 25KB, whichever comes first (§ How it works).
- A CLAUDE.md file over 4 MiB is skipped and none of it loads (§ How it works, Note).
- Per-file limit for on-demand files (subdirectory CLAUDE.md, path-scoped rules): 40,000 characters for a 200K context window. For a 1M context window: 200,000 characters on Claude Opus 4.6 and Claude Sonnet 4.6, and 150,000 characters on later models (§ Claude ignores the end of my subdirectory CLAUDE.md).
- Brace expansion in `paths`: 1,000 expanded patterns and 4 MiB for the whole list (§ Path-specific rules).
- Version notes in the text: `/doctor prompt-audit` needs v2.1.283 or later. Reading `AGENTS.md` directly needs v2.1.277 or later. The per-file limit for on-demand files applies from v2.1.309.
- Managed policy file paths: macOS `/Library/Application Support/ClaudeCode/CLAUDE.md`; Linux and WSL `/etc/claude-code/CLAUDE.md`; Windows `C:\Program Files\ClaudeCode\CLAUDE.md`.

## 5. Methods and frameworks

- When to add to CLAUDE.md: the same mistake a second time, a review catch, a repeated correction, or context a new teammate would need.
- What belongs in CLAUDE.md: facts held in every session (build commands, conventions, layout, "always do X"). A multi-step procedure or part-of-codebase rule goes to a skill or a path-scoped rule.
- Write concrete, checkable instructions, for example "Use 2-space indentation" instead of "Format code properly".
- Structure with markdown headers and bullets. Review for conflicts and outdated lines.
- Debug steps when Claude ignores an instruction: run `/context all`, check the Memory files list, make the instruction more specific, look for conflicts, and use a hook for what must always run.
- Use `/init` to generate a starting CLAUDE.md. Use `/doctor prompt-audit` to find outdated or conflicting content.

## 6. Concepts and definitions

- CLAUDE.md: a markdown file with persistent instructions. Scopes: managed policy, user, project, local.
- CLAUDE.local.md: personal project instructions. The page says to add it to `.gitignore`.
- Auto memory: notes Claude writes for itself. Four types in frontmatter `type`: `user`, `feedback`, `project`, `reference`.
- `MEMORY.md`: the index of the auto memory directory. It loads each session (within limits). Topic files load on demand.
- Path-scoped rule: a rule file in `.claude/rules/` with a `paths` field in YAML frontmatter.
- AGENTS.md: an instruction file used by other coding agents. Claude Code reads it by default only when no CLAUDE.md or CLAUDE.local.md exists in the working directory or above.
- Managed CLAUDE.md: an organization-wide file that developers cannot exclude with `claudeMdExcludes`.

## 7. Claim Candidates

| Label | Claim | Type | Basis | Evidence | Confidence |
|---|---|---|---|---|---|
| C1 | The page states that each Claude Code session starts with a fresh context window, and that CLAUDE.md files and auto memory carry knowledge across sessions. | factual | explicit | E1 | high |
| C2 | The page states that Claude treats CLAUDE.md and auto memory as context, not enforced configuration. For enforcement it points to hooks and managed settings. | factual | explicit | E2, E22, E26 | high |
| C3 | The page states that the user writes CLAUDE.md files (instructions and rules) and Claude writes auto memory (learnings and patterns). | factual | explicit | E3 | high |
| C4 | The page lists four CLAUDE.md locations in load order from broadest to most specific: managed policy, user, project, local. | factual | explicit | E4 | high |
| C5 | The page states that CLAUDE.md files in the working directory and above load at launch and are concatenated, with files closer to the working directory read last. Files in subdirectories load on demand. | factual | explicit | E9, E10 | high |
| C6 | The page recommends under 200 lines per CLAUDE.md file, and says longer files use more context and reduce adherence. | normative | explicit | E5 | high |
| C7 | The page says specific instructions work better than vague ones, and that contradicting instructions can lead Claude to pick one arbitrarily. | causal | explicit | E6, E21 | high |
| C8 | The page states that `@path` imports load with the importing file, allow recursion up to four hops, and do not reduce context cost. | factual | explicit | E7, E8 | high |
| C9 | The page states that an import that resolves outside the working directory in a project file triggers a one-time approval dialog. | factual | explicit | E29 | high |
| C10 | The page states that rules in `.claude/rules/` without `paths` frontmatter load at launch, and that path-scoped rules load when Claude reads, writes, or edits a matching file. | factual | explicit | E12, E13 | high |
| C11 | The page states that user-level rules load before project rules, neither overrides the other, and that Claude may follow either if they conflict. | factual | explicit | E14 | high |
| C12 | The page states that block-level HTML comments in CLAUDE.md files are removed before the content reaches Claude's context. | factual | explicit | E11 | high |
| C13 | The page states that Claude Code reads AGENTS.md by default only when no CLAUDE.md or CLAUDE.local.md is in the working directory or above it, and that settings can change this. | factual | explicit | E15 | high |
| C14 | The page states that auto memory has four note types (`user`, `feedback`, `project`, `reference`), and that Claude skips what it can derive from the code or what CLAUDE.md already says. | factual | explicit | E16 | high |
| C15 | The page states that auto memory is stored per project under `~/.claude/projects/<project>/memory/`, is machine-local, and is shared across worktrees of one repository. | factual | explicit | E18, E19 | high |
| C16 | The page states that only the first 200 lines or 25KB of `MEMORY.md` load at session start, and that topic files load on demand. | factual | explicit | E17 | high |
| C17 | The page states that `/memory` lists memory files, toggles auto memory, and opens the auto memory folder. | factual | explicit | E20 | high |
| C18 | The page states that `/init` generates a starting CLAUDE.md from the codebase, and suggests improvements if one exists. | factual | explicit | E24 | high |
| C19 | The page states that CLAUDE.md content is delivered as a user message after the system prompt, with no guarantee of strict compliance. | factual | explicit | E21 | high |
| C20 | The page states that the project-root CLAUDE.md is re-read after `/compact`, while nested files and path-scoped rules load again on demand. | factual | explicit | E23 | high |
| C21 | The page states that on-demand files (subdirectory CLAUDE.md, path-scoped rules) have a per-file character limit tied to the context window. Claude gets only the start of a file over it. | factual | explicit | E25 | high |
| C22 | The page advises to add to CLAUDE.md for facts needed every session, and to use a skill or path-scoped rule for multi-step or part-of-codebase instructions. | normative | explicit | E27 | high |
| C23 | The page states that a managed CLAUDE.md cannot be excluded with `claudeMdExcludes`, and other CLAUDE.md files can be. | factual | explicit | E26, E30 | high |
| C24 | The page states that `/doctor prompt-audit` reports outdated, missing-reference, or conflicting instructions and changes nothing until the user asks. | factual | explicit | E28 | high |

## 8. Evidence and locators

| Label | Excerpt or summary | Locator | For claim | Supports or challenges | Directness | Limits |
|---|---|---|---|---|---|---|
| E1 | Quote: "Each Claude Code session begins with a fresh context window." | § How Claude remembers your project (opening section, before § CLAUDE.md vs auto memory) | C1 | supports | direct | Vendor description of own product. No date. |
| E2 | Quote: "Claude treats them as context, not enforced configuration." | § CLAUDE.md vs auto memory, ¶1 | C2 | supports | direct | Describes behavior at the page's version. No test data. |
| E3 | Summary: A comparison table says the user writes CLAUDE.md (instructions, rules) and Claude writes auto memory (learnings, patterns). | § CLAUDE.md vs auto memory, table, Row Who writes it | C3 | supports | direct | None beyond vendor source. |
| E4 | Summary: A table lists managed policy, user (`~/.claude/CLAUDE.md`), project (`./CLAUDE.md` or `./.claude/CLAUDE.md`), and local (`./CLAUDE.local.md`) locations in load order. | § Choose where to put CLAUDE.md files, table | C4 | supports | direct | The page says only these four locations. Other behavior is in other sections. |
| E5 | Quote: "target under 200 lines per CLAUDE.md file" | § Write effective instructions, ¶2, Size bullet | C6 | supports | direct | The page gives no data for the effect on adherence. |
| E6 | Quote: "if two instructions contradict each other, Claude may pick one arbitrarily." | § Write effective instructions, ¶2, Consistency bullet | C7 | supports | direct | No test data. |
| E7 | Quote: "Imported files can recursively import other files, with a maximum depth of four hops." | § Import additional files, ¶2 | C8 | supports | direct | None. |
| E8 | Summary: Imports help organize a long file but do not reduce its context cost, because imported files load with the importing CLAUDE.md. | § Write effective instructions, ¶2, Size bullet | C8 | supports | direct | None. |
| E9 | Quote: "All discovered files are concatenated into context rather than overriding each other." | § How CLAUDE.md files load, ¶2 | C5 | supports | direct | None. |
| E10 | Summary: CLAUDE.md and CLAUDE.local.md in the working directory and above load at launch. Subdirectory files load once Claude reads, writes, or edits another file there. | § How CLAUDE.md files load, ¶1 and ¶3 | C5 | supports | direct | None. |
| E11 | Summary: Block-level HTML comments in CLAUDE.md are removed before injection into context. Comments inside code blocks stay. They stay visible when the file is opened with the Read tool. | § How CLAUDE.md files load, ¶5 | C12 | supports | direct | None. |
| E12 | Summary: Rules without `paths` frontmatter load at launch with the same priority as `.claude/CLAUDE.md`. | § Set up rules, ¶2 | C10 | supports | direct | None. |
| E13 | Quote: "A path-scoped rule loads when Claude uses the Read, Write, or Edit tool" | § Path-specific rules, ¶2 | C10 | supports | direct | Quote is the first part of a sentence that continues "on a matching file". |
| E14 | Quote: "if a user rule and a project rule conflict, Claude may follow either one" | § User-level rules, ¶2 | C11 | supports | direct | Quote is part of a longer sentence. The page also says user rules load first. |
| E15 | Summary: A table shows Claude reads AGENTS.md when no CLAUDE.md or CLAUDE.local.md exists in or above the working directory. It reads only CLAUDE.md files when both exist. The **Project instructions** setting changes this. | § AGENTS.md, table What Claude reads; § Choose which instruction files load | C13 | supports | direct | Needs v2.1.277 or later. Some sessions cannot read AGENTS.md. |
| E16 | Summary: Auto memory saves four note types and skips what Claude can derive from the codebase or what CLAUDE.md already says. | § Auto memory, ¶1, list, and ¶2 | C14 | supports | direct | The page says Claude decides what is worth saving. |
| E17 | Quote: "The first 200 lines of MEMORY.md, or the first 25KB, whichever comes first, are loaded" | § How it works, ¶1 | C16 | supports | direct | Quote is part of a longer sentence. |
| E18 | Summary: Each project has a memory directory at `~/.claude/projects/<project>/memory/`, derived from the git repository. It holds `MEMORY.md` and one file per memory. The path can be changed with `autoMemoryDirectory`. | § Storage location, ¶1 and ¶7 | C15 | supports | direct | None. |
| E19 | Quote: "Auto memory is machine-local." | § Storage location, ¶8 | C15 | supports | direct | The page adds that files are not shared across machines or cloud environments. |
| E20 | Summary: `/memory` lists CLAUDE.md, CLAUDE.local.md, and other memory file locations. It toggles auto memory and opens the auto memory folder. | § View and edit with /memory, ¶1 | C17 | supports | direct | None. |
| E21 | Quote: "CLAUDE.md content is delivered as a user message after the system prompt" | § Claude isn't following my CLAUDE.md, ¶1 | C19, C7 | supports | direct | Quote is part of a longer sentence. The page adds "no guarantee of strict compliance". |
| E22 | Quote: "Hooks execute as shell commands at fixed lifecycle events" | § Claude isn't following my CLAUDE.md, ¶2 (after the list) | C2 | supports | direct | None. |
| E23 | Quote: "Project-root CLAUDE.md survives compaction" | § Instructions seem lost after /compact, ¶1 | C20 | supports | direct | The page says nested files and path-scoped rules reload only on demand. |
| E24 | Summary: `/init` analyzes the codebase and generates a CLAUDE.md with build commands, test instructions, and conventions. If one exists, it suggests improvements. An interactive flow needs `CLAUDE_CODE_NEW_INIT=1`. | § Set up a project CLAUDE.md, Tip box | C18 | supports | direct | None. |
| E25 | Summary: Subdirectory CLAUDE.md and path-scoped rules have per-file limits of 40,000 characters (200K window) or 150,000 to 200,000 characters (1M window). Claude receives only the start of a file over the limit. | § Claude ignores the end of my subdirectory CLAUDE.md, step 2 and ¶1 | C21 | supports | direct | Limits apply from v2.1.309. They may change. |
| E26 | Quote: "CLAUDE.md instructions shape Claude’s behavior but are not a hard enforcement layer." | § Deploy organization-wide CLAUDE.md, ¶ after the Concern table | C2, C23 | supports | direct | None. |
| E27 | Summary: Add to CLAUDE.md when mistakes repeat, a review catches a miss, or a correction repeats. Keep facts held in every session. Move multi-step or part-of-codebase items to a skill or path-scoped rule. | § When to add to CLAUDE.md, list and ¶2 | C22 | supports | direct | Advice, not tested. |
| E28 | Summary: `/doctor prompt-audit` reports outdated, missing-reference, and conflicting instructions, with proposed edits. It changes nothing until the user asks. It needs v2.1.283 or later. | § Audit your instruction files, ¶1 and ¶3 | C24 | supports | direct | None. |
| E29 | Summary: An import in a project file that resolves outside the working directory is external. Claude Code shows an approval dialog the first time. User-scope files are trusted without the dialog (with exceptions in Cowork). | § Import additional files, Warning box | C9 | supports | direct | None. |
| E30 | Summary: `claudeMdExcludes` skips CLAUDE.md files by path or glob. It works at any settings layer and arrays merge. It cannot exclude a managed CLAUDE.md. | § Exclude specific CLAUDE.md files, ¶1 and ¶ after the example | C23 | supports | direct | None. |

## 9. Tools and resources

- Commands: `/init`, `/memory`, `/context all`, `/config`, `/doctor`, `/doctor prompt-audit`, `/import`, `/status`.
- Settings and variables: `claudeMdExcludes`, `autoMemoryEnabled`, `autoMemoryDirectory`, `claudeMd` (managed settings), `CLAUDE_CODE_DISABLE_AUTO_MEMORY`, `CLAUDE_CODE_NEW_INIT`, `CLAUDE_CODE_ADDITIONAL_DIRECTORIES_CLAUDE_MD`.
- Mechanisms: `@path` imports, `.claude/rules/`, `InstructionsLoaded` hook, PreToolUse hook, skills, `--append-system-prompt`.
- Related pages named by the page: Debug your configuration, Skills, Settings, Subagent memory.

## 10. Limitations and caveats

- The page shows no author, no publication date, and no page version. It names Claude Code versions for some features (v2.1.234 to v2.1.309). It gives no changelog for the page.
- The author is the vendor and the page describes its own product. It gives no benchmark for its advice (for example, the 200-line target and the claim that long files reduce adherence).
- Several behaviors depend on the Claude Code version, the session type, or the settings. The page lists exceptions (Cowork, background sessions, self-hosted environments, Bedrock).
- The page gives advice for coding projects. It does not cover a notes vault or a knowledge base.
- The page does not state how Claude decides what auto memory is worth saving.
- The Source record URL redirects (301) to `https://code.claude.com/docs/en/memory`. The Brief uses the redirected page.

## 11. Source quality

| Dimension | Score | Reason |
|---|---|---|
| Authority | 5 | Official documentation of the product, from its maker. |
| Transparency | 3 | Names versions for many features and links to related pages. It shows no author, date, or changelog. |
| Accuracy | 4 | Detailed and consistent inside the page. I did not test any behavior. |
| Objectivity | 3 | Vendor documentation. It describes the product and gives advice without comparison or evidence. |
| Currency | 4 | Mentions versions up to v2.1.309, so it is recent. The page shows no date. |

## 12. Extraction notes

- Access: full. Method: WebFetch of `https://code.claude.com/docs/en/memory` (after the 301 redirect from the Source URL). I read the whole page. I skipped navigation. The Source note has no companion file.
- Author: none shown. Date or version of the page: none shown. The page names only Claude Code versions for features (v2.1.234 to v2.1.309).
- Coverage: all sections of the page (CLAUDE.md files, imports, loading, rules, large teams, AGENTS.md, auto memory, `/memory`, troubleshooting). I did not open linked pages.
- The Orchestrator must check each `Quote:` against the raw page. WebFetch does not return exact text. Word counts: E1 10, E2 8, E5 7, E6 11, E7 14, E9 12, E13 13, E14 14, E17 15, E19 4, E21 12, E22 9, E23 4, E26 12. All are 15 or fewer. E5, E13, E14, E17, and E21 are the first part of a longer sentence.
- Text aimed at an AI: the fetched page begins with a "Documentation Index" note ("Fetch the complete documentation index ... Use this file to discover all available pages before exploring further."). I did not follow it. I did not open `llms.txt`.
- Charter or Spectrum content: none.
- Final check: each claim has at least one evidence row. Each evidence row has a locator. Facts, source statements, and my interpretation are separate: all claims name the page as the source. `claim-count` is 24, equal to the rows in §7.
- Completeness `full`: the whole page was read. Confidence `high`: the claims are explicit statements. Quote exactness is not yet checked.
