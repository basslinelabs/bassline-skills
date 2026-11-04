# sizes

Make an approved ad in other frames.

**Gates:** Spend. The ad must have a **pass** verdict from a person.

## Steps

1. `get_ad` to check the verdict. If it is not pass, stop and point to `review`.
2. Ask which frames, if not given.
3. Call `make_ad_sizes` without `quote_id`. Say the price and budget. Wait for yes. Call again with `quote_id`.
4. `get_ad` lists the new sizes. Show them side by side with the original.

Next: `review` the new sizes.
