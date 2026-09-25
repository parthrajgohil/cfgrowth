#!/bin/bash
# Daily prospecting run: headless Claude session that finds leads, writes briefs and
# drafts, and notifies the CEO's 1:1 Teams chat (the only send the gate allows).
# Started by launchd/com.corefragment.daily-prospecting.plist; safe to run by hand.
#
# Respects the session cap (CLAUDE.md rule 6): skips the run if 3 Claude sessions
# are already active. Env: CF_MAX_SESSIONS (default 3).

cd "$(dirname "$0")/.." || exit 1
claude="$HOME/.local/bin/claude"
max=${CF_MAX_SESSIONS:-3}
today=$(date +%F)
log="logs/prospecting-$today.log"
mkdir -p logs drafts/leads

exec >>"$log" 2>&1
echo "=== $(date '+%F %T') daily prospecting start"

running=$("$claude" agents --json 2>/dev/null | /usr/bin/jq 'length' 2>/dev/null)
if [[ -z "$running" ]]; then
  echo "could not count sessions; skipping run"; exit 2
fi
if (( running >= max )); then
  echo "$running sessions active (cap $max); skipping run"; exit 1
fi

"$claude" -p "$(cat scripts/daily-prospecting.md)" \
  --name "prospecting-$today" \
  --disallowedTools Bash Agent Workflow \
  --allowedTools Read Glob Grep WebSearch WebFetch ToolSearch \
    "Edit(accounts/**)" "Edit(drafts/**)" \
    mcp__claude_ai_Microsoft_365__teams_send_chat_message \
    mcp__claude_ai_Saleshandy__sage_search mcp__claude_ai_Saleshandy__enrich_contacts \
    mcp__claude_ai_Saleshandy__get_enrichment_status mcp__claude_ai_Saleshandy__get_enrichment_result \
    mcp__claude_ai_HubSpot__get_user_details mcp__claude_ai_HubSpot__tool_guidance \
    mcp__claude_ai_HubSpot__search_crm_objects mcp__claude_ai_HubSpot__search_properties \
    mcp__claude_ai_HubSpot__manage_crm_objects
status=$?

echo "=== $(date '+%F %T') daily prospecting end (exit $status)"
exit $status
