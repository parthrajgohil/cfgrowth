#!/bin/bash
# PreToolUse hook: forces a human approval prompt for anything that could send,
# post, or change CRM/pipeline data. This works even if permission rules are
# loosened later.
#
# Policy:
#   - MCP tools: read-only verbs pass through to normal permissions; every other
#     MCP tool (send, create, update, delete, post, enroll, move, ...) must be
#     approved. This is an allowlist, so connectors added later are gated by default.
#   - Bash: network, mail, and AppleScript commands must be approved.
#   - Write/Edit to pipeline/ (our interim CRM) must be approved.

input=$(cat)
tool=$(jq -r '.tool_name // ""' <<<"$input")

ask() {
  jq -n --arg r "$1" '{hookSpecificOutput:{hookEventName:"PreToolUse",
    permissionDecision:"ask", permissionDecisionReason:$r}}'
  exit 0
}

case "$tool" in
  mcp__*)
    # Split the tool's action name (e.g. outlook_email_search) into words.
    # Any write word -> ask. Otherwise, a read word -> pass. Unknown -> ask.
    words=" $(tr '[:upper:]' '[:lower:]' <<<"${tool##*__}" | tr '_-' '  ') "
    write_re=' (send|reply|forward|post|publish|create|add|update|upsert|patch|set|edit|modify|manage|delete|remove|archive|move|upload|write|enroll|schedule|launch|start|pause|resume|share|invite|draft|mark|flag|assign|merge|import) '
    read_re=' (search|get|list|read|fetch|find|query|lookup|describe|retrieve|view|count|download|resource) '
    if ! [[ "$words" =~ $write_re ]] && [[ "$words" =~ $read_re ]]; then
      exit 0
    fi
    ask "CF approval gate: '$tool' can send, post, or modify data. Approve only if you have reviewed exactly what it will do."
    ;;
  Bash)
    cmd=$(jq -r '.tool_input.command // ""' <<<"$input")
    if grep -qiE '(^|[;&|[:space:]])(curl|wget|osascript|sendmail|mail|mailx|ssh|scp|nc)([[:space:]]|$)' <<<"$cmd" ||
       grep -qiE '(^|[;&|[:space:]])open[[:space:]]+(-[ab][[:space:]]+)?["'"'"']?(mailto:|mail|outlook|microsoft outlook|com\.apple\.mail|com\.microsoft\.outlook)' <<<"$cmd"; then
      ask "CF approval gate: this shell command can reach the network or send mail."
    fi
    ;;
  Write|Edit|MultiEdit|NotebookEdit)
    path=$(jq -r '.tool_input.file_path // .tool_input.notebook_path // ""' <<<"$input")
    if [[ "$path" == *"/pipeline/"* ]]; then
      ask "CF approval gate: pipeline/ is the CRM of record; changes need approval."
    fi
    ;;
esac
exit 0
