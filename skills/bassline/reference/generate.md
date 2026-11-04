# generate

Make the ads from approved cards.

**Gates:** Brand, Brief, Card, Claims, Spend.

## Steps

1. Build the `generate_ads` call from the approved cards: one ad per card with `aspect`, `copy` (exact lines), `reference_id` or `collection`, `format_id`, and the brief as `goals`, `funnel_stages` and `angle`. Up to 12 ads per batch.
2. Call without `quote_id`. Print the `BASSLINE_GATES` line. Say the price and the remaining budget in one line. Wait for yes.
3. If the tool returns `needs_confirmation`, show which numbers are not on file. Ask the owner. Set `confirm_claims` only after they confirm.
4. Call again with `quote_id`.
5. Poll `get_ad` for each code until ready. Show progress in one line, not per poll.
6. Show the made ads next to their cards with `get_ad` and `include_image`.

## Rules

- Never call with `quote_id` without a yes from this conversation for this quote.
- Do not rerun a batch to "try again". Use `review` and `regenerate_ad` with a fix note.

Next: `qa`, then `review`.
