---
name: synthesize-evidence
description: "Synthesize source material into traceable, uncertainty-calibrated daily review candidates or weekly evidence updates. Use when a user asks to synthesize evidence, create a daily or weekly evidence review, combine research or work updates, identify patterns, separate facts from interpretations, or turn source material into accepted and proposed knowledge without overstating certainty."
metadata:
  author: "ari-franklin"
  version: "1.0.0"
---

# Synthesize Evidence

Turn supplied source material into a reviewable evidence synthesis without converting plausible interpretation into fact. Preserve enough attribution and context for a reader to trace every material claim to its source.

## Required Inputs

Obtain all of the following before synthesizing:

- Source material and its time window
- Intended cadence: `daily` or `weekly`
- Existing accepted items or prior synthesis, when available

If the cadence or time window is missing, ask a compact question. If no prior synthesis exists, state that the comparison baseline is unavailable rather than inventing one. Use only the sources the user supplies or explicitly authorizes. For each source, retain a usable identifier such as its title, URL, author, date, file path, or message reference.

## Protect the Evidence Boundary

Keep these separate throughout the work:

- **Evidence:** what the source directly establishes.
- **Interpretation:** what the evidence may mean, with limits and alternatives.
- **Decision:** an explicit commitment or operating choice, never an implication inferred from activity alone.

Never turn a paraphrase into a quote. Treat source language as an **Exact excerpt** only when it is verbatim and labeled with its speaker or source. Preserve credible minority signals and contradictions; apparent consensus is not a reason to discard them.

Read [references/evidence-model.md](references/evidence-model.md) before classifying material. Read [references/output-contract.md](references/output-contract.md) before composing the final synthesis.

## Synthesis Procedure

1. Gather the authorized sources and accepted prior synthesis. Record the time window and identify material that is outside it.
2. Deduplicate repeated material. Connect corroborating evidence and explicitly connect conflicts without treating repetition as independent confirmation when it has one origin.
3. Extract invariant facts: what happened, who or what was involved, and the direct evidence. Keep the possible significance separate.
4. Classify each material candidate using the evidence model. When a candidate could fit more than one class, choose the narrowest defensible one and explain the uncertainty in the confidence reason.
5. Assign `high`, `medium`, or `low` confidence with a short, evidence-specific reason. Confidence describes support for the stated claim, not its importance.
6. Rank material qualitatively by novelty, evidence strength, and likely impact. Do not invent numerical scores or a false ordering when the sources cannot support one.
7. Mark accepted knowledge separately from proposed interpretations. Acceptance records prior human approval; it is not a synonym for confidence.
8. For each important interpretation, state what evidence would strengthen, weaken, or change it.

## Cadence Rules

### Daily: observation and triage

Surface what moved in the specified day. Produce a small set of high-signal review candidates rather than a polished narrative or exhaustive capture.

Do not promote assumptions, learnings, actionable insights, or decisions to `accepted` without Ari's explicit approval. If a source contains an explicit decision, record it as an attributed proposed item unless it is already accepted in the provided prior synthesis. A daily output may include an accepted item only when that status comes from the supplied accepted record.

### Weekly: comparison and narrative update

Start with accepted daily items, then inspect the authorized source material for consequential misses. Compare the evidence with the previous weekly synthesis and identify patterns that are persistent, strengthening, weakening, new, or resolved.

Do not concatenate daily reports or turn their volume into certainty. When daily items conflict with one another, preserve the conflict and explain why the weekly interpretation remains tentative or changes.

## Write the Synthesis

Use the material-item template in [references/output-contract.md](references/output-contract.md). Make every `Why it matters` statement either a source-backed consequence or a clearly labeled interpretation. Cite evidence with enough detail to find it again; include a short verbatim excerpt only when the exact wording matters and the source permits it.

End with the required summary sections:

- Strongest pattern
- Important contradiction or weak signal
- Decisions made or needed
- Open questions
- Suggested next review

For a daily synthesis, make the suggested review the point at which Ari can accept, reject, or reclassify proposed items. For a weekly synthesis, name the next review period and the evidence that would make comparison more reliable.

## Quality Check

Before returning, verify that:

- Every material item has an attributable evidence trail and a status.
- Exact excerpts are verbatim and labeled; paraphrases are not formatted as quotes.
- Facts, proposed interpretations, and explicit decisions are not conflated.
- Confidence reasons point to source quality, directness, corroboration, conflict, or missing context.
- Contradictions and minority signals remain visible.
- Daily items have not been silently promoted beyond Ari's approval boundary.
- Weekly output compares and updates the prior narrative rather than merely summarizing it.

If a required source, time window, or cadence is unavailable, state the limitation and ask only for the missing input needed to proceed.
