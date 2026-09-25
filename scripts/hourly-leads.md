Hourly lead-stage run (weekdays 09:00–19:00 IST). You are running unattended; nobody
can answer questions or approve prompts. Anything that needs approval will be refused.

HubSpot company property `cf_lead_stage` is the source of truth for every lead. The CEO
moves leads to On hold, Approved, Needs edit, Meeting, Won, Lost or Archived. You may
only set: `new`, `ready_to_import`, `no_email`, `in_sequence`, `replied` (the gate
refuses anything else, and you must never try to set a CEO stage).

## Step 0: is there anything to do? (keep this cheap)
Call `search_crm_objects` on COMPANY with filter `cf_lead_stage HAS_PROPERTY`, properties
`name, domain, cf_lead_stage`. Compare with the Stage column of `accounts/index.md`. If
no company is `approved`, `needs_edit`, `ready_to_import` or `in_sequence`, and every stage
already matches the index, write nothing and stop immediately with "Nothing to do."
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
   - In HubSpot, find the buyer's CONTACT (associated with the company; the contact ID
     is in the brief). If it exists and has no email, update ONLY its `email`. If it
     doesn't exist (older leads), create it (firstname, lastname, email, jobtitle,
     hs_linkedin_url) associated with the company.
   - Append a row to `drafts/saleshandy/<YYYY-MM-DD>.csv` (create it with the header if
     needed). The header uses the **exact Saleshandy field labels**, including the
     trailing space in `Custom CTA `:
     `First Name,Last Name,Email,Company,Job Title,LinkedIn,Company Domain,Custom Subject Line,Custom First Line,Custom Second Line,Custom Third Line,Custom CTA ,P.S. line,Custom Follow Up 1 First Line,Custom Follow Up 1 Second Line,Custom Follow Up 1 Third Line,Custom Follow Up 2,Custom Follow Up 3,Draft File`
     Fill it from the approved draft, word for word:
     - Custom Subject Line = subject option 1
     - Email 1, split by paragraph: Custom First Line = appreciation/trigger paragraph;
       Custom Second Line = problem paragraph; Custom Third Line = "I'm the CEO of
       CoreFragment…" paragraph; Custom CTA  = the two-option closing paragraph
     - P.S. line = the "Not relevant? Reply 'no'…" line if present (EU/UK), else empty
     - Follow-up 1: everything after the greeting, split by paragraph into Custom Follow
       Up 1 First / Second / Third Line (the sign-off counts as a paragraph; if there are
       more than three, merge the extra ones into the Third Line)
     - Custom Follow Up 2 / Custom Follow Up 3 = everything after the greeting in
       follow-ups 2 and 3, sign-off and opt-out line included
     - Don't include the greeting ("Hi {{First Name}},") or email 1's signature; the
       sequence template adds them.
     Quote every field (RFC 4180); keep line breaks inside quoted fields.
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

## Keep the local copy in sync
For every lead whose stage you changed, and for every lead whose stage the CEO changed
since the last run (compare HubSpot with `accounts/index.md`):
- set the draft's front-matter `stage:` line to the HubSpot value, and
- update that company's row in `accounts/index.md` (Stage, Email, and the date).
Do this in Step 0 as well: if no lead needs action but HubSpot stages differ from
`accounts/index.md`, sync the index and drafts, then stop.

## Log
Append a short section "Hourly <HH:MM>" to `drafts/leads/<YYYY-MM-DD>.md` listing each
change, credits charged, and any tool call that failed or was refused.

## Never
- Send email, reply to prospects, add prospects to Saleshandy sequences, or change
  anything in Saleshandy.
- Set a CEO-owned stage, update any HubSpot field other than a company's `cf_lead_stage`
  or a contact's empty `email`, or touch deals.
- Reveal phone numbers, or reveal emails for leads that aren't `approved`.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`. Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
