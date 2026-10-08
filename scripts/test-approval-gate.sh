#!/bin/bash
# Regression test for .claude/hooks/approval-gate.sh.
# Usage: scripts/test-approval-gate.sh   (exit 0 = all pass)

cd "$(dirname "$0")/.." || exit 1
gate=${GATE:-.claude/hooks/approval-gate.sh}   # GATE=<file> tests a candidate
pass=0; fail=0
export CF_CREDIT_DIR=$(mktemp -d)   # keep test reveals out of the real daily counter
export CF_SEQ_REGISTRY=$CF_CREDIT_DIR/sequences.log   # and test sequences out of the real registry

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
for t in update_sequence_status complete_task bulk_skip_tasks bulk_snooze_tasks add_email_accounts_to_sequence remove_email_accounts_from_sequence purchase_domain delete_domain revoke_domain upload_domain_profile_picture generate_mailbox_names reply_to_email create_schedule; do
  expect deny "sh $t" "{\"tool_name\":\"$sh$t\"}"
done
for t in add_dnc_items add_leads_to_sequence add_sequence_step add_step_variant create_dnc_list create_sequence delete_sequence delete_step import_prospects_to_sequence_step import_prospects_with_field_name skip_task snooze_task unsupported_operation update_sequence_priority_distribution update_sequence_schedule update_sequence_settings update_step_variant update_task_note upload_attachment; do
  expect ask "sh $t" "{\"tool_name\":\"$sh$t\"}"
done
for t in check_prospect_import_status get_bulk_task_status get_consolidated_stats get_dnc_items_by_id get_domain_order get_email_account_stats get_email_content get_email_list get_email_thread get_enrichment_result get_enrichment_status get_outcomes get_sequence_settings get_sequence_stats get_task_assignee_list get_task_by_id get_task_counts get_unread_email_threads_count list_clients list_dnc_lists list_domain_orders list_domain_plans list_domains list_email_accounts list_fields list_schedules list_sequence_email_accounts list_sequence_steps list_sequences list_tasks sage_search search_dnc_item search_domain; do
  expect pass "sh $t" "{\"tool_name\":\"$sh$t\"}"
done

