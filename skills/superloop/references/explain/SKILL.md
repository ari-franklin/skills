---
name: explain
description: Translate existing reasoning into clear audience-appropriate explanations without changing the logic, evidence, or uncertainty. Use when explaining a priority call, decomposition, validation result, plan, or decision to yourself, a team, leadership, or another audience.
---

# Explain

Make reasoning easier to use without changing what it means.

## Purpose

This skill is a translation layer, not a persuasion layer.

It can adapt:

- depth
- framing
- vocabulary
- ordering

It must not adapt:

- the underlying logic
- the actual evidence
- the real uncertainty
- the real tradeoffs

## Inputs

It can explain:

- a prioritization result
- a decomposition
- a validation report
- a strategy memo
- a decision chain
- a user-provided summary

## When To Activate

Use when the user asks things like:

- "Explain this clearly"
- "How do I say this to my team?"
- "Give me the exec version"
- "Translate this into something concise"
- "Help me explain why this matters"

## Fidelity Rule

Explanation is only valid if the source reasoning remains intact.

Before rewriting, extract the invariant core:

- what matters
- why it matters
- what is being proposed
- what evidence supports it
- what uncertainty remains
- what should happen next

If you cannot preserve that core, do not explain yet. Ask for better source reasoning or say what is missing.

## Readiness Gates

### Gate 1: Source Reasoning Exists

Identify the source object or chain. If the user only gives a conclusion, ask for the logic or mark the explanation as thin.

### Gate 2: Audience Is Clear Enough

Prefer an explicit audience. If the user does not provide one, infer a practical default and state it.

Common audience frames:

- `self`
- `team`
- `exec`
- `stakeholder`
- `customer-facing`

### Gate 3: Horizon Is Clear Enough

Prefer an explicit horizon:

- `tactical`
- `strategic`
- `full-chain`

If absent, choose the horizon that best matches the user request.

## Translation Sequence

### Phase 1: Extract The Invariant Core

Write down:

- the main call
- the main reason
- the key evidence
- the main tradeoff
- the main uncertainty
- the next step

### Phase 2: Set The Audience Frame

Adapt emphasis based on audience needs:

- `self`: precision, tradeoffs, uncertainty
- `team`: shared context, implications, coordination
- `exec`: stakes, rationale, risk, required decision
- `stakeholder`: intent, consequence, confidence, asks
- `customer-facing`: clarity, restraint, trust-safe wording

### Phase 3: Set The Horizon Frame

Adapt the structure:

- `tactical`: what to do now and why
- `strategic`: why this direction matters
- `full-chain`: goal, approach, action, evidence, uncertainty

### Phase 4: Rewrite Without Distortion

Preserve:

- logic
- evidence
- uncertainty
- tradeoffs
- causal linkage

### Phase 5: Run The Fidelity Check

Before finalizing, verify that the explanation still contains:

- the original decision or claim
- the real basis for that claim
- the limiting uncertainty
- what would change the view

If any of those disappear, revise before delivering.

## Output Contract

```text
AUDIENCE
...

HORIZON
...

CORE MESSAGE
...

WHY IT MATTERS
...

EVIDENCE
...

TRADEOFFS AND UNCERTAINTY
...

WHAT HAPPENS NEXT
...
```

Optional when useful:

```text
SPOKEN VERSION
...
```

## Guardrails

1. Do not invent stronger logic than the source contains.
2. Do not explain away uncertainty.
3. Do not simplify until the causal chain disappears.
4. Do not make weak reasoning sound executive-ready through tone alone.
5. If the source reasoning is thin, say so.

## Failure Modes

Watch for:

- a crisp explanation of a fuzzy idea
- dropping the evidence because the audience is senior
- swapping real tradeoffs for generic product language
- compressing so hard that the recommendation loses its basis
