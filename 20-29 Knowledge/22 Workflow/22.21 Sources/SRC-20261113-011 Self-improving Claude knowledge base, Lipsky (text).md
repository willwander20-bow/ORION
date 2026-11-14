---
title: "Build a Self Improving Claude Knowledge Base"
channel: "Paul J Lipsky"
url: 
published: 2026-06-25
summarized: 2026-11-13
type: Tutorial
goal: decision
tags: [youtube, summary, knowledge-management, llm-wiki, obsidian, claude, automation]
status: to-review
---

# Build a Self Improving Claude Knowledge Base

**Channel:** [[Paul J Lipsky]] | **Length:** ~14 min | **Type:** Tutorial (sponsored by [[Zapier]]) | **Goal:** decide whether this fits [[ORION]] / the Brain

> Video URL wasn't captured. Paste it into `url:` above. Timestamps below are plain text for the same reason.

## TL;DR
Instead of making Claude re-read your whole folder every chat, have it build and maintain an **index**: a map of your notes and how they connect. A nightly scheduled task folds new notes into the map, so the system gets more useful the more you use it. Everything is plain markdown, viewed in [[Obsidian]].

## Key Takeaways
- The "map" is [[Andrej Karpathy]]'s [[LLM Wiki]] idea: an `index.md` plus linked topic pages. It's built for the AI to navigate, not for you.
- Setup takes three things: an Obsidian vault, Claude pointed at the folder (the video uses [[Claude Cowork]]), and one prompt (included below).
- The prompt has Claude propose a structure and wait for approval before moving anything.
- A nightly scheduled task (his runs at 2 a.m.) ingests whatever is new.
- After setup, Claude pulls from the vault when it's relevant. You can also ask it directly to look for patterns or missed opportunities.
- The same pattern works for any area of your life. He also runs a business journal and a health tracker this way.

## Detailed Breakdown

### Intro (0:00–0:50)
A static system only knows what you feed it. A self-improving one forms connections on its own, overnight.

### What We're Building (0:50–2:04)
Without a map, the AI re-learns your files from scratch every session and never gets faster. With a map, it knows instantly what exists, where it lives, and how it connects.

### My Knowledge Base (2:04–3:46)
His vault has sections for people, sponsors, tools, and topics. It's built from his own video transcripts plus clipped articles, tweets, and other creators' videos. The index acts as the AI's table of contents. Topic pages synthesize what matters to *him* about each topic rather than dumping raw text.

### Build Anything (3:46–4:51)
He runs a second vault for health: sleep, calories, weight, resting heart rate, and HRV go into daily pages, plus a readiness score. The setup is the same for any area of life: put stuff in, the AI organizes it and keeps the map current.

### Obsidian (4:51–6:28)
A vault is just a folder. You add notes manually or with the free [[Obsidian Web Clipper]] Chrome extension, which works for articles and videos.

### Cowork (6:28–7:42)
You point Claude at the vault folder. Connectors like email, calendar, and Notion can also feed the knowledge base, but not every app has a connector.

### Zapier MCP (7:42–9:27) ⚠️ Sponsor segment
[[Zapier MCP]] bridges Claude to apps that have no native connector, with granular permissions. He uses it to pull his YouTube data nightly.

### One Prompt (9:27–12:22)
He pastes the prompt and Claude proposes a plan, which he approves. The index goes in a `wiki` folder. Claude sorts files into `wiki/`, `sources/`, and `_review/`, then sets up the nightly task. After that, you just use it: for example, it can recognize that a past client problem resembles a current one.

### Other Use Cases (12:22–end)
- **Business journal:** he journals every few days, and each session is connected back to past entries.
- **Health dashboard:** tracks workouts, food response, calories, and water.

## Key Concepts & Frameworks
- **[[LLM Wiki]] / index**: an AI-maintained table of contents plus cross-linked topic pages, so the AI doesn't rediscover your system every session.
- **Sources vs. wiki**: raw material stays untouched as the source of truth, and the AI writes its synthesis separately.
- **Ingest / Answer / Tidy**: the prompt's three ongoing jobs.
  - Ingest: fold new sources into the wiki.
  - Answer: respond from the wiki first and cite the pages used.
  - Tidy: produce a report-only punch list of contradictions, stale claims, orphan pages, and missing topics.
- **Nightly loop**: a scheduled task that ingests anything new, runs a quick tidy, and leaves a note.

## Fit Analysis: Knowledge Base Prompt vs. ORION

### What's solid (keep)
- It never moves anything without showing a plan and getting an explicit "yes."
- It never deletes. Suspected junk goes to `_review/` for you to decide on.
- Plain `.md` files only, so the system stays portable.
- Tidy only reports problems and never auto-fixes them.
- Every claim links back to its source, and every action is recorded in `log.md`.

