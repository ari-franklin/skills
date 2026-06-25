# HTML Roadmap Patterns

Use this reference when creating a standalone visual roadmap HTML file. The goal is a readable decision artifact, not a generic landing page or decorative mockup.

## Shared HTML Contract

Every HTML roadmap must be:

- Self-contained: one `.html` file with embedded CSS and optional minimal JavaScript
- Portable: no build step, package install, backend, CDN, or external assets
- Evidence-aware: roadmap items preserve evidence, confidence, commitment, risks, assumptions, dependencies, and validation needs
- Responsive: readable on desktop and mobile without horizontal scrolling for core content
- Accessible: semantic sections, visible focus states if interactive, and sufficient color contrast
- Print-tolerant: usable when printed or exported to PDF, even if not fully optimized for print

Use exact dates only when they appear in source material or are explicitly requested. Otherwise, prefer horizons, markers, relative sequencing, and decision points.

## Page Structure

Use this structure unless the user requests a different artifact:

1. Header
   - Roadmap title
   - Audience
   - Horizon
   - Decision supported
2. Strategy frame
   - Strategic anchor
   - Baseline problem or opportunity
   - Format rationale
3. Roadmap visualization
   - The selected visual pattern
   - Legend for commitment and confidence
4. Decision summary
   - What to do next
   - What to defer
   - What needs validation
5. Evidence and risk layer
   - Evidence summary
   - Progress measures
   - Risks
   - Assumptions
   - Dependencies
   - Open questions

The roadmap visualization should appear before long evidence prose.

## Shared Components

### Roadmap Card

Each card should include:

- Title
- Commitment label
- Confidence label
- Why it matters
- Evidence
- Measure or learning signal
- Risk, assumption, or dependency
- Next validation step when uncertain

Keep cards compact. Use details blocks, footnotes, or secondary rows for long evidence rather than making the main roadmap hard to scan.

### Commitment Legend

Represent commitment consistently:

- Committed: highest visual certainty, but still include risks
- Directional bet: medium certainty, with visible assumptions
- Exploratory option: lower certainty, centered on learning
- Blocked: visually distinct and tied to the blocker
- Deferred: muted, with the reason for deferral

Do not use color alone to encode meaning. Pair color with text labels, borders, icons, or badge text.

### Confidence Badge

Use simple labels:

- High
- Moderate
- Low
- Unknown

Confidence reflects evidence quality, not enthusiasm.

### Evidence Chip

Use short evidence chips to keep source strength visible:

- Customer signal
- Metric signal
- Strategic decision
- Dependency
- Risk
- Assumption
- Open question
- Inferred

Mark inferred evidence explicitly.

## Visual Patterns

### Now / Next / Later Board

Use when the roadmap must show near-term clarity and longer-term uncertainty.

Layout:

- Three responsive columns: Now, Next, Later
- Now cards may include owners, status, and committed measures
- Next cards should emphasize validation, dependencies, and likely sequencing
- Later cards should emphasize outcomes, opportunities, or options, not feature promises

Avoid:

- Exact dates in Later
- Treating Later items as promised scope
- Equal visual weight for committed and exploratory work

### Outcome Lanes

Use when measurable behavior or business results matter more than feature delivery.

Layout:

- One lane per outcome
- Each lane shows current signal, target or desired movement, candidate work, and evidence strength
- Include progress measures near the lane label

Avoid:

- Listing features without the outcome they serve
- Hiding weak or missing measurement

### Strategy Choice Matrix

Use when the audience must compare strategic options, bets, or tradeoffs.

Layout:

- Matrix rows are strategic options
- Columns compare upside, evidence, cost, risk, reversibility, learning value, and recommendation
- Highlight the recommended option without hiding alternatives

Avoid:

- Presenting a choice as obvious when evidence is thin
- Omitting reversibility or downside

### Milestones And Markers

Use when progress needs observable checkpoints without overcommitting to detailed scope.

Layout:

- Horizontal or vertical marker path
- Each marker states what changes, evidence of progress, dependency, risk, and review point
- Use approximate sequence instead of precise dates unless dates are sourced

Avoid:

- Treating markers as guaranteed delivery dates
- Using milestone language for unvalidated discovery work

### Opportunity / Solution Tree

Use when discovery evidence, customer problems, and solution options need to stay connected.

Layout:

- Root outcome at the top or left
- Opportunities as branches
- Solution options and experiments as child nodes
- Use badges for evidence strength and confidence

