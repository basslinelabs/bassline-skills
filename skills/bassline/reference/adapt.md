# adapt

Show each plan line as a before and after card. The user approves each card before anything is made.

**Gates:** Brand, Brief.

## Steps

1. Read [adaptation-card.md](adaptation-card.md).
2. For each line, get the reference image (`get_swipe_collection` or `search_reference_ads`) and the product (`get_product`).
3. Fill the card. Default strength is High unless the user chose another.
4. Write the new copy. Tag each line with its source. Drop or flag any line without one.
5. Show up to 4 cards per message. The user approves, refines, swaps or drops by number.
6. On refine, make a new version of the card and show old and new side by side.
7. When every line has an approved card, show a one-line summary: "6 cards approved, 1 dropped. Ready to make 6 ads."

## Rules

- The card is the contract for `generate`. Copy goes to `generate_ads` exactly as approved.
- Keep exact label text exact. Do not fix spelling on a label.
- Changing product category (for example a tub into a bottle) changes scale and shape. Say so on the card.

Next: `generate`.
