# Story Quality Checklist

Use this file when a draft needs sharper slicing or Jira-ready wording.

## Checklist

Every customer-facing story should pass these checks:

- **Named user**: The story identifies who benefits.
- **Outcome-first**: The title and description describe value, not architecture.
- **User-experience title**: The title is written as `<specific users> <experience/outcome>` rather than an implementation instruction.
- **Experiential title**: The title emphasizes the improved experience or benefit, not merely the UI behavior.
- **Vertical**: The slice crosses the necessary layers end to end.
- **Thin**: The team could plausibly build, demo, and learn from it quickly.
- **Independent**: The story stands on its own well enough to prioritize and discuss separately.
- **Value signal**: The story states what customer or business signal should improve.
- **JTBD value statement**: Value stories use `When / I want / so that`.
- **Testable**: Acceptance criteria describe observable behavior in `Given / When / Then` form from the user's first-person point of view.
- **Single scenario bias**: If more than one Gherkin scenario is needed, try to split the story by outcome, state, actor, or page context first. Allow exceptions for platform-specific scenarios and analytics/monitoring scenarios tied to the same value story.
- **Scoped**: Implementation scope is explicit enough to guide delivery and can live under notes.
- **Jira-ready**: The wording is concise enough to paste directly into Jira without further editing.
- **Honest dependencies**: Dependencies are real prerequisites, not convenience coupling.

## Story Smells

Split or rewrite a story when you see:

- Multiple actors with unrelated outcomes
- Acceptance criteria that describe build steps instead of behavior
- Titles starting with `Show`, `Build`, `Create`, `Add`, `Refactor`, or `Investigate`
- Titles that mostly describe UI mechanics instead of user benefit
- More than one primary verb or more than one business outcome
- A description that only engineers would understand

## Jira Story Template

Use this template for each customer-facing story:

```markdown
Description
- Problem: <current friction or need>
- Slice: <what this story delivers now>
- Value: <what is newly possible or measurable>
- Outcome signal: <what signal proves the slice mattered>

## Value
**When** <situation or trigger>
**I want** <capability>
**so that** <outcome>

## AC
### Scenario 1: <platform or primary scenario when applicable>
**Given** I am <starting state from the user's point of view>
**When** I <action or event>
**Then** I <observable outcome>

### Scenario 2: <second platform scenario only when applicable>
**Given** I am <starting state from the user's point of view>
**When** I <action or event>
**Then** I <observable outcome>

### Scenario 3: Analytics / Monitoring
**Given** <feature exposure or value event occurs>
**When** <the tracked action or system behavior happens>
**Then** <the expected measurement, event, or monitoring behavior exists>

## Notes
<design files, links, dashboards, prototypes, research, or implementation notes>

### Implementation Scope
- <included implementation concern or boundary>
- <included implementation concern or boundary>

Dependencies
- None
```

## Jira Chore Template

Use `Chore` only for internal or enabling work that does not directly create customer-visible value:

```markdown
Objective
- <why the internal work is needed now>

Definition of Done
1. <observable internal completion state>
2. <evidence or verification>

Supports
- <story key or story title>
```

## Jira Spike Template

Use `Spike` when the main output is reduced uncertainty:

```markdown
Question to answer
- <decision or unknown>

Time box
- <expected limit>

Done when
1. <options compared>
2. <recommendation written>
3. <follow-up work identified>
```
