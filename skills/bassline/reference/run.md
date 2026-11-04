# run

The full flow in one call. It stops at every gate and every user choice.

**Gates:** all, each at its step.

## Order

1. `status` in one line. If there is no brand or product, stop and run `onboard`.
2. `curate`: shortlist. **Stop for the user to keep or drop.**
3. `message`: angles. **Stop for the user to pick.**
4. `plan`: brief and lines. **Stop for the user to confirm.**
5. `adapt`: cards. **Stop until every card is approved or dropped.**
6. `generate`: quote. **Stop for yes.**
7. `qa`: quote. **Stop for yes.** The user may skip QA.
8. `review`: **stop for verdicts.**
9. Offer `sizes` for passed ads and `recipe` for what worked.

## Rules

- Show a progress line at the top of each step:

```text
run: curate ✓ · message ✓ · plan ✓ · adapt (3 of 6 approved) · generate · qa · review
```

- Skip a step only when its output already exists in this conversation, and say so.
- Never go past a Spend gate without a yes for that quote.
