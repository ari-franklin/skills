# Why AI Skills Exist and Most Teams Will Struggle With Them

### From prompt engineering to environment design: why the future of AI is infrastructure, not content

Ari Franklin

2026-04-03

Most teams think agent skills are just a better way to save prompts. That misunderstanding is going to break how they scale AI.

Better prompting is not why this category exists. It exists because large language models are generalists, while real work is local.

Your company has a codebase, a style, a release process, a risk tolerance, a customer promise, a bunch of half-documented edge cases, and a long trail of hard-earned judgment about what “good” looks like. The model does not wake up knowing any of that. Out of the box, it knows the broad patterns of software, writing, analysis, and reasoning. It does not know your team or your habits, practices, or preferences.

That gap is what this category is trying to close. The opportunity is not just better outputs. It is better transfer of judgment.

I’ve already seen teams hit this wall. One person has a “magic” setup that produces clean, reliable output. Another tries to replicate it and gets something slightly off. A third copies a few prompts from Slack and ends up with something slightly different again.

Everyone is using AI. Nobody is using it the same way. And nobody can fully explain why the outputs differ.

**This category exists because organizations need a way to turn tacit judgment into portable context.**

## The real problem is not “better prompting”

Most people first encounter AI skills as a convenience layer. You install one that writes better tests. Another that reviews pull requests in your house style. Another that helps with release notes. Another that explains a codebase to new engineers.

From the outside, it looks like a bundle of reusable instructions, which is accurate but incomplete. A good skill is not just a reusable prompt. It is a decision policy in miniature.

It says:

1. Here is what to pay attention to.

2. Here is what to ignore.

3. Here is how we define quality.

4. Here is the order of operations.

5. Here is what “done” means in this environment.

That matters because the value of AI at work is rarely “the model knew something clever.” The value is usually “the model behaved in a way that matched the team’s expectations without needing to be re-taught every single time.”

That is a coordination problem, not a model problem. And coordination problems create categories.

## Why this category showed up now

Since AI emerged, teams could get away with treating tools as personal productivity software.

One person had a good prompt. Another had a better system prompt. A third built a little snippet library. None of that had to be standardized because the tools were mostly used by individuals, in isolated workflows, with low organizational visibility.

That phase is ending.

Now AI tools are being used to write code, summarize tickets, propose architecture, generate tests, review diffs, draft docs, and shape internal decisions. That means their outputs are no longer private drafts. They are entering shared systems.

The moment that happens, teams run into five problems at once:

1. **Consistency:** People want the assistant to behave similarly across users and tools.

2. **Distribution:** New teammates need the same setup without Slack archaeology.

3. **Governance:** Someone has to decide which instructions are trusted.

4. **Maintenance:** Skills drift as the codebase, process, and org change.

5. **Security:** A markdown file that can steer an agent is not harmless just because it is readable.

Once those problems appear, a category becomes inevitable because the coordination burden is real.

## Why generic AI is not enough

A common reaction is: “Won’t the models just get better and better until this is unnecessary?”

Yes, they will get better. But that does not remove the need.

Smarter general intelligence does not erase local operating context. In some ways, it makes that context more important. The more capable the model becomes, the more leverage there is in steering it toward the right defaults and away from the wrong ones.

A stronger model can write more code faster. That only increases the cost of a bad instruction set.

This is why the category should not be framed as a workaround for weak models. It is better framed as interface infrastructure between general intelligence and specific environments.

The model supplies broad capability. Skills, manifests, scanners, sync flows, and conventions supply local control. Those are different jobs.

## Most teams will fail here for a boring reason

They will treat skills as content when they should treat them as operations. Content is easy, operations are hard

Teams will install a bunch of clever skills, share them in a chat thread, maybe commit a few to the repo, and then declare that they are “using AI well.” But most of what they will actually have is scattered advice with no owner.

That approach fails for the same reason unmanaged documentation fails. I think this will be the dominant failure mode in the category.

The problem is upkeep. Almost every team can generate ten useful AI skills in a week. Very few teams can answer these questions three months later:

- Which of these skills are still current?

- Which ones are mandatory versus optional?

- Which are safe to trust?

- Which were written for a different workflow that no longer exists?

