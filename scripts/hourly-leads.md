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
2b. **Apollo fallback** for every lead still without a valid email after step 2:
   - Free search first: `apollo_mixed_people_api_search` with `q_organization_domains_list`
     = the company domain and `q_keywords` = the buyer's name (or no keywords to see who
     Apollo has there). Use the result's `id`.
   - Then ONE `apollo_people_bulk_match` call for all of them (`details: [{id: …}]`, max 10),
     **work email only**: never set `reveal_phone_number`, `reveal_personal_emails` or
     `run_waterfall_*` (the gate refuses them). About 1 credit each.
   - Accept an email only if `email_status` is `verified`. If `email_domain_catchall` is
     true, still accept it but note "(catch-all domain)" in the brief.
   - If the buyer isn't in Apollo but a suitable alternative is (engineering/product/
     hardware leadership or founder), record that person as the alternative in a HubSpot
     note; don't reveal them unless the CEO's latest note says to.
   - Report the credits used and the balance (`apollo_users_api_profile` with
     `include_credit_usage`) in the log.
3. For each lead with a valid email:
   - Put the email in the draft's `recipient:` line (if it isn't there already).
   - Record the email and the reveal request ID in the brief's Buyers section.
   - In HubSpot, find the buyer's CONTACT (associated with the company; the contact ID
     is in the brief). If it exists and has no email, update ONLY its `email`. If it
     doesn't exist (older leads), create it (firstname, lastname, email, jobtitle,
     hs_linkedin_url) associated with the company.
   - Append a row to `drafts/saleshandy/<YYYY-MM-DD>.csv` (create it with the header if
     needed). The header uses the **exact Saleshandy field labels**:
     `First Name,Last Name,Email,Company,Job Title,LinkedIn,Company Domain,Custom Subject Line,Custom First Line,Custom Second Line,Custom Third Line,Custom CTA,P.S. line,Custom Follow Up 1 First Line,Custom Follow Up 1 Second Line,Custom Follow Up 1 Third Line,Custom Follow Up 2,Custom Follow Up 3,Draft File`
     Fill it from the approved draft, word for word:
     - Custom Subject Line = subject option 1
     - Email 1, split by paragraph: Custom First Line = appreciation/trigger paragraph;
       Custom Second Line = problem paragraph; Custom Third Line = "I'm the CEO of
       CoreFragment…" paragraph; Custom CTA = the two-option closing paragraph (a single-line text
       field: keep it one paragraph, under ~250 characters)
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
4. For each lead with no valid email from **both** Saleshandy and Apollo: set `cf_lead_stage` = `no_email` and
   `cf_linkedin_touch` = `to_send` (one update), then prepare the **LinkedIn touch**:
   a. Find the buyer's public LinkedIn profile URL (brief, HubSpot contact, or a web
      search for "<name> <company> LinkedIn"). Never log in to or scrape LinkedIn. If you
      can't find it, say "search in Sales Navigator" instead of a URL.
   b. Write, in Parthraj's voice (`cf-voice` + `examples.md`; never open with funding):
      - **Connection note**, at most 280 characters (LinkedIn's limit is 300): one
        specific, warm line about their product plus a light reason to connect. No pitch,
        no link.
      - **InMail** (for Sales Navigator), subject up to 8 words, body 60–100 words:
        email 1's idea, shortened, with the two-option close.
      - **Message after they accept**, 40–70 words: thanks, one useful insight or blog link
        from the brief, and the same two-option close.
   c. Save these under a `## LinkedIn touch` section at the end of the draft file, with the
      profile URL and the date.
   d. Add a HubSpot NOTE on the company, "LINKEDIN TOUCH · to <Name> (<Title>)", with the
      profile URL and all three texts.
   e. Send ONE Teams message per lead (same chat as below) that you can copy from directly:
      ```
      LinkedIn touch: <Company> · <Name>, <Title>
      Profile: <URL or "search in Sales Navigator">

      Connection note:
      <text>

      InMail subject: <subject>
      InMail:
      <text>

      After they accept:
      <text>

      When sent, set "CF LinkedIn touch" = Sent in HubSpot.
      ```
   Also add a HubSpot NOTE listing which other people Saleshandy has at the company
   (from `sage_search`, free), in case a different contact is better.

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
Drafts track their stage only in the front-matter `stage:` line. Never add a `status:` line.
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
- Set a CEO-owned stage, set `cf_linkedin_touch` to anything but `to_send`, update any
  other HubSpot field (except a contact's empty `email`), or touch deals.
- Send LinkedIn messages or visit LinkedIn yourself; the CEO sends them.
- Reveal phone numbers, or reveal emails for leads that aren't `approved`.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`. Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
