---
name: notion-skill-architect
description: Audit a filesystem-backed agent skill and redesign it as a progressively disclosed Notion skill. Use when converting SKILL.md, references, workflows, evals, examples, and assets into an explicit Notion page architecture, or when reviewing an existing Notion skill for routing, duplication, drift, and testability.
metadata:
  author: arifranklin
  version: "1.0"
---

# Notion Skill Architect

Redesign an agent skill for dependable use in Notion. Treat the work as information architecture plus instruction design, not file conversion.

Assume linked subpages and attachments may not be read automatically. Put universal and behavior-critical instructions on the root page. Put conditional depth on subpages, and tell the agent exactly when each resource must be opened.

## Required Inputs

- The complete source skill, including `SKILL.md` and supporting resources
- The intended user and operating environment when they are not clear from the source
- A Notion destination before page creation begins

Optional inputs include new reference articles, replacement examples, an existing Notion hierarchy, and known failures or desired eval cases.

Classify every new article source before using it:

- **Authoritative guidance:** changes execution rules or quality requirements
- **Style calibration:** demonstrates voice, structure, or technique without defining mandatory behavior
- **Domain reference:** supplies background knowledge for particular workflows
- **Evidence:** supports a claim but does not become a standing instruction

Do not let a source article silently create a universal rule.

## Phase 1: Audit And Propose

Inspect every supplied source file before proposing the architecture. Treat the original `SKILL.md` as the primary source of intent unless the source defines another precedence rule.

Create an inventory that records:

- file name and path
- original purpose and content type
- whether it is universal or conditional
- dependencies and consumers
- overlap, contradiction, duplication, staleness, and orphaning
- recommended Notion treatment: root, workflow, reference, evaluation, example, attachment, consolidation, or omission

Extract the skill contract:

1. Purpose and intended user
2. Invocation and exclusion rules
3. Required and optional inputs
4. Workflows and selection logic
5. Shared execution process
6. Required outputs
7. Non-negotiable behavior
8. Evidence, attribution, inference, and uncertainty rules
9. Clarification and stop conditions
10. Shared and specialized quality criteria
11. References, examples, dependencies, and assets

Then return only:

1. Source audit
2. Proposed Notion hierarchy
3. Routing map

Use this routing-map schema:

| User intent or condition | Workflow | Required resources | Conditional resources | Evaluation |
|---|---|---|---|---|

Surface meaningful conflicts instead of silently resolving them. Recommend a resolution and identify which source would take precedence.

## Approval Gate

Do not create, delete, move, or rewrite Notion pages during Phase 1.

Wait for explicit approval of the audit, hierarchy, and routing map. Approval of the design authorizes only the approved migration scope. Obtain the destination page or database before creating content. Preserve the original source until the migration has been validated.

## Phase 2: Build The Notion Skill

After approval, read [references/page-contracts.md](references/page-contracts.md) and create the approved hierarchy.

### Root Page

The root is the router, contract, and minimum viable operating system. It must contain:

- one-sentence description and purpose
- when to use and when not to use
- required and optional inputs
- workflow-selection logic
- shared execution process
- universal non-negotiable rules
- evidence, attribution, and uncertainty rules
- shared output contract and quality gate
- clarification and stop conditions
- explicit resource-routing instructions
- definition of done

Keep the root concise, usually 800-1,500 words. It must govern every invocation without requiring the agent to infer the page architecture. Do not duplicate large references, examples, or specialized procedures there.

### Supporting Pages

- Use workflow pages for executable procedures.
- Use reference pages for conditional knowledge that informs execution.
- Use evaluation pages for observable quality standards and remediation rules.
- Use example pages for labeled calibration, never hidden requirements.
- Keep files as attachments only when they are asset-like, externally maintained, unusually long, or poorly represented as a Notion page.

Every supporting resource must have a reason to exist, an invocation condition, and at least one explicit consumer. Flag or remove orphaned resources after approval.

## Routing Requirements

Use direct routing language:

- If the user provides a rough idea, run `[workflow]`.
- Before running `[workflow]`, read `[required reference]`.
- If `[condition]` is present, also read `[conditional reference]`.
- After producing the output, evaluate it with `[evaluation]`.
- Consult `[example]` only when calibrating `[specific quality]`.
- Do not load `[resource]` for `[irrelevant workflow]`.

Avoid “when helpful” routing. State observable conditions.

## Instruction Design Rules

- Preserve constraints, distinctions, definitions, and important terminology.
- Keep universal rules on the root and workflow-specific rules on workflow pages.
- Link to one authoritative version of a rule instead of repeating it.
- Replace vague standards with observable behavior.
- Distinguish facts supplied by the user, sourced evidence, reasonable inference, hypothetical examples, and missing information.
- Require clarification rather than invented personal experience, proprietary facts, attribution, or consequential evidence.
- Separate normative instructions from examples.
- Label newly recommended behavior as a recommendation rather than pretending it came from the source.

## Validation

Create at least five representative tests:

1. Clear invocation
2. Ambiguous request requiring workflow selection
3. Request that should not invoke the skill
4. Request missing critical input
5. Complex request requiring conditional resources or evaluations

For each test, state the expected workflow, resources, clarification requirement, output shape, and pass/fail criteria.

Validate that:

- the root routes every supported request
- universal rules are present on the root
- every supporting resource has an explicit consumer
- no critical behavior depends on an unreferenced attachment
- workflow inputs and outputs are explicit
- stop-and-ask conditions are explicit
- evaluation criteria are observable
- examples are separate from instructions
- contradictions are resolved or surfaced
- one rule does not require maintenance in several places

## Deliverables After Approval

Return or create, in order:

1. Root skill page
2. Supporting workflow, reference, evaluation, and example pages
3. Attachment placement and routing instructions
4. Migration decisions
5. Validation report

Do not claim the migration is complete until links, routing, page placement, and representative tests have been checked.
