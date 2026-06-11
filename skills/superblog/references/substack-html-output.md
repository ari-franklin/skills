# Substack HTML Output

## Purpose

Create a Substack-ready HTML version of a finished Superblog post.

The artifact should let the user open a local HTML page, select the article body, copy it, and paste it into a Substack draft with the intended structure mostly preserved.

The HTML page is a publishing aid, not the primary writing surface. The article's argument, voice, and sequence remain more important than decoration.

---

## Source Principle

Use formatting devices to improve the reading experience, not to show that formatting is available.

Substack-style visual elements should help readers:

- enter the post
- notice a major turn
- separate sections
- absorb a key quote or example
- understand a practical takeaway
- subscribe at a natural pause

If a device creates visual noise, slows reading without adding meaning, or makes the article feel cheaper, remove it.

---

## When To Use

Use this contract when the user asks for:

- Substack-ready output
- HTML output for a blog post
- copy/paste-ready formatting
- a publication-ready version of a finished draft
- images, subscribe buttons, dividers, pull quotes, block quotes, or callout blocks in the post
- Mermaid diagrams or other explanatory visual structures in the post

Do not use this contract to rescue an underdeveloped draft. Strengthen the article first.

---

## Output Directory

Use a clear artifact directory name, for example:

```text
superblog-substack-output/
```

Recommended files:

```text
superblog-substack-output/
  index.html
  styles.css
  assets/
    hero-placeholder.txt
```

Use plain HTML and CSS by default. Add JavaScript only for copy helpers or optional preview toggles. The body content should still be copyable without JavaScript.

---

## Required Page Structure

Create one `index.html` page with:

- title
- subtitle or deck, if the post has one
- optional hero image
- author/date placeholder only if useful
- article body
- subscribe button block
- divider elements
- pull quotes
- block quotes
- callout blocks
- optional closing subscribe block
- copy guidance outside the copyable article area

Wrap the Substack-copyable content in:

```html
<main class="substack-copy-zone">
  ...
</main>
```

Keep any instructions, notes, or copy buttons outside `.substack-copy-zone` so they are not accidentally pasted into the Substack draft.

---

## Copy/Paste Requirements

The copy zone should rely on common, portable HTML elements:

- `h1`, `h2`, and `h3`
- `p`
- `strong`, `em`, and `a`
- `figure`, `img`, and `figcaption`
- `blockquote`
- `hr`
- `ul` and `ol`
- `pre` for Mermaid diagrams
- simple `div` wrappers for callouts and subscribe blocks
- `button` or `a` elements for subscribe calls to action

Avoid complex nested layout, external fonts, CSS frameworks, scripts, forms, iframes, and generated SVG ornamentation. These are less likely to paste cleanly into Substack.

Use inline-friendly class names for preview styling, but do not depend on class names for the article's meaning.

---

## Visual Devices

### Images

Use images when they clarify the argument or create a strong editorial entry point.

Include:

- one hero image near the top when a usable image exists or the user asks for one
- optional in-body image only if it explains a shift, contrast, example, or metaphor
- clear alt text
- concise captions when the image needs context

If no image asset exists, include an image placeholder block with:

- image role
- recommended prompt or brief
- suggested placement
- alt text draft

Do not use generic stock-photo signals, quote posters, fake UI text, or decorative abstract images.

### Diagrams

Use diagrams when they clarify a structure, flow, lifecycle, timeline, system interaction, or before/after change.

Load `references/diagrams.md` before creating Mermaid. Use:

```html
<pre class="mermaid">
flowchart LR
  A["Client"] --> B["API"]
</pre>
```

Place diagrams where the reader needs the structure to follow the next section. Do not put diagrams in the article only because the HTML page supports them.

Include a concise caption or lead-in sentence that explains the point of the diagram. If the diagram carries an important claim, include a short prose or ASCII fallback nearby so the post still makes sense if Mermaid does not render after paste.

Keep diagrams small and copyable:

- one idea per diagram
- roughly 7 plus or minus 2 nodes
- quoted labels when labels contain punctuation or special characters
- 2-3 semantic colors at most
- no external Mermaid plugins or renderer-specific hacks

### Subscribe Buttons

Include subscribe calls to action sparingly:

- one near the first natural pause after the opening argument or first section
- one near the end, if the post is long enough

The copy should feel native to the article, not like an ad.

Example labels:

- `Subscribe`
- `Get future essays`
- `Follow the next post`

Use placeholder URLs unless the user provides a publication URL.

### Dividers

Use `hr` dividers only at meaningful transitions:

- after the opener
- before a major section turn
- before the closing practical takeaway

Avoid using dividers between every section.

### Pull Quotes

Use one or two pull quotes per full article.

Choose lines that:

- state the core tension
- mark the article's turn
- are strong enough to stand alone

Do not create pull quotes by repeating a weak sentence in large type. If no sentence earns pull-quote treatment, omit the pull quote.

### Block Quotes

Use block quotes for:

- quoted material from a person, source, meeting, or draft
- an explicitly framed old belief or competing interpretation
- a brief excerpt the post is responding to

Do not use block quotes as generic emphasis. Use pull quotes for editorial emphasis.

### Callout Blocks

Use callout blocks for practical reader help:

- a decision rule
- a test to apply
- a caution
- a concise summary of implications

Recommended labels:

- `Try this`
- `Watch for`
- `Decision test`
- `The practical version`

Use one or two callouts per full post. More than that usually creates clutter.

---

## Layout Requirements

The page should feel like a clean editorial preview:

- max-width reading column around 680-760px
- comfortable line height
- clear section headings
- restrained color
- readable contrast
- print-friendly defaults
- mobile-friendly spacing

Do not make it a landing page. Avoid hero-card layouts, decorative gradients, animation, or excessive chrome.

---

## Content Rules

Before formatting, verify:

- the thesis is clear
- the opening has tension or a concrete moment
- examples are doing explanatory work
- visual devices have a reason to exist
- diagrams reduce reader effort instead of adding visual noise
- the final takeaway is earned

When placing visual devices:

- preserve the draft's sequence
- do not invent new claims
- do not add filler sections just to use formatting
- keep single-line emphasis rare
- keep the post copyable as a coherent article without the preview CSS

---

## Final Response When Delivering

When a Substack HTML artifact is created, tell the user:

- the artifact location
- whether images are real files, remote URLs, or placeholders
- what region to copy into Substack
- any formatting that may need a quick manual check after paste

If the HTML is plain HTML/CSS, tell the user it can be opened directly in a browser.
