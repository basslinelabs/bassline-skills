# message

Suggest 2 or 3 messaging angles for the product. The user picks one, or writes their own.

**Gates:** Brand.

## Steps

1. `get_product` for facts, label text and review quotes. `list_research` for **approved** insights.
2. Ask for the user's direction if they gave none, in one line: "Any direction? For example a theme, an offer or a new size." Skip if they already said.
3. Write 2 or 3 angles. Each one:

```text
A. Name of the angle
   Promise: one line
   Built on: [approved research] ... + [product fact] ...
   Sample headline: ...
   Best for: top | middle | bottom of funnel
```

4. Show them side by side. Let the user pick one, mix two, or write their own.
5. Say which one you would pick in one line, with the reason. Do not pick for them.

## Rules

- Every angle must point to at least one approved insight or product fact.
- The user's own direction comes first. AI angles add to it, they do not replace it.

Next: `plan`.
