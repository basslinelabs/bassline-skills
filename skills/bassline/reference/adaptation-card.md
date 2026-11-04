# Adaptation card

The shared unit for `adapt`, `plan`, `run` and `review`. One card per ad. The same card shows in chat now and in the plan page later.

## Fields

| Before (inspiration ad) | After (user's product) |
|---|---|
| Image of the reference ad | Product reference image, or the made ad once it exists |
| **Format:** library format name | **Format:** same format (one format per ad) |
| **Hook:** the first thing the eye reads | **Hook:** the new hook |
| **Angle:** the promise or tension it uses | **Angle:** the chosen angle from `message` |
| **Why it works:** one line | **Keeps:** layout, crop, light, type style, hook type |
| **Its copy:** each text line | **Changes:** product, claim, offer, colors to brand |
| | **New copy:** each line exactly as it will render, with its source |
| | **Strength:** Low, Medium or High |

## Strength

Show it as a scale, not as a word list:

```text
Strength  Low ○──○──● High
Low     keep the format only, new scene
Medium  keep the visual approach and hierarchy
High    keep the closer composition, crop and light (default)
```

## Copy sources

Every new copy line carries its source in brackets: `[product fact]`, `[label text]`, `[review quote]`, `[approved research]`. A line with no source fails the Claims gate. Numbers not on file get `[needs owner confirmation]`.

## Card actions

Each card ends with these choices, like an inline AI suggestion:

- **Approve** the card as is.
- **Refine** with a note (new hook, other strength, other copy line). Make a new card version and show both.
- **Swap reference** to another ad from the collection.
- **Drop** the line.

Show at most 4 cards per message. Number them. Let the user answer in one line, for example "approve 1, 3; refine 2: shorter headline; drop 4".
