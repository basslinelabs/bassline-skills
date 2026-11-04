---
name: bassline
description: Use when the user wants to make static ads with Bassline through the Bassline MCP or the planning flow. One skill with modes for setup (onboard, research, rules), finding inspiration (curate, analyze), planning (message, plan, adapt), making (generate, sizes), checking (qa, review), learning (recipe, status) and the full flow (run). Covers turning saved inspiration ads into ads for the user's own product, with a before and after adaptation card the user approves before any paid run. Not for video, websites or ad account management.
user-invocable: true
user_invocable: true
argument-hint: "[onboard|research|rules · curate|analyze · message|plan|adapt · generate|sizes · qa|review · recipe|status · run] [target]"
---

Turns inspiration ads into on-brand static ads for the user's product. Every step is visible, every paid step waits for a yes, and the user always picks the winners.

## Setup (non-optional)

1. **Start the workspace.** On the first call in a conversation, run `get_started` without asking. Open with its summary. Do not run it again in the same conversation unless the user switched workspace.
2. **Load the mode reference.** When a mode is given, read `reference/<mode>.md` before any tool call for that mode.
3. **Pass the gates.** Each mode lists which gates it needs. Check them in this order and stop at the first one that fails.

| Gate | Passes when | If it fails |
|---|---|---|
| Brand | A brand is chosen and `get_brand` returns it. The product is chosen and `get_product` shows a main reference image. | Run `onboard`, then come back. |
| Brief | Goal, funnel stage and angle are known, from the user or the plan. | Ask once, in one short message with choices. Do not ask again for what they gave. |
| Card | Each ad has an adaptation card the user approved. See [reference/adaptation-card.md](reference/adaptation-card.md). | Run `adapt`. |
| Claims | Every line of copy comes from product facts, exact label text, review quotes or approved research. | Remove the line or ask the owner to confirm it. Set `confirm_claims` only after the owner confirms. |
| Spend | The tool returned a quote. You said the price and the remaining budget in one line. The user said yes. | Do not call again with `quote_id`. |

Before any paid call, state this line:

```text
BASSLINE_GATES: brand=pass brief=pass|not_required card=pass|not_required claims=pass|not_required spend=quoted:$X.XX of $Y.YY left
```

Paid tools: `generate_ads`, `regenerate_ad`, `make_ad_sizes`, `qa_ads`, `onboard_brand`, `add_product`, `refresh_audience`.

## Shared laws

Apply in every mode.

- **The user picks.** Never choose a winning ad, version, angle or reference for the user. Show options side by side and let them choose. You may say which one you would pick and why, in one line.
- **Show before and after.** Any time an inspiration ad turns into a plan line or an ad, show the adaptation card: what stays, what changes, and the new copy.
- **Copy comes from facts.** Product facts, exact label text, review quotes and approved research only. Never invent numbers, prices, ratings, offers or results.
- **Plain words.** Name brands and products by name. Show money in dollars. Never ask the user to type ids, codes or tool names they did not give.
- **No internals.** Never name the models, providers or services behind Bassline. If asked, say Bassline's own engine.
- **Reading is not approving.** Opening an ad, a card or a QA result never approves it.
- **Terse.** One short message per step. Options as a list or a table, not paragraphs.

## Modes

| Mode | Group | What it does | Reference |
|---|---|---|---|
| `onboard [brand url]` | Set up | Add a brand and its products | [reference/onboard.md](reference/onboard.md) |
| `research [brand]` | Set up | Approve, reject or hold audience insights | [reference/research.md](reference/research.md) |
| `rules [ad]` | Set up | Turn review notes into brand rules | [reference/rules.md](reference/rules.md) |
| `curate [goal or collection]` | Find | Shortlist inspiration ads and say why each works | [reference/curate.md](reference/curate.md) |
| `analyze [ad]` | Find | Break down one ad: hook, angle, layout, why it works | [reference/analyze.md](reference/analyze.md) |
| `message [product]` | Plan | Suggest 2 or 3 messaging angles; the user picks one | [reference/message.md](reference/message.md) |
| `plan [collection]` | Plan | Fill the brief and lay out one line per ad | [reference/plan.md](reference/plan.md) |
| `adapt [plan or ad]` | Plan | Before and after card for each line, with strength | [reference/adapt.md](reference/adapt.md) |
| `generate` | Make | Quote, wait for yes, make the ads | [reference/generate.md](reference/generate.md) |
| `sizes [ad]` | Make | Make a passed ad in other frames | [reference/sizes.md](reference/sizes.md) |
| `qa [ads]` | Check | Check product, label text, claims and crop | [reference/qa.md](reference/qa.md) |
| `review [ads]` | Check | Compare versions, give verdicts and fix notes | [reference/review.md](reference/review.md) |
| `recipe [ad]` | Learn | Save an approved adaptation to use again | [reference/recipe.md](reference/recipe.md) |
| `status` | Learn | What is running, what waits on the user, spend | [reference/status.md](reference/status.md) |
| `run [goal]` | All | Full flow, stopping at every gate | [reference/run.md](reference/run.md) |

### Routing rules

1. **No argument:** run Setup step 1, then show the mode table above grouped by group, with one line each. Below it, suggest the one mode that fits the workspace now (for example `onboard` when there is no brand, `curate` when there is a brand and no collection). Ask what they want to do.
2. **First word is a mode:** load its reference and run it. Pass the rest of the argument as its target.
3. **First word is not a mode:** treat the whole argument as a request. Pick the closest mode, say which one in one line, and run it. When the request covers several steps, use `run`.

### Mode handoffs

Each mode ends by naming the next mode in one line, for example: "Next: `adapt` to see before and after." Do not start the next mode without the user, except inside `run`, and even there stop at every gate.

## Tool map

Use only these Bassline MCP tools. If a tool is missing in this session, say which step cannot run and stop.

| Need | Tools |
|---|---|
| Workspace | `get_started`, `whoami`, `get_spend` |
| Brand and product | `list_brands`, `get_brand`, `get_product`, `onboard_brand`, `add_product`, `get_job` |
| Audience | `list_research`, `review_research`, `refresh_audience` |
| Inspiration | `list_formats`, `search_reference_ads`, `list_swipe_collections`, `get_swipe_collection`, `list_recipes` |
| Make | `generate_ads`, `get_ad`, `list_ads`, `make_ad_sizes`, `regenerate_ad` |
| Check | `qa_ads`, `add_ad_feedback`, `set_ad_verdict`, `set_current_version` |
| Learn | `save_recipe`, `suggest_brand_rule` |

The "why it works" notes, messaging angles and adaptation cards have no MCP tool yet. Make them in the conversation from the reference images and stored facts, and keep them in the conversation. Do not claim they are saved in Bassline.