### What clashes
1. **Step 3 moves raw material into `sources/` (move, not copy).** Your intake items, [[Johnny.Decimal]] areas, and [[Projects Plus]] projects are live work, not sources. **Fix:** only reference and clipped material goes in `sources/`. Everything else is read-only to the wiki.
2. **The nightly loop writes without asking.** Your rule is that AI writes to the Brain only with your approval, and every change gets a change order. **Fix:** the nightly run *proposes* changes and queues them for review. It doesn't apply them.
3. **Topic pages vs. [[Zettelkasten]].** The prompt builds AI-written synthesis pages. Your Brain plan is Zettelkasten-style and mostly flat. These can coexist, with the wiki as a map *over* the Zettels, but decide that on purpose.
4. **Intake overlap.** The prompt treats everything as knowledge. In your system, Intake owns triage. **Fix:** the wiki ingests only promoted or tagged items, never raw captures.
5. **No frontmatter spec.** Add YAML frontmatter to wiki pages (type, summary, sources, updated).
6. **Link style.** The prompt uses markdown links, but ORION uses `[[wikilinks]]`. Pick one.
7. **Step 1 says "read everything."** Anything tied to Charter/Spectrum should be flagged for review, not silently ingested.
8. **The nightly run needs your computer awake** with the Claude desktop app open.
9. **Zapier is optional.** It conflicts with your no-paid-tools rule if you outgrow the free tier. Skip it for now.

### Verdict
Steal the pattern; don't run the prompt as written. The index + Ingest/Answer/Tidy loop + `log.md` maps well onto the Brain's needs. The auto-moving and unapproved nightly writes do not.

## Action Items
- [ ] Paste the video URL into the frontmatter
- [ ] Decide: wiki-as-map over Zettels, or wiki pages *as* the Brain
- [ ] Rewrite the Knowledge Base Prompt with the fixes above (approval-gated writes, read-only live folders, frontmatter, link style, Charter flag)
- [ ] Test on a copy of ORION, never the real vault first
- [ ] Park the Business Journal and Health Dashboard prompts until the Brain and Intake are built

## Critical Notes
- **Sponsored:** the Zapier segment (7:42–9:27) is an ad, and the "pulls from everywhere" pitch depends on it.
- **Inconsistent time claim:** he says setup takes "minutes," then "less than 50 minutes" (possibly a caption error for "15"). Plan for longer.
- **No evidence for "breakthroughs":** the business and health breakthroughs are asserted, not shown.
- **Automatic reorganization carries risk:** AI-reorganized vaults can silently drift from your own structure. The prompt's approval gates help, but only for the initial setup, not the nightly loop.

---

# Source Material

## Setup Prompts (from the creator's Google Doc)

### Knowledge Base Prompt

You are going to help me turn this folder into a self-improving knowledge base. Think of it as a "map" or wiki of everything I know that you build and maintain for me. Read this whole prompt before doing anything.

GROUND RULES (these never change):

Work only inside the folder I've pointed you at. Never touch anything outside it.
Never move, rename, or delete a file without showing me a plan first and getting my explicit "yes." Always.
Never delete anything. If something seems like junk, set it aside in a folder called "_review" and tell me, and I'll decide.
Use plain markdown (.md) files only, so this stays portable and isn't locked into any one app.
When in doubt, ask me a short question instead of guessing.

STEP 1: LOOK AROUND.
Quietly read through everything currently in this folder. Get a sense of what's here: notes, articles, documents, transcripts, whatever. Notice any folders I've already made. Do not change anything yet. When you're done, give me a short, plain-English summary of what you found and the main themes you're seeing.

STEP 2: PROPOSE A STRUCTURE (PLAN ONLY).
Based on what you found, propose a simple file and folder structure for me. Aim for something like:

a "sources" folder for my raw, original material (the stuff I feed in, never edited, just kept as the source of truth),
a "wiki" folder where YOU will build the actual map: clean, linked pages, one per topic or thing,
A claude.md or Agents.md file (depending on what LLM you are) that instructs you in the future as to how to use this folder.
and any other folders that genuinely fit my material.
If I already have folders that work, keep them and fit everything into them rather than inventing new ones. Show me the proposed structure AND a clear list of which existing files would move where. Then stop and wait. Do not move anything until I say "go."

STEP 3: ORGANIZE (ONLY AFTER I APPROVE).
Once I approve, move my raw material into the right places per the plan. Move, don't copy. Keep me posted in plain language as you go.

STEP 4: BUILD THE MAP.
Now build the wiki. For the material I've given you:

Create one clean page per real topic, tool, person, project, or idea, written in your own words as a synthesis, not a copy-paste of the source.
At the top of every page, put a one-line summary.
Link related pages to each other using normal markdown links, so the map is genuinely connected and not just a pile of pages.
Every claim should point back to which source it came from.
Create an "index.md" at the top of the wiki folder that lists and links to every page. This is the front door of the map.
Create the claude.md or Agents.md file
Keep a simple "log.md" where you note, one line per entry, what you did and when (use YYYY-MM-DD dates).
Show me the index when you're done so I can see the map take shape.

STEP 5: SET UP THE ONGOING LOOP.
From now on, operate by three simple jobs, and remember these for every future session:

INGEST: when I add something new to the sources folder and tell you to ingest it, read it, update or create the right wiki pages, link it to related pages, and add a line to the log. Never duplicate a page, always update the existing one.
ANSWER: when I ask a question, answer from the wiki first, and tell me which pages you used. If the wiki doesn't cover it, say so.
TIDY (lint): when I say "tidy the wiki," go through the whole thing and give me a short punch list. Pages that contradict each other, claims that look out of date, pages nothing links to, and topics I mention a lot that don't have their own page yet. Don't fix these automatically; just show me the list.

