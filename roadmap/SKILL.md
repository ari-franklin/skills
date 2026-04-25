---
name: roadmap
description: Methodically choose and frame roadmap variations based on audience, use case, certainty, horizon, and track structure. Use when deciding what kind of roadmap to show, how to shape it for a specific audience, or how to turn messy product inputs into a clear roadmap recommendation.
---

# Roadmap

Choose the right roadmap shape for the communication job.

## Purpose

Most roadmap problems are not formatting problems.

They are framing problems:

- wrong audience
- wrong level of certainty
- wrong horizon
- wrong structure
- wrong promise implied by the artifact

This skill helps the user choose a roadmap render that fits the situation before they start drafting slides, docs, or visuals.

## Inputs

It can work from:

- a product strategy summary
- a list of initiatives or bets
- a planning memo
- a set of notes or constraints
- a description of the audience and meeting

## When To Activate

Use when the user asks things like:

- "What kind of roadmap should I show?"
- "How should I frame this roadmap for execs?"
- "Give me a few roadmap variations for this audience"
- "What roadmap format fits this use case?"
- "Turn these inputs into a roadmap recommendation"

## Roadmap Model

Choose across five dimensions:

1. `audience`
2. `use_case`
3. `certainty_mode`
4. `horizon`
5. `track_structure`

### Audience

- `self`
- `team`
- `exec`
- `board`
- `customer`
- `public`

### Use Case

- `continuity`
- `alignment`
- `decision_support`
- `status`
- `external_communication`

### Certainty Mode

- `exploratory`
- `directional`
- `committed`

### Horizon

- `now_next_later`
- `quarterly`
- `half_year`
- `annual`
- `strategic`

### Track Structure

- `single_thread`
- `multiple_strategic_tracks`
- `portfolio_bets`

## Base Render Families

This skill recommends among four common render families:

### Outcome Roadmap

Best when the user needs a clear directional view around an outcome and near-term bets.

### Strategy Choice Map

Best when the user needs to compare options, tradeoffs, and decision paths.

### Milestones And Markers

Best when the user needs to communicate progress, sequencing, and visible checkpoints.

### Opportunity Solution Tree

Best when the user needs to show branching paths from opportunity to solution options.

## Readiness Gates

### Gate 1: Communication Job Is Clear

Identify:

- who the roadmap is for
- what the roadmap must help them do
- what decision or alignment job it serves

If unclear, ask for it or produce a comparison matrix instead of one recommendation.

### Gate 2: Certainty Is Honest

Do not present an exploratory situation as committed.

If the evidence is thin, default toward `exploratory` or `directional`.

### Gate 3: Source Material Can Support The Shape

Determine whether the inputs are rich enough for:

- directional framing only
- a structured recommendation
- a near-draft render outline

If the source material is weak, recommend a render family and outline rather than fabricated content.

## Operating Sequence

### Phase 1: Define The Render Brief

Capture:

- audience
- use case
- timeframe or horizon
- certainty mode
- constraints
- desired outcome
- source quality

### Phase 2: Recommend The Primary Format

Use these defaults:

- `alignment` + `team` -> `outcome_roadmap`
- `decision_support` + `exec/board` -> `strategy_choice_map`
- `status` + `exec/board` -> `milestones_and_markers`
- `external_communication` -> `outcome_roadmap` or a conservative milestone view

If the situation does not fit cleanly, recommend 2-3 variants.

### Phase 3: Shape The Horizon

Choose the time framing that matches the communication job:

- immediate coordination -> `now_next_later`
- operating visibility -> `quarterly`
- medium planning -> `half_year`
- external or leader framing -> `annual` or `strategic`

### Phase 4: Shape The Track Structure

Choose whether the roadmap should read as:

- one dominant thread
- several strategic tracks
- a portfolio of bets

### Phase 5: Produce Variations

Recommend:

- one primary render
- one or two alternates

For each variation, explain:

- why it fits
- what it makes legible
- what it hides
- when it would be the wrong choice

## Output Contract

```text
RENDER BRIEF
Audience:
Use case:
Certainty:
Horizon:
Track structure:

PRIMARY RECOMMENDATION
Format:
Why this fits:
What it should emphasize:
What it should avoid implying:

ALTERNATIVES
1. ...
Why you would use it:
Risk:

2. ...
Why you would use it:
Risk:

DRAFT OUTLINE
1. ...
2. ...

INPUT GAPS
- ...
```

## Guardrails

1. Do not recommend a roadmap style that implies more certainty than the inputs justify.
2. Do not confuse a status update with a strategy artifact.
3. Do not choose a format only because it is familiar or slide-friendly.
4. Do not flatten a multi-track strategy into a single-thread story when the tradeoffs matter.
5. If the audience or use case is unclear, return a comparison instead of a fake-confident single answer.

## Failure Modes

Watch for:

- executive audiences receiving team-operating detail
- customer-facing roadmaps overpromising certainty
- status artifacts pretending to be strategy
- roadmap formats chosen before the communication job is defined