- Which outcomes got better after adoption?

- Who is responsible when the assistant follows outdated instructions?

If nobody can answer those questions, the team does not have a skill system. It has a pile.

## Why the best teams will think about this like dependency management

The important shift is a psychological one. The best teams will stop asking, “What cool skills should we install?” and start asking:

- What repeated judgments are worth standardizing?

- What context should travel with the project instead of with a person?

- What instructions are important enough to version, review, and distribute?

- What guardrails do we need before these instructions touch production work?

This is where the real opportunity starts to become visible. The teams that win here will not just install better skills. They will build better systems for distributing, updating, and trusting them.

That is why package management, manifests, sync flows, and scanning matter so much. They are not just implementation details. They are signs that the category is maturing from personal hacks into team infrastructure.

If skills become operational, they need the same things as any other dependency: versioning, distribution, scanning, trust. That’s the gap tools like Skulto are trying to fill.

## The deeper reason most teams struggle

Most organizations are bad at turning tacit knowledge into explicit systems. That weakness existed long before AI.

Teams say things like “Jane just knows how to handle migrations safely,” or “You kind of learn what good looks like after a while” or “There are edge cases here, but it is hard to explain,” or “We don’t really have a checklist. People just know.”

AI skills expose that weakness because they force a choice.

Either you make your operating judgment explicit enough to encode, or you keep paying for rediscovery in every prompt, every review cycle, and every new hire ramp.

*That* is uncomfortable. It’s much easier to buy a tool than to formalize a standard.

So many teams will fail because they do the easy part: adopt the interface for skills, manifests, or marketplaces then stop before the harder work of deciding what their assistants should actually be taught.

## side note: security is *not* a side note

One reason the category exists, and will keep growing, is that these files are not passive. They shape behavior. In agentic workflows, behavior is power.

That means the trust model matters. Teams that would never curl | bash random shell scripts are still surprisingly willing to drop unreviewed instruction files into an assistant that can inspect code, run commands, and propose changes with authority. They see markdown and assume “harmless.” They should not.

The marketplace explosion increases the value of scanning and provenance, not decreases it. More supply is good for discovery, but it also expands the surface area for bad assumptions, malicious instructions, and low-quality cargo culting.

This is another place where the opportunity splits in two. One layer of the market will help people discover skills. Another layer will help teams trust them. Those are not the same job.

The general lesson is larger than any one tool: If a file can steer an AI agent inside a production environment, that file belongs in your operational trust model.

## So why does this category exist?

Because organizations need a layer between raw model capability and local execution.

They need a way to package judgment, to distribute context. To keep teams aligned across tools and to audit what their assistants are being taught.

That is the category. Not “prompt libraries.” Not “AI tips and tricks.” Not “power-user customization.”

A new operating layer for making general-purpose models useful inside specific systems.

## What the winners will understand

The teams that get value here will treat skills the way mature engineering orgs treat other important interfaces. They’ll keep the useful ones close to the work, version what matters, review what gets shared, measure whether the instructions actually improve outcomes, expect stale skills to become liabilities, and distinguish discovery from distribution.

Most teams, at least at first, will over-install, under-govern, and confuse novelty with leverage.

That is normal for a new category. But it also means the long-term winners in this space probably will not be the teams with the biggest skill libraries. They’ll be the teams with the clearest operational discipline around what their AI systems are allowed to learn, reuse, and trust.

But that’s a much less glamorous story than “the marketplace has 350,000 skills now.”

## The bottom line

This is why this category is here to stay. Not because prompts needed a better home, but because teams need a way to manage how their systems behave.

The moment a skill becomes important enough that you want everyone to use it, you’re no longer talking about personalization. You’re designing an environment. And environments come with requirements: standardization, distribution, maintenance, and trust.

Most teams will stop short of that.

A smaller group will do something harder. They’ll treat judgment like infrastructure. Something that can be encoded, versioned, distributed, and trusted.

That’s why Skulto’s place in the category. That’s the leverage.

If you want to go deeper on the technical side, Adam Cobb’s piece on why package management and scanning still matter after marketplace growth is here, and TJ Maynes’s piece on why a manifest matters for team-wide skill coordination is here.actually what would you recommend
