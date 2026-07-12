# Skulto: Making AI Skills Resusable

### A way to finally help AI remember more and allow teams to do more with it

Ari Franklin

2026-01-29

I’m excited to announce Skulto: an open source app for discovering, inspecting, installing, and managing agent skills across different AI agents.

**Here’s how to use it**

*Open Source GitHub*: https://github.com/asteroid-belt/skulto

Install: brew install asteroid-belt/tap/skulto

The reason we created it has less to do with tools and more to do with how work actuall flows. We built it because today when teams use AI its hard to adhere to standards and write code with consistent quality.

I’m not a technical person. You might not be either. So I want to explain why I’m excited about AI skills, and why I think Skulto can matter even if you never plan to write code.

**Last year, ChatGPT added Projects.**

It allowed you to group related conversations, come back later, and the system would carry some memory of what you were working on. It wasn’t perfect, but for the first time, it didn’t treat every thread as if it were your first.

That moment stuck with me because it made something obvious: when AI remembers more, you can do more with it.

Many conversations about AI focus on better prompting. IMO that isn’t where the real friction shows up. The real issues are in the second, third, and fourth time you have to remind it of your intent, constraints, and taste. It sucks when you put hours into a conversation only to realize you solved part of the same problem yesterday in a different thread. Now your options are all bad. You either abandon today’s progress or rebuild the same context again in your new thread.

It’s like having the same meeting over and over again or debating the same things repeatedly. Individually, that’s frustrating. For teams, it’s stagnating.

When context resets, teams lose focus and can’t work efficiently. With AI one person’s setup never quite matches another’s. Two people ask the same question and get different answers. And no one can point to a shared source of truth for what “good” looks like.

I care about context because that’s how quality accumulates through context. For any software team, quality comes from context that carries forward, not one-off moments of brilliance.

Over time, teams learn where their standards sit. They learn which constraints protect quality and which ones are just noise. They develop a shared sense of judgment that survives more than one session, sprint, or release.

Applying that of accumulated contextual knowledge is what makes lasting quality. You can see it in writing as tone that holds across drafts, in design as component libraries and style-guides that prevent inconsistent experiences, or in product work as decision rights that don’t need to be re-litigated every time.

Most AI tools today interrupt that process.

They treat each interaction as a clean room. People may learn, but the system doesn’t. As a result, the AI’s output quality suffers even when the team knows better.

## **Where Skulto fits**

**Last fall, Anthropic added Skills.**

At first glance, it looked like a way to organize prompts. But it offered a potential way to finally **help AI remember more and allow teams to do more with it**.

Skulto came out of running into that idea repeatedly while trying to work with multiple AI agents on teams.

We are setting a foundation. Before you can preserve context, you need a way to *see* what you’re reusing. You need a way to manage skills across agents, understand what they do, and trust that they won’t do something unexpected. Without that foundation, “memory” is just another abstraction layered on top of chaos.

*Skulto* is building that foundation.

*Skulto* is an open source registry (free marketplace) of AI skills where teams can discover, inspect, and manage skills, then use them across the agents they already rely on, whether that’s Claude, ChatGPT, or something else.

### What Skulto actually does today

In practice, *Skulto* is a **CLI and TUI app** (so yes, it requires a small amount of technical comfort) for discovering, inspecting, installing, and managing agent skills across different AI agents.

It exists to solve the problem that once teams use more than one agent it becomes hard to tell what’s trusted, what’s been modified, or what’s safe to reuse.

Here’s what *Skulto* does, and why each part exists:

- **A single control surface (CLI + TUI)**: One place to manage skills so shared practices don’t fragment across tools.

- **A real starting library:** 420+ curated skills and six starter skills so teams can align around examples instead of inventing from scratch.

- **Search inside skills:** Find what a skill actually does by searching its instructions, not just its name.

- **Tag-based browsing:** Explore skills by intent rather than repository structure.

- **A built-in skill creator:** Turn an idea into a reusable skill using structured specifications instead of ad-hoc prompting.

- **Security scanning:** Automatically scan skills for risky behavior so reuse doesn’t require blind trust.

- **Works across agents and projects:** Install globally or per project, with updates kept in sync so learning stays portable.

- **GitHub repository support:** Add, scan, and update any repository from the CLI instead of copying and forgetting.

- **Offline-first behavior:** Skills continue to work even when conditions aren’t perfect.

We are the only product on the market that scans skills for nefarious code, and the only one that combines a command-line interface with a managed database of skills usable across multiple agents. That matters because without trust in skills, reuse fails long before context is even needed.

*Skulto* is focused on making reuse safe, visible, and manageable. That’s the groundwork. Context can’t compound if the building blocks aren’t stable.

When those blocks are in place, quality has something to build on. And when that happens, teams can finally move forward instead of paying the same learning costs over and over again.

If you’ve ever felt that the best part of your team’s process is the part the tool doesn’t remember, you already understand the problem. The opportunity now is to design for continuity, and see what becomes possible when quality has somewhere solid to live.

I hope you try it out. Tell me what you build.

*Open Source GitHub*: https://github.com/asteroid-belt/skulto

Install: brew install asteroid-belt/tap/skulto