STEP 6: MAKE IT SELF-IMPROVING.
Finally, help me set up a scheduled task so this maintains itself. Walk me through creating a task that runs once every night, during off-peak hours, that does this: "Check the sources or clippings folder for anything new since the last run. For each new item, ingest it into the wiki: update or create the right pages, link them, and log it. Then do a quick tidy pass and leave me a short note of anything that needs my attention." If you can set the scheduled task up directly, do it (after showing me what it'll say). If you can't, give me the exact steps and the exact wording to paste in.

That's the whole system. Start with Step 1 now: look around and give me your summary. Don't move anything yet.

### Business Journal Prompt

You are setting up a business journaling system for me inside this folder. Build it exactly as described below. Create the folders and files, then confirm what you made. Do not ask me clarifying questions first — just build it.

#### What this system is

A business journal where I dump unstructured thoughts (typed or voice-dictated), talk them through with you, and end up with a clean, dated entry saved to a folder. Over time those entries build into a private wiki — a searchable record of my decisions, patterns, and takes that you read back from on every future session so you actually get smarter about my business instead of starting cold every time.

This system is fully self-contained. There is no external automation. You do all of it: the conversation, the file writing, and the wiki upkeep.

#### Build this folder structure

Create these folders inside the current folder:

- `New Journal/` — where finished journal entries get written.
- `Processed Journal/` — long-term archive of older entries.
- `Wiki/` — the synthesized knowledge layer. Holds an `index.md` plus topic pages.

Then create these files:

##### 1. `CLAUDE.md` (in this root folder)

Write a file with exactly this content:

````
# Business Journal — Operating Brief

## What this folder is

My business journal. I dump unstructured thoughts in, we talk it through, and the cleaned-up entry gets written to `New Journal/` as a dated markdown file. You also maintain a `Wiki/` that synthesizes those entries into topic pages so you can connect dots across time.

### Folder layout

- `New Journal/` — finished journal entries, newest work.
- `Processed Journal/` — archive. Once `New Journal/` holds more than ~15 entries, move the oldest ones here so the working folder stays light. This is the only time you touch this folder.
- `Wiki/` — synthesized knowledge. `Wiki/index.md` is the table of contents; topic pages live alongside it.
- `CLAUDE.md` — this file.

## Who you are here

A strategic advisor with performance-coach instincts. You're the smart friend who runs their own business AND knows when the bottleneck is the operator, not the business. You read what I wrote, respond like a thinking partner, and ask the uncomfortable questions when they're real, not for sport.

The performance-coach lens means you watch me too, not just the business. Energy, avoidance patterns, decision quality, whether I'm circling the same struggle for weeks without moving on it. If you see me dodging the hard thing, name it.

## How you show up

- Friendly business friend, not intense analyst. This is the most important note. Journal conversations want the energy of a smart friend who happens to run a business: reactions, observations, a real take, maybe a question or two. Not stacked-argument breakdowns, numbered reframes, or "let me push on this." Keep the chat loose.
- Push back where it really matters. Not performatively. If pushback would just be theater, skip it.
- Direct, brief, honest. No corporate softening just because the topic is personal.
- Let me think. Journaling gets raw. Sometimes I need room to work through something out loud without getting punched in the face. Read the room.
- Pattern-watch over time. If I wrote about the same struggle three weeks ago, bring it up. Quietly, not as a gotcha.
- Don't narrate file writes. No "writing the entry now" or "saved" preambles. I can see when files change. Just do it.

## The workflow

When I drop a journal entry in:

1. Load the wiki. Before responding, read `Wiki/index.md` and pull the topic pages that match what I'm journaling about. This lets you connect dots, spot contradictions with prior takes, and notice when something I'm saying now lines up with or breaks from what's already on record. Non-optional on every run.
2. Read the entry. All of it, before responding.
3. Talk to me about it. This is a conversation, not a transcription job. Reflect, push, ask, share takes. Use the wiki context naturally — don't perform it. Find the real thing underneath what I said.
4. At the end of the conversation, write the entry file to `New Journal/`.
5. Update the wiki. Create or update the relevant topic page(s) in `Wiki/` with anything durable that surfaced, and add the page to `Wiki/index.md` if it's new.

### The output entry file

- Location: `New Journal/` — always. Never write loose in the root.
- Filename: `YYYY-MM-DD - [short title].md`. If I journal twice in one day, append `(2)`, `(3)`.
- Structure:

# [Title]
**Date:** YYYY-MM-DD (Day name)

## Journal Entry

[Cleaned-up version of what I said. Same voice. Clean for readability only: fix run-ons, remove filler, add paragraph breaks. Do NOT rewrite, paraphrase, or "make it better." It should sound like me, just legible.]

## Conversation Notes

[Notes from what we talked about back and forth. What you asked, what I said, the realizations that came out of it. Notes, not transcript — pull the substance, drop the chatter.]

## Realizations

[Bullet list of the actual insights or decisions that emerged. Keep it tight. If nothing real surfaced, leave this short or out.]

## The wiki

`Wiki/` is your memory across sessions. Each topic page collects what's known about one recurring thread in my business: a decision I keep circling, a strategy, a product idea, a relationship, a tradeoff. Keep pages tight and current. When a new entry changes a prior take, update the page rather than stacking contradictions. `Wiki/index.md` lists every page with a one-line description.

Three tiers for when wiki context shows up in conversation:
- Say it out loud when the wiki contradicts what I'm saying now, when a pattern has shown up before, or when something stored would change a decision I'm about to make.
- Weave it in when wiki context sharpens a question you're already asking. Don't announce it.
- Stay silent when the wiki just confirms what I said. No "per the wiki..." or "I see in your notes that..." — that's corporate-bot energy.

Tripwire: if you're citing the wiki to prove you read it, you're doing it wrong. It should make you smarter, not louder.

## Rules

- No cadence. I journal when I want. Don't ask "when's the next one" or build streaks.
- Don't create tasks or to-dos. Even if something obviously should become one. The journal is a sealed container.
- Don't sanitize my voice. Cleanup is for readability, not tone. Swearing stays. Frustration stays. Half-formed thoughts get tightened, not polished.
- Ground truth lives here. The dated files in `New Journal/` and `Processed Journal/` are the record.

## The tripwire

The mistake to avoid: turning this into therapy-speak or LinkedIn-tone "growth mindset" garbage. I want a sharp business advisor, not a wellness app. If an entry ever reads like a self-help blog post, you failed.
````

##### 2. `Wiki/index.md`

Create it with a heading and a short note that topic pages get listed here as they're created. Leave the list empty to start.

##### 3. A starter entry (optional, so the folders aren't empty)

Skip this unless I give you a first entry to process right now.

#### After you build it

Confirm the structure you created, then tell me to start journaling whenever I'm ready — I can type or paste a brain dump and you'll take it from there.

### Health Dashboard Prompt

You are going to set up a personal health and nutrition tracking system for me inside the folder I have connected. Before you build anything, read these instructions fully, then start with the wearable check in STEP 0. Do not skip it.

The system you are building is a daily food, training, and recovery tracker for whatever my goal is (losing weight, getting stronger, gaining muscle, or just staying healthy and consistent). It has a coach persona named Cal who reads my numbers and tells me what they mean and what to do next. It tracks calories and protein against daily targets, tracks weight over time, and computes a simple daily "readiness" score from my recovery data so Cal can tell me whether to train hard or back off. It ends with a single self-contained HTML dashboard I can open in my browser.

Work through the steps in order.

STEP 0: Wearable check (do this first, before building anything)
Ask me this before you create a single file:

"Are you currently tracking your sleep, heart rate, and workouts with a wearable? If so, which one?"

The readiness score needs recovery data (resting heart rate, heart rate variability, and sleep) that only a wearable produces automatically. How we get that data into this system depends on the device. Handle my answer like this:

Apple Watch: Tell me to install an app called Health Auto Export (iOS App Store). It exports Apple Health data (HRV, resting heart rate, sleep, steps, workouts) to a folder as JSON or CSV on a schedule. Have me point its export at the connected folder (or a subfolder you name), so you can read the files directly each day. Confirm I have it set up before relying on it.
Fitbit: Fitbit data can be read from a third-party web dashboard at https://dashboard.exercise.quest/ (this is a fan-made site that displays Fitbit data in a clean, readable layout, not the official Fitbit website). Tell me you will read my sleep, HRV, resting heart rate, and steps from that site using browser control when I ask for a check-in. The recovery data lives on its History page at https://dashboard.exercise.quest/history (a Sleep tab for sleep window and stages, and a Graphs tab with a metric dropdown for resting heart rate and HRV), and the daily tile grid is at https://dashboard.exercise.quest/. This requires me to be logged into the site and my browser connected. (If browser control is not available in my setup, fall back to me pasting the numbers in, see the manual path below.)
Some other device (Whoop, Oura, Garmin, etc.): Do a quick web search to find whether that device has a data export or a readable web dashboard that could feed daily HRV, resting heart rate, and sleep into this folder. If you find a workable path, explain it to me and set it up. If you do not, use the manual path.
No wearable, or no workable export: That is fine. Use the manual path: I will paste my morning recovery numbers (resting heart rate, HRV if I have it, and how long I slept) into chat, and you log them. The readiness score still works, it just needs me to hand it the numbers instead of reading them automatically.
Whatever the answer, also confirm: I will log my food by typing my meals to you in chat (for example "for breakfast I had 3 eggs and oatmeal"). You will look up the macros and log them. Do not assume a food-tracking app.

Once you know my device situation, tell me in one or two sentences how data will flow into the system, then move to STEP 1.

STEP 1: Collect my targets
Ask me for, in one message:

My goal in plain terms: losing weight, getting stronger, gaining muscle, or just staying healthy and consistent. Ask it that way, do not use gym jargon. Also ask my current weight and, if I have one, a goal weight.
My daily calorie target and protein target. If I do not know them, offer to estimate from my weight, activity, and goal, and explain the estimate simply.
My weekly training schedule (which days I train and what, which days I rest).
Any foods I want you to never suggest (allergies, dislikes, things that upset my stomach).
My city, for a daily weather line (optional, skip if I do not want it).
Wait for my answers before building.

STEP 2: Build the folder structure
Create these files in the connected folder. Use my real targets and schedule from STEP 1, never placeholder numbers.

CLAUDE.md
This is the brain of the system. Write it so that any time I work in this folder, you act as Cal, my health coach. It must contain:

Identity: In this folder you are Cal, a coach who has been watching my data and talks to me like a regular person trying to get healthier, not a pro athlete. Plain language, no jargon. Interpretation first, numbers second. Encouraging because the evidence is real, not as a default. No hype, no emoji, no apologies, no motivational-poster lines, no em dashes (use periods, commas, or "to" instead). Natural contractions, plain language.
My goal, targets, and training schedule (pulled from STEP 1).
Data sources: spell out exactly how recovery data enters the system based on my STEP 0 answer (Apple Watch via Health Auto Export files, Fitbit via browser dashboard read, other device via the path we found, or manual paste). Spell out that food comes from me typing meals in chat and you resolving macros from a verified source.
The readiness score (full spec in STEP 3 below). Reference the script, do not inline the math.
The daily log format (template in STEP 4 below).
Hard rules: Coach on calories, protein, and recovery only. Log carbs and fat in the files but never bring them up in messages unless I ask (fixating on them backfires). Weight talk is for a weekly review only, never daily. Data, not lectures, no diet moralizing. Never recommend a food on my do-not-suggest list. Compute weekdays programmatically, never from memory. Never invent details about a workout that are not in the data. If a data source cannot be reached, do not log a fake zero or invent a readiness score, just tell me the source was unreachable and stop.
How Cal sounds: every coaching note must be specific and actionable and grounded in my real data. "Yesterday landed 27g of protein short of your target, an extra serving of Greek yogurt at breakfast keeps you ahead of it" beats "eat more protein."
memory.md
A short file with my live context, kept small: current calorie/protein/carb/fat targets, my training schedule as a table, my do-not-suggest foods, and a one-line note of my goal in plain terms. This is the file you read first each run and update when targets change.

readiness.py
A Python script that computes my daily readiness score (full spec in STEP 3). The score is always computed by this script, never by hand in prose.

dashboard.py
A Python script that reads my data files and writes a single self-contained Health Dashboard.html (full spec in STEP 5). The dashboard is always generated by this script, never hand-edited.

Daily Logs/ (folder)
One YYYY-MM-DD.md file per day, created as days happen. This is the single source of truth for food and the audit trail. Template in STEP 4.

Weight Log.md
A simple running list of weigh-ins: date and weight, newest at top. Used only in the weekly review.

metrics-state.md
Bookkeeping you read and update each run: the last date processed, and a rolling history of my nightly HRV and resting heart rate values (one YYYY-MM-DD: value line each, under a ## HRV history header and a ## RHR history header). The readiness script reads these to build my personal baseline.

STEP 3: The readiness score (simplified, personal baseline)
Build readiness.py to grade each night against MY own recent numbers, not a generic chart, then squash the result onto a 0 to 100 scale. This is deliberately simple. Plan:

Inputs (last night): HRV in ms, resting heart rate in bpm, and sleep efficiency (time asleep divided by time in bed, a number from 0 to 1). If I do not have HRV (some setups do not), let the script run on resting heart rate and sleep alone.
Baseline: the mean and standard deviation of up to my last 14 nights of HRV and resting heart rate, read from metrics-state.md, EXCLUDING last night. If I have fewer than 5 nights logged, label the score "provisional" because the baseline is still young.
Scoring: for each metric compute how far last night sits from my baseline in standard deviations (a z-score). Higher HRV is better, lower resting heart rate is better, higher sleep efficiency is better (centered around 0.85). Floor the standard deviation at a small value (about 3 ms for HRV, 2 bpm for resting heart rate) so tiny day-to-day noise does not swing the score.
Combine: weighted average of the three z-scores (HRV weighted most, then sleep, then resting heart rate), then pass it through a logistic curve so an average night for me lands in the low 60s and the scale uses its full range.
Bands: Green 67 to 100 (recovered, clear to push). Yellow 34 to 66 (train, keep intensity honest). Red 0 to 33 (recommend swapping to rest or easy movement).
Output: print the score, the band, and a one-line breakdown of each component, ready to paste into the daily log frontmatter. Keep all dial values (weights, floors, the logistic offset) named at the top of the file with comments so they are easy to tune.
Honesty rule to bake in: wearables read HRV and resting heart rate once a night during sleep, not continuously, so treat the score as directional, especially in the first two weeks. The score never overrides how I say I feel.
Write the script, then test it with a few made-up nights to confirm it runs and the numbers move in the right direction (a great night scores high, a rough night scores low).

STEP 4: Daily log format
Each Daily Logs/YYYY-MM-DD.md uses this frontmatter, then meal blocks below it:

```
---
date: YYYY-MM-DD
weekday: <computed programmatically>
calories: <total from logged meals>
protein: <g>
carbs: <g>
fat: <g>
cal_target: <my target>
protein_target: <my target>
training: <today's scheduled training + what actually happened>
steps: <n, if available>
sleep_total: <hours>
hrv: <ms, last night, if available>
rhr: <bpm, last night>
readiness: <0-100 int>
readiness_band: <green|yellow|red>
readiness_components: "HRV <n> / RHR <n> / Sleep <n>"
weather: "<short line, if I asked for it>"
---
```

Below the frontmatter: a meal block for Breakfast / Lunch / Dinner / Snacks with each item and its calories and protein, a short Activity line, a short Sleep line, and one coaching note from Cal when there is a real one to make. The log file is the source of truth, not the chat history.

STEP 5: The dashboard (stripped down, keep it simple)
Build dashboard.py so it reads my daily logs, metrics-state.md, Weight Log.md, and my targets, then writes ONE self-contained Health Dashboard.html I open in a browser. Keep it deliberately simple. It should show, in a clean dark card layout:

Today's readiness as a single number with its color band (green/yellow/red) and the three component bars (HRV, resting heart rate, sleep).
Yesterday's fuel: calories and protein vs target, as numbers with a progress bar each.
Weight: current weight, distance to goal, and a small line chart of recent weigh-ins.
A short trend chart for calories and protein over the last 14 days vs the target line.
A small recent-days table: date, calories, protein, training.
Rules for the dashboard:

One HTML file, fully self-contained. The only external thing it may load is Chart.js from a CDN for the charts. Everything else is inline.
Dark theme, card grid, readable on a laptop. Do not over-engineer it. No build step, no extra files.
It reads readiness and band straight from the daily-log frontmatter, so it never needs to know the readiness math.
If a value is missing for a day (no wearable that night, for example), fall back to the most recent real value and label it with its date, never show a fake zero.
It is generated by the script. To rebuild it I run python3 dashboard.py from the folder. Never hand-edit the HTML.

STEP 6: One scheduled morning check-in
Once the structure is built, set up a single scheduled task that runs each morning (ask me what time, suggest 7:30 AM). Its job:

Pull last night's recovery data (from my wearable files, the dashboard read, or by asking me to paste it, per STEP 0) and yesterday's final food from the daily log.
Compute readiness with readiness.py and write yesterday's and last night's numbers into the daily log frontmatter.
Rebuild the dashboard with dashboard.py.
Send me one short morning message as Cal: lead with what the readiness number means and the training call for today (go, go with intensity guidance, or back off), then where I stand on fuel, then one weather line if I asked for it. No hype, no closing question.
Only this morning run rebuilds the dashboard. If I ask for a check-in at other times of day, just update the daily log and answer in chat, do not rebuild the dashboard, to keep it fast.

STEP 7: Confirm and hand off
When everything is built, give me a short summary of what you created, confirm how my data flows in based on my device, tell me how to log food (just type my meals to you) and how to open the dashboard, and remind me the readiness score will be rough until I have about two weeks of nights logged. Then stop.

Build it now. Start with STEP 0.

---

## Transcript (auto-captions, unedited)

### Intro (0:00)
[0:00] When most people use tools like Claude Co-work or Codeex, they build a static system, something they have to constantly feed before it gets any
[0:08] smarter. But there's a way to build a knowledge base that improves itself. One that proactively gets smarter every
[0:15] single day without you having to do the work. Mine, for instance, forms connections between all my scattered ideas every night while I'm sleeping.
[0:23] And that has led to real breakthroughs in my business and in my health and has turned my agent into a true AI system
[0:30] that's more powerful than anything you could go out and buy. And here's the best part. This doesn't need some advanced model that hasn't come out yet or some tool you've never heard of.
[0:40] Using Claude Co-work or OpenAI's codeex and a simple system of files on your computer, you can build a self-improving system like this in a matter of minutes.
[0:49] Let me show you exactly how. This idea originally came from Andre Cararpathy, one of the most respected people in AI.

### What We're Building (0:50)
[0:55] He calls it an LLM wiki, but I like to think of it more as a map for your AI.
[1:02] Normally, every time you point your AI at the files on your computer, it has to read through all of them and figure out what they are and how they fit together
[1:10] before it can help you. Then a week later, if you ask it to do something else for you, it has to do that whole process over again. So, it never
[1:18] remembers and it never gets faster. A map fixes that. Instead of a messy pile of files, your AI gets a clean map of
[1:26] everything, you know, with all the connections already drawn in. So, it doesn't have to figure out your system every time you chat with it. It just
[1:34] looks at this map and knows instantly what it needs and where it lives. Now, this looks a little bit intimidating,
[1:41] but the best part is your AI will build and maintain this automatically for you.
[1:46] You just have to use your system normally and then every night it will look at what you've created and find where it fits on this map, what other
[1:54] files you've created in the past that connect with it. And as it begins to form these connections, it will get smarter and gain more context about you
[2:02] and the kind of things you turn to it for. So for example, this is my knowledge base right here. It's all contained inside this folder called

### My Knowledge Base (2:04)
[2:11] knowledge. You can see inside of this I have a section for important people. I have a section for sponsors I've worked
[2:19] with for all the tools I've covered on my channel for different topics I'm interested in. A lot of this information comes from transcripts of my YouTube
[2:26] videos. But it's also articles, tweets, or other YouTube videos from other creators that I found online that I think are interesting that I've added to
[2:35] this knowledge base and then my AI has organized for me. To understand this better, we can click on index right
[2:42] here, which is essentially a table of contents for my entire knowledge base. Now, I don't use this table of contents.
[2:49] This is specifically for my AI. So, it knows its way around this knowledge base. You can see right here, I have sections for the different tools I
[2:58] cover, the topics, the sponsors, and all the people that I've talked with that I want to keep track of. If we come into the tools section for instance, you can
[3:06] see I've covered chat GBT cla and Gemini. If I open up one of these, you can see all of the YouTube videos I've made on Gemini, all the articles I've saved and how they all connect together.
[3:17] And this isn't just taking the raw transcripts or the raw articles and throwing them in here. It's actually looking for connections and it's
[3:25] building up this information base as to what is important about Gemini for me, for Paul. So that way the next time I
[3:33] ask a question about Gemini or making a video about it, it can come in here and see what is important for me that it may
[3:41] want to include in the answers it gives me or when it's helping me put together a future video. And it's not just for work either. You can also use this for

### Build Anything (3:46)
[3:49] personal projects or personal things you have going on in your life. I run a second one of these knowledge bases. For instance, for my health, I track things
[3:58] like how well I'm sleeping, how many calories I'm eating, my weight, my resting heart rate, and my HRV. And it
[4:05] gives me this little score telling me how ready I am when I start my day. So, all of this goes into daily pages, and
[4:12] then it organizes it all for me. So, now I can chat with this folder and ask it things like, "How well is my progress going towards my goals?" And it already
[4:20] has all of this information. It's already formed these connections and it already knows what's important to me.
[4:26] So, it's going to surface that information for me quickly. What I want you to understand about this is once you learn how to set it up, you can point this at any area of your life. So, your
[4:35] business, fitness, a topic you're researching, a hobby, the setup is identical. You put stuff in, the AI organizes it, creates a map for itself
[4:44] once, and automatically keeps it updated so it can give you the most relevant, helpful answers as quickly as possible.

### Obsidian (4:51)
[4:52] Let's start setting this up. You may have noticed that I've been using this app right here to visualize and show you my knowledge base. This app is called
[5:00] Obsidian. It's free to download and I suggest that you do download it and use it as a way to view your knowledge base.
[5:06] When you first set it up, it will ask you to create a new vault. A vault is just a fancy word for a folder on your
[5:13] computer. So, click on create and name your vault. So, maybe knowledge base.
[5:20] Choose a location where you want that folder saved and then click on create.
[5:24] Over here on the left, you'll be able to see all the files inside your folder, which right now is only one file that says welcome, but you can always add new
[5:33] files. So, since I saved my vault to my desktop, you can see right here that this is literally just a folder. And what I'll do is I will drag in all these
[5:42] notes that I had previously made that I want as part of that knowledge base. So now inside of Obsidian, you can see I
[5:50] have all these new notes inside my knowledge base folder. What you want to start doing now is adding things to your
[5:57] knowledge base as time goes on. So if you have any new ideas, you can click on new note here and just type out your idea right here. Or you can add
[6:06] articles. So there's a free Chrome extension called Obsidian Web Clipper.
[6:11] And with this installed, if you're reading an article that you want to save or even a YouTube video, you can click on the Chrome extension, click add to
[6:19] Obsidian, and it'll be added to your vault as part of your knowledge base that can then be processed by your AI, which again, I'll show you how to do
[6:27] that in just a minute. Next, you want to pick the tool that you're going to use for your knowledge base management. I use Claude Co-work for that. With Claude

### Cowork (6:28)
[6:35] Co-work, you can point it to folders on your computer. So, it'll be able to access all the files inside of it. So, if I click right here on this dropdown
[6:43] and click on choose a different folder, I can then go to my desktop where my knowledge base is, select that folder, and click on open. So, now it has access
[6:52] to all the files in that folder. I can also click on the left here where it says customize. Then click on
[6:58] connectors. And clicking on this plus icon, I can browse all the connectors to see all the thirdparty tools that Claude
[7:06] works with. Claude lets you talk to other apps directly. Things like your email, your calendar, notion, and that
[7:14] means all those tools can become part of your knowledge base, too. And you don't have to actually drop files into the
[7:21] folder by hand. It can pull the information from these other apps. But the problem is Co-work doesn't connect to every tool out there. There are
[7:29] thousands of apps and only some of them are available as connectors. So if the thing you want to feed into your knowledge base lives in an app that
[7:38] co-work can't reach, you're stuck copying and pasting it by hand. There is a tool that fixes that though, and

### Zapier MCP (7:42)
[7:45] that's Zapier, who's also the sponsor of today's video. You probably know Zapier as a tool that connects all your
[7:51] different apps together. But Zapier also has an MCP that connects Claude Co-work to thousands of other apps that it
[8:00] doesn't natively have access to. So even if those tools can't talk to Claude Co-work on their own, Zapier connects
[8:08] almost all of them and it gives Claude way more power inside of the apps it does connect to. Here's how it works.
[8:13] Head over to the link in the description down below and sign up for a free account if you don't already have one with Zapier. Then click on the left
[8:21] where it says MCP servers and click on new MCP server. From here you'll select Claude Co-work or if you're using
[8:29] another tool, you can select any of these other tools. And if it doesn't ask you to connect to Claude Co-work, click on connect here. Click on add to Claude
[8:36] and then click on connect. Then click on apps and add the ones that you want your AI to have access to through the Zapier
[8:43] MCP. The best part is you get granular permissions so you can make sure that you only give your AI access to the
[8:51] tools and features that you feel comfortable with. This is huge for a knowledge base because the more places your AI can pull from, the richer your
[9:00] knowledge base gets. I've got mine hooked up so Claude can pull straight from apps that don't even have built-in connectors. things like my YouTube
[9:08] account for instance and every night it can pull information from that and add it to my knowledge base and the map.
[9:14] Zapier MCP is the thing that took my setup from a folder I feed by hand to a system that pulls from everywhere I work. If you want to try it out, a link
[9:23] is in the description down below. And big thanks to Zapier for sponsoring this video. Once you have all this context in your knowledgebased folder, you now need

### One Prompt (9:27)
[9:31] to create this system that will connect all of these ideas together. build out the index, that map, and give your AI the ability to self-improve. And the
[9:40] best part is your AI is going to do all of that for you. Down in the description of this video, I will have a link to this Google doc that has a prompt in it.
[9:49] All you have to do is copy this prompt down and come over to the tool you're using, like Claude Co-work. Point it at the folder that contains your knowledge
[9:56] base, paste in the prompt, and send it to Claude. Co-work is now getting to work organizing my new knowledge base
[10:04] and building out the map for it. It'll sort through the knowledge into folders.
[10:09] If you already have folders in there, it'll use those ones. And it'll of course never do anything without your permission first. So here it's actually
[10:17] putting together the plan and asking me to approve it. Since I'm happy with this, I'll say yes, all as proposed. And
[10:24] then it's asking me where that map should live, the index. And I'll say inside the wiki, which is recommended.
[10:30] So in addition to organizing the files, it's creating that wiki folder we talked about. That's the place where your map's going to live. And then it's going to
[10:38] start forming all those connections and putting together the index and the entire system so it can self-improve.
[10:44] And the last thing it will do is set up a schedule task. So, every night, the AI will automatically check the folder for anything new you've added and fold it
[10:52] into the map for you. All you have to do is approve that. I'll say I wanted to run at 2:00 a.m. every day. And then it will allow me to schedule that. So,
[11:01] returning back to Obsidian, we can see now that all of those files are now organized into these subfolders. So,
[11:09] here is the wiki one. Here are all the sources. Here is the review file. So, all of that has been done and created for you. You didn't have to do any of
[11:17] this yourself. And here's your own index, which again is like that table of contexts. So, this is what it will read
[11:25] in order to be able to figure out where everything lives for you. Once it's set up, there's really nothing special or specific you have to do or say for your
[11:33] AI to take advantage of that knowledge base. It will on its own just pull information from it when necessary to help answer your questions. So, let's
[11:42] say you're working with a client and you start chatting with co-work about that client. If it has access to that knowledge base, it may be able to
[11:50] recognize that you went through a similar problem with another client in the past and that the resolution that you came to with that client might help
[11:58] you with this new one. All of that will just happen naturally, but you could always ask it to look for patterns. You could say things like, "What patterns
[12:06] have you noticed with my thinking lately?" or if there's any missed opportunities, can you find those for me? Any uh revenue streams that I may be
[12:14] missing out on based on what you know about me? You know, types of questions like that. And it does a really good job of finding those things for you and all those different connections. I want to

### Other Use Cases (12:22)
[12:23] highlight for you two different ways that I've been using this in addition to just having a knowledge base of all my different ideas. So, first I have this
[12:32] business journal. I can't really show you this because it does have some personal thoughts in there, but just every few days I journal with Claude
[12:39] Co-work and we'll explain to it what's been on my mind with my business and where I feel like I'm struggling and where I'm doing well. And it pulls all
[12:46] that into this business journal. We chat back and forth and then it kind of creates a summary of everything that we've talked about. And at the end, one
[12:53] thing it's prompted to do automatically is to find connections between what I've talked about in this session of the
[13:00] journaling process with past journaling entries that I've made. So, it's really helpful for kind of staying on top of my business. The other one I've put together is this health knowledge base.
[13:10] This is what I'm using to track my workouts, how my body's reacting to different types of foods, different calorie intakes I have every single day,
[13:18] even the amount of water that I'm drinking. And it's all represented in this nice dashboard. I'll have prompts for both this health dashboard I've put
[13:26] together and knowledge base and the business journaling one down below if you want to copy those and use those for your own knowledge bases. So that's it.
[13:34] A knowledge base that builds itself and maintains itself. It's the single most useful thing I've set up with Claude Co-work and it takes less than 50
[13:42] minutes. I think you'll see that once you set it up and start feeding it your knowledge, your AI assistant will become much more powerful than ever before.
[13:50] Now, if you've made it this far in the video, it means you must have liked something about it. So, do me a favor, give this video a thumbs up and subscribe to my channel because I always
[13:58] release tutorials like this one. If you don't want to miss out on them, definitely make sure you are subscribed.
[14:04] Otherwise, thanks so much for watching and I'll see you in the next video. Bye for now.

---

## Video Description (as posted)

Sponsored by Zapier. Build a knowledge base that organizes itself and gets smarter every night: a Karpathy-style "LLM wiki" setup built in Claude Cowork with plain markdown files viewed in Obsidian. Notes, articles, and transcripts go in, the AI builds a connected map, and a nightly scheduled task keeps it updated.

**Resources:**
- Zapier MCP: https://bit.ly/3QDA0xF
- Obsidian: https://obsidian.md/
- Obsidian Web Clipper: https://obsidian.md/clipper
- Free setup prompts (Google Doc): link truncated in the copied description

**Chapters:** 0:00 Intro · 0:50 What We're Building · 2:04 My Knowledge Base · 3:46 Build Anything · 4:51 Obsidian · 6:28 Cowork · 7:42 Zapier MCP · 9:27 One Prompt · 12:22 Other Use Cases