# Per-lead sequences (CEO decision 2026-10-07): agents build INACTIVE sequences they
# created in the last 3 hours; activation stays denied. The registry is written by
# .claude/hooks/saleshandy-registry.sh after each call.
reg=${REGISTRY_HOOK:-.claude/hooks/saleshandy-registry.sh}
now=$(date +%s)
echo "$((now - 20000)) seq OLDSEQ1234" >>"$CF_SEQ_REGISTRY"
echo "$((now - 20000)) step1 OLDSTEP123 OLDSEQ1234" >>"$CF_SEQ_REGISTRY"
expect allow "seq create CF EU"       '{"tool_name":"'$sh'create_sequence","tool_input":{"title":"CF · batch 2026-10-08 17:03 · Europe · 3 leads","scheduleId":"1qPBAZkMwD"}}'
expect allow "seq create CF US"       '{"tool_name":"'$sh'create_sequence","tool_input":{"title":"CF · Acme · Jane Doe","scheduleId":"Mgw4R6YeaA"}}'
expect ask   "seq create other title" '{"tool_name":"'$sh'create_sequence","tool_input":{"title":"Big blast","scheduleId":"1qPBAZkMwD"}}'
expect ask   "seq create no schedule" '{"tool_name":"'$sh'create_sequence","tool_input":{"title":"CF · Acme"}}'
expect ask   "seq create other sched" '{"tool_name":"'$sh'create_sequence","tool_input":{"title":"CF · Acme","scheduleId":"2dP2rxeBPZ"}}'
# Registry hook: both response shapes (MCP text block, plain object).
printf '%s' '{"tool_name":"'$sh'create_sequence","tool_input":{"title":"CF · Acme"},"tool_response":[{"type":"text","text":"{\n  \"message\": \"Sequence created successfully\",\n  \"payload\": {\n    \"sequenceId\": \"NEWSEQ1234\",\n    \"title\": \"CF · Acme\"\n  }\n}"}]}' | "$reg"
printf '%s' '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceId":"NEWSEQ1234","type":"Email","absoluteDays":1},"tool_response":{"message":"Sequence step created successfully","payload":{"number":1,"sequence":{"id":"NEWSEQ1234","steps":[]},"variants":[{"stepId":"NEWSTEP123","id":"VARIANT123"}],"sequenceId":"NEWSEQ1234","id":"NEWSTEP123"}}}' | "$reg"
printf '%s' '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceId":"NEWSEQ1234","type":"Email","absoluteDays":4},"tool_response":{"payload":{"variants":[{"stepId":"STEP2ABCDE"}]}}}' | "$reg"
expect pass  "registry recorded seq"  "$(grep -q ' seq NEWSEQ1234$' "$CF_SEQ_REGISTRY" && echo '{"tool_name":"Read"}' || echo '{"tool_name":"mcp__x__send"}')"
expect pass  "registry recorded step1" "$(grep -q ' step1 NEWSTEP123 NEWSEQ1234$' "$CF_SEQ_REGISTRY" && ! grep -q STEP2ABCDE "$CF_SEQ_REGISTRY" && echo '{"tool_name":"Read"}' || echo '{"tool_name":"mcp__x__send"}')"
expect allow "seq add email step"     '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceId":"NEWSEQ1234","type":"Email","absoluteDays":4,"variants":[{"payload":{}}]}}'
expect ask   "seq add linkedin step"  '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceId":"NEWSEQ1234","type":"LinkedInMessage","absoluteDays":4}}'
expect ask   "seq add step by name"   '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceName":"CF · Acme","type":"Email","absoluteDays":4}}'
expect ask   "seq add step other seq" '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceId":"bZwp7qe9zQ","type":"Email","absoluteDays":4}}'
expect ask   "seq add step >3h old"   '{"tool_name":"'$sh'add_sequence_step","tool_input":{"sequenceId":"OLDSEQ1234","type":"Email","absoluteDays":4}}'
expect allow "seq edit variant"       '{"tool_name":"'$sh'update_step_variant","tool_input":{"sequenceId":"NEWSEQ1234","stepId":"NEWSTEP123","variantId":"VARIANT123"}}'
expect ask   "seq edit variant other" '{"tool_name":"'$sh'update_step_variant","tool_input":{"sequenceId":"bZwp7qe9zQ","stepId":"x","variantId":"y"}}'
expect allow "seq settings"           '{"tool_name":"'$sh'update_sequence_settings","tool_input":{"sequenceId":"NEWSEQ1234","settings":[{"code":9,"value":"2"},{"code":7,"value":"[]"}]}}'
expect ask   "seq settings bcc"       '{"tool_name":"'$sh'update_sequence_settings","tool_input":{"sequenceId":"NEWSEQ1234","settings":[{"code":7,"value":"[\"x@y.com\"]"}]}}'
expect ask   "seq settings other seq" '{"tool_name":"'$sh'update_sequence_settings","tool_input":{"sequenceId":"bZwp7qe9zQ","settings":[{"code":9,"value":"2"}]}}'
expect allow "seq attach CEO mailbox" '{"tool_name":"'$sh'add_email_accounts_to_sequence","tool_input":{"sequenceId":"NEWSEQ1234","emailAccountIds":["Y8aL7kk3PN"]}}'
expect deny  "seq attach other box"   '{"tool_name":"'$sh'add_email_accounts_to_sequence","tool_input":{"sequenceId":"NEWSEQ1234","emailAccountIds":["Zzzzzzzzzz"]}}'
expect deny  "seq attach 2 boxes"     '{"tool_name":"'$sh'add_email_accounts_to_sequence","tool_input":{"sequenceId":"NEWSEQ1234","emailAccountIds":["Y8aL7kk3PN","Zzzzzzzzzz"]}}'
expect deny  "seq attach to old seq"  '{"tool_name":"'$sh'add_email_accounts_to_sequence","tool_input":{"sequenceId":"OLDSEQ1234","emailAccountIds":["Y8aL7kk3PN"]}}'
expect allow "seq import buyer"       '{"tool_name":"'$sh'import_prospects_to_sequence_step","tool_input":{"stepId":"NEWSTEP123","prospectList":[{"First Name":"Jane","Last Name":"Doe","Email":"jane@acme.com"}],"conflictAction":"addMissingFields"}}'
expect allow "seq import batch of 10"  '{"tool_name":"'$sh'import_prospects_to_sequence_step","tool_input":{"stepId":"NEWSTEP123","prospectList":[{},{},{},{},{},{},{},{},{},{}],"conflictAction":"upsert"}}'
expect ask   "seq import 11"          '{"tool_name":"'$sh'import_prospects_to_sequence_step","tool_input":{"stepId":"NEWSTEP123","prospectList":[{},{},{},{},{},{},{},{},{},{},{}],"conflictAction":"upsert"}}'
expect ask   "seq import step 2"      '{"tool_name":"'$sh'import_prospects_to_sequence_step","tool_input":{"stepId":"STEP2ABCDE","prospectList":[{}],"conflictAction":"addMissingFields"}}'
expect ask   "seq import other step"  '{"tool_name":"'$sh'import_prospects_to_sequence_step","tool_input":{"stepId":"glwGW00Yw6","prospectList":[{}],"conflictAction":"addMissingFields"}}'
expect ask   "seq import old step"    '{"tool_name":"'$sh'import_prospects_to_sequence_step","tool_input":{"stepId":"OLDSTEP123","prospectList":[{}],"conflictAction":"addMissingFields"}}'
expect deny  "seq ACTIVATE own seq"   '{"tool_name":"'$sh'update_sequence_status","tool_input":{"sequenceId":"NEWSEQ1234","status":"active"}}'
expect ask   "seq add leads (sage)"   '{"tool_name":"'$sh'add_leads_to_sequence","tool_input":{"sequenceId":"NEWSEQ1234","stepId":"NEWSTEP123","leadIds":[1]}}'
expect ask   "seq delete own"         '{"tool_name":"'$sh'delete_sequence","tool_input":{"sequenceId":"NEWSEQ1234"}}'

