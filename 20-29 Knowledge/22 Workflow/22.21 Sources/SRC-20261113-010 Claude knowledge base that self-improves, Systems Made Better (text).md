---
title: "Build A Claude Knowledge Base That Self-Improves!"
channel: "Systems Made Better (Better Creating)"
url:
published: 2026-05-23
summarized: 2026-11-13
type: Tutorial
goal:
tags: [youtube, summary, knowledge-management, second-brain, claude, llm-wiki]
status: to-review
---

# Build A Claude Knowledge Base That Self-Improves!
**Channel:** Systems Made Better (Simon, Better Creating) | **Length:** ~36 min | **Type:** Tutorial

## TL;DR
Simon rebuilds [[Andrej Karpathy]]'s "LLM as librarian" knowledge base using plain folders and markdown files. You dump messy material into one folder, Claude organizes it into a linked wiki, your Q&A answers get saved back in, and a monthly health check keeps it accurate. The pitch: you stop being the librarian, and the base gets more useful the longer you feed it.

## Key Takeaways
- **The whole architecture is three folders and one file:** `raw/` (junk drawer), `wiki/` (Claude writes it and you never edit it), `outputs/` (answers and reports), plus a [[CLAUDE.md]] rulebook at the root.
- **You don't need vector databases or RAG at this scale.** Karpathy's own base is about 100 articles and 400k words, and an index file is enough for the LLM to find what it needs.
- **Capture is messy on purpose.** Organizing is Claude's job.
- **The [[Compounding Loop]] is the real feature.** Every answer goes to `outputs/` and feeds future answers. You have to tell Claude to do this, because it didn't by default in his demo.
- **A [[Knowledge Base Health Check|health check]] stops the system from building on its own mistakes.** One run took about 12 minutes and used a big chunk of his session limit on a Max 5x plan.
- **A change log doubles as memory,** so Claude knows which raw files are already processed.
- **You can run several knowledge bases side by side** under one parent folder, each with its own `CLAUDE.md`.

## Detailed Breakdown
### Intro (0:00–1:56)
Karpathy's post got about 105k bookmarks, and Simon suspects almost nobody built one. He lays out the five steps: set up, dump, build the wiki, ask and save, health check.

### System Overview (1:56–3:56)
He covers the three folders plus `CLAUDE.md` and explains why no database or [[Obsidian]] is needed. He teases pointing a custom agent at a knowledge base so it acts as a subject expert.

### Setup (3:56–11:20)
- He creates a parent `second brain knowledge/` folder with its own `CLAUDE.md` describing how new bases get created.
- He builds a productivity knowledge base inside it, with focus themes: attention and energy, systems design, [[Deep Work]], and [[Essentialism]].
- He has Claude draft the `CLAUDE.md` with ingestion rules, a guided-ingestion option, and a health-check outline.
- He adds a change log so automated runs know what's new.

### Information Dump (11:20–16:08)
- Claude pulls 10–20 longer entries from his [[Notion]] through the connector. He uses a "context map" file that tells Claude where his databases live.
- He also pastes articles straight into chat (e.g. a [[Cal Newport]] deep work post), drops in a PDF and a JPEG, and hand-makes `.md` files.
- He mentions the [[Obsidian Web Clipper]] as a free one-click way to turn web pages into markdown.

### Create the Wiki (16:08–20:37)
- The prompt is roughly: "Read everything in raw, build the wiki per CLAUDE.md, index first, one file per topic, link related topics."
- Claude has to read his anti-AI-writing style guide first. He built it from Wikipedia's page on signs of AI writing.
- He notes the build is heavy on usage, so plan for multiple sessions or a Max plan.

### Compounding Loop (20:37–24:22)
- His test question was about balancing high output with energy and health. Claude gave a solid synthesis drawing on Newport, [[Greg McKeown]], [[Oliver Burkeman]], and [[Tiago Forte]].
- The answer didn't save to `outputs/`, so he added a rule to `CLAUDE.md`: every answer gets saved there.
- A "what are my 3 biggest gaps?" query found real holes, such as how to stop doing things and how to work with other people.

### Health Check (24:22–33:39)
- He runs a manual audit prompt: find contradictions, fill gaps with web search, flag unsourced claims, suggest new links, and propose three new articles.
- He then turns it into a skill plus a monthly scheduled task.
- The skill runs seven audit stages: contradictions, broken links, sourcing, raw-file coverage, stale articles (over 90 days), style fixes, and new article ideas (e.g. [[BJ Fogg]]-style habit recipes). It produces a report and an action menu.
- Claude then executes the action list, adding new articles, updating the index, and logging the run.

### Final Results (33:39–34:53)
A re-asked question gives a richer answer. He adds a rule so reports show up as clickable files in chat.

### Day 1 vs Day 100 (34:53–end)
Day one the base is modest. By day 100 it's an asset nobody else has. Then comes the pitch for his Cowork OS template.

