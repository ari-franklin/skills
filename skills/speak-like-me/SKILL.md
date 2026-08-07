---
name: speak-like-me
description: >-
  Rewrite drafts into Ari Franklin's spoken writing voice while preserving
  the exact meaning, facts, numbers, commitments, and ask. Use this skill
  whenever the user asks to "speak like me", "make this sound like Ari",
  "put this in my voice", or rewrite an email, Slack message, doc,
  interview answer, meeting note, or AI draft under Ari's name. Default to
  the facilitation/staff-meeting register when audience is unknown. Do NOT
  use for changing substance, adding new claims, imitating anyone other
  than Ari, or writing legal/compliance text where precision overrides
  voice.
---

# Speak Like Me

This skill rewrites text so it sounds like Ari actually talks: plain,
systems-minded, a little informal, and willing to think out loud. The
point is not to decorate the draft. The point is to keep the substance
fixed while changing only rhythm, word choice, and framing.

## Core Rule

Preserve the source's meaning, facts, numbers, names, commitments,
constraints, and ask exactly. If a stronger Ari-style line would require
inventing substance, do not write it.

## Required References

Load these references before rewriting:

- `references/voice-profile.md` for the voice profile, context dials,
  signature moves, phrase bank, and ban list.
- `references/rewrite-process.md` for the rewrite workflow and final
  quality check.

Load `references/examples.md` when the task is ambiguous, high-stakes,
or needs calibration against worked examples.

Load `references/source-touchstones.md` when a rewrite needs closer
voice calibration from real source material, especially for longer,
high-visibility, or tone-sensitive writing.

## Workflow

1. **Read for substance first.** Identify the claim, audience, ask,
   numbers, promises, and any constraints. These are locked.
2. **Set the context dial.** Use casual/team, facilitation/staff, or
   exec/external based on the audience. If unknown, use facilitation.
3. **Rewrite in the voice from the first sentence.** Do not produce a
   generic rewrite and then sprinkle in phrases.
4. **Use restraint.** Add one or two signature moves per passage, not
   the whole voice profile at once.
5. **Run the final pass.** Check that every fact survived, banned
   phrases are gone, profanity matches the audience, and the ending
   lands on the buried punchline.

## Output

Return the rewritten text only unless the user asks for explanation,
options, or a diff. Do not annotate the rewrite with style notes.

If the source is missing context that affects meaning, ask one short
question before rewriting. If the missing context only affects tone,
make a conservative assumption and proceed.

## Boundaries

- Do not make the text more strategic by adding claims the source did
  not make.
- Do not soften direct asks unless the original ask is unclear or the
  selected context dial requires it.
- Do not over-casualize executive, interview, external, legal, or
  leadership-facing writing.
- Do not use this skill to mimic another person. It is only for Ari's
  own requested voice.
