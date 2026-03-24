---
name: decompose
description: Rigorously decompose product outcomes and initiatives into leverage points, workstreams, hypotheses, and bets using lens-aware reasoning. Use when breaking down an outcome into opportunities and initiatives, or an initiative into workstreams and bets, especially when multiple decomposition frames are plausible.
---

# Decompose Product Work

Turn an `outcome` or `initiative` into a structured breakdown that preserves product logic instead of collapsing directly into tasks.

## Philosophy

Decomposition is not just making a big thing smaller.

Good decomposition chooses the right framing for where leverage lives, then breaks the object into coherent parts that improve strategy and execution.

This skill should not:

- jump from outcomes to tasks
- decompose by org chart when causal structure matters more
- flatten discovery-heavy work into delivery checklists
- pretend one breakdown is obviously correct when ambiguity is high

## Invocation

Use this skill when the user asks things like:

- "Break this outcome down"
- "How should we decompose this initiative?"
- "What are the workstreams here?"
- "What are the main levers?"
- "How do we turn this into actionable bets?"

## Supported Starting Objects

### Outcome

Default path:

`outcome -> opportunities/levers -> initiatives`

### Initiative

Default path:

`initiative -> workstreams + hypotheses/experiments -> bets`

## Decomposition Lenses

This skill supports four lenses.

### Outcome Lens

Use when the key question is:

- what must become true?
- what leverage points can move the outcome?

### Behavior Lens

Use when the key question is:

- what user, system, or workflow behaviors must change?

### Structure Lens

Use when the key question is:

- what workstreams, systems, components, or ownership boundaries exist?

### Mixed Lens

Use when one lens alone hides important coupling, ambiguity, or strategic tradeoffs.

## Procedure

### Phase 1: Load the Target

Read the selected outcome or initiative plus linked memory:

- metrics
- assumptions
- decisions
- constraints
- linked initiatives or bets
- evidence quality and recency

### Phase 2: Assess Decomposition Ambiguity

Check whether the object is:

- already bounded
- multi-causal
- under-specified
- tightly coupled
- discovery-heavy or delivery-heavy

If ambiguity is high, do not force a single decomposition path too early.

### Phase 3: Choose the Primary Lens

Defaults:

- from `outcome`: outcome lens
- from `initiative`: structure + behavior mix

If ambiguity is high, produce 2-3 plausible decomposition candidates and recommend one.

### Phase 4: Generate Candidate Decomposition

For an `outcome`, default to:

- outcome
- opportunities or levers
- recommended initiatives

For an `initiative`, default to:

- initiative
- workstreams
- hypotheses or experiments where relevant
- recommended bets

### Phase 5: Stress-Test the Decomposition

Check whether the breakdown:

- covers the main causal paths
- avoids premature solutioning
- exposes important unknowns
- is actionable enough to use
- avoids fake completeness

### Phase 6: Recommend a Path

If multiple candidates exist, explain:

- why one is preferred
- what the alternatives optimize for
- when an alternative would be better

### Phase 7: Produce Output

Return:

- chosen decomposition
- alternative candidates when ambiguity is high
- rationale for the chosen lens
- assumptions
- unresolved questions
- recommended next initiatives or bets

## Output Format

### From Outcome

```text
OUTCOME
...

RECOMMENDED LENS
...

OPPORTUNITIES / LEVERS
1. ...
2. ...

RECOMMENDED INITIATIVES
1. ...
2. ...

ASSUMPTIONS
- ...

OPEN QUESTIONS
- ...
```

### From Initiative

```text
INITIATIVE
...

RECOMMENDED LENS
...

WORKSTREAMS
1. ...
2. ...

HYPOTHESES / EXPERIMENTS
1. ...
2. ...

RECOMMENDED BETS
1. ...
2. ...

ASSUMPTIONS
- ...

OPEN QUESTIONS
- ...
```

## Failure Modes

Watch for:

- decomposing by ownership when the problem is causal
- reducing an ambiguous initiative to a tidy but shallow tree
- skipping uncertainty and assumptions
- pretending there is only one valid decomposition lens when there are meaningful alternatives

## Judgment Standard

Act like a product strategist and systems thinker, not a task splitter.

If the object is too ambiguous to decompose confidently, say so and show the competing decomposition candidates instead of faking certainty.
