#!/bin/bash
# Start a background Claude session in this repo, but refuse if it would exceed
# the session cap (CLAUDE.md rule 6: at most 3 Claude sessions on this 8GB Mac).
# Counts every active session, interactive and background, from `claude agents --json`.
#
# Usage: scripts/cf-bg.sh [claude options] "<prompt>"
#   e.g. scripts/cf-bg.sh --name lead-desk "Watch for new leads ..."
# Env:   CF_MAX_SESSIONS (default 3)

set -euo pipefail
cd "$(dirname "$0")/.."

max=${CF_MAX_SESSIONS:-3}
claude=$(command -v claude || echo "$HOME/.local/bin/claude")

if ! json=$("$claude" agents --json 2>/dev/null); then
  echo "cf-bg: could not list sessions with 'claude agents --json'; refusing to start." >&2
  exit 2
fi
running=$(/usr/bin/jq 'length' <<<"$json")

if (( running >= max )); then
  echo "cf-bg: $running Claude sessions already running (cap $max). Refusing to start another:" >&2
  /usr/bin/jq -r '.[] | "  \(.name // .sessionId)  \(.kind)  \(.status)  \(.cwd)"' <<<"$json" >&2
  exit 1
fi

exec "$claude" --bg "$@"
