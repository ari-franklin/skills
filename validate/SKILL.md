---
name: validate
description: Rigorously validate a goal-to-approach-to-action chain using evidence checks, causal coherence tests, assumption load review, and success-signal gates. Use when deciding whether an initiative, bet, or plan is sound enough to act on.
---

# Validate

Test whether the logic actually holds.

## Purpose

Validation is not style critique and not generic skepticism.

It checks whether a proposed chain is sound enough to act on:

- does this action plausibly move the approach?
- does this approach plausibly move the goal?
- is the chain evidence-backed?
- are assumptions visible and healthy?
- would success be observable if it worked?

## Inputs

It can validate:

- a goal or outcome
- an initiative, approach, or strategy
- a bet, experiment, or action
- a full chain such as `goal -> approach -> action`

## When To Activate

Use when the user asks things like:

- "Does this actually make sense?"
- "Validate this plan"
- "Where is the logic weak?"
- "Are we solving the right thing?"
- "Is this chain sound enough to proceed?"

## Validation Ladder

Run the checks in this order:

1. `chain completeness`
2. `evidence quality`
3. `causal coherence`
4. `success clarity`
5. `assumption load`

Do not skip to verdict before all five are checked.

## Readiness Gates

### Gate 1: The Claim Is Legible

State the object being validated and the implied claim.

Examples:

- "If we do X, Y will improve."
- "This initiative is the right vehicle for this goal."
- "This experiment is worth running now."

If the claim is fuzzy, rewrite it before validating.

### Gate 2: The Chain Shape Is Known

Classify the chain as:

- `complete`
- `partial`
- `broken`
- `implied`

Do not repair missing links silently.

### Gate 3: There Is At Least Minimal Evidence

Grade evidence:

- `strong`
- `moderate`
- `weak`
- `missing`

If evidence is `missing`, the skill may still validate structure, but the verdict must be capped accordingly.

## Operating Sequence

### Phase 1: Load The Chain

Identify the relevant:

- goal or outcome
- approach or initiative
- action, bet, or experiment
- evidence
- assumptions
- constraints
- success signals

### Phase 2: Check Chain Completeness

Ask:

- are the links explicit?
- is anything implied but unstated?
- is the action detached from the stated goal?

### Phase 3: Check Evidence Quality

Assess:

- specificity
- recency
- consistency
- contradiction
- relevance to the claim

### Phase 4: Check Causal Coherence

Test whether:

- the approach plausibly affects the goal
- the action plausibly advances the approach
- the logic is causal rather than aspirational
- the step size is credible for the expected result

### Phase 5: Check Success Clarity

Determine whether the user could later answer:

- what would count as success?
- what would count as failure?
- what signal should move first?

### Phase 6: Check Assumption Load

Look for:

- stale assumptions
- hidden assumptions
- contradicted assumptions
- assumptions doing too much of the logical work

### Phase 7: Issue The Verdict

Use one of four verdicts:

- `green`: sound enough to proceed
- `yellow`: promising but materially incomplete
- `red`: logic is weak or broken
- `blocked`: cannot validate responsibly with the available chain or evidence

## Output Contract

```text
VALIDATION TARGET
...

READINESS
Claim:
Chain status:
Evidence grade:

VERDICT
...

WHY
...

CHAIN BREAKS
- ...

ASSUMPTION LOAD
- ...

SUCCESS SIGNALS
- ...

RECOMMENDED CORRECTIONS
1. ...
2. ...

WHAT WOULD INCREASE CONFIDENCE
- ...
```

## Guardrails

1. Do not treat a complete-looking chain as a sound chain.
2. Do not hide missing links behind polished prose.
3. Do not let optimism substitute for causal logic.
4. Do not pass a chain that has no clear success signal.
5. If the real answer is "not enough to validate," return `blocked`.

## Failure Modes

Watch for:

- a sensible action attached to the wrong goal
- an initiative that sounds strategic but has no mechanism
- evidence that is adjacent to the claim rather than supportive of it
- assumptions carrying most of the weight in silence
- vague success language that cannot be used to decide anything
