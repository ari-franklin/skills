# Image Brief

Purpose: create 1-2 image concepts for a Superblog post or strong outline.

## Inputs

Use the finished draft, outline, or clearly stated thesis. Load `references/image-style.md` and `references/visual-metaphors.md` before writing the brief.

If the argument is not clear enough to visualize, return the missing argument pieces instead of producing generic image prompts.

## Output

For each concept, include:

- Image role
- Core idea
- Visual scene
- Metaphor or tension
- Composition
- Style direction
- What to avoid
- Image prompt

Return no more than two concepts unless the user explicitly asks for more.

## Concept Rules

- The image should clarify the argument, not summarize the title.
- Prefer concrete, editorial scenes over abstract symbolism.
- Make the scene specific to the post's actual tension.
- Use no embedded text unless the user asks for a poster or social card.
- Avoid generic AI, startup, agile, roadmap, or productivity imagery.
- Avoid photorealistic depictions of real named people unless the user provided permission and intent.

## Prompt Rules

Prompts should be ready for image generation. Include:

- medium, such as editorial photograph, cinematic still life, or textured illustration
- subject and setting
- the key objects or figures
- framing, focal point, and crop
- lighting and color
- negative constraints, especially no logos, no legible text, no generic stock-photo style

## Optional Generation Step

If the user asks to create the actual images, use the available image generation capability after producing or confirming the brief. Generate 1-2 images, not a large batch.

## Format

```text
## Image Concepts

### Concept 1: [short name]

Image role:
Core idea:
Visual scene:
Metaphor or tension:
Composition:
Style direction:
What to avoid:
Image prompt:

### Concept 2: [short name]

Image role:
Core idea:
Visual scene:
Metaphor or tension:
Composition:
Style direction:
What to avoid:
Image prompt:
```
