#!/bin/bash
# Regression test for .claude/hooks/approval-gate.sh.
# Usage: scripts/test-approval-gate.sh   (exit 0 = all pass)

cd "$(dirname "$0")/.." || exit 1
gate=${GATE:-.claude/hooks/approval-gate.sh}   # GATE=<file> tests a candidate
pass=0; fail=0

# expect <ask|deny|allow|pass> <description> <json>
expect() {
  out=$(printf '%s' "$3" | "$gate")
  if [[ -z "$out" ]]; then got=pass
  else got=$(jq -r '.hookSpecificOutput.permissionDecision // "pass"' <<<"$out"); fi
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
for t in outlook_batch_delete_messages outlook_batch_modify_labels outlook_create_draft outlook_create_event outlook_create_filter outlook_create_label outlook_create_reply_all_draft outlook_create_reply_draft outlook_delete_draft outlook_delete_event outlook_delete_filter outlook_delete_label outlook_forward_mail outlook_modify_labels outlook_modify_thread_labels outlook_respond_to_event outlook_send_draft outlook_send_mail outlook_set_vacation outlook_trash_thread outlook_untrash_thread outlook_update_draft outlook_update_event outlook_update_label sharepoint_copy_item sharepoint_create_folder sharepoint_delete_item sharepoint_move_item sharepoint_rename_item sharepoint_update_file sharepoint_upload_file; do
  expect ask  "m365 $t" "{\"tool_name\":\"$m365$t\"}"
done
for t in teams_create_chat teams_reply_channel_message teams_send_channel_message teams_send_chat_message; do
  expect deny "m365 $t (no/other chat)" "{\"tool_name\":\"$m365$t\"}"
done
for t in chat_message_search find_meeting_availability get_granted_scopes get_me outlook_calendar_search outlook_email_search outlook_find_available_time read_resource search_people sharepoint_folder_search sharepoint_search teams_list_channel_messages teams_list_channels teams_list_chats teams_list_teams; do
  expect pass "m365 $t" "{\"tool_name\":\"$m365$t\"}"
done

# Teams: only the CEO 1:1 chat, no @mentions, is pre-approved.
ceo='19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces'
expect allow "teams to CEO chat"      "{\"tool_name\":\"${m365}teams_send_chat_message\",\"tool_input\":{\"chatId\":\"$ceo\",\"body\":\"hi\"}}"
expect deny  "teams to other chat"    "{\"tool_name\":\"${m365}teams_send_chat_message\",\"tool_input\":{\"chatId\":\"19:other@thread.v2\",\"body\":\"hi\"}}"
expect deny  "teams CEO chat+mention" "{\"tool_name\":\"${m365}teams_send_chat_message\",\"tool_input\":{\"chatId\":\"$ceo\",\"body\":\"hi\",\"mentions\":[{\"id\":\"x\",\"displayName\":\"x\"}]}}"
expect deny  "teams CEO id as prefix" "{\"tool_name\":\"${m365}teams_send_chat_message\",\"tool_input\":{\"chatId\":\"${ceo}x\",\"body\":\"hi\"}}"
expect deny  "teams channel post"     "{\"tool_name\":\"${m365}teams_send_channel_message\",\"tool_input\":{\"teamId\":\"t\",\"channelId\":\"c\",\"body\":\"hi\"}}"
expect deny  "teams unknown action"   "{\"tool_name\":\"${m365}teams_add_member\"}"

# Protect the gate and settings from agents.
expect ask  "edit gate"               '{"tool_name":"Edit","tool_input":{"file_path":"/Users/cfgrowth/cf-growth/.claude/hooks/approval-gate.sh"}}'
expect ask  "write settings"          '{"tool_name":"Write","tool_input":{"file_path":"/Users/cfgrowth/cf-growth/.claude/settings.json"}}'
expect ask  "sed -i on gate"          '{"tool_name":"Bash","tool_input":{"command":"sed -i \"\" s/x/y/ .claude/hooks/approval-gate.sh"}}'
expect ask  "redirect into settings"  '{"tool_name":"Bash","tool_input":{"command":"echo {} > .claude/settings.json"}}'
expect pass "read gate with cat"      '{"tool_name":"Bash","tool_input":{"command":"cat .claude/hooks/approval-gate.sh"}}'

# Real Saleshandy connector tools (listed 2026-09-25): read/lookup pass, prospect and
# sequence changes ask; sending, activation, mailboxes, domains, purchases denied.
sh=mcp__claude_ai_Saleshandy__
for t in update_sequence_status complete_task bulk_skip_tasks bulk_snooze_tasks add_email_accounts_to_sequence remove_email_accounts_from_sequence purchase_domain delete_domain revoke_domain upload_domain_profile_picture generate_mailbox_names reply_to_email create_schedule update_sequence_schedule; do
  expect deny "sh $t" "{\"tool_name\":\"$sh$t\"}"
done
for t in add_dnc_items add_leads_to_sequence add_sequence_step add_step_variant create_dnc_list create_sequence delete_sequence delete_step import_prospects_to_sequence_step import_prospects_with_field_name skip_task snooze_task unsupported_operation update_sequence_priority_distribution update_sequence_settings update_step_variant update_task_note upload_attachment; do
  expect ask "sh $t" "{\"tool_name\":\"$sh$t\"}"
done
for t in check_prospect_import_status enrich_companies enrich_contacts get_bulk_task_status get_consolidated_stats get_dnc_items_by_id get_domain_order get_email_account_stats get_email_content get_email_list get_email_thread get_enrichment_result get_enrichment_status get_outcomes get_sequence_settings get_sequence_stats get_task_assignee_list get_task_by_id get_task_counts get_unread_email_threads_count list_clients list_dnc_lists list_domain_orders list_domain_plans list_domains list_email_accounts list_fields list_schedules list_sequence_email_accounts list_sequence_steps list_sequences list_tasks sage_search search_dnc_item search_domain; do
  expect pass "sh $t" "{\"tool_name\":\"$sh$t\"}"
done

# Real HubSpot connector tools (listed 2026-09-25): reads pass, CRM writes ask,
# marketing email and web publishing denied.
hs=mcp__claude_ai_HubSpot__
for t in manage_marketing_email manage_blog_post manage_landing_page manage_website_page import-claude-design-from-url; do
  expect deny "hs $t" "{\"tool_name\":\"$hs$t\"}"
done
for t in manage_aeo_prompts manage_aeo_recommendations manage_campaign_objects manage_crm_objects manage_custom_pipelines manage_custom_properties manage_onboarding manage_saved_reports manage_segment render_asset show_feedback_form; do
  expect ask "hs $t" "{\"tool_name\":\"$hs$t\"}"
done
for t in discover_hubspot_schema tool_guidance get_aeo_metrics get_campaign_attribution_reports get_content_analytics_report get_conversation_channel_metadata get_crm_objects get_marketing_email_analytics get_organization_details get_properties get_user_details query_crm_data read_campaign_data search_conversations search_crm_objects search_intent_signals search_owners search_properties; do
  expect pass "hs $t" "{\"tool_name\":\"$hs$t\"}"
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
