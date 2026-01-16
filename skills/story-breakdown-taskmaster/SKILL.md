---
name: story-breakdown
description: >
  Decomposes large chunks of work into explicit stories, spikes, and chores,
  applies type-aware readiness rules, and returns GO / NO-GO status
  for planning and delivery. Allows gating on status, confidence, and work_type
metadata:
  version: 0.2.0
  tags:
    - planning
    - backlog
    - story-writing
    - superplan
    - delivery
---

## Story Breakdown + Work Decomposition Skill (Steps + Output Contracts)

### Goal
Take a messy chunk of work (initiative/epic/story dump) and produce:
1) a **deterministic decomposition** into explicit work items, and
2) **type-aware readiness evaluation** (GO / NO-GO) per item,
3) **conditional output schemas** per work_type, with value-first user stories and Gherkin AC.

You are both:
- a **formatter** (break big work into multiple explicit items), and
- a **judge** (type-aware readiness + GO/NO-GO gating).

---

## Execution Model (end-to-end)
When this skill is invoked, always follow the Execution Model in order.
Do not skip classification or readiness evaluation.

### Step 0: Normalize input
If the input is a large chunk (initiative, epic, transcript, PRD, notes), extract:
- goals / outcomes
- user(s) or beneficiary(ies)
- constraints (tech, compliance, timelines)
- risks / unknowns
- implied deliverables

Do not invent missing info. Track uncertainty in `assumptions` and `open_questions`.

---

### Step 1: Decompose into explicit work items
Produce a list of candidate work items. Prefer **smaller, independently meaningful** items.

Decomposition rules:
- Separate distinct value streams into separate items.
- Separate learning/uncertainty reduction into **spikes**.
- Separate maintainability/enablement into **chores**.
- Separate restoring broken behavior into explicit work items (treated as user stories or chores depending on user-visible impact).
- If something needs multiple releases to be valuable, split it until each item has a coherent “done” state.

Output: a set of `items[]` with provisional titles and intent.

---

### Step 2: Classify each item (deterministic branch point)
For EACH item, set `work_type` to exactly one of:
- `user_story`
- `spike`
- `chore`

Classification rules:
- `user_story` if it delivers **direct, immediately observable value** to the product’s direct user upon completion.
- `spike` if it primarily reduces uncertainty / answers an implementation or feasibility question.
- `chore` if it improves maintainability/quality/delivery capability with no direct user-visible value.
- If work restores previously existing user value:
  - classify as `user_story` if the fix is directly user-visible
  - classify as `chore` if the fix is primarily technical or internal

If the input calls something a “story” but it matches spike/chore/bug rules, **override** and explain in `reclassification_notes`.

This classification MUST happen before readiness evaluation. No exceptions.

---

### Step 3: Apply type-aware readiness rules and create conditional output
For EACH item:
1) generate the type-specific output shape (schema below)
2) decide `readiness_status` = `GO` or `NO-GO` using the type-specific logic
3) map readiness to Taskmaster `status` (`GO` -> `pending`, `NO-GO` -> `deferred`)
4) list blockers that make it `NO-GO` (capture in `details`)
5) list `open_questions` and `assumptions` (capture in `details`)

Do NOT invent details to achieve `GO`.
Prefer explicit “unknown” + a good question.

---

## Output
Produce one output and nothing else:
- A single JSON object written to `.taskmaster/tasks/tasks.json`.

### Output rules (MANDATORY)
- Return only JSON in the response, no extra commentary.
- Write the same JSON to `.taskmaster/tasks/tasks.json`.
- Use the tag-based structure expected by Taskmaster (default tag is "master").
- If a section has no items, use an empty array.
- Do NOT surface assumptions or blockers inline unless they block execution; capture full detail in `details`.

### Taskmaster Execution Principles (handoff)
- Apply TDD by default: derive tests from acceptance criteria before implementing.
- Implement the smallest change to make tests pass; refactor only after tests are green.
- Treat failing or missing tests as a stop condition until resolved.
- Taskmaster should only pick up items where `readiness_status` is `GO` and `status` is `pending`.

