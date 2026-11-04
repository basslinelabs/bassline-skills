# research

Approve, reject or hold the audience insights that messaging and copy are allowed to use.

**Gates:** Brand. Spend only for `refresh_audience`.

## Steps

1. `list_research` for the brand.
2. Show insights in groups of up to 6, numbered, each in one line with its source.
3. The user answers per number: approve, reject, or hypothesis, with an optional note.
4. Call `review_research` for each answer with the note.
5. If the research is old or thin, offer `refresh_audience` (quote, yes, run).

## Rules

- Only **approved** insights feed `message` and copy. Hypotheses can inspire an angle but never a claim.
- Never approve for the user.

Next: `curate` to find inspiration ads.
