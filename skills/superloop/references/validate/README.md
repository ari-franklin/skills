# Validate

Good strategy language can hide a lot of weak logic.

That is why validation matters.

A plan can sound directionally right while still being causally thin. A bet can feel sensible in isolation while remaining detached from the goal it claims to support. A strategy document can look complete while the actual chain from outcome to action is still doing too much hand-waving.

That is the job of this skill.

`validate` helps you test whether a proposed chain is sound enough to act on. It checks whether the chain is complete, whether the evidence is relevant and strong enough, whether the causal logic is credible, whether success would be observable, and whether hidden assumptions are carrying too much of the case.

## What it is looking for

At a high level, this skill is trying to answer five questions:

- Is the claim clear?
- Is the chain complete?
- Is the evidence actually relevant?
- Does the mechanism make sense?
- Would we know if it worked?

If those answers are weak, the conclusion should be weak too.

## How it works

1. **Define the claim**: state what is being proposed and what is supposed to happen if it works.
2. **Check chain completeness**: determine whether the goal, approach, and action are explicit, partial, broken, or merely implied.
3. **Check evidence quality**: assess whether the evidence is specific, recent, consistent, and relevant to the claim.
4. **Check causal coherence**: test whether the proposed action plausibly advances the approach and whether the approach plausibly moves the goal.
5. **Check success clarity**: confirm that success and failure would actually be recognizable later.
6. **Check assumption load**: identify what is hidden, stale, contradicted, or doing too much work.

The point is not to be cynical. The point is to make weak logic visible before people start operating as if it were settled.

## When it is especially useful

- Validating whether an initiative or plan is sound enough to proceed
- Stress-testing a goal-to-approach-to-action chain
- Finding exactly where reasoning breaks instead of saying "this feels weak"
- Showing what evidence or clarification would increase confidence

## What it should catch early

- Approving a complete-looking chain that is causally weak
- Letting assumptions do most of the reasoning in silence
- Treating adjacent evidence as if it were supporting evidence
- Moving forward when nobody can say what success would look like

## Usage

Describe the goal, the proposed approach, the action or bet, and any evidence, assumptions, or constraints that matter. Good prompts usually sound like:

> Validate whether this initiative actually supports the outcome we say it does.

> Stress-test this plan and tell me where the chain breaks.

> Does this experiment make sense, or are we skipping steps in the logic?

The skill will either:

- return a green, yellow, red, or blocked verdict
- show where the chain breaks
- tell you what would increase confidence enough to proceed

## Install

Copy this folder into your agent's skills directory as `validate/` so the runtime can discover [`SKILL.md`](SKILL.md).
