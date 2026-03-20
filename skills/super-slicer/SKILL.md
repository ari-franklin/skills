---
name: story-slicer
description: Breaks ideas, product designs, epics, and requirements into customer- and outcome-centric vertical-slice user stories, then writes concise Jira-ready stories to a file and can optionally create Jira tickets from them. Use when the user asks to decompose an idea or design into stories, improve story slicing, write outcome-focused Jira stories, or avoid horizontal UI/API/database task breakdowns.
license: MIT
metadata:
  author: codex
  version: "1.1"
---

# Story Slicer

Turn ideas, designs, and epics into the smallest set of customer-visible stories that deliver measurable value, save them in a Jira-ready file, and optionally create the Jira issues after review.

## Outcome

Produce:

- A thin set of vertical slices ordered by learning and user value
- Concise Jira-ready story titles and descriptions
- Acceptance criteria that describe outcomes, not implementation tasks, and are always written in Gherkin
- Story titles written as plain-language user experience statements
- Value stories written in Jobs To Be Done format: `When / I want / so that`
- Outcome signals that explain what value each slice proves or unlocks
- Clear calls on what should stay a story versus become a subtask, spike, or chore
- A saved markdown file containing the final Jira-ready stories

## When To Use

Use this skill when the user:

- Wants to break a feature, initiative, design, or epic into user stories
- Asks for customer-centric or outcome-centric story writing
- Wants vertical value slices instead of frontend/backend/database task breakdowns
- Needs Jira stories created from a design, brief, or workshop output

Do not use this skill for:

- Full solution ideation inside a codebase; use `ideate` first
- Step-by-step implementation planning; use `planner`
- Direct Jira operations with already-written stories; use `jira`

## Core Rules

1. Start from the customer or operator outcome, not the system architecture.
2. Slice vertically. A story should include every layer needed to deliver the outcome end to end.
3. Prefer the thinnest releasable slice that still produces observable value or learning.
4. Do not turn UI work, API work, database work, or test work into separate user stories unless each item delivers standalone value to a real user.
5. Put internal-only work into subtasks, chores, or spikes unless it is the only safe way to unlock the next value slice.
6. If a story needs more than one Gherkin scenario, treat that as a sign the slice may still be too broad and try to split it into separate stories first.
7. Before creating Jira issues, confirm the project key, issue type, title set, and description text.
8. Before drafting stories, saving files, or creating Jira issues, ask clarifying questions and wait for the user's answers. Do not assume missing scenario, analytics, or notes context when the user is available to answer.

## Process

### Phase 1: Establish the Outcome

Always ask a short clarification set before writing any story output, even if the request seems straightforward. The minimum required questions are:

- Which platforms or surfaces should be represented in the scenarios, such as desktop web, mobile web, app, or all of them
- Whether there are analytics, instrumentation, or monitoring expectations that should appear in acceptance criteria
- Whether there are design links, tickets, documents, dashboards, or implementation notes that should be included in `Notes`

Also ask for any of the following that are still unclear:

Extract or ask for:

- The user or customer segment
- The problem or friction they experience today
- The outcome they should achieve after the work ships
- The business or customer signal that would show the slice mattered
- Any constraints: deadlines, compliance, system boundaries, rollout limits
- The source artifact: brief, idea, design, ticket, workshop notes, or mockup
- Whether scenarios need to be broken out by platform such as mobile vs desktop
- Whether there are design files, dashboards, links, or supporting resources to include in notes

Do not move on to slicing until the user has answered the clarification set, or explicitly said there is nothing else to include. If the user does not know, record that explicitly in assumptions instead of silently deciding for them.

If the request is vague, write a short assumption block before slicing:

```text
Working assumptions
- Primary user: ...
- Desired outcome: ...
- Value signal: ...
- Constraint: ...
```

If confidence in the outcome is below 80%, stop and resolve that gap before writing stories. Bad inputs create tidy but useless backlogs.

### Phase 2: Find the Vertical Slices

Identify the minimum sequence of outcomes that can stand on their own.

For each possible slice, ask:

- Can a real user do something new after this ships?
- Can the team learn something meaningful from this slice?
- Does it cross all required layers, even if the implementation is thin?
- Can it be demoed without describing future work?

Good slice patterns:

- First happy path before edge cases
- Single actor before multi-actor collaboration
- Single channel before all channels
- Manual operational fallback before full automation
- Read-only visibility before full editing, if read-only is still useful

Avoid these anti-patterns:

- "Build backend endpoint"
- "Create database tables"
- "Add frontend form"
- "Write tests"
- "Refactor service layer"

Those are tasks or subtasks, not user stories.

### Phase 3: Shape Each Story

For every story, produce:

- `Title`: a plain-language user experience statement in the format `<specific users> <experience/outcome>`, written to emphasize the user's felt benefit rather than a UI description, for example `Kohl's shoppers quickly get back to search and navigation on ShopNext pages`
- `User`: who benefits
- `Outcome`: what changes for them
- `Outcome signal`: what will indicate the slice delivered value
- `Slice`: the thin end-to-end capability delivered now
- `Value statement`: written in JTBD form as `When / I want / so that`
- `Acceptance criteria`: observable behaviors and boundaries written as `Given / When / Then` from the user's first-person perspective, keeping voice consistent as `I / my` where appropriate
- `Notes`: optional design files, links, resources, and implementation scope
- `Dependencies`: only unavoidable prerequisites
- `Suggested size`: `XS`, `S`, `M`, `L`, or `XL`

If a story is `L` or `XL`, split it again. Default toward `S` or `M`.
If a story needs multiple Gherkin scenarios, first ask whether those scenarios represent distinct user outcomes, states, or page contexts that should become separate stories.
The main exception is a value story that needs:

- Platform-specific scenarios such as mobile and desktop
- An analytics or monitoring scenario coupled to the feature's value

Allow those scenarios to stay in the same value story when they describe the same user outcome.

### Phase 4: Validate Story Quality

Review every story against `references/story-quality-checklist.md`.

A story is ready only if:

- The value statement makes sense without technical jargon
- The title reads like a user experience outcome, not a command or implementation task
- The title emphasizes the user's experience or benefit, not just what the interface does
- The value statement is written in `When / I want / so that` format for value stories
- The acceptance criteria can be verified by behavior and are written in Gherkin
- The acceptance criteria keep user voice and perspective consistent from the beneficiary's point of view
- The story does not need multiple Gherkin scenarios to express its core outcome, except when platform coverage or analytics/monitoring scenarios are intentionally coupled to the same value story
- The slice is independent enough to demo or release
- The story does not hide multiple unrelated outcomes
- Implementation tasks can be pushed into subtasks without losing the meaning of the story

If several stories depend on the same invisible platform work, create one enabling `Chore` or `Spike` only when necessary and keep the customer-facing stories separate.
Apply this richer format to value stories only. Chores, spikes, and bugs can keep their simpler structures.

### Phase 5: Prepare Jira Output

Format the output in this order:

1. Short slicing rationale
2. Story sequence table
3. Full Jira-ready story bodies
4. Optional enabling chores or spikes

Use the Jira body template in `references/story-quality-checklist.md`.
Default to concise Jira-ready writing rather than design-doc prose. Keep each story easy to paste into Jira without trimming or rewriting.
Treat the clarification set from Phase 1 as mandatory gating input, not an optional prompt.
Ask which platform-specific scenarios such as mobile, desktop, app, or other surfaces should be included, and include only the scenarios that apply.
Ask whether there are analytics, instrumentation, or monitoring requirements that should be represented as a scenario in the same value story.
Ask whether there are design files, links, dashboards, tickets, or supporting resources to include in `Notes`.

### Phase 6: Save the Story File

Saving the output is the default behavior. Do not leave the final stories only in chat unless the user explicitly asks for that.
Do not save a story file until the mandatory clarification questions have been asked and answered, or the user has explicitly said there is nothing to add.

Write the completed stories to a markdown file using this default path pattern:

`.kohls/stories/YYYY-MM-DD-JIRAID-short-name/MM-DD-YY Feature or Epic Name.md`

Naming rules:

- Directory:
  - `YYYY-MM-DD`: current date
- Filename:
  - `MM-DD-YY`: current date in compact human-readable form
  - `Feature or Epic Name`: preserve the readable feature or epic name so the file is easy to find later
- `JIRAID`: uppercase Jira key if known, otherwise `NA`
- `short-name`: short lowercase hyphenated slug derived from the feature or epic title
- Replace filename-forbidden characters such as `/` or `:` with safe separators like `-`
- If the feature or epic name is missing, use `Story Slices`

If the user gives a preferred directory or filename, use that instead.

After saving:

1. Tell the user the saved path
2. Summarize the story count and any chores or spikes
3. Ask whether to create Jira issues from the saved stories

### Phase 7: Optionally Create Jira Issues

When the user wants Jira tickets created:

1. Confirm `project`, `issue type`, `size`, and the final story text.
2. If this repository's `jira` skill is available, use it to create the issues.
3. Pass the story description and the acceptance criteria separately so Jira's dedicated Acceptance Criteria field is populated. Do not rely on Jira creation to recover AC from the description later unless you are handling an older story format.
4. For value stories, treat the full `## AC` section as the source for the Jira Acceptance Criteria field.
5. Create customer-facing work as `Story` by default.
6. Use `Chore` for operational/internal work and `Spike` for time-boxed discovery.
7. Report the created issue keys back in story order.

