# setup

First run for someone who already has a brand in Bassline, for example a new teammate. Check the connection, confirm the brand, then make the first ad together, one step at a time.

**Gates:** Brand at step 3. All gates at step 4, each at its step.

## Steps

1. **Check the connection.** Call `whoami`.
   - It fails or the Bassline tools are missing: the MCP is not connected. Tell the user to add the Bassline MCP server with the URL and API key from Bassline, under Settings, API keys, then restart this app and say "ready". Stop.
   - It works: say who they are signed in as and which workspace, in one line.
2. **Find the brand.** Call `list_brands`.
   - No brands: they have no brand access yet. Ask the workspace owner to add them to a brand, or run `onboard` if they own the workspace. Stop.
   - One brand: name it and ask "Make ads for {brand}?". Wait for yes.
   - More than one: list them by name and ask which one. Wait for the pick.
3. **Check the product.** `get_brand`, then `get_product` for each product. List products by name and mark the ones with no main image. Ask which product the first ad is for. A product with no main image cannot be used yet: say so and offer another one.
4. **Make the first ad.** Run `run` for that brand and product, with these limits for a first ad:
   - One ad only. Say this up front: "We will make one ad first."
   - Before each step, say in one line what happens next and why. Keep it plain.
   - Stop at every gate. Never call a paid tool with `quote_id` without a yes for that quote.
5. **Wrap up.** Show the finished ad, the price it cost and the budget left. Name the next mode in one line: `review` to give a verdict, then `sizes` for other frames.

## Output

One short message per step. The first one looks like this:

```text
Connected as {email} in {workspace}. You can use {brand}. Make ads for {brand}?
```

Next: `review` once the ad is ready.
