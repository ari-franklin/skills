---
name: bet-statements
description: "Craft concise, falsifiable bet statements from strategy, initiative, experiment, or product context. Use when a user asks to write, sharpen, reframe, or evaluate a statement beginning 'We believe' and connecting an action to an outcome, rationale, and evidence."
metadata:
  author: "OpenAI Codex"
  version: "0.1.0"
---

# Crafting Bet Statements

Turn supplied context into a clear, testable commitment about what the team will try, why it should work, and what evidence would justify continuing or changing course.

## Inputs To Extract

Identify these four ideas from the supplied material:

1. **Intervention:** the specific change, practice, capability, or experiment the team will introduce.
2. **Outcome:** the meaningful behavior, customer, business, or delivery change expected from it.
3. **Causal rationale:** why the intervention should produce that outcome in this context.
4. **Evidence:** observable leading or lagging signals that would support or challenge the bet.

Use the user’s language when it is precise. Infer only details that follow directly from the context. If a missing idea would make the claim vague or misleading, ask one compact question rather than inventing it. If the user wants a draft despite an important gap, state a clearly labeled assumption before the statement.

## Write The Statement

Use this exact four-part shape in one paragraph:

```md
**We believe** <intervention>
**will result in** <outcome>,
**because** <causal rationale>.
**We’ll know we’re right when** <evidence>.
```

Keep the bold lead-ins exactly as shown. The prose following them may use commas or semicolons when that makes the logic easier to read.

## Quality Bar

- Make the intervention concrete enough to try. Avoid disguising the desired outcome as the intervention.
- Describe an outcome, not an activity. “Run workshops” is an intervention; “more people reliably use the practice” is an outcome.
- Make the `because` clause a plausible mechanism, not a restatement of the desired result.
- Use evidence that a team could observe over an agreed period: adoption, frequency, elapsed time, completion, quality, self-reported friction, or a business/customer signal. Prefer a mix of behavior and impact when the context supports it.
- Do not invent targets, baselines, or measurement methods. Incorporate them when provided.
- Keep it concise and falsifiable. Avoid generic claims such as “improve collaboration” or “drive success” unless the user’s context defines what they mean.

## Review Before Returning

Check the causal chain: if the intervention happened but the rationale were false, would the outcome be less likely? Then check the evidence: could the stated signals occur even if the outcome did not? Tighten the wording if either answer reveals a weak link.

Return the statement alone by default. Add a brief `Assumption:` or one focused clarifying question only when necessary for integrity. If the user asks to critique an existing bet, return the improved statement and, if useful, one concise note about the most important change.

## Example

```md
**We believe** piloting a shared repository of verified support-resolution patterns for store teams
**will result in** faster, more consistent resolution of common customer issues,
**because** associates can find and reuse proven guidance instead of reconstructing answers from fragmented sources.
**We’ll know we’re right when** pilot teams resolve the targeted issues with fewer escalations, reuse patterns regularly, and report less time spent searching for help.
```