Do not create tickets without explicit confirmation of the final text.

## Output Format

Use this structure unless the user asks for another format. Write it as if it will be pasted directly into Jira:

```markdown
## Slicing Rationale
- ...

## Story Sequence
| Order | Story | User outcome | Outcome signal | Size |
| --- | --- | --- | --- | --- |

## Jira-Ready Stories
### Story 1: <title>
Issue type: Story
Suggested size: S
Parent epic: <optional>

Description
- Problem: ...
- Slice: ...
- Value: ...
- Outcome signal: ...

## Value
**When** ...
**I want** ...
**so that** ...

Acceptance Criteria
## AC
### Scenario 1: <only include when applicable, e.g. Mobile>
**Given** I am ...
**When** I ...
**Then** I ...

### Scenario 2: <only include when applicable, e.g. Desktop>
**Given** I am ...
**When** I ...
**Then** I ...

### Scenario 3: Analytics / Monitoring
**Given** I ...
**When** ...
**Then** ...

## Notes
<design files, links, resources, or implementation notes when available>

### Implementation Scope
- ...

Dependencies
- None
```

When saving to file, include the full output in the markdown file, not just the story bodies.
When creating Jira tickets from this format, map:

- Story `Description` plus `## Value` plus `## Notes` into the Jira description body
- Story `## AC` into Jira's Acceptance Criteria field

## Decision Rules

Use these rules when the slicing choice is unclear:

- If a slice has value only when combined with another slice, they are probably one story.
- If a slice can release to a narrow audience and still teach something, it is probably a valid story.
- If the argument for a story starts with "engineering needs to", it is probably not a customer story.
- If the story mixes onboarding, permissions, reporting, and notifications, split by primary outcome.
- If the story exists only to support future work, consider `Chore` or `Spike` instead.
- If the user asks for stories, assume they want Jira-ready wording unless they explicitly ask for a workshop or design format.
- If the user asks for story output and does not say where to store it, save it to the default dated feature-name file path before responding.
- If a title starts with `Show`, `Add`, `Build`, `Create`, or another delivery verb, rewrite it as a user experience statement instead.
- If a title mostly describes UI behavior like `see`, `view`, or `access`, rewrite it to emphasize the user's improved experience, confidence, speed, continuity, or control.
- If platform-specific behavior matters, ask whether mobile, desktop, app, or other surfaces need separate scenarios.
- Always ask which platforms or surfaces belong in scope before writing acceptance criteria, even if the likely answer seems obvious.
- Always ask whether analytics, instrumentation, or monitoring belong in the value story before deciding to omit that scenario.
- Always ask for design links, supporting resources, and extra notes before finalizing the story, and place any provided materials in `Notes`.

## Example

Input:

```text
Break "customers can save a shopping list and share it with family members" into Jira stories.
```

Good result:

- Story 1: Customer creates a personal shopping list
- Story 2: Customer adds items to the list and sees the current contents
- Story 3: Customer shares the list with one invited family member
- Story 4: Invited family member can view the shared list

Not a good result:

- Build shopping-list table
- Create share-list API
- Add list page UI
- Add notifications

The first set describes releasable outcomes. The second set describes internal implementation work.
