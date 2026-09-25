Hourly lead-stage run (weekdays 09:00–19:00 IST). You are running unattended; nobody
can answer questions or approve prompts. Anything that needs approval will be refused.

HubSpot company property `cf_lead_stage` is the source of truth for every lead. The CEO
moves leads to On hold, Approved, Needs edit, Meeting, Won, Lost or Archived. You may
only set: `new`, `ready_to_import`, `no_email`, `in_sequence`, `replied` (the gate
refuses anything else, and you must never try to set a CEO stage).

## Step 0: is there anything to do? (keep this cheap)
Call `search_crm_objects` on COMPANY with filter `cf_lead_stage IN [approved, needs_edit,
ready_to_import, in_sequence]`, properties `name, domain, cf_lead_stage`. If there are no
results, write nothing and stop immediately with the one line "Nothing to do."
Otherwise read CLAUDE.md, then handle each stage below. Find each company's brief
(`accounts/<slug>.md`, where the HubSpot company ID is recorded) and its draft
(`drafts/email/*-<slug>.md`).

## Approved → email → Ready to import / No email found
For all approved companies together (at most 10 per run):
1. Take the buyer's `Saleshandy lead ID` from the brief, or find it with `sage_search`
   (free). If the brief names an alternative buyer and the CEO's latest note says to use
   them, use that person.
   If there's no lead ID, still try the buyer via `full_name_with_company` (first
   name, last name, company domain). A miss costs no credits.
2. ONE `enrich_contacts` call for all of them (lead IDs and name+domain entries
   together): email only, never phone. Poll
   `get_enrichment_status`, then read `get_enrichment_result`. Accept only emails marked
   `valid`. Never guess an email.
3. For each lead with a valid email:
   - Put the email in the draft's `recipient:` line and set the draft's `status:` to `approved`.
   - Record the email and the reveal request ID in the brief's Buyers section.
   - Search HubSpot for the contact by email. If it doesn't exist, create the CONTACT
     (firstname, lastname, email, jobtitle, company) associated with the company.
   - Append a row to `drafts/saleshandy/<YYYY-MM-DD>.csv` (create it with the header if needed):
     `first_name,last_name,email,company,job_title,linkedin_url,subject,email_1,followup_1,followup_2,followup_3,draft_file`
     using the draft's first subject and texts exactly as written, merge tags kept, and
     every field quoted (RFC 4180).
   - Set `cf_lead_stage` = `ready_to_import`.
4. For each lead with no valid email: set `cf_lead_stage` = `no_email`, and add a HubSpot
   NOTE on the company saying who was tried and which alternative people Saleshandy has
   at the company (from `sage_search`, free).

## Needs edit → revised draft → New
1. Read the company's notes (`search_crm_objects` for NOTE associated with the company,
   newest first). The CEO's instructions are the newest note NOT written by an agent
   (agent notes start with "CoreFragment lead", "DRAFT FOR REVIEW" or "AGENT:").
2. Revise the draft file as instructed, following `cf-voice` and `cold-email` (read the
   skills) and CLAUDE.md. Keep every fact traceable to the brief.
3. Create a NOTE "DRAFT FOR REVIEW (revised <date>)" with the subject and email 1, plus
   one line on what changed.
4. Set `cf_lead_stage` = `new`.

## Ready to import → In sequence; In sequence → Replied (Saleshandy, read-only)
- For `ready_to_import`: if Saleshandy read tools (`list_sequences`, `get_email_list`,
  `get_outcomes`) clearly show the contact is in a sequence, set `in_sequence`.
  If you can't tell, leave it. The CEO can set it.
- For `in_sequence`: check Saleshandy for replies from the contact's email
  (`get_unread_email_threads_count`, `get_email_list`, `get_email_thread`). If they
  replied, set `replied`, add a NOTE "AGENT: reply received <date>" with a two-line
  summary (not the whole email), and alert the CEO on Teams. Never reply to anyone.

## Teams (one message per run, only if something changed)
Use `teams_send_chat_message` to chat
`19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
and no other. Plain text, no mentions, for example:
```
Lead updates (<HH:MM>)
Ready to import: HeyCharge (chris@…), Pollen → drafts/saleshandy/<date>.csv
No email found: SoundHealth (alternatives noted in HubSpot)
Revised for review: Boldr
Replied: Legato. See HubSpot
```

## Log
Append a short section "Hourly <HH:MM>" to `drafts/leads/<YYYY-MM-DD>.md` listing each
change, credits charged, and any tool call that failed or was refused.

## Never
- Send email, reply to prospects, add prospects to Saleshandy sequences, or change
  anything in Saleshandy.
- Set a CEO-owned stage, update any HubSpot field other than `cf_lead_stage`, or touch deals.
- Reveal phone numbers, or reveal emails for leads that aren't `approved`.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`. Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
