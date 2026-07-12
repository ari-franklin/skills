# AI Coding for individuals vs teams

### Great for "me," but not for "we"...?

Ari Franklin

2026-01-12

I’ve worked in software for decades, but never as a code contributor. My first line of code was vibe-coded a few years ago, and it was genuinely eye-opening.

Suddenly, all the ideas and small tools I’d always carried around in my head felt doable. Things I’d previously dismissed as “not worth the effort” now felt within reach.

Through sharing my excitement with engineers I know I began to notice how every developer carries a set of preferences honed into instinct, like how tests should be written, tabs versus spaces, how much abstraction feels right, what “clean” means, where to trade safety for speed, and so on.

Those preferences work beautifully at the individual level. But on a team where building is collaborative they have to do more than coexist: they have to overlap constructively, complement each other, and sometimes give way.

As I shared, it became clear that AI tools don’t seem to help much with this. And I’m starting to wonder if that’s why we don’t hear more stories about teams AI-coding together at scale.

### **Where I see inconsistencies accumulate**

Let me show you what this looks like in reality. Last month, I watched three developers on the same team each use AI to add error handling to different parts of their application.

- Developer A’s AI-generated code threw custom exceptions with detailed context objects.

- Developer B’s code returned Result types with explicit error enums.

- Developer C’s code used simple boolean returns with errors logged internally.

Or consider testing. One developer’s AI generated comprehensive unit tests with extensive mocking. Another’s produced integration tests that spun up a full database for each test run. A third leaned on property-based tests with randomly generated inputs. Meanwhile, the rest of the team’s AI-generated code often shipped with minimal or no tests at all.

This team’s CI pipeline was a Frankenstein’s monster with some tests running in milliseconds, others minutes, and new developers had to adopt multiple testing philosophies and toolchains just to contribute.

These are more than style issues a linter can fix. They’re architectural decisions that teams normally negotiate explicitly but that AI makes implicitly, file by file, developer by developer.

image caption: None of this was intentional. Each choice made sense locally. The inconsistency emerged only when those choices met each other in the same system.

### **AI fits individual style better than collective agreement**

My inspection keeps coming back to the belief that software only survives because coding is deeply collective, and that the real craft of building durable systems lives in the tension between individual expression and shared constraint.

Good teams aren’t aligned because everyone thinks the same way, but because they’ve negotiated a set of agreements they can rely on one another to honor.

AI tools, as they exist today, seem to fit cleanly into only one side of that equation. They adapt beautifully to individual style, mirroring how you think and reinforcing your instincts.

But good teams depend on consistency more than cleverness, and on predictability more than brilliance. What AI lacks is participation in the collective work teams do around the code to build that consistency.

### **How could AI be better for teams**

Recently, I’ve been thinking about AI Skills as a way the economics and constraints of team coordination might change. What seemed “not worth the effort” before might be more within reach than ever. The question becomes: how do teams make their shared preferences tangible enough that AI can participate without dissolving it?

I see three emerging directions worth exploring:

**Explicit team context through Skills.** Instead of each developer configuring their AI individually, what if teams created shared Skills that encode the decisions they’ve already made together? A “Backend Error Handling” skill, for example, could specify: “Use custom exceptions in the API layer, result types in the domain layer, log but don’t throw in background jobs.” This treats AI less like a solo assistant and more like a new team member who’s been onboarded into team conventions.

**AI-augmented code review focused on consistency.** Most teams use AI to generate code, but its value might show up just as much on the review side. A skill that knows team patterns could help with PR review to make the inconsistencies easier to catch. A reviewer juggling multiple PRs might miss a subtle shift in error-handling style but an AI that knows the team’s usual patterns wouldn’t. This reframes AI from “code producer” to “alignment aid.”

**Skills as living team agreements.** If Skills become visible artifacts that teams discuss, refine, and version control alongside their code, they start to function like living agreements. The conversation changes from “what did you tell your AI?” after the fact to “what should our shared Skills encode?”. When testing practices drift, you update the Skill and everyone’s AI adapts together.

None of these are complete solutions. The tools barely exist yet, and the practices are still being invented. But they share a common insight: the problem isn’t making AI smarter at writing code in isolation. It’s making our collective agreements visible and enforceable in a world where much of our code is generated rather than hand-written.

### **The real challenge to think about next**

AI doesn’t mind idiosyncrasies or provisional decisions. In fact, it often amplifies them. That’s a feature when you’re working alone and a liability when you’re trying to build something with other people that lasts.

The work of alignment has always been part of software teams. What’s changing is how easy it is to bypass that work while still producing something that looks plausible.

The question isn’t whether AI can help individual developers be more productive. It clearly can. The harder question is whether we can design AI-assisted workflows that make team agreements more visible.

I don’t think this is a solved problem yet. But I’m increasingly convinced it’s the one that will determine whether AI coding tools will simply keep individuals moving faster or actually help teams think together.
