---
name: decompose
description: Methodically break a goal, outcome, initiative, or problem into leverage points, workstreams, hypotheses, and bets using explicit lens selection, ambiguity checks, and decomposition stress tests. Use when a large piece of product work needs structure without collapsing straight into tasks.
---

# Decompose

Turn a large piece of work into a usable structure without losing the logic.

## Purpose

Decomposition is not just making a big thing smaller.

Good decomposition finds the right structure for the problem:

- where leverage actually lives
- what branches are meaningfully different
- what is still unknown
- what should stay open versus what can become action

## Inputs

It can start from:

- a goal
- an outcome
- a problem
- an initiative
- a strategy statement
- a user-provided description of work that feels too large or blurry

## When To Activate

Use when the user asks things like:

- "Break this down"
- "How should we structure this work?"
- "What are the main levers here?"
- "What are the workstreams?"
- "How do we turn this into actionable bets?"

## Core Rule

Do not jump from a fuzzy objective to tasks.

If the target is under-defined, fix the definition first.

## Decomposition Lenses

Choose a primary lens before decomposing.

### Outcome Lens

Use when the key question is:

- what must become true?
- what leverage points would move the result?

### Behavior Lens

Use when the key question is:

- what users, teams, or systems must do differently?

### Structure Lens

Use when the key question is:

- what workstreams, components, surfaces, or systems exist?

### Mixed Lens

Use when one lens hides important coupling or tradeoffs.

## Readiness Gates

### Gate 1: The Target Is Singular Enough

State the target in one sentence.

If the sentence secretly contains multiple goals, split them before decomposing.

### Gate 2: The Success Direction Is Legible

Establish:

- what better looks like
- for whom
- on what horizon

If success direction is missing, the decomposition will drift.

### Gate 3: Ambiguity Is Assessed

Classify the target as:

- `bounded`
- `under-specified`
- `multi-causal`
- `tightly coupled`
- `discovery-heavy`
- `delivery-heavy`

High ambiguity changes the expected output. It should produce candidate decompositions, not one fake-clean tree.

## Operating Sequence

### Phase 1: Define The Target

Capture:

- target
- desired shift
- user or system affected
- relevant constraints
- known dependencies
- known unknowns

### Phase 2: Choose The Lens

Default guidance:

- from a goal or outcome: start with `outcome`
- from a problem: start with `behavior` or `outcome`
- from an initiative: start with `structure` or `mixed`

If ambiguity is high, generate 2-3 plausible lens choices and recommend one.

### Phase 3: Generate Candidate Breakdown

Typical patterns:

- `goal/outcome -> levers -> initiatives`
- `initiative -> workstreams -> bets`
- `problem -> behavior shifts -> interventions`

Do not force every decomposition into the same shape.

### Phase 4: Stress-Test The Breakdown

Check whether the decomposition:

- covers the main causal paths
- avoids premature task collapse
- keeps branches meaningfully distinct
- surfaces key unknowns
- is actionable enough to guide the next decision

### Phase 5: Recommend The Working Structure

Choose:

- `single recommendation` when ambiguity is low
- `recommended option plus alternatives` when ambiguity is high

Explain what the preferred structure optimizes for.

## Output Contract

Use this structure unless the user asks for another format:

```text
TARGET
...

READINESS
Target clarity:
Success direction:
Ambiguity:

RECOMMENDED LENS
...

WORKING DECOMPOSITION
1. ...
2. ...

WHY THIS STRUCTURE
...

ALTERNATIVES
1. ...
2. ...

ASSUMPTIONS
- ...

OPEN QUESTIONS
- ...

RECOMMENDED NEXT MOVES
1. ...
2. ...
```

## Guardrails

1. Do not reduce an ambiguous objective to a fake-clean tree.
2. Do not decompose by org chart when the logic is causal.
3. Do not turn discovery-heavy work into delivery theater.
4. Do not hide uncertainty just to make the structure look complete.
5. If the target is too blurry, stop and repair the definition first.

## Failure Modes

Watch for:

- branching by ownership instead of leverage
- mixing goals, solutions, and tasks in one layer
- producing a decomposition that cannot guide a real decision
- pretending there is one obvious lens when there are real alternatives
