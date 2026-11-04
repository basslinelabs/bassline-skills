# Bassline bot setup for Grok Bot

Paste the message below into Grok Bot, or send it this one line:

```text
Set up a Bassline bot by following https://raw.githubusercontent.com/basslinelabs/bassline-skills/main/grok-bot/SETUP.md
```

You need two things from your Bassline admin: your **Bassline MCP link** and your **personal API key**. Give the key only in Grok Bot's secure input, never in the chat.

## Message to paste

```text
Make a new bot for Bassline. Do these steps in order and stop to ask me when a step needs me.

1. Name the bot "Bassline". Title: "Ad maker". Description: "Makes static ads for my brands with Bassline. Finds inspiration ads, suggests messaging, shows each ad before and after, makes ads only after I approve the price, and lets me pick every winner."

2. Add a custom MCP server called bassline. Ask me for the URL (my Bassline MCP link). It uses Streamable HTTP. It needs one request header: Authorization, with the value "Bearer " followed by my personal API key. Ask me for the key in the secure input, not in chat. Store it as a header on the server entry, never in the URL. There is no OAuth.

3. Install the Bassline skill from the public repo https://github.com/basslinelabs/bassline-skills. The skill is the folder skills/bassline: SKILL.md plus the reference folder. Install it as a skill named bassline. If you cannot install skills from a repo, read skills/bassline/SKILL.md and every file in skills/bassline/reference, and follow them as your working instructions.

4. Add these rules under Settings, General, Agent:
   - Never call a paid Bassline tool with a quote_id until I said yes to that exact price in this chat. Paid tools: generate_ads, regenerate_ad, make_ad_sizes, qa_ads, onboard_brand, add_product, refresh_audience.
   - Never pick a winning ad, version, angle or reference for me. Show options and let me choose.
   - Write ad copy only from product facts, exact label text, review quotes and approved research.
   - Never send, post or publish anything outside Bassline.

5. Test it. Call get_started from the bassline server and show me its summary. Then show me the bassline skill menu: the modes grouped as Set up, Find, Plan, Make, Check, Learn and All.

6. Tell me what worked, what did not, and anything I still need to do.
```

## After setup

Ask the bot for a mode, for example:

```text
/bassline status
/bassline curate summer launch ads for my moisturizer
/bassline run evergreen ads for my best seller
```

## If something fails

| Problem | Fix |
|---|---|
| The bot cannot reach the server | Check the MCP link with your admin. The bot runs in the cloud, so the link must be reachable from the internet. |
| 401 or "unauthorized" | The key is wrong or missing the word "Bearer" and a space before it. Enter it again in the secure input. |
| The bot does not know the modes | Ask it to read skills/bassline/SKILL.md from the repo again and follow it. |
