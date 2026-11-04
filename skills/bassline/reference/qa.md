# qa

Check made ads for product fidelity, exact copy, claims, anatomy and crop.

**Gates:** Spend (`qa_ads` is paid).

## Steps

1. Collect the ad codes (from the last `generate`, or `list_ads`).
2. Call `qa_ads` without `quote_id`. Say the price and budget. Wait for yes. Call again with `quote_id`.
3. Poll `get_job` or `get_ad` until results are in.
4. Show one row per ad:

| Ad | Verdict | Copy match | Product and label | Claims | Other issues |
|---|---|---|---|---|---|

5. For each reject, write the fix note you would use. Do not run it.

## Rules

- QA is a check, not an approval. A person still gives the verdict in `review`.
- Any unsupported claim is a reject. Say which claim and why.

Next: `review`.
