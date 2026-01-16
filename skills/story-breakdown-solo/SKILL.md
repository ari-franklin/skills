---
name: story-breakdown
description: >
  Decomposes large chunks of work into explicit stories, spikes, and chores,
  applies type-aware readiness rules, and returns GO / NO_GO verdicts for planning
  and delivery. Allows gating on verdict, confidence, and work_type
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
2) **type-aware readiness evaluation** (GO / NO_GO) per item,
3) **conditional output schemas** per work_type, with value-first user stories and Gherkin AC.

You are both:
- a **formatter** (break big work into multiple explicit items), and
- a **judge** (type-aware readiness + GO/NO_GO gating).

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
2) decide `verdict` = `GO` or `NO_GO` using the type-specific logic
3) list `blocking_issues` (only the items that make it NO_GO)
4) list `open_questions` and `assumptions`

Do NOT invent details to achieve `GO`.
Prefer explicit “unknown” + a good question.

---

## Output
Schema examples below are illustrative.
Final output must conform structurally but must not include comments or documentation strings.
Return a single JSON object and nothing else (no prose, no Markdown).
Do not include fields that are not valid JSON keys.

Top-level output:

{
  "required_fields": ["summary", "assumptions", "open_questions", "items"],
  "summary": "1–3 sentences describing what you decomposed and how many items were produced",
  "assumptions": ["..."],
  "open_questions": [
    { "question": "...", "why_it_matters": "...", "suggested_owner": "PM|Eng|Design|Data|Security|Other" }
  ],
  "items": []
}

### Common fields (present on EVERY item)
Every item object MUST include:

{
  "required_fields": ["id", "work_type", "title", "context", "dependencies", "risks", "verdict", "confidence", "blocking_issues", "assumptions", "open_questions"],
  "id": "short-stable-id-like-1-1 or A1",
  "work_type": "user_story|spike|chore",
  "title": "...",
  "context": "ELI5 why this matters (1–3 sentences). If unknown, say so.",
  "dependencies": ["..."],
  "risks": [{ "risk": "...", "impact": "Low|Med|High", "mitigation": "..." }],
  "verdict": "GO|NO_GO",
  "confidence": 0.0,
  "blocking_issues": ["..."],
  "reclassification_notes": "optional; include only if applicable",
  "assumptions": ["..."],
  "open_questions": [
    { "question": "...", "why_it_matters": "...", "suggested_owner": "PM|Eng|Design|Data|Security|Other" }
  ]
}

---

## Conditional schemas by work_type (REQUIRED FIELDS)

### A) user_story (value-first + Gherkin AC)
A `user_story` item MUST add:
 
"required_fields": ["user_value", "definition_of_done", "acceptance_criteria", "edge_cases"],
"user_value": {
  "direct_user": "who benefits (persona or JTBD user)",
  "goal": "what they are trying to accomplish",
  "benefit": "why it matters / outcome for the user"

},
"definition_of_done": "Sets a stopping point based on the minimum work needed to let the direct user achieve the intended outcome.",
"acceptance_criteria": [
  "Scenario: <name>\nGiven ...\nWhen ...\nThen ...",
  "Scenario: <name>\nGiven ...\nWhen ...\nThen ..."
],
"edge_cases": ["..."],
"notes": ["implementation references are allowed here, but keep AC behavior-focused"]

User story readiness rules (GO only if ALL true):
	- User value is explicit and direct.
	- Story could deliver value if shipped alone.
	- Acceptance criteria are behavior-focused Gherkin (Given / When / Then).
	- Definition of Done is user-observable.
	- No blocking unknowns remain.

If it fails:
- `verdict = NO_GO`
- Put the failed bullets into `blocking_issues`.
- consider whether a `spike` is the appropriate follow-on work.

---

### B) spike (technical investigation)
A `spike` item MUST add:

"required_fields": ["learning_goal", "questions_to_answer", "investigation_plan", "expected_artifacts", "time_box", "exit_criteria", "follow_on_work", "definition_of_done"],
"learning_goal": "What uncertainty this spike reduces",
"questions_to_answer": ["..."],
"investigation_plan": ["..."],
"expected_artifacts": ["decision doc", "list of stories"]
"time_box": "e.g., 1–3 days",
"exit_criteria": ["What must be known/decided at the end"],
"follow_on_work": [
  { "type": "user_story|chore", "title": "...", "why": "..." }
],
"definition_of_done": "Work stops when the team can explain the simplest/most maintainable way forward and what comes next."

Spike readiness rules (GO only if ALL true):
- Learning goal is explicit.
- Time box is explicit.
- Exit criteria are explicit and verifiable (knowledge/decision, not “code merged”).
- Follow-on work is identified (even if tentative).

If the spike describes building the feature as the outcome, it is NOT a spike → reclassify or NO_GO.

---

### C) chore (tasks + state-change done-when)
A `chore` item MUST add:

"required_fields": ["purpose", "tasks", "definition_of_done"],
"purpose": "What deficiency exists / why this improves maintainability or delivery capability",
"tasks": [
  { "task": "...", "done_when": "objective state change (not just 'complete task')" }
],
"definition_of_done": "Work stops when the stated maintainability/quality deficiency is removed."

Chore readiness rules (GO only if ALL true):
- Purpose is clear and bounded.
- Tasks are concrete.
- Each task has an objective, observable `done_when`.
- The definition of done describes the resulting state, not activity.

If it claims direct user-visible value as the primary rationale, consider reclassifying to user_story.

---

## GO / NO_GO (type-aware, per item)
Set `verdict` per item:
- `GO` if all readiness rules for that work_type pass.
- `NO_GO` if any blocking rule fails.

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
