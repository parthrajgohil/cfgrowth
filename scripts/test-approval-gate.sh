#!/bin/bash
# Regression test for .claude/hooks/approval-gate.sh.
# Usage: scripts/test-approval-gate.sh   (exit 0 = all pass)

cd "$(dirname "$0")/.." || exit 1
gate=.claude/hooks/approval-gate.sh
pass=0; fail=0

# expect <ask|pass> <description> <json>
expect() {
  out=$(printf '%s' "$3" | "$gate")
  if grep -q '"permissionDecision": *"ask"' <<<"$out"; then got=ask; else got=pass; fi
  if [[ "$got" == "$1" ]]; then pass=$((pass+1)); else fail=$((fail+1)); echo "FAIL ($got, wanted $1): $2"; fi
}

# MCP: read-only verbs pass, anything that writes/sends asks, unknown asks.
expect pass "mcp search email"    '{"tool_name":"mcp__m365__outlook_email_search"}'
expect pass "mcp read message"    '{"tool_name":"mcp__m365__read_message"}'
expect pass "mcp list files"      '{"tool_name":"mcp__m365__onedrive_list_files"}'
expect ask  "mcp send email"      '{"tool_name":"mcp__m365__outlook_send_email"}'
expect ask  "mcp reply"           '{"tool_name":"mcp__m365__reply_to_message"}'
expect ask  "mcp create draft"    '{"tool_name":"mcp__m365__create_draft"}'
expect ask  "mcp crm update"      '{"tool_name":"mcp__hubspot__update_contact"}'
expect ask  "mcp crm delete"      '{"tool_name":"mcp__hubspot__delete-deal"}'
expect ask  "mcp get+update mix"  '{"tool_name":"mcp__x__get_and_update_record"}'
expect ask  "mcp unknown verb"    '{"tool_name":"mcp__x__frobnicate"}'
expect ask  "mcp CamelCase send"  '{"tool_name":"mcp__x__Send_Message"}'

# Real Microsoft 365 connector tools (listed 2026-09-24). If the connector adds
# tools, list them here; any unknown verb already defaults to ask.
m365=mcp__claude_ai_Microsoft_365__
for t in outlook_batch_delete_messages outlook_batch_modify_labels outlook_create_draft outlook_create_event outlook_create_filter outlook_create_label outlook_create_reply_all_draft outlook_create_reply_draft outlook_delete_draft outlook_delete_event outlook_delete_filter outlook_delete_label outlook_forward_mail outlook_modify_labels outlook_modify_thread_labels outlook_respond_to_event outlook_send_draft outlook_send_mail outlook_set_vacation outlook_trash_thread outlook_untrash_thread outlook_update_draft outlook_update_event outlook_update_label sharepoint_copy_item sharepoint_create_folder sharepoint_delete_item sharepoint_move_item sharepoint_rename_item sharepoint_update_file sharepoint_upload_file teams_create_chat teams_reply_channel_message teams_send_channel_message teams_send_chat_message; do
  expect ask  "m365 $t" "{\"tool_name\":\"$m365$t\"}"
done
for t in chat_message_search find_meeting_availability get_granted_scopes get_me outlook_calendar_search outlook_email_search outlook_find_available_time read_resource search_people sharepoint_folder_search sharepoint_search teams_list_channel_messages teams_list_channels teams_list_chats teams_list_teams; do
  expect pass "m365 $t" "{\"tool_name\":\"$m365$t\"}"
done

# Bash: network/mail/AppleScript asks; ordinary commands pass.
expect ask  "curl"                '{"tool_name":"Bash","tool_input":{"command":"curl https://example.com"}}'
expect ask  "piped wget"          '{"tool_name":"Bash","tool_input":{"command":"echo x | wget -qO- x"}}'
expect ask  "osascript"           '{"tool_name":"Bash","tool_input":{"command":"osascript -e 1"}}'
expect ask  "mail"                '{"tool_name":"Bash","tool_input":{"command":"mail -s hi a@b.c"}}'
expect ask  "ssh after &&"        '{"tool_name":"Bash","tool_input":{"command":"cd x && ssh host"}}'
expect ask  "open Outlook"        '{"tool_name":"Bash","tool_input":{"command":"open -a \"Microsoft Outlook\""}}'
expect ask  "open mailto"         '{"tool_name":"Bash","tool_input":{"command":"open mailto:a@b.c"}}'
expect ask  "open Outlook.app"    '{"tool_name":"Bash","tool_input":{"command":"open -a Outlook.app"}}'
expect ask  "open -b bundle id"   '{"tool_name":"Bash","tool_input":{"command":"open -b com.microsoft.Outlook"}}'
expect pass "open a draft file"   '{"tool_name":"Bash","tool_input":{"command":"open drafts/email/a.md"}}'
expect pass "ls"                  '{"tool_name":"Bash","tool_input":{"command":"ls -la"}}'
expect pass "git status"          '{"tool_name":"Bash","tool_input":{"command":"git status"}}'
expect pass "grep for mailto"     '{"tool_name":"Bash","tool_input":{"command":"grep -r emailer drafts"}}'

# Write/Edit: pipeline/ asks; drafts/ and accounts/ pass.
expect ask  "edit pipeline"       '{"tool_name":"Edit","tool_input":{"file_path":"/Users/cfgrowth/cf-growth/pipeline/leads.csv"}}'
expect ask  "write pipeline"      '{"tool_name":"Write","tool_input":{"file_path":"/Users/cfgrowth/cf-growth/pipeline/new.csv"}}'
expect pass "write draft"         '{"tool_name":"Write","tool_input":{"file_path":"/Users/cfgrowth/cf-growth/drafts/email/a.md"}}'
expect pass "edit account"        '{"tool_name":"Edit","tool_input":{"file_path":"/Users/cfgrowth/cf-growth/accounts/acme.md"}}'

# Other tools are not the gate's concern.
expect pass "Read"                '{"tool_name":"Read","tool_input":{"file_path":"/x"}}'

echo "approval-gate: $pass passed, $fail failed"
[[ $fail -eq 0 ]]
