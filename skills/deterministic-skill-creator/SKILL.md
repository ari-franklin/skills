---
name: deterministic-skill-creator
description: >
  Creates production-ready skills by enforcing deterministic execution models,
  explicit output contracts, and GO / NO_GO readiness gating. Produces complete,
  ready-to-drop SKILL.md files with built-in self-audits.
metadata:
  version: 0.1.0
  tags:
      - meta
      - skill-writing
      - determinism
      - opencode
      - superplan
---

# Deterministic Skill Creator

## Purpose
This skill helps create or improve **production-ready AI skills** by turning ideas,
examples, or draft prompts into **deterministic, enforceable SKILL.md files**.

This skill intentionally prioritizes **determinism over flexibility**.
It encodes judgment, readiness, and failure modes explicitly rather than relying
on ad-hoc prompting or vague guidance.

Use this skill when you want skills that:
- behave predictably across sessions,
- expose assumptions and unknowns,
- define clear execution order and stopping rules,
- can be gated (GO / NO_GO) before being shared or reused.

---

## When to Use
Use this skill when:
- creating a brand-new skill from an idea or examples,
- upgrading an existing SKILL.md that feels fuzzy or unreliable,
- turning a long prompt into a reusable, enforceable capability,
- you want to ensure a skill is “good enough to exist” before shipping it.

---

## Inputs Expected
The user may provide:
- a raw idea (“I want a skill that…”),
- an existing prompt or SKILL.md draft,
- example inputs and desired outputs,
- constraints (tools, output format, environment, tone).

Missing information is allowed.
Do NOT invent details — represent uncertainty explicitly.

---

## Execution Model (always follow in order)

### Step 1: Determine scope and trigger
Identify:
- `skill_name` (kebab-case)
- `one_sentence_job` (what this skill does end-to-end)
- `when_to_use` (what a user would say that should trigger it)
- `out_of_scope` (what this skill must NOT attempt)

If the scope is too broad, narrow it to a single repeatable job.

---

### Step 2: Collect or infer examples
Prefer 2–5 concrete examples:
- example user inputs,
- expected output shapes.

If no examples are provided:
- create plausible examples,
- mark them as assumptions,
- record confirmation questions in `open_questions`.

---

### Step 3: Choose the simplest viable implementation pattern
Select the minimal pattern that works:
- prompt-only with structured output (default),
- retrieval (RAG / document grounding),
- tool-use workflow,
- hybrid (only if required).

Bias toward prompt-only + explicit contracts.

---

### Step 4: Define output contracts
Define enforceable output contracts, including:
- a top-level response object,
- required fields and enums,
- base objects (if producing multiple items),
- conditional schemas if behavior branches by type.

If downstream gating is expected, include:
- `verdict` (GO / NO_GO),
- `blocking_issues`,
- `confidence`.

---

### Step 5: Generate the SKILL.md
Produce a complete, ready-to-drop `SKILL.md` that includes:
- YAML frontmatter (name, description, version, tags),
- Purpose and When to Use,
- Inputs Expected,
- Deterministic Execution Model (ordered steps),
- Output requirements (schemas or contracts),
- Constraints using MUST / DO NOT language,
- 1–2 short invocation examples.

Keep the file concise (generally under ~500 lines).
This is agent instruction, not user documentation.

---

### Step 6: Audit and improve
Audit the generated skill against the checklist:
- discoverability (YAML + filename),
- deterministic execution order,
- enforceable contracts (not just prose),
- hallucination resistance (unknowns surfaced),
- testability (how to tell if it worked),
- readiness to share or reuse.

Return a clear audit result.
Set `ready_to_ship` to true only if:
- all checklist items are explicitly satisfied,
- `blocking_issues` is empty,
- required fields in the output contract are present and non-empty
  (except for fields marked optional or allowed to be empty).
Otherwise set `ready_to_ship` to false and list concrete blockers.

---

## Output Format (MUST follow)

Return a single JSON object and nothing else (no prose, no Markdown).
The output must be valid JSON; strings must be properly escaped, including
newlines inside `generated_skill_md` (use `\n`).
All fields are required unless explicitly noted as optional.
The following fields may be empty arrays: `out_of_scope`, `assumptions`,
`open_questions`, `audit.blocking_issues`, `audit.recommendations`.

```json
{
  "skill_name": "kebab-case-name",
  "one_sentence_job": "One sentence describing the end-to-end job.",
  "when_to_use": "A user request that should trigger this skill.",
  "out_of_scope": ["..."],
  "proposed_folder_path": "<skill_name>/SKILL.md",
  "assumptions": ["..."],
  "open_questions": [
    {
      "question": "...",
      "why_it_matters": "...",
      "suggested_owner": "PM|Eng|Other"
    }
  ],
  "generated_skill_md": "FULL CONTENTS OF SKILL.md AS A STRING",
  "formatted_output_md": "FULL CONTENTS OF THE GENERATED SKILL FILE AS MARKDOWN, WITH A HEADER INDICATING THE TARGET PATH (e.g., '# <skill_name>/SKILL.md')",
  "audit": {
    "ready_to_ship": true,
    "blocking_issues": ["..."],
    "recommendations": ["..."]
  }
}
