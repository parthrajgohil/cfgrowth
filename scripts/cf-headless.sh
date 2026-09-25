#!/bin/bash
# Run one unattended Claude job for the growth system.
# Usage: scripts/cf-headless.sh <job-name> <prompt-file>
#
# - Respects the session cap (CLAUDE.md rule 6): skips if 3 Claude sessions are
#   already active. Env: CF_MAX_SESSIONS (default 3).
# - Only one job at a time (lock in logs/.cf-job.lock), so the daily and hourly
#   runs never work on the same leads at once. A lock older than 2 hours is stale.
# - No shell, no subagents. The approval gate still applies to every tool call.

job=$1; prompt=$2
cd "$(dirname "$0")/.." || exit 1
[[ -n "$job" && -f "$prompt" ]] || { echo "usage: $0 <job> <prompt-file>" >&2; exit 64; }
claude="$HOME/.local/bin/claude"
max=${CF_MAX_SESSIONS:-3}
today=$(date +%F)
mkdir -p logs drafts/leads drafts/saleshandy
log="logs/$job-$today.log"
exec >>"$log" 2>&1
echo "=== $(date '+%F %T') $job start"

# Tell the CEO on Teams when a job fails or is skipped. Uses a tiny Claude call whose
# only tool is the (gate-restricted) Teams message. If Teams can't be reached (e.g. the
# Microsoft 365 sign-in expired), fall back to a macOS notification on this Mac and
# logs/ALERTS.log.
local_alert() {
  echo "$(date '+%F %T') $1" >>logs/ALERTS.log
  /usr/bin/osascript -e "display notification \"$1\" with title \"CF growth alert\" sound name \"Basso\"" >/dev/null 2>&1
}
notify() {
  local out
  out=$("$claude" -p "Send exactly this one Teams message with teams_send_chat_message to chat 19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces (plain text, no mentions): CF growth alert: $1 See ~/cf-growth/$log -- Then reply with the single word SENT if the tool call succeeded, or FAILED if it did not." \
    --model haiku --disallowedTools Bash Agent Workflow Write Edit \
    --allowedTools ToolSearch mcp__claude_ai_Microsoft_365__teams_send_chat_message 2>&1)
  if ! grep -q 'SENT' <<<"$out" || grep -q 'FAILED' <<<"$out"; then
    echo "notify via Teams failed: $(tail -c 300 <<<"$out")"
    local_alert "$1 (Teams alert failed too; check /mcp sign-in). Log: $log"
  fi
}

lock=logs/.cf-job.lock
if ! mkdir "$lock" 2>/dev/null; then
  if [[ -n $(find "$lock" -maxdepth 0 -mmin +120 2>/dev/null) ]]; then
    echo "removing stale lock"; rmdir "$lock" && mkdir "$lock" || exit 3
  else
    echo "another job is running ($(cat "$lock/job" 2>/dev/null)); skipping"
    [[ $job != hourly ]] && notify "$job run skipped: another job was running."
    exit 0
  fi
fi
echo "$job" >"$lock/job"
trap 'rm -f "$lock/job"; rmdir "$lock"' EXIT

running=$("$claude" agents --json 2>/dev/null | /usr/bin/jq 'length' 2>/dev/null)
if [[ -z "$running" ]]; then echo "could not count sessions; skipping"; notify "$job skipped: could not count Claude sessions."; exit 2; fi
if (( running >= max )); then
  echo "$running sessions active (cap $max); skipping"
  [[ $job != hourly ]] && notify "$job run skipped: $running Claude sessions already running (cap $max)."
  exit 1
fi

before=$(wc -l <"$log")
"$claude" -p "$(cat "$prompt")" \
  --name "$job-$today-$(date +%H%M)" \
  --disallowedTools Bash Agent Workflow \
  --allowedTools Read Glob Grep WebSearch WebFetch ToolSearch \
    "Edit(accounts/**)" "Edit(drafts/**)" \
    mcp__claude_ai_Microsoft_365__teams_send_chat_message \
    mcp__claude_ai_Saleshandy__sage_search mcp__claude_ai_Saleshandy__enrich_contacts \
    mcp__claude_ai_Saleshandy__get_enrichment_status mcp__claude_ai_Saleshandy__get_enrichment_result \
    mcp__claude_ai_Saleshandy__list_sequences mcp__claude_ai_Saleshandy__get_email_list \
    mcp__claude_ai_Saleshandy__get_email_thread mcp__claude_ai_Saleshandy__get_outcomes \
    mcp__claude_ai_Saleshandy__get_unread_email_threads_count \
    mcp__claude_ai_HubSpot__get_user_details mcp__claude_ai_HubSpot__tool_guidance \
    mcp__claude_ai_HubSpot__search_crm_objects mcp__claude_ai_HubSpot__get_crm_objects \
    mcp__claude_ai_HubSpot__search_properties mcp__claude_ai_HubSpot__manage_crm_objects
status=$?
if (( status != 0 )); then
  notify "$job run failed (exit $status)."
elif tail -n +"$((before + 1))" "$log" | grep -qiE 'sign in again|re-?authenticate|needs authentication'; then
  # The run finished but a connector had lost its sign-in, so Teams may be down too.
  local_alert "$job: a connector needs you to sign in again (run /mcp in Claude Code). Log: $log"
fi

echo "=== $(date '+%F %T') $job end (exit $status)"
exit $status
