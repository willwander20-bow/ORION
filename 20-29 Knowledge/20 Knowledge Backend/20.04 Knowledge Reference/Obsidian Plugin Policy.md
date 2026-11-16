---
title: Obsidian Plugin Policy
type: reference
status: draft
schema-version: "0.13"
updated: 2026-11-15
---

# Obsidian Plugin Policy

This note gives the rules for community plugins in the ORION vault. It also gives a list of plugins to consider. Justin approves each plugin. Justin can override any rule in this note. When he does, the Orchestrator records the override in the work log.

Status: draft v0.1, 2026-11-15. Justin asked for this note after the cost and duplication review. A plugin is for user experience, efficiency, or cost saving only.

## 1. The base rule

The Brain, the records, and the workflow do not rely on a plugin. Core Obsidian features and plain Markdown files must be enough to read, search, and review everything. Knowledge HQ uses core Bases only.

## 2. Rules

1. **Free and open source.** The plugin has a public source and no paid tier that the vault needs (X-D-11). It has a release in the last 6 months.
2. **No change to note content.** A plugin does not rewrite frontmatter or text by itself. This includes `updated` and formatting. Reason: each time stamp comes from the system clock, and `git diff` must show only real changes.
3. **Own data only.** A plugin stores its data in its own folder in `.obsidian\plugins`. Check the size of that folder after the first use. Git tracks `.obsidian` plugins (root `CLAUDE.md` §5.6).
4. **One at a time.** Justin installs the plugin. The Orchestrator does not edit `.obsidian` (root rule 4.1). After the install, the Orchestrator commits the `.obsidian` change as its own commit, so one `git revert` or one tag removes it.
5. **Safe mode test.** After each install, turn on Restricted mode. Open Knowledge HQ, a Source note, and a Change Order. They must read correctly. If not, the plugin is a dependency. Remove it, or tell Justin.
6. **Few plugins.** A community plugin can read and write the whole vault and can use the network. Each plugin adds risk. Add one only when it solves a problem that you have.

## 3. Check before you install

- Open the GitHub page. Read the last release date and the open issues.
- Read the README for network use, accounts, and API keys. Do not install a plugin that needs a key or an account.
- Read what the plugin writes. If it writes to notes, apply rule 2.
- Note the version in the work log.

## 4. Installed now (2026-11-15)

| Plugin | Use | Verdict |
|---|---|---|
| Templater | Makes a note from a template | Keep. No Knowledge note uses its syntax. |
| Commander (`cmdr`) | Commands in menus | Keep. Interface only. |
| Editing Toolbar | A toolbar for editing | Keep. Interface only. |
| Dataview | Queries in notes | No note uses it. Knowledge HQ uses core Bases. Turn it off unless Justin uses it in other areas. |

## 5. Ten plugins to consider

The status of each plugin (last release, open issues) is not checked. Check it at install time (section 3).

| # | Plugin | What it helps with | What to watch | Suggestion |
|---|---|---|---|---|
| 1 | Advanced Tables | Edit and align Markdown tables. The Change Orders and Source notes have many wide tables. | Editor only. Check that it does not reformat tables on save. | Yes |
| 2 | Omnisearch | Full-text search with typo tolerance. Helps to find an `E` label in a Source note of 4,000 to 8,000 words, so you search without asking an agent. | Where it keeps its index. The index must not enter git. | Probably yes |
| 3 | Quiet Outline | An outline with search and folding for long notes. | Core Outline exists. Add this only if the core plugin is not enough. | Maybe |
| 4 | Homepage | Opens Knowledge HQ when Obsidian starts. | Setting only. | Maybe |
| 5 | Style Settings | Sliders and colors for a theme that supports it. | Only works with a theme that offers settings. | Maybe |
| 6 | Obsidian Git | A diff view of the changes. | Turn off auto-commit, auto-pull, and push. Commits follow root `CLAUDE.md` §5, made by the Orchestrator. | Skip, or view only |
| 7 | QuickAdd | Capture macros: a command that makes a new Source note or an Inbox note. | For the intake process, which is not decided. | Later |
| 8 | Meta Bind | Input fields and buttons in notes. For example, an intake form. | **Never a button that sets `decision` on a Change Order.** Approval needs Justin's own words (Rulebook §6). | Later, with that limit |
| 9 | Text Extractor | Text from PDFs and images, for intake of files. | Works with Omnisearch. Check the processing runs on this computer only. | Later |
| 10 | Tasks | Task lists with due dates, from Markdown checkboxes. | Nothing in the Knowledge System uses tasks. It adds syntax to notes. | Skip unless you track work in the vault |

## 6. Do not install

- **BRAT** and other tools that install code from an unreviewed source.
- **Linter** or any plugin that rewrites frontmatter or formats notes on save (rule 2).
- **AI plugins** (Copilot, Smart Connections, and similar). They cost tokens or fees, they send text outside the vault, and the agents do this work already (X-D-11).
- **Auto Note Mover** and plugins that move files. The staging and archive rules (Schema §2.6) own where a note goes.
- **Sync and publish plugins.** Git is the backup and the vault is private.

## 7. Cost saving

A plugin does not reduce agent cost. That cost comes from agent runs (see KS-08 §8.15). A plugin saves money only when it lets Justin find or read something without an agent run. Omnisearch and Quiet Outline are the plugins on this list that do that.

## 8. Change log

| Date | Version | Change |
|---|---|---|
| 2026-11-15 | 0.1 | First draft. Six rules, a check list, four installed plugins, ten plugins to consider. |
