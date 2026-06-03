---
name: superloop
description: Orchestrates Explain, Prioritize, Decompose, and Validate into a reusable reasoning loop for improving clarity, decision quality, structure, and confidence.
metadata:
  author: ari-franklin
  version: "1.0.0"
---

# Superloop

  Turn unclear inputs into decision-quality outputs.

  ## Purpose

  Superloop decides what kind of thinking should happen next. It is designed to expose reasoning, not just conclusions.

The output should make it clear how the recommendation was reached.
  
  It answers:

  > What kind of thinking does this situation need next?

  Its purpose is not to maximize analysis. Its purpose is to improve understanding,
  prioritization, structure, confidence, execution quality, and strategic clarity.

  The goal is better decisions, not more process.

  ## Relationship To Other Skills

  Superloop is an orchestration layer.

  It does not replace:

  - Explain
  - Prioritize
  - Decompose
  - Validate

  These skills remain the authoritative source for reasoning execution.

  Superloop owns:

  - reasoning mode selection
  - reasoning order selection
  - stop conditions
  - synthesis
  - next-step recommendation

  The underlying skills own:

  - mode execution
  - domain-specific logic
  - evaluation criteria
  - output quality

  When Superloop selects a mode, follow that skill's instructions and operating sequence.

  ## Core Principle

  Apply the smallest useful reasoning path. 

  The reasoning process should remain visible.

  Users should be able to inspect, challenge, and reuse the outputs of each reasoning mode independently.

  Do not run all four modes automatically. Run only the reasoning required to improve the next
  decision.

  If additional reasoning is unlikely to change the recommendation, stop.

  ## Routing Confidence

For every execution estimate:

### High

The bottleneck is obvious.

### Moderate

Multiple bottlenecks may exist but one appears primary.

### Low

The bottleneck is unclear or highly coupled.

Low routing confidence should be surfaced explicitly.

  ## Operating Sequence

  ### Phase 1: Assess Understanding

Determine whether the situation is sufficiently understood.

If understanding is insufficient:

- run Explain

If understanding is sufficient:

- continue to bottleneck detection

The goal is not to explain everything.

The goal is to determine whether additional explanation is required before proceeding.

  ### Phase 2: Detect Bottleneck

  Classify the primary bottleneck.

  #### Understanding Bottleneck

  Symptoms:

  - ambiguity
  - conflicting interpretations
  - unclear goals
  - unclear terminology

  Question:

  > What are we actually talking about?

  Route:

  - Explain

  #### Prioritization Bottleneck

  Symptoms:

  - too many options
  - competing initiatives
  - resource constraints
  - sequencing uncertainty

  Question:

  > What matters most right now?

  Route:

  - Prioritize

  #### Structure Bottleneck

  Symptoms:

  - initiative is too large
  - execution feels overwhelming
  - scope is unclear
  - workstreams are undefined

  Question:

  > How should this be structured?

  Route:

  - Decompose

  #### Confidence Bottleneck

  Symptoms:

  - plan exists
  - thesis exists
  - strategy exists
  - uncertainty exists around correctness

  Question:

  > Does this logic hold?

  Route:

  - Validate

  ### Phase 3: Select Reasoning Path

  Choose the smallest useful chain.

  Possible paths include:

  - Prioritize
  - Decompose
  - Validate
  - Explain -> Prioritize
  - Explain -> Decompose
  - Explain -> Validate
  - Explain -> Prioritize -> Decompose
  - Explain -> Decompose -> Validate
  - Explain -> Prioritize -> Decompose -> Validate

  Do not assume full-chain execution.

## Order Selection Rules

  ### Rule 0

  If the primary bottleneck is unclear:

  - route to Explain
  - surface Low Routing Confidence

  Do not guess.

  The goal is to reduce ambiguity before selecting a reasoning path.

  ### Rule 1

  Never prioritize something that is not understood.

  Explain first.

  ### Rule 2

  Never decompose a target that is still undefined.

  Clarify first.

  ### Rule 3

  Never validate an unstated claim.

  Make the claim explicit first.

  ### Rule 4

  Use:

  ```text
  Explain -> Prioritize -> Decompose -> Validate
  ```

  When:

  - candidate options already exist
  - resource allocation decisions exist
  - prioritization determines what deserves deeper analysis

  Example:

  > What should we invest in of these 3 options?

### Rule 5

  Use:
  ```text
  Explain -> Decompose -> Validate -> Prioritize
  ```

  When:

  - the object itself is unclear
  - the structure must be understood before ranking options

  Example:

  > What exactly is Option A?

  ### Rule 6

  Use:
  ```text
  Explain -> Validate
  ```

  When:

  - evaluating a thesis
  - evaluating a strategy
  - evaluating a proposal

  Example:

  > Does this product strategy make sense?

  ### Rule 7

  Use:
  ```text
  Explain -> Prioritize
  ```

  When:

  - options are already understood
  - no additional decomposition is required

  Example:

  > What should move first?

## Stop Conditions

  Stop when:

  - the next move is clear
  - uncertainty is acceptable
  - confidence is sufficient for action
  - additional reasoning is unlikely to change the recommendation

  Do not continue analysis because another mode exists. Do not run the full chain by default.

## Output Contract

  Every Superloop execution should expose the reasoning process.

  ### ROUTING DECISION

  Selected Path:

  ...

  Routing Confidence:

  High | Moderate | Low

  Reason:

  ...

  ---

  ### EXPLAIN

  What is actually happening?

  ...

  ---

  ### PRIORITIZE

  What matters most?

  ...

  Only include if Prioritize was selected.

  ---

  ### DECOMPOSE

  How should this be structured?

  ...

  Only include if Decompose was selected.

  ---

  ### VALIDATE

  What assumptions matter?

  What risks exist?

  What would change the conclusion?

  ...

  Only include if Validate was selected.

  ---

  ### FINAL TAKEAWAY

  What should happen next?

  ...

  ## Confidence Expectations

  ### High Confidence

  - strong evidence
  - explicit assumptions
  - clear causal chain

  ### Moderate Confidence

  - incomplete evidence
  - some assumptions remain

  ### Low Confidence

  - evidence gaps
  - unresolved ambiguity
  - competing explanations

  Confidence should influence recommendation strength. Confidence should not be hidden.

  ## Failure Modes

  Superloop fails when it:

  - prioritizes unclear options
  - decomposes the wrong thing
  - validates an unstated claim
  - creates structure without improving judgment
  - creates analysis without action
  - hides uncertainty
  - confuses activity with progress
  - runs all modes unnecessarily

  ## Success Criteria

  Superloop succeeds when a user can answer:

  1. What is actually happening?
  2. Why was this reasoning path selected?
  3. What kind of thinking is needed next?
  4. What should happen now?
  5. What assumptions matter?
  6. What would change the recommendation?

  after reading the result.

  `Every execution should expose:

  - selected reasoning path
  - routing confidence
  - assumptions
  - recommendation
  - next move`

Superloop's role is to determine the next useful reasoning step and stop when further analysis is unlikely to improve the decision.