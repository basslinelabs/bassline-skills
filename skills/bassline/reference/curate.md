# curate

Find inspiration ads that fit the product and goal, say why each one works, and save a shortlist.

**Gates:** Brand. Brief is helpful but not required.

## Steps

1. **Start from what exists.** `list_swipe_collections`. If the user named a collection, `get_swipe_collection`. Otherwise search.
2. **Search.** `list_formats`, then `search_reference_ads` with plain words for the product type, packaging and what the ad shows. Prefer results with `has_offer_or_rating` false. Pull 12 to 20.
   - Words that name a product type or packaging become strict filters. If the search returns nothing, run it again with `match` set to `broad`, then with fewer product words. Say in one line that you widened the search.
   - Look in the user's own collections before the library. A saved collection is a stronger taste signal than a search result.
3. **Look at each ad.** Open the image. For each, write one card line:

```text
1. [format] Hook: ... · Angle: ... · Why it works: ... · Fit: high|medium|low, because ...
```

4. **Shortlist.** Suggest 4 to 8 ads with a spread of formats and angles. Never more than 2 of the same format.
5. **User picks.** Show the shortlist as numbered images with the card line. The user keeps or drops by number.
6. **Save.** The MCP has no tool to save a collection. Tell the user to save the kept ads as a collection in the Swipe File in the app, and give the collection name to use. Then confirm with `get_swipe_collection`.

## Rules

- Fit is about the user's product and goal, not about the ad looking nice.
- Say "why it works" as a mechanism, for example "the before and after split makes the result obvious in one glance". Never claim the ad performed well unless the data says so.
- Mark what cannot carry over on each ad: prices, discounts, star ratings, review counts, press logos, real people and other brands' product names. Write "Do not carry over: ..." in its card line.
- If an ad was already used in a failed or rejected ad for this brand, say so and suggest a different one.
- Ads without a `reference_id` are links or recipes. They cannot be used to make ads. Say so.

Next: `message` to choose the angle.
