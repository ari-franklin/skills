# Diagram

Purpose: create one explanatory diagram for a Superblog post, outline, or Substack HTML artifact.

## Inputs

Use the finished draft, outline, or clearly stated thesis. Load `references/diagrams.md` before writing the diagram.

If the argument is not clear enough to diagram, return the missing argument pieces instead of producing a generic visual.

## Output

Include:

- Diagram role
- Placement in the post
- Why this diagram helps
- Diagram type
- Mermaid code
- Caption
- ASCII fallback, when useful
- Copy/paste note for Substack HTML, when relevant

## Diagram Rules

- The diagram should clarify the argument, not decorate the topic.
- Lead with the simplest sufficient diagram type.
- Prefer `flowchart`, `sequenceDiagram`, `erDiagram`, `stateDiagram-v2`, or `timeline` unless another type clearly fits better.
- Make the changed or important element visually obvious with `classDef`, labels, or both.
- Use 2-3 semantic colors at most.
- Keep one idea per diagram.
- Keep diagrams small enough to scan quickly. Split larger diagrams instead of crowding one canvas.
- Quote Mermaid labels when they contain spaces, punctuation, or special characters.
- Include a caption that explains the point, not the mechanics.

## Format

````text
## Diagram

Diagram role:
Placement:
Why this helps:
Diagram type:

Mermaid:

```mermaid
...
```

Caption:

ASCII fallback:

Substack HTML note:
````
