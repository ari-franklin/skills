---
name: newsworthy-meeting-recap
description: >
  Convert meeting transcripts into concise, Axios Smart Brevity–style
  news articles with clear outcomes, memorable takeaways, and optional
  humor or clickbait-style headlines.
metadata:
  version: 0.1.0
  tags:
    - writing
    - summarization
    - smart-brevity
    - meeting-notes
---

# Newsworthy Meeting Recap

## Purpose
Turn raw meeting transcripts into scannable, news-style articles inspired by
Axios’ Smart Brevity format. The output should make it easy to understand
**what happened, why it matters, and what stood out**—fast.

## When to Use
Use when a user wants:
- A readable summary of a meeting transcript
- An Axios or Smart Brevity–style write-up
- Clear takeaways instead of traditional meeting notes
- A shareable internal “news article” version of a meeting

## Inputs Expected
- **Required:** Full meeting transcript (raw text)
- **Optional:**  
  - Target audience  
  - Tone constraints  
  - Explicit request for clickbait headline  
  - Preference on speaker attribution  

## Deterministic Execution Model
1. **Confirm headline preference**
   - If clickbait preference is not provided, ask: "Do you want an attention grabbing (clickbait) headline?"

2. **Validate input**
   - If no transcript is provided or content is too thin, return `NO_GO`.

3. **Extract signal**
   - Identify **3–7 key outcomes or decisions**
   - Identify **3–7 memorable takeaways** (insights, tensions, surprises)
   - Identify **action items or next steps** if present in the transcript
   - Identify **memorable quotes** if present in the transcript
   - Identify **up to 3 funny or light moments**, *only if clearly present and requested*

4. **Select headline mode**
   - Include **standard headline** by default
   - Include **clickbait headline only if explicitly requested**

5. **Draft the article**
   - Use short, labeled sections with the exact headings: **Summary**, **Key takeaways**, **Memorable quotes**, **Action items**
   - Write the **Summary** as a brief news-style narrative with embedded first-person quotes when available
   - Write punchy, skimmable sentences
   - Avoid invented facts, quotes, or interpretation beyond the transcript
   - Prioritize informative substance, takeaways, and action items over humor

6. **Assemble structured output**
   - Populate all required schema fields
   - Keep article to **≤ 5 sections** unless the user asks otherwise

## Output Requirements
Return **one JSON object only** using the schema below.

```json
{
  "verdict": "GO" | "NO_GO",
  "blocking_issues": [string],
  "confidence": 0.0,
  "headlines": {
    "standard": string,
    "clickbait": string | null
  },
  "key_outcomes": [string],
  "memorable_takeaways": [string],
  "memorable_quotes": [string],
  "action_items": [string],
  "funniest_moments": [string],
  "article": string,
  "notes": {
    "assumptions": [string],
    "omissions": [string]
  }
}
