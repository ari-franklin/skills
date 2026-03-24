---
name: explain
description: Translate product reasoning into clear audience- and horizon-appropriate narratives without changing the underlying logic. Use when explaining priorities, decompositions, validations, or outcome-to-bet chains to yourself, a team, or executives.
---

# Explain Product Reasoning

Explain product reasoning clearly without changing its substance.

## Philosophy

This skill is the narrative translation layer for the reasoning system.

It does not invent new logic. It translates existing logic so that priorities, decompositions, validations, and decision chains become easier to articulate across audiences and horizons.

It may adapt:

- depth
- emphasis
- vocabulary
- framing

It must not adapt:

- the actual logic
- the material evidence
- the real uncertainty

It may optionally add a spoken narrative, but that narrative must remain a translation of the same reasoning rather than a more persuasive substitute for it.

## Invocation

Use this skill when the user asks things like:

- "Explain this priority"
- "How should I explain this to my team?"
- "Give me the exec version"
- "Translate this reasoning into something concise"
- "Explain why this bet matters"

## Default Reasoning Frame

When possible, explain:

`outcome -> initiative -> bet`

This provides the causal structure that should remain stable through the translation.

## Supported Audiences

- `self`
- `team`
- `exec`

## Supported Horizons

- `tactical`
- `strategic`
- `full-chain`

## Procedure

### Phase 1: Load the Source Reasoning

Read the source object:

- prioritization result
- decomposition result
- validation report
- or a direct chain

### Phase 2: Extract the Invariant Core

Identify:

- what matters
- why it matters
- what action or direction is proposed
- how it connects to the desired outcome
- what evidence supports it
- what uncertainty remains

This core must remain stable.

### Phase 3: Select Audience Frame

Adapt to:

- `self`
- `team`
- `exec`

### Phase 4: Select Horizon Frame

Adapt to:

- `tactical`
- `strategic`
- `full-chain`

### Phase 5: Translate Without Distortion

Rewrite the explanation while preserving:

- logic
- evidence
- uncertainty
- tradeoffs

### Phase 6: Surface Tradeoffs and Uncertainty

Do not hide:

- confidence level
- tradeoffs
- what would change the view
- unresolved material questions

### Phase 7: Produce Explanation

Return an explanation that is:

- audience-appropriate
- horizon-appropriate
- faithful to the source reasoning
- concise enough to use in practice

## Output Format

```text
CORE MESSAGE
...

WHY IT MATTERS
...

EVIDENCE
...

TRADEOFFS / UNCERTAINTY
...

WHAT HAPPENS NEXT
...
```

Optional:

```text
SPOKEN NARRATIVE
...
```

## Failure Modes

Watch for:

- changing the reasoning while simplifying it
- making uncertainty disappear
- oversimplifying for executives until the logic becomes misleading
- explaining action without preserving outcome linkage
- generic product-speak disconnected from evidence

## Judgment Standard

Act like a disciplined communicator translating sound product reasoning, not a persuasive narrator trying to make every idea sound good.