# Upwork (CEO decision 2026-10-08): personal freelancer profile only; reads pass; proposal
# previews allowed; submit/message/edit ask; contracts, money, accounts, hiring denied.
up=mcp__claude_ai_Upwork__upwork__
me=473867419264262145; agency=474112535869386752
for t in list_accounts get_tool_help get_account get_profile get_freelancer_dashboard find_jobs find_saved_jobs get_job_posting get_messages get_rate_insights get_draft get_preview get_upload_status list_contracts list_freelancer_proposals list_milestones list_offers list_client_invitations list_client_proposals get_client_dashboard get_client_financials get_freelancer_financials get_agency get_agency_dashboard find_freelancers; do
  expect pass "up $t" '{"tool_name":"'$up$t'","tool_input":{"org_uid":"'$me'","action":"get"}}'
done
for t in end_contract update_contract submit_milestones manage_milestones respond_to_offer manage_offers update_account update_agency boost_profile post_job invite_freelancer manage_client_proposals agency_rooms; do
  expect deny "up $t" '{"tool_name":"'$up$t'","tool_input":{"org_uid":"'$me'","action":"x"}}'
done
for t in confirm_preview confirm_draft send_message save_job update_profile manage_meetings start_attachment_upload confirm_attachment_upload store_uploaded_files manage_talent_lists manage_uma_shortlist; do
  expect ask "up $t" '{"tool_name":"'$up$t'","tool_input":{"org_uid":"'$me'","action":"x"}}'
  expect deny "up $t (agency)" '{"tool_name":"'$up$t'","tool_input":{"org_uid":"'$agency'","action":"x"}}'
