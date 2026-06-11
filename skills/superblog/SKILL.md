---
name: superblog
description: Write, reshape, and critique product-thinking blog posts in Arif Franklin's style. Use when the user asks to turn an idea, note, story, draft, meeting insight, or product lesson into a blog post, incubate whether an idea is worth writing, outline an essay, revise a draft, create visual storytelling support, compress a long post, or match the voice of the local superblog samples.
license: private
metadata:
  author: arifranklin
  companion-skills:
    - superloop
  version: "1.0"
---

# Superblog

Create thoughtful product, leadership, and software-practice essays that sound like a practitioner working through a real lesson, not a generic thought-leadership article.

## Outcome

Produce one of these deliverables:

- A judgment on whether an idea is worth turning into a post
- A sharp thesis and article direction
- A structured outline with story beats and section intent
- A draft blog post in the target voice
- A critique with concrete revision moves
- A compressed version of an existing draft that preserves the argument
- One or two image briefs that translate the post's argument into grounded visual concepts
- One explanatory diagram that clarifies a structure, flow, lifecycle, timeline, or change
- A Substack-ready HTML version of a finished post, designed for direct copy/paste into a Substack draft


## When To Use

Use this skill when the user:

- Gives a rough idea and asks if it has enough weight for a post
- Wants to turn a work story, product lesson, or mental model into an essay
- Asks for a blog outline, draft, rewrite, critique, title set, or compression
- Asks for image ideas, cover art, or visual prompts for a finished post or strong outline
- Asks for a diagram, Mermaid, flowchart, sequence, lifecycle, timeline, or visual explanation of the argument
- Asks for a Substack-ready, HTML, copy/paste-ready, or publication-formatted version of a post
- Wants writing to resemble the samples in `samples/`
- Needs product-thinking content around Lean, XP, agile, autonomy, values, principles, constraints, resilience, uncertainty, decision-making, or AI's effect on product work

Do not use this skill for:

- General copywriting, landing pages, or marketing copy
- Academic papers or research summaries
- Social posts unless the user explicitly wants a blog post adapted into smaller pieces

## Source Material

Load only the references needed for the requested task:

- `references/voice-and-tone.md`: voice, sentence style, and stance
- `references/writing-patterns.md`: article shapes and section flow
- `references/audience.md`: reader assumptions and relevance filters
- `references/recurring-themes.md`: preferred conceptual territory
- `references/visual-metaphors.md`: concrete analogy patterns
- `references/argument-depth.md`: depth gates for non-obvious, non-surface-level posts
- `references/image-style.md`: visual taste, composition rules, and image-brief standards
- `references/visual-storytelling.md`: how to choose images, diagrams, tables, timelines, and charts from the article's argument
- `references/diagrams.md`: Mermaid diagram selection, syntax guardrails, and fallback rules
- `references/substack-html-output.md`: Substack-ready HTML formatting contract

Use samples sparingly for calibration:

- `samples/mvp-is-not-a-thing.md`
- `samples/real-options-as-a-mental-model.md`
- `samples/be-a-weed-resilience-isnt-grit-its-adaptation.md`
- `samples/lean-xp-isnt-for-acceleration.md`
- `samples/how-a-real-team-used-principles-and-constraints.md`
- `samples/lessons-from-office-space-conditions-for-empowerment.md`

All sample files should contain complete posts. If a sample is empty or marked as a placeholder, ignore it for voice calibration and flag the package issue.

## Companion Skill: Superloop

Invoke `superloop` when the blog work needs deeper reasoning before prose work continues. Superblog owns the writing voice, article shape, and final draft. Superloop owns reasoning route selection when the idea, claim, or structure needs validation, prioritization, decomposition, or explanation.

Use `superloop` before drafting when:

- The thesis is interesting but not yet defensible
- The user gives several possible angles and asks which one matters most
- The argument contains a causal claim that should be tested
- The draft feels plausible but the underlying reasoning may be weak
- The post needs the idea decomposed into clearer subclaims or decision points

After `superloop` returns its reasoning output, translate the conclusion back into the superblog workflow and continue with `incubate`, `outline`, `draft`, `critique`, or `compress`.

## Required When Superloop Is Used

If Superblog invokes Superloop at any point, the Superblog output MUST include the Superloop output in the Superloop output-contract format:

- ROUTING DECISION (Selected Path, Routing Confidence, Reason)
- Sections for each selected step (Explain / Prioritize / Decompose / Validate)
- FINAL TAKEAWAY

This is required even if the user only asked for a draft — the reasoning route and outputs should remain visible unless the user explicitly says to hide them.

## Core Rules

1. Start with the strongest claim, not the topic category.
2. Anchor abstract advice in a lived or plausible workplace moment.
3. Prefer principles, constraints, and tradeoffs over step-by-step process worship.
4. Treat AI as a useful tool, not the center of every product lesson unless the user's topic requires it.
5. Keep the writing plainspoken and reflective. Avoid consultant polish, hype, and LinkedIn-style certainty.
6. Make the argument useful to product managers, designers, engineers, and leaders trying to work better under uncertainty.
7. Preserve tension. Good posts should show the pressure, ambiguity, or conflict that made the lesson matter.
8. Avoid generic "in today's fast-paced world" openings and tidy numbered-list essays unless the content genuinely calls for a list.
9. Do not return a surface-level draft. If the article could be summarized as a tidy heuristic without losing much, it is not deep enough yet.
10. A post needs at least one of: a real scene, a specific observed example, a sharp counterargument, or a surprising second-order implication. Prefer two or more.
11. Do not stack single-line paragraphs. They are emphasis devices, not the default rhythm. A full draft should usually have zero or one single-line paragraph outside headings, lists, quotes, and section transitions.

## Workflow

### 1. Choose The Mode

Infer the mode from the request:

- `incubate`: test whether an idea has enough tension, novelty, and usefulness
- `outline`: shape the argument before drafting
- `draft`: write the post
- `critique`: identify what is weak and how to improve it
- `compress`: shorten without flattening the idea
- `image-brief`: create 1-2 visual concepts and image-generation prompts for a finished post or strong outline
- `diagram`: create one explanatory Mermaid diagram or ASCII fallback for a finished post, strong outline, or HTML artifact
- `substack-html`: create a Substack-ready HTML page from a finished draft for direct copy/paste into Substack

If the user's request is vague, default to `incubate`.

If the vague request is also conceptually messy, route through `superloop` first to clarify the reasoning need before writing.

Use `image-brief` only after the argument is clear enough to visualize. Do not create images from a weak topic label; first outline, draft, or clarify the thesis and tension.

Use `diagram` only when the post explains a structure, flow, lifecycle, timeline, system interaction, or before/after change. Do not add a diagram merely to make the post look richer.

Use `substack-html` only when there is a finished or near-finished post. If the post does not exist yet, draft or outline first, then format. Do not use Substack formatting to hide a weak argument.

### 2. Clarify Only When Needed

Ask at most three questions if the missing context would materially change the post:

- What real situation or story should ground the piece?
- Who is the intended reader?
- What should the reader believe or do differently after reading?

If the user asks for momentum or gives enough context, proceed with explicit assumptions.

### 3. Build The Argument

Before drafting, identify:

- Core thesis
- Reader tension
- Concrete story or scenario
- Opposing interpretation
- Principle or mental model
- Practical implication
- Ending turn
- Specific evidence from experience, observation, or credible inference
- Second-order consequence: what changes because this claim is true?

If any of these are weak, fix the argument before polishing prose.

If the weakness is logical rather than stylistic, invoke `superloop` for validation or decomposition before continuing.

Do not draft until the idea passes these depth gates:

- The thesis is more than a slogan and could be disagreed with by a thoughtful reader.
- The piece has a concrete scene or example that does explanatory work, not decorative work.
- The post names what a smart person might believe instead.
- The practical implication changes a decision, not just a mindset.
- The article has a reason to be longer than a LinkedIn post.

If these gates fail and the user has not provided the missing story or evidence, either ask for the missing material or write from an explicitly labeled hypothetical/observed pattern. Do not invent personal experience.

Load `references/argument-depth.md` when the idea feels tidy, familiar, short, or likely to become a generic essay. Use it to strengthen the mechanism, counterargument, evidence, and consequence before drafting.

### 4. Identify Visual Story Opportunities

When the user asks for visual storytelling, a visual artifact, diagrams, images, Substack HTML, or a more memorable article shape, load `references/visual-storytelling.md`.

Identify whether the article needs:

- an image to make the tension felt
- a diagram to make structure visible
- a table to make a comparison scannable
- a timeline to make change legible
- a callout or decision test to make application easy