## Key Concepts & Frameworks
- **LLM-as-librarian** — the AI organizes, links, and indexes your notes. You only capture and ask.
- **Schema file (`CLAUDE.md`)** — the rules Claude reads before touching the base.
- **Compounding loop** — saved answers become source material for future answers.
- **Health check** — periodic quality control so errors don't snowball.

## Action Items
- [ ] Decide on a single topic for your first knowledge base. Starting narrow works better.
- [ ] Create `raw/`, `wiki/`, `outputs/`, `CLAUDE.md`, and a change log.
- [ ] Add a rule up front that every answer gets saved to `outputs/`, so you skip his stumble.
- [ ] Dump 10–20 sources, then run the build-wiki prompt.
- [ ] Ask a "biggest gaps" question to see what's missing.
- [ ] Set up a monthly health check once you trust the output.

## Critical Notes
- **"No Obsidian" is a bit of a false choice.** It's all plain markdown, so Obsidian can open these exact folders as a vault. You could run this inside an existing vault and get graph view for free.
- **Usage cost is real.** The wiki build and the health check both ate heavily into a Max plan session. On a smaller plan, expect to work in chunks.
- **It's partly a sales funnel.** There are repeated plugs for his Cowork OS, an accelerator program, and a starter kit. The core method is free to copy without any of it.
- **Some steps are glossed over.** He skips the Brief Buddy phone app, didn't show how he got Notion pages converted, and never resolved the PDF and image ingestion quality.
- **Caption errors in the transcript below:** "Kapathy"/"Kapathi"/"Kapy" = Karpathy, "clawed MD"/"Clawude MD" = CLAUDE.md, "Mchuan" = Greg McKeown, "Forte" = Tiago Forte, "BJ fog" = BJ Fogg, "Gretch and Rubin" = Gretchen Rubin, "Whisper Flow" = Wispr Flow. "Xcode" as a markdown tool is odd but may be what he said. "Corey Gam" is unclear.

**Worth watching in full?** Only 3:56–11:20 (setup) and 24:22–33:39 (health check) if you'll actually build it.

---

## Transcript
*Auto-generated captions, left unedited.*

#### Build Karpathy's AI Knowledge Base in Claude

**0:00** For years, I've used a second brain. This might be the simplest, most powerful self-arning personal knowledge

**0:06** base I've ever discovered. Built with Claude, and I'm going to show you how to do it. Hi. At the start of 2026, one of

**0:13** the most respected voices in AI quietly posted how he runs his own personal

**0:18** knowledge base, a second brain where you hold all your information and make connections and use it to inform what

**0:23** you do. 105,000 people bookmarked it, and probably almost none of them have

**0:28** built one. And that's the problem. This is genuinely the most useful AI setup I've seen in months and implemented in

**0:35** Claude. And it takes probably 45 minutes to build over a weekend. No obsidian, no

**0:41** vector databases, no code, just a brilliant self-improving knowledge base.

**0:46** Here's exactly what you're getting in this video. I'm going to show you the architecture, the whole system in 60

**0:53** seconds. I'm going to show you the framework of how to build it and build it with you right now on this video. And

**0:59** then I'm going to show you the Claude skill that helps you audit it and help it improve and maintain itself over

**1:06** time. The five-step framework is this. You set it up. You dump your information

**1:12** into it. You then get AI to build a wiki. You ask it questions and create a compounding link to save answers back

**1:19** into it. And with a health check and that loop, it just keeps improving over time. So, by the end of this video,

**1:25** you'll know exactly what the system is, why it beats every Obsidian Plus plug-in setup you can find for simplicity, and

**1:32** how to build your own right now with Claude. Now, I found that day one of running it, your knowledge base is pretty basic, but day 100, it's a

**1:39** company asset that nobody else has. Your perspective, your sources, your judgment

**1:44** in one place. So, double check you're actually subscribed to Systems Made Better right now because YouTube might

**1:50** just be feeding you this anyway. And let's get on with all becoming significantly more intelligent very quickly.

#### My Claude CoWork Knowledge Base: System Overview

**1:59** So, here's the top level design in just 60 seconds before we go ahead and build it. Essentially, you're looking at three

**2:06** folders and one file on your computer that Claude looks at. I'm putting this

**2:11** right inside my co-work OS and I'm going to be adding it to the templated system

**2:16** soon. You've got a Claude MD at the top of the knowledge base which is the schema. It directs Claude on how to read

**2:22** it and use it. You've then got three folders. Raw. Think of raw as your junk drawer. Articles, notes, screenshots,

**2:29** meetings. You just everything goes in here and you save it and you don't organize it. Then you've got the wiki where AI writes the organized version.

**2:37** You never edit this by hand. It's all done by the AI. And then you've got outputs, answers, briefings, and reports

**2:43** that the AI generates when you ask it questions. Now, the best bit is those then get fed back in and help to refine

**2:49** it, plus one file at the root. Yeah, the clawed MD. And you could have multiple versions of this within essentially a

**2:56** top level folder where it all sits. That means you can have multiple knowledge bases all connected together. That's it.

