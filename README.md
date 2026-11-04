# Bassline skills

Make static ads with Bassline from your AI assistant. One skill, `/bassline`, with a mode for each step: find inspiration, pick a message, see each ad before and after, make it, check it and keep what works.

## Before you start

Connect the Bassline MCP in your AI app. Ask your Bassline admin for the connection link. The skill works with any Bassline workspace you can reach through that connection.

## Install

### Claude Code (plugin)

```bash
claude plugin marketplace add basslinelabs/bassline-skills
```

```bash
claude plugin install bassline@bassline
```

Then type `/bassline` in Claude Code.

### Claude Code (copy the skill)

```bash
git clone https://github.com/basslinelabs/bassline-skills.git
```

```bash
cp -R bassline-skills/skills/bassline ~/.claude/skills/bassline
```

### Grok Bot

Follow [grok-bot/SETUP.md](grok-bot/SETUP.md). It is one message that makes the bot, connects the Bassline MCP and installs this skill.

### Claude desktop or claude.ai

```bash
cd bassline-skills/skills && zip -r bassline.zip bassline
```

Upload `bassline.zip` in Settings, under Capabilities, then Skills.

## Use

Type `/bassline` with no mode to see the menu. Or name a mode:

| Group | Mode | What it does |
|---|---|---|
| Set up | `onboard` | Add a brand and its products |
| | `research` | Approve, reject or hold audience insights |
| | `rules` | Turn review notes into brand rules |
| Find | `curate` | Shortlist inspiration ads and say why each works |
| | `analyze` | Break down one ad |
| Plan | `message` | Pick from 2 or 3 messaging angles |
| | `plan` | Fill the brief and lay out one line per ad |
| | `adapt` | See each ad before and after, then approve |
| Make | `generate` | See the price, say yes, make the ads |
| | `sizes` | Make an approved ad in other frames |
| Check | `qa` | Check product, label text, claims and crop |
| | `review` | Compare versions, give verdicts and fix notes |
| Learn | `recipe` | Save what worked to use again |
| | `status` | What is running, what waits on you, spend |
| All | `run` | The full flow, stopping at every choice |

Examples:

```text
/bassline curate summer launch ads for my moisturizer
/bassline adapt
/bassline run evergreen ads for my best seller
```

## How it keeps you in control

- Nothing paid runs until you see the price and say yes.
- You pick every winner. The skill can say what it would pick, but it never chooses for you.
- Every ad copy line comes from your product facts, label text, reviews or approved research.

## Contributing

Run the check before you commit:

```bash
./scripts/check.sh
```

It fails on environment-specific text, long dashes, broken links and bad plugin files.
