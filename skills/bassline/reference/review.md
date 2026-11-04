# review

The user compares versions and gives verdicts. Fixes become new versions.

**Gates:** none to look. Spend for `regenerate_ad`.

## Steps

1. `get_ad` with `include_image` for each ad. Show the ad next to its card and its QA result if there is one.
2. When an ad has more than one version, show them side by side, numbered.
3. The user answers per ad: pass, review or reject, with a note. Call `set_ad_verdict`. Free comments go to `add_ad_feedback`.
4. To keep an earlier version, `set_current_version`.
5. To fix, write a specific fix note with the user ("make the lid visible, keep the crop"). Call `regenerate_ad` without `quote_id`, say the price, wait for yes, run.
6. If a note should apply to every future ad, offer `rules`.

## Rules

- Never pick the winner. You may say which you would pick, in one line.
- A fix note names what to change and what to keep.

Next: `sizes` for passed ads, or `recipe` to save what worked.
