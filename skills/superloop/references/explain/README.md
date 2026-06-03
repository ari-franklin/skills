# Explain

Clear thinking still gets lost in translation.

The team hears too much detail. Leadership hears too little logic. A strong priority call turns into generic product language the moment someone tries to summarize it. The explanation gets smoother as it moves across audiences, but also less faithful to the original reasoning.

That is the job of this skill.

`explain` helps you translate reasoning into a form that fits the audience without changing what the reasoning actually says. It keeps the core logic stable, preserves the evidence and uncertainty, and changes the framing, depth, and vocabulary only as much as needed to make the idea usable.

## The core constraint

This skill is not supposed to improve the reasoning.

It is supposed to preserve the reasoning while making it easier to carry:

- across audiences
- across levels of altitude
- across written and spoken forms

If the explanation becomes cleaner by becoming less true, it failed.

## How it works

1. **Load the source reasoning**: start from a real decision, chain, validation, decomposition, or summary.
2. **Extract the invariant core**: identify what matters, why it matters, what is being proposed, what supports it, and what uncertainty remains.
3. **Choose the audience frame**: adjust the emphasis for yourself, a team, executives, stakeholders, or a customer-facing audience.
4. **Choose the horizon frame**: decide whether the explanation should stay tactical, strategic, or show the full chain.
5. **Rewrite without distortion**: adapt the explanation while preserving the real substance.
6. **Run the fidelity check**: make sure the logic, evidence, tradeoffs, and uncertainty still survived the translation.

The point is not to make everything sound better. The point is to make the same reasoning easier to understand and use.

## What it is good at

- Turning a priority call into something a team or exec can absorb quickly
- Explaining why a bet matters without losing the outcome linkage
- Translating validation or decomposition results into usable language
- Preserving uncertainty instead of smoothing it away

## What it should resist

- Making weak reasoning sound stronger through tone
- Dropping evidence because the audience is senior
- Oversimplifying until the causal chain disappears
- Confusing clearer wording with better logic

## Usage

Give the skill the source reasoning and say who it is for. Good prompts usually sound like:

> Explain this priority call to my leadership team without hiding the uncertainty.

> Give me a concise version of this reasoning for the product team.

> Translate this validation result into something I can say out loud in a review.

The skill will either:

- return a clean audience-specific explanation
- provide a spoken version when useful
- tell you the source reasoning is too thin to translate faithfully yet

## Install

Copy this folder into your agent's skills directory as `explain/` so the runtime can discover [`SKILL.md`](SKILL.md).