Avoid:

- Jumping from outcome directly to solutions without opportunities
- Making every branch look equally supported

### Portfolio Bets Grid

Use when balancing investment across teams, horizons, risks, or strategic tracks.

Layout:

- Grid by horizon and investment level, risk level, or confidence
- Each bet shows strategic anchor, expected learning or outcome, confidence, and kill/continue signal
- Include a visible balance summary across bets

Avoid:

- Optimizing only for confidence and starving learning bets
- Hiding concentration risk

### Quarterly Or Annual Lane View

Use when stakeholders need planning windows, capacity alignment, or dependency coordination.

Layout:

- Lanes by theme, team, customer segment, or strategic track
- Time buckets by quarter, half, or year
- Farther-out buckets should use lower specificity and weaker visual certainty

Avoid:

- Precise bar lengths without scoped work
- Making later buckets look as committed as near-term work

### Dashboard Summary View

Use when the audience needs broad visibility across teams and progress measures.

Layout:

- Summary metrics at top
- Compact theme or team rows below
- Show status, confidence, key risk, and next decision
- Link or anchor to deeper sections in the same file when needed

Avoid:

- Overloading the dashboard with every work item
- Letting status color replace evidence or explanation

## CSS Guidance

Use a restrained, neutral base with differentiated accents for meaning. Avoid a one-note palette dominated by one hue. Keep typography compact and readable.

Recommended style choices:

- `max-width` content wrapper for prose sections
- Full-width roadmap visualization band when useful
- CSS grid for boards, lanes, and matrices
- `border-radius` of 6px to 8px for cards
- Thin borders and soft fills for grouping
- `overflow-wrap: anywhere` for long labels
- `@media` rules that stack columns on mobile
- `@media print` rule that removes sticky/floating UI and keeps cards together when possible

Avoid:

- Decorative gradient backgrounds
- Hero sections
- Nested cards inside cards
- Tiny low-contrast badges
- Horizontal scrolling as the default mobile experience

## Minimal Skeleton

Adapt this structure rather than treating it as a rigid template:

```html
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Roadmap</title>
  <style>
    :root {
      --bg: #f7f8fa;
      --surface: #ffffff;
      --text: #172026;
      --muted: #5f6b76;
      --line: #d9dee5;
      --committed: #1f7a4d;
      --bet: #8a5a00;
      --explore: #355c9a;
      --blocked: #9b2c2c;
      --deferred: #667085;
    }
    * { box-sizing: border-box; }
    body {
      margin: 0;
      font-family: Inter, ui-sans-serif, system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      color: var(--text);
      background: var(--bg);
      line-height: 1.45;
    }
    main { padding: 28px; }
    .wrap { max-width: 1180px; margin: 0 auto; }
    .summary, .roadmap, .evidence { margin-top: 24px; }
    .grid { display: grid; gap: 16px; }
    .card {
      background: var(--surface);
      border: 1px solid var(--line);
      border-radius: 8px;
      padding: 14px;
      overflow-wrap: anywhere;
    }
    .badge {
      display: inline-flex;
      align-items: center;
      border: 1px solid var(--line);
      border-radius: 999px;
      padding: 2px 8px;
      font-size: 12px;
      font-weight: 650;
    }
    @media (max-width: 760px) {
      main { padding: 18px; }
      .grid { grid-template-columns: 1fr !important; }
    }
    @media print {
      body { background: #fff; }
      .card { break-inside: avoid; }
    }
  </style>
</head>
<body>
  <main>
    <div class="wrap">
      <header>
        <h1>Roadmap title</h1>
        <p>Audience | Horizon | Decision supported</p>
      </header>

      <section class="summary" aria-labelledby="strategy-frame">
        <h2 id="strategy-frame">Strategy Frame</h2>
      </section>

      <section class="roadmap" aria-labelledby="roadmap-view">
        <h2 id="roadmap-view">Roadmap</h2>
      </section>

      <section class="evidence" aria-labelledby="evidence-risk">
        <h2 id="evidence-risk">Evidence And Risk</h2>
      </section>
    </div>
  </main>
</body>
</html>
```

## Final HTML Check

Before returning the file path, inspect the generated HTML if possible and confirm:

- The selected pattern matches the roadmap type
- The first viewport shows the roadmap or immediate decision summary
- Commitment and confidence are distinguishable without relying on color alone
- Long text wraps without breaking layout
- Mobile stacking preserves reading order
- Evidence and uncertainty are visible, not buried
