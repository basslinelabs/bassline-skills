#!/usr/bin/env bash
# Blocks words that tie the skills to one environment or leak internals, plus long dashes and broken links.
set -u
cd "$(dirname "$0")/.."
fail=0
if grep -rniE "staging|production|localhost|127\.0\.0\.1|\.usebassline\.com" skills README.md; then
  echo "FAIL: environment-specific text found. Skills must work with any Bassline MCP connection."; fail=1
fi
if grep -rn $'—\|–' skills README.md .claude-plugin; then
  echo "FAIL: long dash found. Use a period, comma, colon or hyphen."; fail=1
fi
# Private names (clients, people) live outside the repo so the list itself is never published.
blocked="${BASSLINE_BLOCKED_WORDS:-$HOME/.config/bassline-skills/blocked-words.txt}"
if [ -f "$blocked" ] && grep -rniFf "$blocked" skills README.md .claude-plugin; then
  echo "FAIL: private name found. Use a generic example."; fail=1
fi
for f in skills/*/SKILL.md; do
  d=$(dirname "$f")
  for l in $(grep -ohE "\]\((reference/[a-z-]+\.md)\)" "$f" | sed -E 's/.*\((.*)\)/\1/'); do
    [ -f "$d/$l" ] || { echo "FAIL: $f links missing $l"; fail=1; }
  done
  head -1 "$f" | grep -q '^---$' || { echo "FAIL: $f has no frontmatter"; fail=1; }
done
for j in .claude-plugin/*.json; do python3 -m json.tool "$j" >/dev/null || { echo "FAIL: bad JSON $j"; fail=1; }; done
[ $fail -eq 0 ] && echo "check: pass"
exit $fail
