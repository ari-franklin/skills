---
name: roadmap-builder
description: Use when creating, reshaping, critiquing, or validating a roadmap from notes, documents, issues, plans, metrics, decisions, risks, assumptions, dependencies, or repo context. Use for outcome roadmaps, strategy choice maps, milestones and markers, opportunity/solution trees, portfolio bets, Now/Next/Later roadmaps, quarterly or annual roadmaps, and visual HTML roadmap artifacts that help an audience decide what to do next, defer, commit to, or validate.
license: MIT
metadata:
  author: arifranklin
  version: "1.0"
---

# Roadmap Builder

Create portable, evidence-based roadmap artifacts from available source material. Do not assume a product methodology, data model, repository structure, storage system, or company planning process unless the user provides one.

## Outcome

Produce a roadmap that helps the intended audience decide:

- What to do next
- What to defer
- What is committed, directional, exploratory, or blocked
- What needs validation before stronger commitment
- Which risks, assumptions, or dependencies could change the roadmap

When requested, also produce a standalone HTML visualization of the roadmap.

## Required References

Load `references/html-patterns.md` when the user asks for a visual roadmap, HTML export, stakeholder-ready artifact, or shareable roadmap file.

## When To Use

Use this skill when the user asks to:

- Create, update, synthesize, critique, or explain a roadmap
- Turn messy source material into a roadmap
- Decide between roadmap formats
- Prioritize candidate work for a horizon or audience
- Make uncertainty, assumptions, risks, dependencies, or validation needs visible
- Convert initiatives, problems, issues, plans, OKRs, metrics, customer evidence, or decisions into an actionable planning artifact
- Export a roadmap as a visual HTML file

Do not use for generic task lists, project schedules, or delivery plans unless the user wants roadmap-level judgment.

## Inputs To Ask For Or Infer

Before drafting, identify or ask for the minimum missing context:

- Intended outcome: what decision or behavior the roadmap should enable
- Audience: executives, product team, engineering, sales, support, customers, board, cross-functional partners
- Horizon: sprint, month, quarter, half, year, multi-year, strategic horizon
- Use case: alignment, prioritization, sequencing, dependency coordination, discovery planning, stakeholder communication, portfolio tradeoff, delivery visibility
- Source material: problems, opportunities, customer evidence, initiatives, work items, decisions, metrics, risks, assumptions, dependencies, owners, constraints, open questions
- Commitment model: what is already committed, directional, exploratory, blocked, or merely considered
- Existing conventions: only use repository, organization, product, or planning conventions if visible in the provided context

If context is incomplete, proceed with explicit assumptions and label gaps.

## Commitment Labels

Use these labels consistently:

- `Committed`: approved, funded, active, or already promised work
- `Directional bet`: likely path, but scope or sequencing may change
- `Exploratory option`: candidate work that needs discovery, validation, or evidence
- `Blocked`: useful work that cannot move until a dependency, decision, or constraint clears
- `Deferred`: intentionally not next, with a reason

## Core Workflow

### 1. Frame The Roadmap

State the audience, horizon, intended outcome, use case, and decision the artifact should support.

### 2. Inventory Evidence

Extract source-backed facts, candidate problems or opportunities, current work, metrics, commitments, risks, assumptions, dependencies, and open questions. Preserve provenance where possible.

### 3. Establish The Baseline

Identify the strongest current problem or opportunity using evidence strength, relevance to the intended outcome, urgency, and consequences of delay.

### 4. Find The Strategic Anchor

Locate or infer the initiative, theme, bet, workstream, objective, outcome, or strategic choice that explains why this work matters. Mark inferred anchors clearly.

### 5. Normalize Candidate Work

For each candidate, capture:

- Label
- Problem or opportunity served
- Evidence
- Expected outcome or learning
- Commitment label
- Dependencies
- Risks and assumptions
- Open validation question
- Suggested horizon or sequence

### 6. Rank Candidates

Score qualitatively, not mechanically, across:

- Outcome relevance
- Evidence strength
- Urgency or timing pressure
- Dependency order
- Expected learning value
- Risk reduction
- Confidence

Explain why important items are Now, Next, Later, deferred, or excluded.

### 7. Choose The Format

Pick the roadmap shape that best fits the audience, horizon, uncertainty, and decision:

- Outcome roadmap: use when measurable behavior or business results matter more than feature commitments
- Strategy choice map: use when leadership must compare strategic options, bets, or tradeoffs
- Milestones and markers: use when progress needs observable checkpoints without overcommitting to detailed scope
- Opportunity / solution tree: use when discovery evidence, customer problems, and solution options need to stay connected
- Portfolio bets: use when balancing investment across teams, horizons, risks, or strategic tracks
- Now / Next / Later: use when near-term clarity and longer-term uncertainty both need to be visible
- Quarterly or annual roadmap: use when stakeholders need planning windows, capacity alignment, or dependency coordination
- Dashboard roadmap: use when the audience needs broad visibility across teams and progress measures
- Gantt-like roadmap: use only when scope is sufficiently certain and coordination against dates is the real need

Use less detail as uncertainty increases. Near-term work may be concrete; long-term work should usually be expressed as outcomes, opportunities, choices, or bets.

### 8. Shape The Artifact

Include the roadmap, short rationale, evidence summary, progress measures, risks, assumptions, dependencies, open questions, and explicit uncertainty labels.

### 9. Validate Before Finalizing

Run the quality gates below. Revise if any gate fails.

## Evidence And Quality Gates

A roadmap is acceptable only if:

- Evidence gate: important items cite or summarize source material; unsupported inferences are labeled
- Outcome gate: each major item connects to the intended outcome, strategic anchor, or current problem/opportunity
- Uncertainty gate: committed work, directional bets, exploratory options, blocked items, and deferred work are visibly distinct
- Format gate: the selected format fits the audience, horizon, and decision use case
- Prioritization gate: ranking explains why some work is Now, Next, Later, deferred, or excluded
- Dependency gate: sequencing reflects real dependencies and constraints where known
- Learning gate: uncertain items include what must be learned or validated next
- Risk gate: material risks, assumptions, and open questions are not buried
- Specificity gate: near-term work is more concrete than long-term work
- Integrity gate: the roadmap does not create false precision with dates, scope, or confidence

If evidence is weak, produce a provisional roadmap plus a validation plan instead of pretending certainty.

## Output Formats

Choose the lightest useful format unless the user asks for a specific one.

### Roadmap Brief

```markdown
# Roadmap

Audience:
Horizon:
Decision supported:
Strategic anchor:
Baseline problem/opportunity:
Recommended format:

## Roadmap
...

## What To Do Next
...

## What To Defer
...

## What Needs Validation
...

## Risks, Assumptions, Dependencies, And Open Questions
...
```

### Now / Next / Later

| Horizon | Commitment | Item | Why it matters | Evidence | Measure | Risks / assumptions | Next validation |
|---|---|---|---|---|---|---|---|

Use Now for committed or active work, Next for near-term discovery or likely bets, and Later for directional outcomes, opportunities, or options.

### Outcome Roadmap

| Outcome | Current signal | Candidate work | Confidence | Measure | Horizon | Evidence | Open question |
|---|---|---|---|---|---|---|---|

### Strategy Choice Map

| Strategic option | Problem/opportunity | Upside | Cost/risk | Evidence | Reversibility | Learning value | Recommendation |
|---|---|---|---|---|---|---|---|

### Milestones And Markers

| Marker | What changes | Evidence of progress | Dependency | Risk | Review point |
|---|---|---|---|---|---|

### Opportunity / Solution Tree

Represent as nested bullets or Mermaid:

```text
Outcome
- Opportunity
  - Solution option
  - Experiment or validation step
```

### Portfolio Bets

| Bet | Strategic anchor | Horizon | Investment level | Expected learning/outcome | Confidence | Kill/continue signal |
|---|---|---|---|---|---|---|

## HTML Roadmap Export

When the user asks for a visual roadmap, shareable artifact, stakeholder-ready view, or HTML export, create a standalone `roadmap.html` file unless they request another filename.

Load `references/html-patterns.md` before creating the file.

The HTML export must be:

- Self-contained: no build step, framework, package install, backend, or external service required
- Source-backed: visual items must preserve evidence, confidence, commitment label, risks, assumptions, dependencies, and open questions
- Format-aware: the visualization should match the chosen roadmap type instead of forcing every roadmap into a timeline
- Readable offline: use plain HTML, CSS, and minimal JavaScript only when interaction materially improves comprehension
- Decision-oriented: the first viewport should show what is Now, Next, Later, deferred, or needs validation

### Visual Patterns

Choose the pattern that fits the roadmap:

- Now / Next / Later: three-column board with commitment labels, confidence, measures, and validation needs
- Outcome roadmap: outcome lanes with measures, current signal, candidate work, and evidence strength
- Strategy choice map: comparison matrix plus recommended path and explicit tradeoffs
- Milestones and markers: horizontal marker path with observable progress signals and review points
- Opportunity / solution tree: nested tree from outcome to opportunities to solution options and experiments
- Portfolio bets: investment map by horizon, confidence, expected learning, and risk
- Quarterly or annual roadmap: time-bucketed lanes, with uncertainty increasing farther out
- Dashboard roadmap: compact cross-team or cross-theme view with progress indicators and risk flags

### HTML Content Requirements

Every visual roadmap should include:

- Title, audience, horizon, and decision supported
- Strategic anchor and baseline problem or opportunity
- Legend for commitment labels
- Roadmap visualization
- Evidence summary
- Progress measures
- Risks, assumptions, dependencies, and open questions
- What to do next
- What to defer
- What needs validation

### HTML Design Requirements

For HTML exports:

- Use semantic HTML, responsive CSS, and accessible color contrast
- Keep roadmap cards compact, with stable layout dimensions and wrapping text
- Avoid decorative visuals that obscure the roadmap
- Use badges, borders, icons, or structured labels to distinguish commitment and confidence
- Make uncertainty visible in the design, not only described in prose
- Do not use timelines or exact dates unless the source material supports them

### HTML Quality Gates

Before delivering the HTML:

- Confirm the visual hierarchy makes the main roadmap readable without scrolling through long prose first
- Confirm long text wraps cleanly on desktop and mobile widths
- Confirm uncertainty is visible in the design
- Confirm no roadmap item appears more certain, dated, or committed than the evidence supports
- Confirm the artifact works by opening the local file or otherwise inspecting the generated output when tools allow

## Anti-Patterns

Avoid:

- Inventing a roadmap from vibes when source material is available
- Treating all roadmap items as equally committed
- Filling future horizons with feature promises when only problems or outcomes are known
- Using dates to satisfy anxiety when uncertainty is high
- Ranking by stakeholder volume instead of outcome relevance and evidence
- Hiding assumptions, dependencies, risks, or open questions
- Turning the roadmap into a backlog dump
- Choosing Gantt or quarterly detail when discovery uncertainty is the dominant issue
- Overfitting to a repository's files, issue tracker, product process, or terminology without evidence
- Presenting confidence as higher than the source material supports
- Making an HTML artifact that looks polished but drops the evidence, confidence, or validation layer

## Final Response Standard

End with a readable artifact that helps the audience decide what to do next. If an HTML export is requested, include the path to the generated HTML file and briefly state which roadmap format it uses.