**3:01** No database, no obsidian, no vault setup, just folders and text files on your computer. And before you ask, no,

**3:08** you don't need a rag embedding or any vector store if you know what all that stuff is. Kapathy's own knowledge base

**3:15** is around a 100 articles and 400,000 words. And the LLM handles it fine,

**3:20** maintaining an index and reading what it needs. If it works for one of the most respected AI researchers alive, it'll

**3:27** probably work for your business. The best thing like what I've done in my notion agent OS is you can then point a

**3:33** custom agent at that knowledge base and it becomes a specialist agent expert that you can speak with. It can use the

**3:40** knowledge to work on problems with you. But that is for another video on the channel. I'll be sharing a video soon

**3:46** about how I'm turning bodies of work from expert thinkers into personal assistants that help me on my business.

**3:52** It's totally [music] wild. And we're doing that in both Notion and Claude.

#### The Claude Build - System Setup

**3:59** Okay, I am doing this in Claude Co-work. We've got a new window open and I'm pointing it at my main Cowwork OS

**4:05** folder. So, basically, I have everything in one folder on my home, the local,

**4:11** there's a Claude Co-work folder. Everything happens in here. You just direct at it. And I've got instructions like about me files and all of that. But

**4:17** watch my how to get set up on co-work first if you want to do that. But we're going to add a new folder in here called

**4:23** knowledge. There it is. Going to drop it in at the top level. We're going to go back to Claude and we're going to set

**4:29** this up. So, I use Whisper Flow to instruct Claude on what I want to build. Link in the description. This is what

**4:34** we're going to say. I want to build a self-improving knowledge base that you manage as a librarian. Let's start and

**4:41** make a folder structure inside the new folder I've added in your Claude Co-work folder called knowledge. Inside that I

**4:48** want three subfolders. We want raw, wiki, and outputs. Plus, drop a clawed

**4:55** MD file in the root. And I'll show you what is going to go in that in a moment.

**5:01** And what you could do is give it context of what you're doing. So, we could say for context, here is Andre Kapathi's

**5:09** explanation of what we're about to build, but we're going to be doing this locally rather than with Obsidian. I'm

**5:14** going to use Opus 4.7 because it's intelligent and it will do the work, but probably don't need it. And there it is. It's turned up. It's dropped those in.

**5:22** I'm going to just rename this so it's clearer. We'll call it knowledge base.

**5:27** So, interestingly, you couldn't read the Twitter thread, but I'll just put it in here. Here's the information for you

**5:33** from that thread. However, I'm going to take you through step by step what I want.

**5:39** Now, if we go back and take a look at the folder, we've got our knowledge base. Now what we might want to do at

**5:44** our top level is create another one secondary knowledge and we could drop the whole thing inside that and we could

**5:51** give it a subject. So what do we want this to be on? Why don't we make this one on productivity? All right, I've

**5:57** dropped what we just built into another top level folder which is called second brain knowledge and that's going to be

**6:04** the top level where we can create multiple versions of knowledge bases. So based on this information and what we've

**6:11** created, please create me another claude MD file for that folder which will

**6:16** explain the basic layout when a new knowledge base is created in its folder.

**6:22** Second, I've renamed the knowledge folder to be a productivity knowledge base, which is what we're going to do.

**6:27** And here is a basic template of what I think the Claude MD file for each

**6:33** knowledge base should look like. But please make suggestions and a plan for how we could make this really strong and

**6:39** improve on it. And then what I've got is a little example of what I think it might look like. So something like this,

**6:45** how it's organized, what it does. So we're going to drop that in. Okay, great. And you can work with Claude to

**6:51** improve this. So giving it that Kapathy example, it said these are things that

**6:56** we're going to need in your Claude MD. So I'm going to add these in. We want to make it standardized. We want to know

**7:03** how health checks work and when and how to ingest stuff. It's got a plan. Okay, great. I think ultimately we will set

**7:10** this to be active as a librarian or between active and aggressive. I think I

**7:16** will do this using scheduled tasks and we'll set those up in a bit. But first of all, I think the main job is to write

**7:23** the basic Claude MD file for how this is going to work with your best suggestions

**7:28** to keep it clean and simple, but powerful and effective. In terms of ingesting material, this will just be me

**7:36** doing this manually, but it wouldn't be unhelpful for us to add the option for you to work with me and guide me through

**7:42** it in a process. So, you could work that in to the top level Claude MD. But I

**7:47** would like to on the first pass of this knowledge base input a load of stuff and then you would build the wiki from

**7:52** there. So let's just create the first instructions. And as for monthly health checks, we'll come to that later in

**7:58** detail. But this is a basic suggestion of how this might work. And I'm going to paste what I've written in. Review the

**8:03** entire wiki directory. Flag contradictions between articles, find topics mentioned, list claims not backed

**8:09** by a source, etc. Please write your proposed top level second brain MD and

**8:16** then knowledgebased MD for the productivity knowledge base example we're building. So what I'm essentially

**8:21** asking it to do is based on this feedback is build me its best version and it's informed by that capy article

