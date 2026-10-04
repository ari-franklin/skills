# COM-B To Superloop Handoff Contract

## Purpose

Translate a completed COM-B diagnosis into a focused, explainable action decision.

COM-B diagnoses why a behavior is not happening. Superloop decides what to do next.

## When To Use

Use this contract when the input is a COM-B diagnosis, COM-B Phase A summary, COM-B practitioner worksheet, or a user asks to turn COM-B findings into an action plan, first bet, roadmap, experiment, or decision.

Do not use this contract when the user has not completed a COM-B behavior definition. Return to COM-B Step 1 instead.

## Required COM-B Inputs

The handoff needs:

- Behavior definition: actor, concrete action, extent, context, and outcome
- COM-B priority ranking: Capability, Opportunity, Motivation, with rationale
- Key insights: 3-5 findings from Phase A
- Cross-lens tensions, reinforcements, prerequisites, or highest-leverage points
- Top intervention implications or candidate BCW functions
- Known evidence gaps, uncertainty, and prior failed attempts

If the user provides only partial COM-B output, state what is missing and cap confidence.

## Superloop Role

Do not re-diagnose the behavior from scratch.

Treat the COM-B output as source material and operate on the decision layer:

- Explain the causal story in plain language
- Decompose intervention implications into actionable bets or leverage points
- Prioritize what should move first
- Validate the goal -> approach -> action chain before commitment

## Default Route

Use this route unless the handoff is already narrower:

`Explain -> Decompose -> Prioritize -> Validate`

Use a shorter route when appropriate:

- `Explain -> Prioritize -> Validate` when candidate actions are already defined
- `Decompose -> Prioritize -> Validate` when the causal story is already clear
- `Prioritize -> Validate` when the option set and decision frame are already clear
- `Validate` when the user only asks whether a specific COM-B-derived plan holds up

## Mode Instructions

### Explain

Convert COM-B findings into a causal story:

- What behavior is not happening
- Why it is not happening
- Which COM-B branches matter most
- Which cross-lens interaction explains the bottleneck
- What the diagnosis rules out

Keep taxonomy visible only when useful. Prefer plain language.

### Decompose

Turn intervention implications into a small set of action paths.

Useful structures:

- leverage point -> intervention bet
- prerequisite -> enabling move -> follow-on move
- behavior shift -> intervention mechanism -> concrete action
- risk/control point -> experiment -> success signal

Do not decompose every BCT. Collapse techniques into user-understandable bets.

### Prioritize

Rank the first move using:

- leverage against the COM-B priority ranking
- prerequisite value
- confidence in evidence
- reversibility and learning value
- cost of delay
- risk of treating symptoms instead of bottlenecks

The output should name what to do first, what waits, and what not to do yet.

### Validate

Validate the selected action chain:

`behavior gap -> COM-B bottleneck -> intervention approach -> first action -> success signal`

Check:

- Does the action address the diagnosed bottleneck?
- Does the causal mechanism make sense?
- Is the evidence strong enough for the commitment size?
- Are success and failure observable?
- Which assumption would change the recommendation?

## Output Shape

Return:

1. Causal story
2. Action options or bets
3. Priority call
4. First move
5. What not to do yet
6. Success signal
7. Confidence and assumptions
8. Validation verdict

## Stop Rules

Return to COM-B instead of proceeding when:

- the behavior definition is vague
- actor, action, or extent is missing
- the COM-B diagnosis lacks evidence for active dimensions
- the user wants new diagnosis rather than action translation

Stop Superloop when:

- the first actionable bet is clear
- the success signal is observable
- the confidence level is appropriate for the commitment
- additional reasoning would not change the next move

## Guardrails

1. Do not re-run COM-B inside Superloop.
2. Do not expose a long list of BCTs as the action plan.
3. Do not prioritize interventions that do not trace to COM-B findings.
4. Do not hide weak evidence behind confident action language.
5. Do not skip validation when the action is costly, political, or hard to reverse.
