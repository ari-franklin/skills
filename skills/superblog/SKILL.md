---
name: superblog
description: Write, reshape, and critique product-thinking blog posts in Arif Franklin's style. Use when the user asks to turn an idea, note, story, draft, meeting insight, or product lesson into a blog post, incubate whether an idea is worth writing, outline an essay, revise a draft, compress a long post, or match the voice of the local superblog samples.
license: MIT
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

## Required Output Format

When Superloop is used, its output must explicitly show:

- the selected steps (Explain / Prioritize / Decompose / Validate)
- the output produced by each selected step

Use the structure in `references/output-contract.md`:

ROUTING DECISION -> (Selected Path, Routing Confidence, Reason) -> selected mode sections -> FINAL TAKEAWAY

## When To Use

Use this skill when the user:

- Gives a rough idea and asks if it has enough weight for a post
- Wants to turn a work story, product lesson, or mental model into an essay
- Asks for a blog outline, draft, rewrite, critique, title set, or compression
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

Use samples sparingly for calibration:

- `samples/mvp-is-not-a-thing.md`
- `samples/real-options-as-a-mental-model.md`

The other sample files may be placeholders. Do not infer style from empty files.

## Companion Skill: Superloop

Invoke `superloop` when the blog work needs deeper reasoning before prose work continues. Superblog owns the writing voice, article shape, and final draft. Superloop owns reasoning route selection when the idea, claim, or structure needs validation, prioritization, decomposition, or explanation.

Use `superloop` before drafting when:

- The thesis is interesting but not yet defensible
- The user gives several possible angles and asks which one matters most
- The argument contains a causal claim that should be tested
- The draft feels plausible but the underlying reasoning may be weak
- The post needs the idea decomposed into clearer subclaims or decision points

After `superloop` returns its reasoning output, translate the conclusion back into the superblog workflow and continue with `incubate`, `outline`, `draft`, `critique`, or `compress`.

## Core Rules

1. Start with the strongest claim, not the topic category.
2. Anchor abstract advice in a lived or plausible workplace moment.
3. Prefer principles, constraints, and tradeoffs over step-by-step process worship.
4. Treat AI as a useful tool, not the center of every product lesson unless the user's topic requires it.
5. Keep the writing plainspoken and reflective. Avoid consultant polish, hype, and LinkedIn-style certainty.
6. Make the argument useful to product managers, designers, engineers, and leaders trying to work better under uncertainty.
7. Preserve tension. Good posts should show the pressure, ambiguity, or conflict that made the lesson matter.
8. Avoid generic "in today's fast-paced world" openings and tidy numbered-list essays unless the content genuinely calls for a list.

## Workflow

### 1. Choose The Mode

Infer the mode from the request:

- `incubate`: test whether an idea has enough tension, novelty, and usefulness
- `outline`: shape the argument before drafting
- `draft`: write the post
- `critique`: identify what is weak and how to improve it
- `compress`: shorten without flattening the idea

If the user's request is vague, default to `incubate`.

If the vague request is also conceptually messy, route through `superloop` first to clarify the reasoning need before writing.

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

If any of these are weak, fix the argument before polishing prose.

If the weakness is logical rather than stylistic, invoke `superloop` for validation or decomposition before continuing.

### 4. Draft In The Target Shape

Prefer this shape unless the material suggests a better one:

1. Open with a concrete moment, friction, or provocative claim.
2. Name the false binary or common mistake.
3. Reframe with a principle, mental model, or constraint.
4. Ground the reframe in a real product/work example.
5. Show how the idea applies beyond the story.
6. Name pitfalls or limits.
7. End with a concise takeaway that sounds earned.

### 5. Revise For Superblog Fit

Check the draft against the references:

- Does the post argue from practice rather than detached expertise?
- Is the thesis specific enough to disagree with?
- Is there a memorable phrase or mental model?
- Does the piece avoid generic agile/product platitudes?
- Are examples doing real explanatory work?
- Does the ending sharpen the idea instead of merely summarizing it?

## Output Formats

Use the matching script file in `scripts/` as the output contract:

- `scripts/incubate.md`
- `scripts/outline.md`
- `scripts/draft.md`
- `scripts/critique.md`
- `scripts/compress.md`

When writing a complete post, include:

- 5-10 title options
- A one-sentence thesis
- the superloop workflow chosen and its outputs
- a compressed viral version to share on LinkedIn
- The draft
- A short revision note listing the two or three biggest improvement opportunities
