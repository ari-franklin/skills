# Evidence Model

Use one primary classification for each candidate. A candidate can link to related items, but do not apply labels as a substitute for explaining the relationship.

| Classification | Use when | Do not use when |
| --- | --- | --- |
| **Activity** | Work was performed or progress was made. | The source only describes an intention or a reusable deliverable. |
| **Artifact** | A concrete, reusable output exists or was materially changed. | A task was discussed but no output is available. |
| **Exact excerpt** | The wording is verbatim and attributable to a speaker or source. | The wording was condensed, translated, reconstructed, or inferred. |
| **Signal** | Evidence is notable and may matter, but its meaning or durability is not established. | The evidence supports a repeated or strong update in understanding. |
| **Assumption** | A plausible interpretation has thin or incomplete support. | The source directly establishes the assertion. |
| **Learning** | Repeated or strong evidence supports a meaningful update. | The conclusion rests on a single weak, unverified, or contradictory source. |
| **Decision** | A source explicitly records a commitment or operating choice. | A likely next action is merely inferred from activity or discussion. |
| **Open question** | An unresolved issue is material to the work. | The question is rhetorical, already answered, or immaterial. |

## Confidence

Use confidence for the accuracy of the statement as written:

- `high`: direct, attributable evidence; or independently corroborated evidence with no material conflict.
- `medium`: plausible, attributable support with a meaningful limit such as incomplete coverage, one credible source, or unresolved context.
- `low`: thin, indirect, ambiguous, unverified, or materially conflicted support.

State the reason in a short clause. Examples: "high — direct owner update and linked release artifact"; "medium — one customer interview; no usage data"; "low — secondhand report conflicts with the incident timeline."

Do not increase confidence just because a claim is useful, popular, repeated by sources that share an origin, or already accepted. Do not lower confidence merely because a well-supported finding is inconvenient.

## Relationships to Preserve

- **Corroboration:** independent sources support the same claim.
- **Repetition:** the same underlying source appears more than once; deduplicate it.
- **Conflict:** sources materially disagree; state both positions and the decision impact.
- **Minority signal:** less common evidence could change an important conclusion; retain it even when it does not alter the current view.

When you cannot tell whether sources are independent, say so and avoid treating them as corroboration.