done
expect pass  "up tool_permission get"  '{"tool_name":"'$up'set_tool_permission","tool_input":{"org_uid":"'$me'","action":"get"}}'
expect deny  "up tool_permission set"  '{"tool_name":"'$up'set_tool_permission","tool_input":{"org_uid":"'$me'","action":"set","params":{"tool_name":"manage_proposals","permission":"always_allow"}}}'
expect deny  "up tool_mode set"        '{"tool_name":"'$up'set_tool_mode","tool_input":{"org_uid":"'$me'","action":"set"}}'
expect allow "up proposal preview"     '{"tool_name":"'$up'manage_proposals","tool_input":{"org_uid":"'$me'","action":"create","params":{"job_reference":"1","cover_letter":"x","charged_amount":40}}}'
expect ask   "up proposal preview+boost" '{"tool_name":"'$up'manage_proposals","tool_input":{"org_uid":"'$me'","action":"create","params":{"job_reference":"1","cover_letter":"x","charged_amount":40,"boost_connects":5}}}'
expect deny  "up proposal agency"      '{"tool_name":"'$up'manage_proposals","tool_input":{"org_uid":"'$agency'","action":"create","params":{}}}'
expect ask   "up proposal withdraw"    '{"tool_name":"'$up'manage_proposals","tool_input":{"org_uid":"'$me'","action":"withdraw"}}'
expect ask   "up accept invitation"    '{"tool_name":"'$up'manage_proposals","tool_input":{"org_uid":"'$me'","action":"accept_invitation"}}'
expect ask   "up unknown tool"         '{"tool_name":"'$up'frobnicate","tool_input":{"org_uid":"'$me'"}}'

# Real HubSpot connector tools (listed 2026-09-25): reads pass, CRM writes ask,
# marketing email and web publishing denied.
hs=mcp__claude_ai_HubSpot__
for t in manage_marketing_email manage_blog_post manage_landing_page manage_website_page import-claude-design-from-url; do
  expect deny "hs $t" "{\"tool_name\":\"$hs$t\"}"
done
for t in manage_aeo_prompts manage_aeo_recommendations manage_campaign_objects manage_custom_pipelines manage_custom_properties manage_onboarding manage_saved_reports manage_segment render_asset show_feedback_form; do
  expect ask "hs $t" "{\"tool_name\":\"$hs$t\"}"
done
for t in discover_hubspot_schema tool_guidance get_aeo_metrics get_campaign_attribution_reports get_content_analytics_report get_conversation_channel_metadata get_crm_objects get_marketing_email_analytics get_organization_details get_properties get_user_details query_crm_data read_campaign_data search_conversations search_crm_objects search_intent_signals search_owners search_properties; do
  expect pass "hs $t" "{\"tool_name\":\"$hs$t\"}"
done

# Saleshandy credits: email only, <=10 per call, <=10 per day.
expect deny  "sh reveal phone"        '{"tool_name":"mcp__claude_ai_Saleshandy__enrich_contacts","tool_input":{"lead_id":[1],"reveal_phone":true}}'
expect deny  "sh reveal 11 at once"   '{"tool_name":"mcp__claude_ai_Saleshandy__enrich_contacts","tool_input":{"lead_id":[1,2,3,4,5,6,7,8,9,10,11]}}'
expect pass  "sh reveal 6"            '{"tool_name":"mcp__claude_ai_Saleshandy__enrich_contacts","tool_input":{"lead_id":[1,2,3,4,5,6]}}'
expect pass  "sh reveal 4 more (=10)" '{"tool_name":"mcp__claude_ai_Saleshandy__enrich_contacts","tool_input":{"linkedin_url":["a","b"],"full_name_with_company":[{"first_name":"a","last_name":"b","company_domain":"c.com"},{"first_name":"d","last_name":"e","company_domain":"f.com"}]}}'
expect deny  "sh reveal 11th today"   '{"tool_name":"mcp__claude_ai_Saleshandy__enrich_contacts","tool_input":{"lead_id":[7]}}'
expect ask   "sh enrich companies"    '{"tool_name":"mcp__claude_ai_Saleshandy__enrich_companies"}'

