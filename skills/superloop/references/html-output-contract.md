# HTML Output Contract

## Purpose

Create a static interactive decision dossier from a Superloop run.

The HTML artifact should make the same user-facing reasoning easier to inspect, challenge, revisit, and share. It should not replace the chat answer; it should turn the answer into a navigable artifact.

---

## When To Create

Create the HTML dossier when the user asks for:

- HTML output
- an interactive output
- a shareable artifact
- a durable decision record
- separate pages for Explain, Prioritize, Decompose, or Validate

For a multi-mode Superloop run, create or offer the dossier when the selected path would be hard to inspect as one long chat response.

Do not create an HTML artifact for a small single-mode answer unless the user asks for it.

---

## Output Directory

Use a clear artifact directory name, for example:

```text
superloop-output/
```

Recommended files:

```text
superloop-output/
  index.html
  explain.html
  prioritize.html
  decompose.html
  validate.html
  assets/
    template.html
```

Only create mode pages for modes that were actually selected. If a mode was skipped, mention the skip reason on `index.html` instead of creating an empty page.

When a reusable template is available, prefer a token-filled template over one-off page chrome. The recommended template contract uses four tokens:

- `__TITLE__`: page title and main heading; use the topic, not the reasoning stage
- `__SUBTITLE__`: one-line subtitle; use this for the Superloop stage or page role, such as `Superloop stage: Validate`
- `__META__`: compact provenance line, such as selected route and generation date
- `__CONTENT__`: page body built from standard components

The template should own page shell behavior such as table of contents, scrollspy, tabs, Mermaid rendering, syntax highlighting, and responsive layout. The Superloop run should only author the body content.

For mode pages, avoid titles like `Validate: Does The Logic Hold?`. Prefer:

```text
__TITLE__: Does The Logic Hold?
__SUBTITLE__: Superloop stage: Validate
```

For the summary page, use the overall topic as `__TITLE__` and a summary label such as `Superloop dossier: Summary` as `__SUBTITLE__`.

---

## Required Pages

### `index.html`

The summary page should include:

- original user prompt or decision question
- routing decision
- selected path
- routing confidence
- reason for the route
- visual route map with links to selected mode pages
- final takeaway
- stop condition
- links to all generated mode pages

This page should answer: "What should happen next, and why is this the right reasoning path?"

### Mode Pages

Each generated mode page should include:

- mode name
- why this mode was included
- the user-facing reasoning from that section
- key outputs from the mode
- link back to `index.html`
- previous and next mode links when applicable

Mode page emphasis:

- `explain.html`: framing, definitions, interpretations, and clarified meaning
- `prioritize.html`: ranking, evidence quality, urgency, confidence, and override logic
- `decompose.html`: components, workstreams, leverage points, relationships, and sequencing inputs
- `validate.html`: assumptions, risks, evidence gaps, success signals, and what would change the conclusion

---

## Interaction Requirements

Keep the artifact static and portable. Use plain HTML, CSS, and minimal JavaScript unless the user asks for a richer app.

Useful interactions:

- route-map links between pages
- collapsible detail sections
- filter or toggle for assumptions, risks, evidence, and actions
- copyable final takeaway
- print-friendly styling
- active navigation state
- auto-generated table of contents from `h2` and `h3` headings
- tabs generated from panels with `data-label`
- Mermaid diagrams in `<pre class="mermaid">...</pre>`

Avoid interactions that hide the conclusion or make the artifact harder to scan.

---

## Design Requirements

The dossier is a reasoning artifact, not a marketing page.

Use:

- restrained visual hierarchy
- compact sections
- readable tables where ranking or comparison is involved
- badges for routing confidence, selected modes, skipped modes, risks, and assumptions
- clear navigation across pages
- callouts for key ideas, rationale, notes, and risks
- numbered steps for decision procedures
- before/after columns when explaining a changed interpretation

Do not use:

- decorative hero sections
- generic landing-page copy
- unrelated imagery
- heavy animation
- framework dependencies unless requested

---

## Content Rules

The HTML artifact must preserve the Superloop output contract:

- expose reasoning, not just conclusions
- make recommendations traceable to the reasoning that produced them
- include only selected mode sections as full pages
- keep skipped modes visible only as routing context
- distinguish evidence, assumptions, risks, and conclusions

Do not add private hidden reasoning. Use only the user-facing reasoning that belongs in the final Superloop answer.

## Component Guidance

Use these body components when they improve scanability:

- `<h2>` and `<h3>` for table-of-contents sections
- `<div class="callout key">...</div>` for the bottom line or advance organizer
- `<div class="callout why">...</div>` for rationale
- `<div class="callout note">...</div>` for asides
- `<div class="callout warn">...</div>` for risks and gotchas
- `<div class="check">...</div>` for optional predict-then-verify comprehension checks
- `<details class="collapse">...</details>` for progressive disclosure
- `<div class="tabs"><div class="tab" data-label="...">...</div></div>` for alternate lenses
- `<div class="diff"><div class="before">...</div><div class="after">...</div></div>` for before/after reasoning changes
- `<pre class="mermaid">...</pre>` for route maps, dependency maps, and visual decision flows
- `<ol class="steps">...</ol>` for procedures

Keep one idea per `h2` or `h3` so the generated table of contents reads like an outline.

For Mermaid, keep diagrams small, quote labels that contain punctuation, and make the changed or decisive node visually loudest with a class. If Mermaid syntax is uncertain, simplify the diagram rather than risking a broken render.

---

## Final Response When Delivering

When an HTML dossier is created, tell the user:

- the artifact location
- which pages were generated
- whether it can be opened directly in a browser or needs a local server

If plain HTML/CSS/JS is used, prefer a directly openable `index.html`.