**8:30** that we showed it earlier which was here. So it's kind of going to follow this process and it's now building what

**8:36** we need. So in the second brain knowledge base we have a top level one

**8:41** is a container for multiple knowledge bases and when it creates a new one we ask it to do that and this is how the

**8:47** system works and how they are independent. Nice. And then the detailed behavior is for each system. That's

**8:54** great. Then it should be working on one in here. And now it's building this for us. So it suggested that the top level

**9:00** file would have a guided ingestion mode to call on. You can see what it's up to here. Okay. done it. And here we go.

**9:07** Now, what I do want to make sure I've done in my actual Claude MD, we open this up. The focused areas. So, there's

**9:14** three specific themes this knowledge base will deepen. I'm going to change that. This knowledge base is focused on

**9:21** the ethos of doing less but better, finding a balanced approach to a greater

**9:27** contribution to the world, deeper thinking, and stronger output whilst

**9:32** managing health, happiness, and balance in your life. So the themes are attention and energy management, systems

**9:40** design, deep work, essentialism and effective contributions

**9:47** through productivity principles. Now, one question I have is

**9:52** whether we need a memory file that simply lists when the last action was

**9:58** taken so that the process that's automated knows what is new in the raw

**10:05** files and what is already processed. Good. So, it agrees that we need a

**10:11** memory to make sure that it knows when it last processed something and we can add that in. This is great. We're all

**10:17** set. Now, of course, you can do all of this manually, but I really like the idea of this being quite automated.

**10:22** Great. It will make that on the first pass. Excellent. Now, of course, I'm building this as I go. I'm learning it

**10:27** as I go, and I will share my final templated version for this linked below if you want to try it, but it will be

**10:33** part of Cowwork OS. So, check that out after this. So, step one is essentially that, build that system out. And so what

**10:40** we should now have is a knowledge base with the MD ready to go which will

**10:46** explain how everything works. It it talks us through the process, the folder structure and what the change log MD

**10:54** will be doubling as a systems memory. It talks it through how to do things. You don't need to worry too much about that

**10:59** right now. Uh that is the plan and you can ask Claude to do it for you. We've then got our outputs which will be

**11:05** things that it creates for me, raw and wiki. So, next up, [music] we need to do step two, which is the dump. And I think

**11:11** this probably for most people might take like 10 minutes just to find everything they currently have and put it into the

**11:16** raw folder. Pretty simple. I'm just going to do that quite quickly. [music]

#### The Claude Build - Information Dump

**11:23** The issue many people miss about using a second brain [music] first. Now, if you've spent any time on Twitter X,

**11:29** you've watched the same cycle play out a hundred times. People post a screenshot

**11:34** of their Obsidian Vault or Notion setup, linked notes everywhere, graph views, plugins, people bookmark it, and then

**11:41** you kind of forget about it. And to be honest, I've tried this myself. I've built these in notion on my computer and

**11:48** everywhere. This is the simplest way, but this is the point about a second brain as well. We find something

**11:53** brilliant, we save it, and then we lose it. The fix is a second brain that actually works intelligently for you.

**11:59** Okay, great. So, next I want to uh ingest and dump all of my current

**12:04** knowledge on productivity into our first trial knowledge base, the productivity knowledge base. To do this, why don't

**12:11** you find 10 to 20 strong entries in my knowledge base in notion that can be

**12:16** found here. So, what I'm going to do is jump over to notion, go into my knowledge and research, and we've got a

**12:22** bunch of stuff in here. So, I'm just going to give it the link to this database. So why don't we actually like

**12:27** view the entire database and get the link to it. We'll go back in, paste that there. I may also attach a couple of

**12:33** files here for you. So you can of course also click this and just add files or entire folders, whatever you want to do,

**12:39** but we're just going to try this as a little example. And while that happens, I'll show you how that's working in

**12:44** customize in Claude Co-work. We can go to connectors and I've connected up

**12:50** notion. So it means that it can now go and action find and draw stuff from it. So this is just an example, but it's

**12:56** also worth saying that in my system I have an about me section and a context map. And that context map shows all of

**13:04** the key databases in notion which it can read from. So in many ways it should

**13:09** have already known that I didn't actually have to show it. But I really like that approach to have a context map. I think try to find good examples

**13:17** of longer form entries and clippings, articles or quotes from books that have been added rather than the AI research

**13:24** sets. Now, while it does that, I want to say something to you. You don't need to be tidy when you do this. Just copy and

**13:30** paste articles, notes, screenshots, meetings, transcripts into RAW. You can even just paste them into the chat and

**13:37** get the AI to add them for you. Don't make this pretty. The point is it's a folder for capture. The organization is

**13:44** the AI's job. And that is why this is so nice to do. For example, here's a blog from Cal Newport on deep working. And

**13:51** what I might do is just literally take all of that, copy it, and paste it in here. Please add this from Cal Newport's

**13:58** deep work post. PS. When we add stuff to the RAW file, you just add this as an MD

