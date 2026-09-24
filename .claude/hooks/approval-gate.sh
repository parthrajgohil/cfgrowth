#!/bin/bash
# PreToolUse hook: forces a human approval prompt for anything that could send,
# post, or change CRM/pipeline data. This works even if permission rules are
# loosened later.
#
# Policy:
#   - Teams: the one exception to "nothing is sent without approval". Agents may
#     post, without a prompt, into exactly one chat: the 1:1 chat between the
#     growth account (parthraj.gohil@) and the CEO (parthraj@corefragment.com).
#     Every other Teams write (other chats, channels, new chats, @mentions) is
#     denied outright. Decided by the CEO on 2026-09-24.
#   - Other MCP tools: read-only verbs pass through to normal permissions; every
#     other MCP tool (send, create, update, delete, post, enroll, move, ...) must be
#     approved. This is an allowlist, so connectors added later are gated by default.
#   - Bash: network, mail, and AppleScript commands must be approved, and so must
#     commands that could modify .claude/ (this gate and the settings).
#   - Write/Edit to pipeline/ (our interim CRM) or .claude/ must be approved.

# 1:1 chat growth account <-> parthraj@corefragment.com. The id embeds both users'
# Entra object ids (a7e8ebf4... = parthraj.gohil@, d31e5b95... = parthraj@).
CEO_CHAT_ID='19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces'

input=$(cat)
tool=$(jq -r '.tool_name // ""' <<<"$input")

decide() {
  jq -n --arg d "$1" --arg r "$2" '{hookSpecificOutput:{hookEventName:"PreToolUse",
    permissionDecision:$d, permissionDecisionReason:$r}}'
  exit 0
}
ask()   { decide ask "$1"; }
deny()  { decide deny "$1"; }
allow() { decide allow "$1"; }

case "$tool" in
  mcp__*__teams_*)
    action=${tool##*__}
    case "$action" in
      teams_send_chat_message)
        chat=$(jq -r '.tool_input.chatId // ""' <<<"$input")
        mentions=$(jq -r '(.tool_input.mentions // []) | length' <<<"$input")
        if [[ "$chat" == "$CEO_CHAT_ID" && "$mentions" == 0 ]]; then
          allow "CF approval gate: Teams message to the CEO's 1:1 chat (pre-approved)."
        fi
        deny "CF approval gate: Teams messages may only go to the 1:1 chat with parthraj@corefragment.com, without @mentions."
        ;;
      teams_list_*|teams_read_*|teams_get_*)
        exit 0
        ;;
      *)
        deny "CF approval gate: '$action' is blocked. Agents may only post to the CEO's 1:1 Teams chat."
        ;;
    esac
    ;;
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
    if grep -qE '\.claude/' <<<"$cmd" &&
       grep -qE '(>|(^|[;&|[:space:]])(sed|tee|mv|cp|rm|chmod|ln|python3?|perl|ruby|node|truncate|dd)([[:space:]]|$))' <<<"$cmd"; then
      ask "CF approval gate: this shell command may modify .claude/ (the approval gate or settings)."
    fi
    ;;
  Write|Edit|MultiEdit|NotebookEdit)
    path=$(jq -r '.tool_input.file_path // .tool_input.notebook_path // ""' <<<"$input")
    if [[ "$path" == *"/pipeline/"* ]]; then
      ask "CF approval gate: pipeline/ is the CRM of record; changes need approval."
    fi
    if [[ "$path" == *"/.claude/"* ]]; then
      ask "CF approval gate: .claude/ holds the approval gate and settings; changes need approval."
    fi
    ;;
esac
exit 0
