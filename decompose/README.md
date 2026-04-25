# Decompose

Sometimes the work is not blocked because nobody cares.

It is blocked because the thing itself is still too big, too tangled, or too blurry to act on well.

You can feel that in a few familiar ways. A team keeps jumping from a goal straight to tasks. An initiative sounds important, but every attempt to plan it turns into a shapeless list. People argue about execution when the real problem is that nobody has agreed on the right structure yet.

That is the job of this skill.

`decompose` helps you take a goal, outcome, problem, or initiative and break it into a structure that preserves product logic instead of flattening it into project management. It chooses a decomposition lens, checks whether the target is actually ready to be broken down, and produces a working structure with assumptions, open questions, and next moves.

## How it works

1. **Define the target**: name the goal, outcome, problem, or initiative clearly enough that it can be worked on.
2. **Check readiness**: confirm the target is singular enough, the success direction is legible, and the ambiguity level is known.
3. **Choose a lens**: use an outcome, behavior, structure, or mixed lens based on where leverage actually lives.
4. **Generate candidate decompositions**: create one strong structure or multiple candidates if ambiguity is high.
5. **Stress-test the breakdown**: check for coverage, distinct branches, unknowns, and premature task collapse.
6. **Recommend a working structure**: return the best decomposition, plus alternatives when the choice is non-obvious.

The point is not to create a beautiful tree. The point is to produce a structure that can support better prioritization, validation, planning, and communication.

## What it is good for

- Breaking a large outcome into meaningful levers and initiatives
- Breaking an initiative into workstreams, hypotheses, and bets
- Showing when a team is trying to plan before it has chosen the right frame
- Making ambiguity visible instead of hiding it inside execution language

## What it should prevent

- Jumping from strategy to tasks
- Organizing by ownership when the real structure is causal
- Treating discovery-heavy work like delivery work
- Pretending there is only one sensible decomposition when there are real tradeoffs

## Usage

Describe the thing that needs to be broken down and include any relevant constraints, users, dependencies, or open questions. Good prompts usually sound like:

> Break down this retention outcome into the main levers and recommended initiatives.

> Decompose this initiative into workstreams and bets without collapsing straight into tasks.

> I think this project is actually three different problems. Help me decompose it cleanly.

The skill will either:

- produce a recommended decomposition
- show multiple plausible decompositions and recommend one
- stop and say the target needs to be defined more clearly before decomposition is useful

## Install

Copy this folder into your agent's skills directory as `decompose/` so the runtime can discover [`SKILL.md`](SKILL.md).