### Output JSON structure: tasks.json
Output valid JSON only, no commentary. Structure:
{
  "master": {
    "meta": {
      "summary": "1-3 sentences describing what you decomposed and how many items were produced",
      "assumptions": ["..."],
      "open_questions": [
        { "question": "...", "owner": "PM|Eng|Design|Data|Security|Other", "unlocks": "..." }
      ]
    },
    "tasks": [
      {
        "id": 1,
        "title": "<TL;DR line>",
        "description": "<value-first summary>",
        "status": "pending|in-progress|done|deferred",
        "dependencies": [2],
        "priority": "high|medium|low",
        "details": "Purpose, user value, readiness_status (GO|NO-GO), blockers, assumptions, open_questions, edge cases, notes",
        "testStrategy": "Scenario: <name>\\nGiven ...\\nWhen ...\\nThen ...",
        "subtasks": [
          {
            "id": 1,
            "title": "<short subtask>",
            "description": "...",
            "status": "pending|in-progress|done|deferred",
            "dependencies": [],
            "details": "...",
            "testStrategy": "..."
          }
        ]
      }
    ]
  }
}

Example status update (after execution):
{
  "master": {
    "meta": {
      "summary": "Example summary",
      "assumptions": [],
      "open_questions": []
    },
    "tasks": [
      {
        "id": 1,
        "title": "Example title",
        "description": "Example user value summary",
        "status": "done",
        "dependencies": [],
        "priority": "medium",
        "details": "readiness_status: GO",
        "testStrategy": "Scenario: Example\\nGiven ...\\nWhen ...\\nThen ...",
        "subtasks": []
      }
    ]
  }
}

### Common item requirements
Every item MUST include:
- A numeric id (1, 2, 3...) unique within the tag
- A human TL;DR line
- Purpose, user value, dependencies, and status
- Risks, assumptions, blockers, and open questions captured in `details`

---

## Conditional schemas by work_type (REQUIRED FIELDS)

### A) user_story (value-first + Gherkin AC)
A `user_story` item MUST capture in `details`:
- Purpose and user value (direct_user, goal, benefit)
- Definition of Done
- Acceptance criteria (also place in `testStrategy`)
- Edge cases
- Notes (behavior-focused, not implementation)

User story readiness rules (GO only if ALL true):
	- User value is explicit and direct.
	- Story could deliver value if shipped alone.
	- Acceptance criteria are behavior-focused Gherkin (Given / When / Then).
	- Definition of Done is user-observable.
	- No blocking unknowns remain.

If it fails:
- Set `readiness_status = NO-GO`.
- Set Taskmaster `status = deferred`.
- Put the failed bullets into `details` under "BLOCKERS".
- Consider whether a `spike` is the appropriate follow-on work.

---

### B) spike (technical investigation)
A `spike` item MUST capture in `details`:
- Learning goal
- Questions to answer
- Investigation plan
- Expected artifacts
- Time box
- Exit criteria (also place in `testStrategy`)
- Follow-on work
- Definition of Done

Spike readiness rules (GO only if ALL true):
- Learning goal is explicit.
- Time box is explicit.
- Exit criteria are explicit and verifiable (knowledge/decision, not “code merged”).
- Follow-on work is identified (even if tentative).

If the spike describes building the feature as the outcome, it is NOT a spike → reclassify or NO-GO.

---

### C) chore (tasks + state-change done-when)
A `chore` item MUST capture in `details`:
- Purpose (maintainability or delivery capability)
- Tasks with objective `done_when`
- Definition of Done

Chore readiness rules (GO only if ALL true):
- Purpose is clear and bounded.
- Tasks are concrete.
- Each task has an objective, observable `done_when`.
- The definition of done describes the resulting state, not activity.

If it claims direct user-visible value as the primary rationale, consider reclassifying to user_story.

---

## Readiness status (type-aware, per item)
Set `readiness_status` per item:
- `GO` if all readiness rules for that work_type pass.
- `NO-GO` if any blocking rule fails.

Taskmaster status mapping (JSON only):
- If `readiness_status = GO`, set `status = pending`.
- If `readiness_status = NO-GO`, set `status = deferred`.
- After execution and verification, update `status` to `done`.

Confidence guidance:
- 0.8–1.0: clear, testable, minimal unknowns
- 0.5–0.8: mostly clear but some uncertainty
- <0.5: major ambiguity, likely misclassification, or missing DoD/AC/exit criteria

---

## Additional constraints
- Keep user stories value-first; keep “how” mostly out of AC (implementation can go in `notes`).
- Do not bloat user story AC with every sad path; include representative edge cases.
- Prefer multiple smaller items over one mega-item if value streams differ.
- Never fabricate metrics, user research, or system behavior.