# HubSpot: creating <=10 companies/contacts/notes is pre-approved; anything else asks.
expect allow "hs create company+note" '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"createRequest":{"objects":[{"objectType":"companies","properties":{"name":"X"}},{"objectType":"NOTE","properties":{"hs_note_body":"n"},"associations":[{"targetObjectId":1,"targetObjectType":"COMPANY"}]}]}}}'
expect ask   "hs update contact"      '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"contacts","objectId":1,"properties":{"email":"x"}}]}}}'
expect ask   "hs create + update"     '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"createRequest":{"objects":[{"objectType":"companies"}]},"updateRequest":{"objects":[{"objectType":"companies","objectId":1}]}}}'
expect ask   "hs create deal"         '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"createRequest":{"objects":[{"objectType":"deals","properties":{"dealname":"x"}}]}}}'
expect ask   "hs note on a deal"      '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"createRequest":{"objects":[{"objectType":"notes","associations":[{"targetObjectId":1,"targetObjectType":"DEAL"}]}]}}}'
expect ask   "hs create 11"           '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"createRequest":{"objects":[{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"},{"objectType":"contacts"}]}}}'
expect ask   "hs empty request"       '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{}}'

# HubSpot stage moves: agents may set only agent-owned cf_lead_stage values.
expect allow "hs stage -> ready_to_import"      '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"ready_to_import"}}]}}}'
expect allow "hs stage -> new"                  '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"new"}}]}}}'
expect allow "hs stage -> replied (COMPANY)"    '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"COMPANY","objectId":1,"properties":{"cf_lead_stage":"replied"}}]}}}'
expect ask   "hs agent sets approved"           '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"approved"}}]}}}'
expect ask   "hs agent sets won"                '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"won"}}]}}}'
expect ask   "hs stage + other prop"            '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"new","name":"X"}}]}}}'
expect ask   "hs stage on contact"              '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"contacts","objectId":1,"properties":{"cf_lead_stage":"new"}}]}}}'
expect ask   "hs stage + association"           '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"new"},"associations":[{"targetObjectId":2,"targetObjectType":"CONTACT"}]}]}}}'

# HubSpot contact email fill: agents may set only the email on contacts.
expect allow "hs contact email fill"        '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"contacts","objectId":1,"properties":{"email":"jane@acme.com"}}]}}}'
expect allow "hs CONTACT email fill"        '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"CONTACT","objectId":1,"properties":{"email":"j.doe@acme.co.uk"}}]}}}'
expect ask   "hs contact email + title"     '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"contacts","objectId":1,"properties":{"email":"jane@acme.com","jobtitle":"CTO"}}]}}}'
expect ask   "hs contact bad email"         '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"contacts","objectId":1,"properties":{"email":"not-an-email"}}]}}}'
expect ask   "hs contact other field"       '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"contacts","objectId":1,"properties":{"jobtitle":"CTO"}}]}}}'
expect ask   "hs company email field"       '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"email":"jane@acme.com"}}]}}}'
expect allow "hs mixed stage + email"       '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"ready_to_import"}},{"objectType":"contacts","objectId":2,"properties":{"email":"a@b.com"}}]}}}'

# HubSpot LinkedIn touch: agents may set only 'to_send'.
expect allow "hs linkedin to_send"        '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_linkedin_touch":"to_send"}}]}}}'
expect allow "hs no_email + to_send"      '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"no_email","cf_linkedin_touch":"to_send"}}]}}}'
expect ask   "hs agent sets li sent"      '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_linkedin_touch":"sent"}}]}}}'
expect ask   "hs agent sets li replied"   '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_linkedin_touch":"replied"}}]}}}'
expect ask   "hs approved + to_send"      '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_lead_stage":"approved","cf_linkedin_touch":"to_send"}}]}}}'
expect ask   "hs to_send + other"         '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{"cf_linkedin_touch":"to_send","name":"X"}}]}}}'
expect ask   "hs empty properties"        '{"tool_name":"mcp__claude_ai_HubSpot__manage_crm_objects","tool_input":{"updateRequest":{"objects":[{"objectType":"companies","objectId":1,"properties":{}}]}}}'