**14:03** file. Images can also be attached into it from me. For example, I've got a my

**14:08** PDF here of how to build a a Gentic business. I'm just going to take that and drop it into raw. PDFs are probably

**14:16** harder to read. I think the AI has more trouble with that, but I'm going to put it in as a test. Great. So, it's

**14:21** fetching a bunch of stuff from Notion as an example here. Now, one little tip though, if you're doing this manually,

**14:27** you can use Xcode. It's a free Mac desktop app. In there, you can create

**14:32** markdown files. So, I've just pasted an article into one from Gretch and Rubin

**14:37** here and added it into the folder. So really quickly, you've added something in. So if you want to do that, you just

**14:43** are going to open Xcode. You're going to do file, new from template, and you just

**14:49** want to find markdown file. You just select that, create a new file, and you can name it,

**14:56** drop it in, and you're good to go. Basically, that's how it would work. So that' be a really quick way to manually

**15:02** add markdown files in. But for a lot of people, um, you'll probably be able to just share the information with Claude

**15:08** and get it put in. That does cost credits though, so it's up to you how you want to do it. If you do choose to

**15:13** use Obsidian, they have a great web clipper browser extension that converts any page into a clean markdown file in

**15:20** one click. And that's free. So that's worth checking out. So here we go. We've got a bunch of things in here. We've

**15:25** added them all as markdown files. We've got the PDF that I added. We've also got

**15:31** the one I added using Xcode. Similar situation. And you can of course also

**15:36** just go in to your downloads folder and just drop images in. So there's a JPEG

**15:42** there which is a nice example of the process that we're working through by Corey Gam. Cool. So we've got our raw

**15:49** input. Uh my Claude system also created an ingested [music] uh registry. So it

**15:55** talks about when everything went in, which is useful. Okay, step three is build the wiki. This probably would take

**16:02** you around 30 minutes. You're going to point Claude at the folder and give it one prompt.

#### The Claude Build - Create the Wiki

**16:11** Read everything in RAW and compile a wiki in the wiki folder following the

**16:16** rules in your Clawude MD. Create the index MD first, then one MD file per

**16:23** major topic and link related topics. And then you basically walk away and let it do the job. What you come back to is

**16:30** information organized topic pages with summaries, connections between ideas you didn't know existed, an index that makes

**16:37** everything searchable in second. Now, the problem with something like notion or obsidian to manage a second brain for

**16:43** knowledge like this is that they kind of ask you to be the librarian. You organize things yourself. You make the

**16:49** links. You manage the tags and folders. You configure plugins, all the rest of it, and then it kind of goes by the

**16:55** wayside. What I think Kapathy has figured out with this approach using LLMs is that the AI becomes the

**17:02** librarian. You dump information in, Claude organizes and links it, summarizes it and indexes it. And by the

**17:08** end, it's learning and improving on its own, helping you actually apply the

**17:13** knowledge to output. Think what this could do for your team, your business, or just your personal output as someone

**17:20** exploring ideas and work. Okay, so it's working through. You'll see it's created a index. It's written foundational

**17:27** articles and then it's going to do method articles, thematic articles, and then write a questions MD and a change

**17:33** log. Now, one little tip when you get your AI to do this is to make sure that it's read your anti-AI writing style

**17:42** guide. Now, what that actually looks like in my world is a very similar

**17:47** process to what I've done in my Cowwork OS template. I have this templated in there, and it's really a writing rules

**17:54** MD. And this is built on the Wikipedia anti-AII writing style. So if you look up AI writing style on Wikipedia, paste

**18:01** that into Claude and say create yourself instructions to never do any of this. It just avoids bad writing essentially. I'm

**18:07** not going to go into it much further than that. But I've made sure that Claude as it's writing its wiki, which

**18:13** you can see it's starting to happen here. Look, we're getting all these different things. It's doing that using

**18:19** the writing style guide. It's also great to see here, if we just take a little look, there's loads of information going

**18:25** in, but it takes up so little storage. 4KB, it's nothing. Uh, and this is the

**18:32** joy of MD files. So, let's see where it's got to. Now, I suspect you may be aware that this process is quite

**18:38** demanding. In order to pull this off, you are going to probably either need to do it in sessions or you're going to

**18:43** want to be included on a max plan like I am. So, if we go and look in settings,

**18:49** let's take a little look. I've been doing other things on here, but under usage, we're 39% into my current

**18:54** session. And actually, great news. Claude recently announced that they are doubling usage limits across sessions

**19:02** and during peak hours. That's not weekly limits, but it is session limits. And

**19:08** you can, of course, turn on extra usage, but I don't recommend it. I just got a free spend, which is nice. Okay, so we

**19:15** have now built our first knowledge base. We've got our top level knowledge base here. We've got a Claude MD that

**19:21** instructors how to build knowledge bases and their structure and what they look

**19:27** like, which means that this can be a global knowledge base with lots of individual ones. And we've got that.

**19:33** I've actually got a little memory file here which shows us that I have a place where I keep my projects that I'm

