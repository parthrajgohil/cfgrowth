#!/bin/bash
# PreToolUse hook: forces a human approval prompt for anything that could send,
# post, or change CRM/pipeline data. This works even if permission rules are
# loosened later. Must stay compatible with macOS /bin/bash 3.2.
#
# Policy:
#   - Teams: the one exception to "nothing is sent without approval". Agents may
#     post, without a prompt, into exactly one chat: the 1:1 chat between the
#     growth account (parthraj.gohil@) and the CEO (parthraj@corefragment.com).
#     Every other Teams write (other chats, channels, new chats, @mentions) is
#     denied outright. Decided by the CEO on 2026-09-24.
#   - Saleshandy: reads and email lookups pass; prospect/sequence changes ask;
#     sending, activating, mailbox/domain changes and purchases are denied.
#   - HubSpot: reads pass; CRM writes ask; marketing email and web publishing
#     are denied.
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
action=${tool##*__}
words=" $(tr '[:upper:]' '[:lower:]' <<<"$action" | tr '_-' '  ') "

decide() {
  jq -n --arg d "$1" --arg r "$2" '{hookSpecificOutput:{hookEventName:"PreToolUse",
    permissionDecision:$d, permissionDecisionReason:$r}}'
  exit 0
}
ask()   { decide ask "$1"; }
deny()  { decide deny "$1"; }
allow() { decide allow "$1"; }

# Default MCP policy: any write word -> ask; otherwise a read word -> pass;
# unknown -> ask.
mcp_default() {
  write_re=' (send|reply|forward|post|publish|create|add|update|upsert|patch|set|edit|modify|manage|delete|remove|archive|move|upload|write|enroll|schedule|launch|start|pause|resume|share|invite|draft|mark|flag|assign|merge|import) '
  read_re=' (search|get|list|read|fetch|find|query|lookup|describe|retrieve|view|count|download|resource) '
  if ! [[ "$words" =~ $write_re ]] && [[ "$words" =~ $read_re ]]; then
    exit 0
  fi
  ask "CF approval gate: '$tool' can send, post, or modify data. Approve only if you have reviewed exactly what it will do."
}

