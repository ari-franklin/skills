---
name: smart-brevitas
description: Transform messy notes, meeting transcripts, documents, and updates into crisp Axios-style briefings. Use when the user needs Smart Brevity-style communication editing, executive briefs, weekly updates, internal announcements, external announcements, signal extraction, or a ruthless rewrite that leads with what is new, important, and actionable.
license: private
metadata:
  author: arifranklin
  companion-skills:
    - superloop
  version: "0.1"
---

# Smart Brevitas

Turn dense, messy, or conversational source material into short, scannable briefings that lead with the news and respect the reader's time.

This is an editing and communication skill, not a generic summarizer. Its job is to identify the signal, cut the noise, and produce a briefing a busy reader can scan in about 30 seconds.

## Outcome

Produce one of these deliverables:

- A weekly newsletter or product update
- An external announcement or press-style briefing
- An executive brief with a clear recommendation or decision request
- A team or internal announcement
- A signal extraction pass that names the real news before drafting
- A critique of an existing communication
- A rewrite in Axios-style Smart Brevity form

## When To Use

Use this skill when the user:

- Provides meeting notes, transcripts, docs, status updates, launch notes, or messy bullets
- Wants a crisp, scannable update
- Asks for Axios-style, Smart Brevity-style, executive, internal, or announcement writing
- Needs the real news, risks, decision, or next action extracted from noisy material
- Wants a communication cut by 30-50% without losing substance

Do not use this skill for:

- Long-form essays or product-thinking blog posts; use `superblog`
- Deep strategy validation unless a brief is the final output; use `superloop` first when needed
- Legal, financial, or technical documentation where completeness matters more than scan speed
- Generic summarization that preserves all source details

## Source Material

Load only the references needed for the requested task:

- `references/smart-brevity-principles.md`: core Smart Brevity editing principles
- `references/axios-labels.md`: approved section labels and when to use them
- `references/mode-contracts.md`: mode selection and required sections
- `references/editing-rules.md`: cutting, rewriting, and quality checks
- `references/examples.md`: compact examples of before/after style

Use the matching script file in `scripts/` as the output contract:

- `scripts/weekly-update.md`
- `scripts/external-announcement.md`
- `scripts/executive-brief.md`
- `scripts/internal-announcement.md`
- `scripts/critique.md`
- `scripts/extract-signal.md`
- `scripts/rewrite.md`

## Companion Skill: Superloop

Use `superloop` sparingly.

Smart Brevitas owns the editing, compression, voice, labels, and briefing format. Superloop owns reasoning when the source material has an unclear signal, buried decision, competing priorities, weak recommendation, or causal claim that should be tested before editing.

Invoke `superloop` before drafting only when:

- The real news is unclear
- The audience or decision-maker is ambiguous
- The source contains multiple competing updates and no obvious lead
- The brief requires a recommendation or decision call
- Risks, tradeoffs, or assumptions need to be sorted before writing
- The user asks what matters before asking for the brief

Do not invoke Superloop for straightforward status updates, announcements, or rewrites where the news and audience are already clear.

If Superloop is used, keep its output brief and then translate the result into Smart Brevitas form. The final deliverable should still feel like a crisp briefing, not a reasoning memo.

## Core Rules

1. Never summarize first. First identify the news, audience, stakes, and action.
2. Lead with what is new, surprising, important, or actionable.
3. Cut 30-50% of source length by default. Preserve substance, not wording.
4. Assume the reader has about 30 seconds.
5. Put background near the bottom or cut it entirely.
6. Use authentic Axios-style labels, not invented corporate headings.
7. Bold the first 2-4 words of key bullets to create scan anchors.
8. Keep paragraphs to 1-2 sentences.
9. Use coffee-shop voice: plain, direct, human, and specific.
10. Remove jargon, passive voice, throat-clearing, and obvious context.
11. Do not fabricate quotes, facts, dates, numbers, decisions, or risks.
12. If critical context is missing, state the assumption or ask a concise question.

## Workflow

### 1. Identify The Communication Job

Infer the mode from the user request and source material:

- `weekly-update`: recurring team, product, program, or stakeholder update
- `external-announcement`: public-facing announcement, release, or press-style note
- `executive-brief`: leadership brief, recommendation, risk call, or decision request
- `internal-announcement`: team-facing change, policy, process, timeline, or action notice
- `critique`: feedback on an existing brief or draft
- `extract-signal`: identify the lead, audience, stakes, risks, and action before writing
- `rewrite`: convert existing prose into Smart Brevitas style

Default to `weekly-update` when the source is a status update and no mode is specified.

### 2. Find The Signal

Before drafting, extract:

- audience
- core news
- why it matters
- what changed
- concrete progress or facts
- risks, blockers, or tradeoffs
- decision needed, if any
- next action or next watch point
- bottom line

If the signal is genuinely unclear, use `superloop` or ask one concise question.

### 3. Select The Format

Load `references/mode-contracts.md` and the matching script file.

Use the fewest sections needed. Do not include a section just because the template allows it.

### 4. Rewrite Ruthlessly

Apply `references/editing-rules.md`.

Cut:

- repeated setup
- status theater
- obvious facts
- corporate filler
- passive explanations
- caveats that do not affect the reader's decision

Keep:

- new information
- impact
- numbers
- named decisions
- dates and deadlines
- risks and tradeoffs
- clear next actions

### 5. Quality Check

Before returning, verify:

- The headline is under 60 characters unless the user requested otherwise.
- The first section answers why the reader should care.
- The brief can be scanned without reading every word.
- Bold anchors are meaningful and not decorative.
- Every section earns its place.
- The bottom line is memorable and specific.
- No source facts were invented.

## Output Format

Return the finished brief first.

When useful, add a short editor's note after the brief with:

- mode selected
- assumptions made
- source gaps or facts to verify
- one or two notable cuts

Keep the editor's note shorter than the brief unless the user asked for critique.
