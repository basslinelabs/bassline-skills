# onboard

Add a brand and its products so every other mode has facts to use.

**Gates:** Spend (both `onboard_brand` and `add_product` are paid).

## Steps

1. `list_brands`. If the brand already exists, say so and offer `research` or `curate` instead.
2. Ask for the website URL if the user did not give it.
3. Call `onboard_brand` without `quote_id`. Say the price and the budget in one line. Wait for yes. Call again with `quote_id`.
4. Poll `get_job` until it is done. Tell the user what was found: products, label text, review quotes, audience.
5. For a missing product, use `add_product` the same way (quote, yes, run, `get_job`).
6. Check each product with `get_product`. A product with no main reference image cannot be used in ads. Say so plainly.

## Output

A short list: brand name, products ready to use, products missing a main image.

Next: `research` to approve audience insights.