case "$tool" in
  mcp__*__teams_*)
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
  mcp__*[Ss]aleshandy__*)
    # Saleshandy (CEO decisions 2026-09-24/25). The CEO presses "go" in Saleshandy.
    case "$action" in
      # Status changes can activate a sequence; tasks can be manual emails;
      # mailboxes and domains are sending infrastructure (purchases cost money).
      update_sequence_status|complete_task|bulk_*|add_email_accounts_*|remove_email_accounts_*|purchase_domain|delete_domain|revoke_domain|upload_domain_*|generate_mailbox_names)
        deny "CF approval gate: '$action' is blocked. It could send email, spend money, or change sending infrastructure; the CEO does this in Saleshandy."
        ;;
      check_*_status)
        exit 0
        ;;
      enrich_contacts)
        # Email reveals cost ~1 credit each (phone ~7). Cap: email only, at most 10
        # contacts per call and 10 per day (counted per contact requested).
        if [[ $(jq -r '.tool_input.reveal_phone // false' <<<"$input") == true ]]; then
          deny "CF approval gate: phone reveals cost ~7 credits each; agents reveal email only."
        fi
        n=$(jq '[(.tool_input.lead_id // []), (.tool_input.linkedin_url // []), (.tool_input.full_name_with_company // [])] | map(length) | add' <<<"$input")
        if (( n > 10 )); then
          deny "CF approval gate: at most 10 Saleshandy email reveals per call ($n requested)."
        fi
        dir=${CF_CREDIT_DIR:-"$(cd "$(dirname "$0")/../.." && pwd)/logs"}
        f="$dir/saleshandy-credits-$(date +%F).count"
        used=$(cat "$f" 2>/dev/null || echo 0)
        if (( used + n > 10 )); then
          deny "CF approval gate: daily cap of 10 Saleshandy email reveals reached ($used used today, $n requested)."
        fi
        mkdir -p "$dir" && echo $((used + n)) >"$f"
        exit 0
        ;;
      enrich_companies)
        ask "CF approval gate: company enrichment may consume Saleshandy credits."
        ;;
    esac
    if [[ "$words" =~ ' '(send|launch|resume|start|activate|unpause|play|schedule|run|trigger|reply|forward|purchase|buy)' ' ]]; then
      deny "CF approval gate: '$tool' could send email or start a sequence. Only the CEO does that, in Saleshandy."
    fi
    if [[ "$words" =~ ' '(add|create|update|upsert|import|enroll|assign|move|edit|modify|set|delete|remove|pause|stop|archive|mark|tag|upload|write|skip|snooze|revoke)' ' ]]; then
      ask "CF approval gate: '$tool' changes Saleshandy data (prospects or sequences). Approve only if you have reviewed exactly what it will do."
    fi
    if [[ "$words" =~ ' '(search|get|list|read|fetch|find|query|lookup|describe|retrieve|view|count|verify|enrich|reveal)' ' ]]; then
      exit 0
    fi
    ask "CF approval gate: '$tool' is an unrecognised Saleshandy action."
    ;;
  mcp__*[Hh]ub[Ss]pot__*)
    # HubSpot (CEO decision 2026-09-25): reads pass; CRM writes ask; anything that
    # sends marketing email or publishes web content is blocked.
    case "$action" in
      manage_marketing_email|manage_blog_post|manage_landing_page|manage_website_page|import-claude-design-from-url)
        deny "CF approval gate: '$action' can send marketing email or publish web content; blocked for agents."
        ;;
      discover_hubspot_schema|tool_guidance)
        exit 0
        ;;
      manage_crm_objects)
        # Auto-create (CEO decision 2026-09-25): creating up to 10 companies,
        # contacts or notes (associated only with each other) is pre-approved.
        # Any update to an existing record, or any other object type, asks.
        if jq -e 'def okt: ascii_upcase | IN("COMPANY","COMPANIES","CONTACT","CONTACTS","NOTE","NOTES");
              ((.tool_input.updateRequest.objects // []) | length) == 0
              and (((.tool_input.createRequest.objects // []) | length) as $c | $c > 0 and $c <= 10)
              and all(.tool_input.createRequest.objects[];
                      ((.objectType // "") | okt)
                      and all((.associations // [])[]; ((.targetObjectType // "") | okt)))' \
            <<<"$input" >/dev/null 2>&1; then
          allow "CF approval gate: creating HubSpot companies/contacts/notes (pre-approved)."
        fi
        # Stage moves (CEO decision 2026-09-25): agents may set ONLY the agent-owned
        # values of the company property cf_lead_stage, and nothing else. Approved,
        # On hold, Needs edit, Meeting, Won, Lost, Archived are the CEO's.
        if jq -e '((.tool_input.createRequest.objects // []) | length) == 0
              and (((.tool_input.updateRequest.objects // []) | length) as $u | $u > 0 and $u <= 10)
              and all(.tool_input.updateRequest.objects[];
                      ((.associations // []) | length) == 0
                      and (
                        # agent-owned stage on a company
                        (((.objectType // "") | ascii_upcase | IN("COMPANY","COMPANIES"))
                         and ((.properties // {}) | keys) == ["cf_lead_stage"]
                         and (.properties.cf_lead_stage | IN("new","ready_to_import","no_email","in_sequence","replied")))
                        or
                        # a revealed email on a contact (2026-09-25), nothing else
                        (((.objectType // "") | ascii_upcase | IN("CONTACT","CONTACTS"))
                         and ((.properties // {}) | keys) == ["email"]
                         and ((.properties.email // "") | test("^[^@[:space:]]+@[^@[:space:]]+\\.[^@[:space:]]+$")))
                      ))' \
            <<<"$input" >/dev/null 2>&1; then
          allow "CF approval gate: agent-owned CF lead stage change or contact email fill (pre-approved)."
        fi
        ask "CF approval gate: this HubSpot change updates existing records or touches other object types. Review before approving."
        ;;
      manage_*)
        ask "CF approval gate: '$action' changes HubSpot data. Approve only if you have reviewed exactly what it will do."
        ;;
    esac
    mcp_default
    ;;
  mcp__*)
    mcp_default
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
