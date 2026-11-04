# rules

Turn a review note into a brand rule so future ads and QA follow it.

**Gates:** Brand.

## Steps

1. Find the ad and the review note. Use `get_ad` or the note the user just gave.
2. Write the rule as one plain line, up to 300 characters. Example: "Never show the tub lid off."
3. Show the rule to the user. Let them edit it.
4. Call `suggest_brand_rule` with the ad code and the rule.
5. Say plainly: the rule is now **suggested**. A person approves it on the brand page. It is not active yet.

Next: back to `review`.