**19:39** working on. And this is really just a memory and a project beef brief for building a project knowledge base. So,

**19:44** you don't need to worry about that. And then this is what you've built. You've built a project knowledge base. It has a change log with the most recent entries

**19:53** when things have happened and it has the main claude MD that instructs the system

**19:58** how to work. So when you do this, make sure you download the templates to get you started on the process from the link

**20:04** below. Then we have our raw. So I've got a bunch of example raw entries. They're all things that have just gone in like

**20:10** this. And then we have our wiki which is all of the things it's created. So it created an index which shows the key

**20:17** concepts within the system so far. And then within that we then have all of the

**20:22** individual entries for like specific subjects. So effortless state, energy

**20:28** management, habit formation. So you see these become themes, frameworks,

**20:34** templated [music] ideas that are directed by the system.

#### Creating A Compounding Loop: Self-Improvement in Claude

**20:40** So now we need to ask it questions and get things out of it. [music] And it's this process that actually changes

**20:46** everything because every time you ask the agent a question you like the answer to, you can then save that back into raw

**20:53** or into the wiki and the system gets smarter the more you use it. So each question makes the next answer better

**21:01** and that is because it's gone into outputs. So what we're going to do is just test this first of all. So I'm

**21:06** going to start a new window. I'd like to test out my new productivity knowledge base and I have a question to ask you

**21:14** based on the knowledge base. What's the best way for me to balance achieving a

**21:19** huge amount in a short amount of time whilst managing my energy, happiness,

**21:24** and health? So, it's found the productivity knowledge base. It's reading the index. That's promising.

**21:29** Reading the most relevant wiki entries. So, this is a test. It should end up in here. It's comparing Newport, Mchuan,

**21:37** and Burkeman and Forte all covering this answer. You can't win both simultaneously. Trying to is what

**21:43** produces burnout. So, you can't do loads of work and rest. So, seven things the

**21:49** knowledge base says about that I can actually do. This is really cool. I really like this. And it's referencing where stuff is coming from. The test

**21:56** went well. The wiki had the article and every angle of your question. This is all great. Okay, so we now need to check

**22:01** if it actually did an output. Let's have a look. Well, it didn't. So, okay, this is great. But we should have a rule

**22:07** within this system which is when I ask a question, the report is generated into

**22:13** outputs so that we are gaining deeper insights. So, please a update the claude

**22:21** MD to ensure that this is always the case. B, turn this into a report that

**22:27** goes into outputs and C, then rerun the process with this query. Based on

**22:32** everything in the wiki, what are the three biggest gaps in my understanding of this topic? So, we go back in here.

**22:39** Please make sure you first reread the Claude MD for the knowledge base as I've now updated the topic focus. And I'm

**22:45** also going to add one more thing in here, which is write me a 500word briefing on doing less but better using

**22:52** only what's in the knowledge base. Great. So I'm going to ask that. So we're doing a couple of things here. First of all, we're refining the system

**22:58** to make sure that it um always generates reports into outputs. Secondly, we want

**23:06** to turn the report it's just created into outputs. And thirdly, I'm going to give it two further tests uh answering

**23:12** these two questions. And I'm asking it to make sure it rereads the claude MD for the knowledge base. And now I've

**23:17** updated the topic focus. So if we go and take a little look at the outputs and look at what it's written for us, we can

**23:24** see some great results here. It's saying it's looked at all the articles and it said it has almost nothing on the

**23:30** journey from where most people start. Overcommitted, fragmented detention, default on connectivity. Cool. It's

**23:36** missing the mechanics of stopping. And then it's got real decision method for

**23:42** what counts as essential. That's missing. It's missing working with other people. Interestingly, it generally

**23:47** presumes that you're working on your own. This is really cool. So, what we could now do is go and use this to feed

**23:55** into the updates and improvements. And we can actually get the AI to build and

**24:00** improve on itself. Make sure that your instructions say read the outputs and work from there. So, now I'm going to

**24:06** show you step five, which is the health check. And this one really matters. The AI will sometimes write something

**24:12** slightly wrong. You'll save it back and the next answer quietly builds on a mistake. So once a month, you want to

**24:19** audit this. And the prompt is going to be something like this.

#### System Health Check: Claude CoWork Scheduled Task

**24:26** Now, [music] I'm going to show you in a moment how to build a scheduled task and a skill to do that, but first let's just

**24:32** do this really simply. And to do it, I'm actually just going to point this directly at the folder to demo this.

**24:38** We'll go into co-work. We'll go into knowledge base and this folder.

**24:46** So, if you just do this manually, you want to say something like this. Please review the entire productivity knowledge

**24:51** base wiki. Flag contradictions and inconsistent data between articles. Find

**24:57** missing data and fill the gaps with web search. list claims not backed by a source in raw and suggest connections

**25:06** between articles I haven't drawn yet and three new article candidates. So this is

**25:11** quality control. The one thing I am going to write here though is please do not invoke my health check skill. This

