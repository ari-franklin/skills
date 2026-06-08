---
name: lightweight-backlog-stories
description: Create lightweight backlog story, spike, chore, support, or bug drafts before design.md. Use when the user needs a concise pre-design work item with context and a definition of done, not a full implementation plan or vertical story slicing session.
license: private
metadata:
  author: arifranklin
  version: "0.1"
---

# Lightweight Backlog Stories

Create a compact backlog item that is clear enough to seed `design.md` or a lightweight planning conversation.

## Outcome

Produce one backlog item with:

- A short title
- A clear type
- Practical context explaining who cares and why
- A concise definition of done in the format that matches the work type
- Notes only when they help the next design or planning step

## When To Use

Use this skill when the user asks for:

- A lightweight backlog story before `design.md`
- A quick spike, chore, support, or bug draft
- A small work item that needs enough shape to discuss, but not enough for full Jira slicing
- A concise definition of done for early product or delivery shaping

Do not use this skill for:

- Full vertical slicing across multiple user stories; use `story-slicer`
- Detailed implementation planning
- Long PRDs, design docs, or architecture docs
- Jira issue creation

## Source Material

Load `references/type-formats.md` for the correct Definition of Done format.

Use `evals/sample-story.md` only as a compact style example.

## Core Rules

1. Keep the output lightweight enough to seed `design.md`.
2. Start with the user, operator, business, or system impact.
3. Infer the work type only when it is obvious; otherwise ask or state the assumption.
4. Do not over-slice. This skill creates one backlog item at a time unless the user asks for multiple.
5. Write the Definition of Done as observable completion, not implementation steps.
6. Avoid technical jargon unless the source material requires it.
7. Do not invent design decisions, analytics requirements, or solution details.

## Workflow

### 1. Identify The Type

Choose one:

- `user story`: user-visible or business-visible behavior change
- `spike`: time-boxed learning or feasibility work
- `chore`: internal task with no direct user behavior change
- `support`: operational support work
- `bug`: broken behavior that needs correction

If the type is ambiguous, make a reasonable assumption and label it.

### 2. Shape The Context

Write 2-4 sentences covering:

- who is affected
- what is happening now
- why it matters
- what the item should make possible

Keep the context practical. The goal is enough shared understanding for the next design step.

### 3. Write The Definition Of Done

Use the matching format from `references/type-formats.md`.

For user stories:

- Use 1-3 concise Given / When / Then scenarios.
- Focus on the visible outcome, not the internal implementation.

For spikes:

- List expected outputs.
- List the questions the spike must answer.

For chores or support:

- List the concrete tasks that define completion.

For bugs:

- State observed behavior.
- State expected behavior.

### 4. Add Notes Only When Useful

Add notes for:

- known constraints
- links or artifacts the user provided
- assumptions that should be checked in `design.md`
- intentionally deferred details

Do not create a long implementation scope.

## Output Format

```markdown
# <short title>

## Type
<user story | spike | chore | support | bug>

## Context
<2-4 concise sentences>

## Definition of Done
<format depends on type>

## Notes
- <optional>
```
