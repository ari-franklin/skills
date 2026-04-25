# Prioritize

The list is rarely the real problem.

Usually the problem is that too many different things have been allowed to compete on the same plane.

Problems, initiatives, requests, stakeholder pressure, urgent-seeming tasks, and half-formed bets all get thrown together. Then the team tries to sort them as if they were directly comparable. The result is predictable: the loudest thing rises, the most legible thing gets chosen, and everyone acts as if ordering the pile was the same thing as making a good decision.

That is the job of this skill.

`prioritize` helps you turn a messy set of options into a defensible priority call. It checks whether the options are even comparable, looks at the strength of the available evidence, separates importance from urgency, and makes any judgment overrides explicit instead of hiding them inside a neat-looking list.

## What it does

Before it ranks anything, it forces a cleaner decision frame:

- What is actually being compared?
- What horizon are we deciding on?
- What evidence is strong enough to trust?
- Where is the ranking coming from judgment rather than just procedure?

Only then does it produce a priority call.

## How it works in practice

1. **Build the candidate set**: identify what is actually being compared and normalize mixed inputs when needed.
2. **Check readiness**: confirm the decision frame is clear enough and the available evidence is strong enough to support ranking.
3. **Rank importance**: assess user significance, business consequence, strategic value, and downside of inaction.
4. **Rank urgency**: assess cost of delay, time sensitivity, compounding risk, and dependency pressure.
5. **Apply confidence and reversibility**: adjust the call based on how strong the evidence is and how easy the move is to unwind.
6. **Surface overrides**: show where judgment changed the procedural ranking and why.

The point is not to manufacture certainty. The point is to make the call more honest, more legible, and more useful.

## Where it helps most

- Ranking opportunities, initiatives, options, and bets
- Separating real urgency from stakeholder panic
- Making evidence quality visible before a team overcommits
- Producing a priority call that someone can actually defend

## What it pushes back against

- Treating the loudest request as the highest priority
- Ranking tasks before deciding which problem matters most
- Hiding weak evidence behind a polished ordered list
- Using effort as the main reason to do or not do something

## Usage

Describe the options, the decision you need to make, and any relevant context about constraints, timing, dependencies, and evidence. Good prompts usually sound like:

> Prioritize these three product bets for the next six weeks and tell me what would change the ranking.

> Help me decide what matters most right now across these initiatives.

> Rank these options, but be explicit about where the evidence is weak.

The skill will either:

- return a ranked view
- return a conditional ranking with key assumptions called out
- stop and say there is not enough signal to prioritize responsibly yet

## Install

Copy this folder into your agent's skills directory as `prioritize/` so the runtime can discover [`SKILL.md`](SKILL.md).
