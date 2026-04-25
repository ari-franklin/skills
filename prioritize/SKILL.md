---
name: prioritize
description: Rigorously prioritize outcomes, initiatives, options, and bets using evidence gates, problem-first ranking, confidence grading, and explicit override logic. Use when deciding what matters now, what should wait, or what deserves the next concentrated push.
---

# Prioritize

Turn a messy set of choices into a defensible priority call.

## Purpose

This skill exists to improve judgment, not to produce a prettier backlog.

Use it to separate:

- importance from noise
- urgency from panic
- evidence-backed action from speculation
- reversible learning from irreversible commitment

## Inputs

It can work from:

- a user description
- a strategy note
- a doc or memo
- a list of problems, initiatives, or bets
- linked artifacts the user provides

## When To Activate

Use when the user asks things like:

- "What should we prioritize?"
- "What matters most right now?"
- "Which of these should move first?"
- "What should we do next?"
- "How would you rank these options?"

## Priority Model

This skill uses four judgment dimensions:

1. `importance`
2. `urgency`
3. `confidence`
4. `effort / reversibility`

`importance` and `urgency` drive the ranking.

`confidence` determines how hard the skill is allowed to lean on the ranking.

`effort / reversibility` is a modifier, not the main axis.

## Readiness Gates

Do not rank immediately. Clear these gates first.

### Gate 1: Scope Is Comparable

Determine whether the user is comparing:

- outcomes or problems
- initiatives or options
- bets or concrete actions
- a mixed set

If the set is mixed, normalize it into separate ranked views or an explicit causal chain before ranking.

### Gate 2: Evidence Exists

For each candidate, assess evidence quality:

- `strong`: recent, specific, consistent, decision-useful
- `moderate`: directional but incomplete
- `weak`: stale, thin, contradictory, or mostly asserted

If most candidates are `weak`, do not fake a confident ranking. Return an evidence-gapped prioritization instead.

### Gate 3: The Decision Frame Is Clear

Establish:

- what decision must be made
- by whom
- on what time horizon
- with what constraints

If this is unclear, state the assumed frame before ranking.

## Operating Sequence

### Phase 1: Build The Candidate Set

List the candidates and place each at the correct horizon:

- `outcome`
- `initiative`
- `bet`

Default to the horizon the user actually needs. If unclear, prefer the most immediate decision horizon.

### Phase 2: Grade Evidence

For each candidate, note:

- evidence quality
- recency
- contradiction level
- confidence implication

If evidence is too weak, lower confidence or stop at an evidence-gapped result.

### Phase 3: Rank Importance

Assess:

- customer or user significance
- business or strategic consequence
- metric or outcome consequence
- downside of ignoring it

### Phase 4: Rank Urgency

Assess:

- cost of delay
- time sensitivity
- compounding risk of inaction
- dependency pressure

### Phase 5: Apply Confidence And Reversibility

Adjust the ranking with:

- confidence in the evidence
- reversibility of the move
- learning value of a small bet
- risk of a large irreversible commitment

### Phase 6: Apply Override Log

Override the procedural order only when justified.

Typical reasons:

- stakeholder pressure inflated urgency without real importance
- a small, reversible bet has unusually high learning value
- a serious risk deserves elevation despite imperfect evidence
- an irreversible move is too high for the confidence level

Every override must state:

- what changed
- why it changed
- what evidence justified the override

### Phase 7: Produce The Priority Call

Return one of these outcome types:

- `ranked`: evidence strong enough to order confidently
- `conditional`: ranking depends on one or two unresolved assumptions
- `evidence-gapped`: not enough signal for a responsible ordering

## Output Contract

Use this structure unless the user asks for another format:

```text
DECISION FRAME
...

READINESS
Scope:
Evidence:
Confidence:

RANKED VIEW
1. ...
Why it matters:
Why now:
Confidence:
Evidence used:
What would reorder this:

OVERRIDE LOG
- ...

BOTTOM LINE
...
```

## Guardrails

1. Do not let tasks outrank the significance of the underlying problem.
2. Do not convert weak evidence into false precision.
3. Do not use effort as the main ranking axis.
4. Keep tactical priorities tied to strategic consequence.
5. If the right answer is "do not prioritize yet," say that directly.

## Failure Modes

Watch for:

- ranking the loudest item first
- confusing urgency with anxiety
- over-trusting a neatly formatted but weak candidate list
- treating reversibility as trivial when the blast radius is high
- collapsing a strategic decision into backlog ordering