**25:19** is a demo of just doing it clean with this instruction because I've created a health check skill. Let's try it. And

**25:24** for now, as this is a demo, actually, please just share your results and changes in the chat. Don't edit anything

**25:31** currently in the wikis. I'm just going to say that as well cuz I want to you to see the kind of thing it's going to do.

**25:36** So, what you can see it's now doing is reading through the wiki and the system and making a complete audit of the

**25:43** knowledge base. Now, you would just set this going, leave it, and come back. But even better, we can schedule it. And

**25:48** while it does that, I'll show you what that scheduled task looks like. If we go into scheduled, we now have this

**25:55** knowledgebased monthly health check. All I did here was ask the system to create

**26:01** me a automated health check comprising of a knowledgebased health check skill

**26:08** that it would create with its skill creator plug-in. And it basically says

**26:13** go through and do the things that we've just asked for based on the skill. You can set this up so that it runs on

**26:20** different times. But interestingly, you can have a custom schedule. So if you ask it when you speak in the chat to

**26:27** build you a skill that is monthly, it can do that. Uh not just follow the

**26:32** options that are in the selectors. And that's it. Basically, it's ready to go. And you can get it to act without

**26:38** pausing for approval if you want. That's an option. So I'm going to save that for now. And then if we go into customize,

**26:45** I've also created in skills this knowledgebased health check skill. And this will work its way through the

**26:52** process. And it does it in two phases. It has a first audit and file process where it reads my writing rules guide

**26:59** for anything that it's going to write. It reads the change log, the wiki, and what's been ingested as well as the

**27:06** outputs that have been created since the last last health check. And then it runs a sevenstage audit. And the seven stages

**27:13** are these contradictions, broken back links and orphaned references, source

**27:18** provenence, coverage that the raw files have, stale articles, anything that's

**27:24** out of date, older than 90 days and not relevant, and suggested new articles. And then this is a report template of

**27:30** how it gives a report. It then has a second phase which is if you're doing this interactively, if you're actually

**27:35** directly asking for it, it will also ask which findings to action in ask us use a question. So it means you can kind of go

**27:42** through it fully and then fully uh commit it into phase one. It will just give us a report that we can then ask to

**27:47** be actioned later on. Now I'm creating a templated version of this for you guys so you can just download it via the link

**27:53** in the description and use it. But for now let's go and see what our example is up to. And here is our audit. Let's see

**27:59** what it says. Effort versus effortlessness are contradictions. Inconsistent numbers and framing. Nice.

**28:07** It's cleaning up attribution drift. unsourced and undersourced claims.

**28:12** Building a second brain, mood first, productivity, it's not captured the link, habit formation, so on and so

**28:19** forth. Gaps the wiki has, there's no underlying research for the cathedral effect. We don't have the book, an

**28:25** unprocessed file that we haven't ingested. Great. That's something I added recently, an unaccounted JPEG. And

**28:31** then it's found some really interesting connections that we might not have seen. So, quick verdict. It's unusually clean

**28:39** for an early stage knowledge base. All looks pretty solid. Main weaknesses, attribution, unprocessed raw files, not

**28:46** naming the underlying study, philosophical contradictions. Okay, great. We'll leave this here as I'm now

**28:51** going to start a new session and compare this with my skill and triggered

**28:57** scheduled task to see how the results compare. So now we're going to start again and let's run my scheduled task.

**29:03** So we could actually go to scheduled, click into the scheduled task and click run. Now as simple as that. Now if we go

**29:10** into the knowledge base. So you can see it's now um implemented the

**29:15** knowledgebased health check skill. It's following that now and reading my writing rules. These are anti-AII

**29:21** writing rules. We can see that it's going to have checked the latest uh item in the change log. So these are the

**29:30** latest updates. It's working chronologically. It's then going to read through all of the other files and we

**29:36** should see it now work. So, let's let that run and see what we get back. Oh, and if you're interested in this item

**29:42** here, push summary to Brief Buddy, I've actually created myself a little reporting app that is automatically

**29:48** updated and turns up on my phone. You don't need to do this. uh the system will just essentially uh you'll see when

**29:55** the scheduled task has run you'll see a little um blue dot for something and you

**30:00** can go and look at that and find the report and the brief. So this for example is another scheduled task that I'm running and essentially draft stuff

**30:06** so I can then go and look at them and work on it. So when this goes blue we'll be ready to see what's happened. Okay, great. So that took it about 12 minutes.

**30:14** Now it is worth remembering that this probably is going to cost a few credits to do it. That's why I'm only scheduling

**30:19** this to be monthly and you might want to do it for each knowledge base you build on a different day so you don't just use

**30:25** all your credits up. But it's a really useful thing to be doing to make it powerful. So we can see it turned up.

**30:30** You don't really need anything more than that. If you come into Claude, you'll see that this has happened and we can click on it in either position. We can

**30:36** go in and take a look and we can see it's completed it. It's run that. It's filed a report. The Brief Buddy thing

