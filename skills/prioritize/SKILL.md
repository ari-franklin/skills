---
name: prioritize
description: Rigorously prioritize product problems, initiatives, and work items using approved memory, evidence quality checks, Eisenhower-style importance vs urgency framing, and lean outcome-oriented judgment. Use when deciding what matters now, ranking strategic problems before initiatives and tasks, or explaining prioritization tradeoffs with evidence.
---

# Prioritize Product Work

Transform approved product memory into an explicit, defensible prioritization.

## Philosophy

Do not begin with tasks.

Prioritization starts by determining which problems matter most, then which initiatives best address those problems, then which work items best advance those initiatives.

The goal is not to produce a neat list. The goal is to improve the quality of product judgment by separating:

- importance from noise
- urgency from panic
- evidence-backed action from speculation
- reversible learning from irreversible commitment

## Invocation

Use this skill when the user asks things like:

- "What should we prioritize?"
- "What matters most right now?"
- "How should I rank these problems?"
- "Which initiative should we push first?"
- "What should I do next and why?"

## Core Model

This skill uses a semi-structured blend of:

- `importance`
- `urgency`
- `confidence`
- `effort / reversibility`

The top-level frame is Eisenhower-style:

- importance
- urgency

But these axes must be earned through product reasoning, not intuition.

### Importance is informed by:

- customer pain severity
- outcome impact
- strategic relevance
- metric consequence

### Urgency is informed by:

- cost of delay
- time sensitivity
- compounding risk of inaction
- dependency pressure

### Confidence is informed by:

- evidence strength
- evidence recency
- consistency across memory
- contradiction level

### Effort and reversibility are:

- a modifier
- not the main driver

Use this to distinguish:

- small, reversible learning bets
- large, irreversible commitments

## Required Order

Always rank in this order:

1. `problems`
2. `initiatives`
3. `work_items`

Never let a task outrank the significance of the underlying problem.

## Procedure

### Phase 1: Load Scope

Read canonical memory first. Gather:

- relevant problems
- linked initiatives
- linked work items
- relevant metrics
- decisions
- assumptions
- constraints

Prefer approved memory over raw inputs. Pull raw artifacts only if memory is clearly insufficient.

### Phase 2: Evidence Quality Check

Before ranking anything, assess:

- recency
- completeness
- contradiction
- confidence

If evidence is weak:

- say so explicitly
- lower confidence in the ranking
- do not fake certainty

### Phase 3: Rank Problems

For each problem, assess:

- pain severity
- outcome or metric impact
- strategic relevance
- cost of delay
- risk of inaction
- evidence strength

Then place each problem in an importance-urgency frame and create a provisional ranking.

### Phase 4: Rank Initiatives

For each initiative, assess:

- directness of connection to top problems
- expected leverage
- time to value
- feasibility
- dependencies
- reversibility

Then rank initiatives relative to the highest-priority problems.

### Phase 5: Rank Work Items

For each work item, assess:

- connection to top initiatives
- whether it is a critical unblocker
- whether it materially reduces delay or risk
- whether it is a small, high-learning move

Then rank work items relative to the highest-priority initiatives.

### Phase 6: Apply Judgment Overrides

Override the procedural ranking only when justified.

Typical reasons:

- a serious risk must move up despite imperfect evidence
- a small reversible bet has unusually high learning value
- stakeholder pressure is inflating urgency without customer importance
- a large irreversible commitment is ranked too high for the available evidence

Every override must state:

- what changed
- why it changed
- what evidence supports the override

### Phase 7: Produce Output

Return separate ranked views for:

- problems
- initiatives
- work items

Each item should include:

- rank
- title
- why it matters
- why now
- confidence
- evidence used
- what would change the ranking

## Output Format

Use this structure unless the user asks for a different one:

```text
PROBLEMS
1. ...
Why it matters:
Why now:
Confidence:
Evidence:
What would change this ranking:

INITIATIVES
1. ...
Why it matters:
Why now:
Confidence:
Evidence:
What would change this ranking:

WORK ITEMS
1. ...
Why it matters:
Why now:
Confidence:
Evidence:
What would change this ranking:
```

## Failure Modes

Watch for:

- ranking work items before validating the problem
- confusing loud stakeholder demand with real customer importance
- over-weighting urgency when evidence is weak
- using effort as the primary ranking axis
- hiding ambiguity behind a falsely precise list

## Judgment Standard

Act like a strong product leader, not a backlog sorter.

The output should be:

- evidence-backed
- strategically coherent
- explicit about uncertainty
- clear about tradeoffs

If the memory is too weak to prioritize responsibly, say that directly and identify what is missing.
