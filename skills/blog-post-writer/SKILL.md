---
name: blog-post-writer
description: >
  Writes blog posts that match a blog’s tone, structure, themes, and writing style
  using deterministic style extraction from user-provided reference samples.
  Enforces strict GO / NO_GO gating when inputs are insufficient.
metadata:
  version: 0.1.0
  tags:
  - writing
  - blog
  - style-matching
  - deterministic
---

when_to_use: >
  Use this skill when a user asks for a blog post written in the blog's style and can provide sufficient reference material from it.

inputs_expected:
  required:
    - name: topic
      type: string
      description: The core idea or question the blog post explores.

    - name: key_points
      type: list
      description: 3–7 bullet points that must be covered in the post.

    - name: length_words
      type: integer
      description: Target word count for the post (must be ≥ 300).

    - name: reference_samples
      type: list
      description: >
        2–3 blog posts or long excerpts.
        Minimum 400 total words across all samples.

  optional:
    - name: audience
      type: string
      description: Intended audience (e.g., PMs, founders, product leaders).

    - name: constraints
      type: list
      description: Banned topics, claims, phrases, or required language constraints.

deterministic_execution_model:
  steps:
    - step: Validate inputs
      rules:
        - If reference_samples are missing or < 400 total words → NO_GO
        - If length_words missing or < 300 → NO_GO

    - step: Extract style fingerprint
      outputs:
        - sentence_length
        - paragraph_length
        - structure
        - tone_markers
        - themes

    - step: Derive canonical outline
      description: >
        Construct an outline that mirrors the dominant structural pattern
        observed in the reference samples.

    - step: Draft content
      description: >
        Write the blog post strictly following the derived outline
        and fully covering all key_points.

    - step: Apply style constraints
      description: >
        Enforce cadence, paragraphing, rhetorical devices, and tone
        to match the extracted fingerprint.

    - step: Final compliance pass
      checks:
        - Word count within ±10% of length_words
        - All key_points covered
        - No banned constraints violated

output_contract:
  format: json
  schema:
    required_fields:
      - verdict
      - blocking_issues
      - style_fingerprint
      - outline
      - post
    verdict:
      type: string
      allowed_values: ["GO", "NO_GO"]

    blocking_issues:
      type: list
      item_type: string
      description: Explicit reasons preventing execution (empty if GO).

    style_fingerprint:
      sentence_length:
        type: string
        allowed_values: ["short", "mixed", "long"]
      paragraph_length:
        type: string
        allowed_values: ["short", "mixed", "long"]
      structure:
        type: list
        item_type: string
      tone_markers:
        type: list
        item_type: string
      themes:
        type: list
        item_type: string

    outline:
      type: list
      item_type: string
      description: Ordered list of section headings.

    post:
      type: string
      description: Full blog post text (must be empty if verdict = NO_GO).

rules:
  - MUST NOT invent reference material.
  - MUST NOT claim familiarity with the blog beyond provided samples.
  - MUST return NO_GO if required inputs are missing.
  - MUST remain deterministic; no optional branches or creative detours.
  - MUST NOT output prose outside the JSON contract.

audit_checklist:
  - Deterministic steps followed in order
  - GO / NO_GO gating enforced
  - JSON output strictly matches schema
  - Reference samples validated
  - Ready to ship only if output contract is consistently met