# Apollo (87 real tools, 2026-09-25): send/sequence/purchase/tracking denied; credit
# lookups and writes ask; reads pass; people_match is work-email only within the cap.
ap=mcp__claude_ai_Apollo_io__
for t in emailer_messages_create emailer_messages_send_now emailer_campaigns_add_contact_ids emailer_campaigns_approve emailer_campaigns_remove_or_stop_contact_ids sequences_create sequences_update email_account_purchase_create website_visitor_domain_tracker_install_script website_visitor_domain_tracker_send_install_email website_visitor_domain_tracker_update phone_calls_create phone_calls_update tasks_complete tasks_skip data_source_imports_create data_sources_create survey_submit; do
  expect deny "ap $t" "{\"tool_name\":\"${ap}apollo_$t\"}"
done
for t in mixed_companies_search organizations_enrich organizations_bulk_enrich organizations_job_postings dynamic_field_enrichment_enrich csv_exports_export_view accounts_bulk_create accounts_create accounts_update contacts_bulk_create contacts_create contacts_update context_center_create_product context_center_create_profile context_center_update_product context_center_update_profile custom_objects_create deals_create fields_create fields_update labels_add_entity_ids_to_label_names labels_create labels_remove_entity_ids_from_label_names labels_update tasks_bulk_create tasks_create tasks_update feedback_log; do
  expect ask "ap $t" "{\"tool_name\":\"${ap}apollo_$t\"}"
done
for t in analytics_sync_report contacts_search context_center_show context_center_show_product conversations_get_insights conversations_get_recording_links conversations_get_transcript conversations_search csv_exports_show custom_object_records_search custom_objects_show deals_search deals_show domain_purchase_index dynamic_field_enrichment_ongoing_enrichment_requests email_account_purchase_index email_accounts_index emailer_campaigns_activity_feed emailer_campaigns_search emailer_campaigns_show emailer_messages_email_send_status emailer_messages_get_content emailer_messages_search emailer_schedules_index fields_index labels_index mixed_people_api_search organizations_lookup phone_calls_search tasks_search tasks_show usage_stats_credit_usage_stats users_api_profile users_search webhook_result_show website_visitor_domain_tracker_index website_visitors_domain_aggregates; do
  expect pass "ap $t" "{\"tool_name\":\"${ap}apollo_$t\"}"
done
pm=${ap}apollo_people_match; pbm=${ap}apollo_people_bulk_match
# The cap is shared: the Saleshandy tests above already used today's 10 reveals.
expect deny  "ap match after SH cap"   "{\"tool_name\":\"$pm\",\"tool_input\":{\"name\":\"A B\",\"domain\":\"x.com\"}}"
export CF_CREDIT_DIR=$(mktemp -d)   # fresh day for the Apollo cases below
expect deny  "ap match + phone"        "{\"tool_name\":\"$pm\",\"tool_input\":{\"name\":\"A B\",\"domain\":\"x.com\",\"reveal_phone_number\":true}}"
expect deny  "ap match + personal"     "{\"tool_name\":\"$pm\",\"tool_input\":{\"name\":\"A B\",\"reveal_personal_emails\":true}}"
expect deny  "ap match + waterfall"    "{\"tool_name\":\"$pm\",\"tool_input\":{\"name\":\"A B\",\"run_waterfall_email\":true}}"
expect pass  "ap match work email"     "{\"tool_name\":\"$pm\",\"tool_input\":{\"name\":\"A B\",\"domain\":\"x.com\"}}"
expect deny  "ap bulk 11"              "{\"tool_name\":\"$pbm\",\"tool_input\":{\"details\":[{},{},{},{},{},{},{},{},{},{},{}]}}"
expect pass  "ap bulk 3"               "{\"tool_name\":\"$pbm\",\"tool_input\":{\"details\":[{},{},{}]}}"

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
