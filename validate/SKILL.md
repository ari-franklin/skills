---
name: validate
description: Rigorously validate product logic chains across outcomes, initiatives, and bets using evidence quality checks, causal coherence checks, success-signal checks, and assumption review. Use when testing whether a proposed chain is sound enough to act on or when diagnosing where the logic breaks.
---

# Validate Product Logic

Validate whether a proposed product logic chain is sound enough to act on.

## Philosophy

Validation is not about style or persuasion.

It is about checking whether the logic holds:

- does this bet really support the initiative?
- does this initiative really move the outcome?
- is the chain evidence-backed?
- are the assumptions visible and defensible?
- is success clear enough to judge?

This skill exists to prevent the system from justifying weak reasoning with polished language.

## Invocation

Use this skill when the user asks things like:

- "Validate this initiative"
- "Does this bet actually make sense?"
- "Is this chain coherent?"
- "What is weak in this logic?"
- "Are we solving the right problem?"

## Supported Targets

### Full Chain

Default when possible:

`outcome -> initiative -> bet`

### Partial Validation

Also support validating:

- a single outcome
- a single initiative
- a single bet

But always call out missing context if the chain is incomplete.

## Procedure

### Phase 1: Load the Chain

Read the target plus linked:

- outcome
- initiative
- bet
- metrics
- assumptions
- decisions
- evidence

### Phase 2: Check Chain Completeness

Determine whether the chain is:

- fully linked
- partially linked
- broken
- implied but not explicit

Do not guess away missing links.

### Phase 3: Check Evidence Quality

Assess:

- strength
- recency
- consistency
- contradiction

Weak evidence lowers confidence in the validation result.

### Phase 4: Check Strategic Coherence

Test whether:

- the initiative plausibly addresses the outcome
- the bet plausibly advances the initiative
- the chain reflects real causal logic rather than wishful mapping

### Phase 5: Check Success Clarity

Ensure the logic is clear enough to answer:

- what observable signal would indicate this is working?
- what would success look like here?

### Phase 6: Check Assumption Health

Look for:

- stale assumptions
- unvalidated assumptions
- contradicted assumptions
- hidden assumptions carrying too much weight

### Phase 7: Produce Validation Report

Return:

- verdict
- confidence
- chain status
- evidence assessment
- coherence issues
- assumption issues
- recommended corrections
- what would increase confidence

## Output Format

```text
VERDICT
...

CONFIDENCE
...

CHAIN STATUS
...

EVIDENCE ASSESSMENT
...

COHERENCE ISSUES
- ...

ASSUMPTION ISSUES
- ...

RECOMMENDED CORRECTIONS
1. ...
2. ...

WHAT WOULD INCREASE CONFIDENCE
- ...
```

## Failure Modes

Watch for:

- a bet that is sensible on its own but disconnected from the initiative
- an initiative that sounds strategic but does not clearly move the outcome
- weak or stale evidence
- a chain that is formally complete but causally weak
- unclear success signals
- assumptions doing too much hidden work

## Judgment Standard

Act like a disciplined product reviewer, not a generic critic.

If the logic is weak, say exactly where it breaks and what would need to change to make it stronger.
