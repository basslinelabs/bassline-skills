# status

Show what is running, what failed, what is waiting on the user, and the spend.

**Gates:** none. Free.

## Steps

1. Use the `get_started` result from this conversation. Run it only if it has not run yet. It already has spend, so do not call `get_spend` here. Use `get_spend` only when the user asks for the ledger.
2. `list_ads` for the newest 20 ads.
3. Show four short lists:
   - **Running:** ads queued or generating.
   - **Failed:** failed ads, grouped by batch, with one line on what to do. Say if the charge was released.
   - **Waiting on you:** ready ads with no verdict, research waiting for review, cards not approved.
   - **Spend:** used and left this month, in dollars.
4. Suggest the one next mode.
