---
name: superloop
description: Route complex reasoning requests through Explain, Prioritize, Decompose, and Validate modes in the right order. Use when the user needs clearer thinking before acting, especially for ambiguous ideas, competing options, messy strategies, weak claims, roadmap chaos, visual explanation of reasoning, or decisions that require traceable reasoning rather than a quick answer.
license: MIT
metadata:
  author: arifranklin
  version: "1.0"
  modes:
    - explain
    - prioritize
    - decompose
    - validate
---

# Superloop

Superloop is a reasoning router. It decides what kind of thinking is missing, runs the smallest useful sequence of reasoning modes, and stops when the next move is clear.

It is not a writing style, implementation plan, or generic brainstorming workflow. Its job is to improve the user's decision quality.

## Outcome

Produce:

- A visible routing decision
- The selected reasoning path
- The minimum reasoning needed to improve the decision
- A final takeaway the user can act on
- When requested or useful, a static interactive HTML decision dossier that mirrors the final answer and links each selected reasoning mode as its own page

## When To Use

Use this skill when the user:

- Has an ambiguous idea and needs to understand it
- Has competing options and needs to choose what matters most
- Has a large or messy thing and needs structure
- Has a claim, plan, or strategy and needs to know whether it holds up
- Asks what to do next but the right reasoning mode is not obvious
- Needs traceable reasoning, not just a conclusion

Do not use this skill when:

- The user asks for a simple factual answer
- The user has already chosen the needed specialist skill
- The task is primarily execution after the reasoning is settled
- Additional analysis would not change the recommendation

## Reasoning Modes

Superloop routes among four modes:

- `Explain`: clarify meaning, context, definitions, or what is actually being discussed
- `Prioritize`: rank options, choose what matters, or decide sequence under constraints
- `Decompose`: break down a large or unclear thing into useful parts, levers, or workstreams
- `Validate`: test whether a claim, strategy, plan, or causal chain is sound enough to act on

Mode source files:

- `references/explain/SKILL.md`
- `references/prioritize/SKILL.md`
- `references/decompose/SKILL.md`
- `references/validate/SKILL.md`

## Required References

Load these references as needed:

- `references/routing-rules.md`: how to identify the primary reasoning gap
- `references/order-rules.md`: how to sequence multiple reasoning modes
- `references/stop-conditions.md`: when to stop instead of running more modes
- `references/output-contract.md`: final response structure
- `references/html-output-contract.md`: optional static HTML decision dossier structure
- `references/visual-reasoning.md`: optional visual explanation layer for sequences, comparisons, relationships, and decision artifacts

## Core Rule

Do not select modes based only on user wording. Select the mode that closes the most important reasoning gap.

## Routing Guide

Use `Explain` when the gap is understanding:

- ambiguous language
- unclear definitions
- conflicting interpretations
- uncertainty about what is being discussed

Use `Prioritize` when the gap is decision-making:

- too many options
- competing priorities
- resource constraints
- sequencing uncertainty

Use `Decompose` when the gap is structure:

- complexity
- unclear organization
- undefined components
- execution feels overwhelming

Use `Validate` when the gap is confidence:

- uncertainty about a claim
- uncertainty about a strategy
- uncertainty about a recommendation
- hidden assumptions or weak causal logic

If the primary gap is unclear, start with `Explain` and surface low routing confidence.

## Ordering Rules

Use the shortest path that closes the reasoning gap.

`Explain` is not mandatory. Use it only when the user, object, claim, scope, or context is ambiguous enough that another mode would be working from unstable ground.

Default ordering:

1. `Explain` before any mode that depends on missing shared understanding
2. `Prioritize` before `Decompose` when selecting among options
3. `Decompose` before `Prioritize` when the object itself is unclear
4. `Validate` before commitment, especially when the action is costly or hard to reverse

Common paths:

- `Explain`
- `Prioritize`
- `Decompose`
- `Validate`
- `Explain -> Prioritize`
- `Explain -> Decompose`
- `Explain -> Validate`
- `Prioritize -> Validate`
- `Decompose -> Prioritize`
- `Explain -> Prioritize -> Decompose`
- `Explain -> Decompose -> Prioritize`
- `Explain -> Prioritize -> Validate`

## Workflow

### 1. Identify The Reasoning Gap

Name the primary gap:

- understanding
- decision
- structure
- confidence

If there are multiple gaps, state the dependency between them.

### 2. Select The Route

Choose the smallest route that can improve the decision.

Include:

- selected path
- routing confidence: `High`, `Moderate`, or `Low`
- reason for the route

### 3. Run The Selected Modes

For each selected mode, use the matching mode file as the operating contract:

- Explain: preserve source reasoning while making it clearer
- Prioritize: rank options with evidence, urgency, confidence, and override logic
- Decompose: structure a large or ambiguous target without collapsing into tasks too early
- Validate: test chain completeness, evidence quality, causal coherence, success signals, and assumptions

### 4. Stop When The Next Move Is Clear

Stop when:

- the next move is clear
- the recommendation is actionable
- confidence is sufficient for the decision at hand
- further reasoning is unlikely to change the conclusion

Do not continue only because another mode exists.

### 5. Return Traceable Reasoning

Use `references/output-contract.md` unless the user asks for a different format.

Default output:

```text
ROUTING DECISION
Selected Path:
Routing Confidence:
Reason:

EXPLAIN
...

PRIORITIZE
...

DECOMPOSE
...

VALIDATE
...

FINAL TAKEAWAY
...
```

Only include sections for modes that were actually selected.

### 6. Add A Visual Layer When It Reduces Effort

When the Superloop output includes a route, comparison, hierarchy, causal chain, dependency map, or decision tradeoff, consider whether a visual layer would make the reasoning easier to inspect.

Load `references/visual-reasoning.md` when:

- the user asks for visual storytelling, a diagram, a chart, a map, or a shareable artifact
- a multi-mode route would be easier to scan as a route map
- a prioritization, decomposition, or validation result contains relationships that prose would make harder to follow

Use the visual layer to clarify the reasoning already produced. Do not add a visual to strengthen weak evidence, hide uncertainty, or make the result feel more polished than it is.

### 7. Create HTML Decision Dossier When Useful

Create a static interactive HTML dossier when the user asks for HTML, an interactive output, a shareable artifact, or a durable version of the Superloop run. For multi-mode runs, offer or create the dossier when it would make the reasoning easier to inspect.

Use `references/html-output-contract.md`.

The HTML dossier should:

- preserve the same user-facing reasoning as the chat answer
- make the selected route navigable
- place each selected reasoning mode on its own linked page
- include an `index.html` summary with the routing decision and final takeaway
- avoid adding new reasoning that is not represented in the Superloop run
- stay static and portable unless the user asks for a framework-backed app

## Guardrails

1. Do not run every mode by default.
2. Do not prioritize undefined objects.
3. Do not decompose work that may not matter.
4. Do not validate unstated claims.
5. Do not make weak reasoning sound stronger through polished prose.
6. Do not keep analyzing after the decision is already improved enough.
