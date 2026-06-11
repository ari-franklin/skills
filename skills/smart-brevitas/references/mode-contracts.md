# Mode Contracts

## Mode Selection

Choose the mode that matches the communication job, not just the user's wording.

If a source could fit multiple modes, prefer the reader's decision context:

- Leaders deciding: `executive-brief`
- Team adapting behavior: `internal-announcement`
- Stakeholders tracking progress: `weekly-update`
- Public audience learning news: `external-announcement`

## Weekly Update / Product Update

Use when the user needs a recurring stakeholder, team, product, or project update.

Required shape:

```markdown
# <headline under 60 characters>

**Why it matters:** <one sentence>

**What's new**
- **<scan anchor>** <progress or update>
- **<scan anchor>** <progress or update>

**What to watch**
- **<scan anchor>** <risk, blocker, dependency, or upcoming signal>

**Bottom line:** <memorable takeaway>
```

Use **By the numbers** when metrics are central.

## External Announcement

Use when the output is public-facing or industry-facing.

Required shape:

```markdown
# <punchy concrete headline>

**Why it matters:** <public or industry relevance>

**What's new**
- **<scan anchor>** <core announcement>
- **<scan anchor>** <second concrete detail>

**The big picture:** <short context>

**Bottom line:** <ultimate takeaway>
```

Add **Quote** only when the source includes a quote or the user asks to draft one. Do not invent attribution.

## Executive Brief

Use when a leader needs a decision, risk view, or recommendation.

Required shape:

```markdown
# <direct bottom-line headline>

**Why it matters:** <business or strategic impact>

**Decision needed:** <approval, choice, or no decision needed>

**Reality check**
- **<scan anchor>** <risk or tradeoff>
- **<scan anchor>** <risk or tradeoff>

**Recommendation:** <opinionated path forward>

**Bottom line:** <high-level takeaway>
```

Use Superloop before drafting if the recommendation is not clear enough to defend.

## Team / Internal Announcement

Use when employees, partners, or internal teams need to understand a change and act.

Required shape:

```markdown
# <warm action-oriented headline>

**Why it matters:** <how this affects daily work>

**What's new**
- **<scan anchor>** <change>
- **<scan anchor>** <change>

**What to watch**
- **<scan anchor>** <timeline, action, or dependency>

**Bottom line:** <reassuring or clarifying close>
```

Use **By the numbers** for dates and deadlines when timing matters.

## Signal Extraction

Use when the user asks what matters or the input is too messy to draft immediately.

Output:

```markdown
**Signal:** <the real news>

**Audience:** <primary reader>

**Why it matters:** <stakes>

**Noise to cut**
- <detail to remove>
- <detail to remove>

**Best format:** <mode>

**Bottom line:** <next writing move>
```

Use `scripts/extract-signal.md` as the output contract.

## Rewrite

Use when the user provides existing prose and asks for a clearer, tighter, Axios-style version without needing a specialized announcement or executive format.

Output:

```markdown
# <headline under 60 characters>

**Why it matters:** <one sentence>

**What's new**
- **<scan anchor>** <rewritten signal>
- **<scan anchor>** <rewritten signal>

**Bottom line:** <final takeaway>
```

Use `scripts/rewrite.md` as the output contract.

## Critique

Use when the user provides an existing brief and wants feedback.

Output:

```markdown
**Biggest issue:** <main weakness>

**What works**
- <strength>

**What to cut**
- <specific cut>

**What to sharpen**
- <specific rewrite or structural move>

**Bottom line:** <highest-leverage revision>
```

Use `scripts/critique.md` as the output contract.