Only add visual devices after the thesis, reader tension, and story sequence are stable. If no visual device reduces reader effort, say so and keep the post prose-led.

### 5. Draft In The Target Shape

Prefer this shape unless the material suggests a better one:

1. Open with a concrete moment, friction, or provocative claim.
2. Name the false binary or common mistake.
3. Reframe with a principle, mental model, or constraint.
4. Ground the reframe in a real product/work example.
5. Show how the idea applies beyond the story.
6. Name pitfalls or limits.
7. End with a concise takeaway that sounds earned.

For a full blog post, default to a substantive draft rather than a short essay. Aim for enough development to carry:

- an opening scene or friction
- the old rule or default belief
- why that rule used to work
- what changed
- what did not change
- the upgraded principle
- a concrete example or contrast
- the failure mode
- the practical test or decision rule
- the ending turn

If the result is underdeveloped, keep drafting instead of returning revision notes that tell the user to add the missing substance.

### 6. Revise For Superblog Fit

Check the draft against the references:

- Does the post argue from practice rather than detached expertise?
- Is the thesis specific enough to disagree with?
- Is there a memorable phrase or mental model?
- Does the piece avoid generic agile/product platitudes?
- Are examples doing real explanatory work?
- Does the ending sharpen the idea instead of merely summarizing it?
- Would a reader who already agrees with the headline still learn something?
- Is there enough story, specificity, and friction to avoid sounding like an AI summary?
- Are most body paragraphs developed into 2-5 sentence units with a clear idea, reason, and consequence?
- Are there more than one or two single-line body paragraphs? If yes, merge or develop them before returning the draft.
- Does any one-line paragraph earn its emphasis by landing a major turn, or is it just creating artificial drama?

### 7. Create Image Briefs When Requested

Create image briefs after the outline or draft has a stable thesis. Load `references/image-style.md`, `references/visual-metaphors.md`, and `scripts/image-brief.md`.

Prefer 1-2 image concepts per post. Each concept must clarify the argument or tension, not merely decorate the topic. If the user asks to generate the actual images, use the available `imagegen` capability after the brief is clear.

### 8. Create Diagrams When Requested Or Clearly Useful

Create diagrams after the outline or draft has a stable argument and the idea has a shape worth making visible. Load `references/visual-storytelling.md`, `references/diagrams.md`, and `scripts/diagram.md`.

Prefer one diagram per post unless the user explicitly asks for more. Each diagram must clarify the argument's structure, flow, lifecycle, timeline, system interaction, or before/after change. If the diagram does not reduce reader effort, omit it.

When adding a diagram to an HTML artifact, use `<pre class="mermaid">...</pre>` for Mermaid and include an ASCII or prose fallback when the point is important enough to survive a failed render.

### 9. Create Substack-Ready HTML When Requested

Create a Substack-ready HTML page when the user asks for HTML, Substack formatting, a copy/paste-ready draft, or a publication-ready visual layout.

Load `references/substack-html-output.md`, `references/visual-storytelling.md`, and `references/image-style.md`. If the artifact includes diagrams, also load `references/diagrams.md`.

The HTML version should:

- preserve the final blog post as the canonical content
- include publication-ready visual formatting that can be copied into a Substack draft
- use images, subscribe buttons, dividers, pull quotes, block quotes, and callout blocks only where they improve readability
- use diagrams only where they explain a structure or change that prose would make harder to follow
- include image placeholders or generated/local image references depending on what the user requested and what assets exist
- avoid turning the article into a busy landing page
- provide a directly openable `.html` file unless the user asks for a framework-backed artifact

## Output Formats

Use the matching script file in `scripts/` as the output contract:

- `scripts/incubate.md`
- `scripts/outline.md`
- `scripts/draft.md`
- `scripts/critique.md`
- `scripts/compress.md`
- `scripts/image-brief.md`
- `scripts/diagram.md`
- `references/substack-html-output.md`

When writing a complete post, include:

- 5-10 title options
- A one-sentence thesis
- Superloop workflow and outputs, if Superloop was invoked
- The draft
- A compressed LinkedIn version, if useful or requested
- 1-2 image briefs, if useful or requested
- One explanatory diagram, if useful or requested
- A Substack-ready HTML artifact, if useful or requested
- A short revision note listing the two or three biggest improvement opportunities
