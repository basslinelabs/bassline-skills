# recipe

Save an approved adaptation so it can be used again.

**Gates:** Brand. The ad should have a pass verdict.

## Steps

1. Take the passed ad and its card: format, reference, strength, angle, size, scene notes.
2. Name the recipe in plain words, for example "Tub on marble, High, launch".
3. Call `save_recipe` with `name`, `format_id`, `reference_id`, `brand_id` and the settings in `recipe`.
4. Say plainly: it is saved as a **draft** recipe. It is not marked tested.

## Rules

- Never call a recipe tested or proven.

Next: `plan` can start from this recipe with `list_recipes`.