**30:43** I'll need to problem solve, but to be honest with you, I don't really need it to do that. and it will show them to us here. But we can just go over to our

**30:49** folders to see what's happened. The change log first of all will have been updated today. There you go. Health

**30:55** check first run and it's reported on what's happened. So the system will know where it's at. That's great. And then in

**31:02** output we can see here is our health check. There you go. We've got the wiki is unusually well aligned. It's done a

**31:07** similar thing. New candidates. So it's gone through and looked at the issues and discoveries. No stale articles. It's

**31:16** cleaned up some band words, American spelling, and then we've got suggested

**31:21** new articles. This is probably where the real value is. So, it's suggesting we look at collaborative productivity, good

**31:27** habit recipes, looking at BJ fog, interesting. And we've got effort versus

**31:33** effortlessness, making the frame easy, accepting strain inside. Interesting. And then it's got an action menu. So,

**31:40** for phase two, things that it could run. And we could now ask it to run those things and we will get that automatic

**31:47** update. So this is a reasonably like in-depth process. You could always simplify it. It really comes down to

**31:53** what you want to do. But check out the templated options in the description and you can take it from there. Or if you're

**31:59** downloading my Cowwork OS, it will be baked in. So as a final example here, I'm going to get it to actually update.

**32:05** Please see the latest health check in your productivity knowledge base and run the action list from it on that

**32:12** knowledge base. Now, what you can see is it's it's written itself a great list. It's applying the writing rule fixes.

**32:17** It's adding the new stuff to ingest, drafting the new articles, and then it's going to update everything, which is

**32:24** great. It's worth saying, I think, for most people once you've tested it in these two stages, it's quite easy for

**32:30** you just to have it automatically do it. So, you could just say, just do the work, report, and action. I think that's

**32:36** better. and potentially you kind of refine your instructions to make it rigorous but not cost you loads and

**32:42** loads of credits as an example for the example that we've run. So the first one

**32:47** I did without the skills then the one with the skill and this the usage on my

**32:53** max plan for this current session is at 45%. That's on a 5x max plan. So that's

**32:58** significant use of credits but once a month for a really powerful knowledge base not too bad. Let me know in the

**33:04** comments how you feel about that. And here we go. We've got the results. It's created new articles on habit receipts,

**33:12** working with others, and effort versus effortlessness into the gaps that were missing. It's updated the index

**33:19** questions and change logs, and they're all ingested, which is really cool. It's

**33:24** given me a bit of feedback about some web search stuff, and then it's created the documents. And if we go and check

**33:30** out the files, we'll see the new items have been ingested and the new entries

**33:36** in the wiki have been added, which is great.

#### Final Results

**33:42** So it should be that we now get a very different result. So if we ask in a new task, take a look at the productivity

**33:49** knowledge base and give me a report on how I can balance making serious and

**33:56** useful effort versus making my week and days feel effortless in how I contribute

**34:02** to my life. These are just examples, right? But let's just drop it in and see what it gives us. And it's created it. Now, annoyingly, it's not presented it

**34:08** to me. Please, can you update your clawed MD files and the templated one for knowledge bases?

**34:15** so that any report that's created in response to a question is presented as a clickable page to open in the chat.

**34:23** Great. There we go. And it's now shown it to me. So, I can actually click on it and read it. And this is what it's given

**34:28** us, a little report. Now, here's a nice little tip. If you ever want to make your learning easier when you're doing

**34:34** this, I use speechify to read things back to me. So, I can just do controloption A and it reads it. The

**34:41** question, how can I balance making serious and useful effort versus making my week and days feel effortless in how

**34:46** I contribute to my life? Those are the five steps to [music] building, refining, and using a knowledge base

**34:51** that learns as it goes. So, here's the bit you need to remember

#### The 1 Day vs 100 Day Transformation To Aim For

**34:57** [music] to take away with you. Day one of running this, your knowledge base isn't going to do loads. It's got

**35:03** whatever you dumped in over the weekend, useful, but not revolutionary. But day 100, then you've actually built

**35:09** something valuable. Every meeting transcript that mattered, every answer you've saved back into the system

**35:15** becomes a carefully cured, cross-referenced, linked, and summarized set of information that you can query

**35:22** with the librarian themselves. And it's that kind of asset that's nearly impossible to replicate because nobody

**35:28** else has read what you've read or saved what you've saved. So, if you only do one thing from any video I make this

**35:34** year, do this. It's 45 minutes on a Saturday morning and you'll thank yourself in 3 months. One last thing,

**35:41** everything we built today, the folders, the Claude MD, the prompt, the health check, they all ship inside the final

**35:48** version of my Claude Cowork OS when it comes out. It's in beta as I film this and you can download it right now. It's

**35:54** been brilliantly received so far. The whole point of it is to help you skip past the fiddly setup bits and land on a

**36:00** workingclaw environment faster than most people manage on their own. It's been a gamecher for me and a lot of others

**36:07** using it. And of course, you can watch the video that shows you exactly how to do all of that right here. I'll see you

**36:13** on the next one. Bye.
