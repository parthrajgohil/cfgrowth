Hourly lead-stage run (weekdays 09:03–23:03 IST). You are running unattended; nobody
can answer questions or approve prompts. Anything that needs approval will be refused.

HubSpot company property `cf_lead_stage` is the source of truth for every lead. The CEO
moves leads to On hold, Approved, Needs edit, Meeting, Won, Lost or Archived. You may
only set: `new`, `ready_to_import`, `no_email`, `in_sequence`, `replied` (the gate
refuses anything else, and you must never try to set a CEO stage).

## Step 0: is there anything to do? (keep this cheap)
Call `search_crm_objects` on COMPANY with filter `cf_lead_stage HAS_PROPERTY`, properties
`name, domain, cf_lead_stage`. Compare with the Stage column of `accounts/index.md`. If
no company is `approved` (counts only in a 17:xx or 19:xx batch run), `needs_edit`,
`ready_to_import` or `in_sequence`, and every stage
already matches the index, write nothing (no log section either; the runner already
records every run in `logs/`) and stop immediately with "Nothing to do."
Otherwise read CLAUDE.md, then handle each stage below. Find each company's brief
(`accounts/<slug>.md`, where the HubSpot company ID is recorded) and its draft
(`drafts/email/*-<slug>.md`).

## Approved → email → Ready to import / No email found
**Only in the batch runs at 17:xx and 19:xx IST** (see the time at the top of this
prompt). In any other run, leave `approved` leads untouched for the next batch run (CEO
decision 2026-10-07: fewer sequences, two batches a day). In a batch run, handle all
approved companies together (at most 10 per run):
0. If the brief (or the HubSpot contact) already has a revealed, valid email for the buyer
   (e.g. a lead the CEO re-approved), skip steps 1–2b for that lead: no new reveal, no
   credits. Go straight to step 3 with that email.
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
   - Then build the **batch sequences** (below) for all of this run's leads with a valid
     email together, and set each one's `cf_lead_stage` = `ready_to_import` (meaning
     "sequence ready to activate") once its batch is built.

   **Batch sequences, INACTIVE** (CEO decisions 2026-10-07). One sequence per region per
   batch run: Europe/UK leads in one, USA leads in another (skip a region with no leads).
   The CEO reviews and activates each batch himself; you never activate, start or resume a
   sequence (`update_sequence_status` is blocked). The gate only lets you change a sequence
   you created in the last 3 hours, and only in these ways. Calls, in this order:
     1. `create_sequence`: `title` = `CF · batch <YYYY-MM-DD> <HH:MM> · <Europe|USA> · <n> leads`
        (time from the top of this prompt), `scheduleId` = `1qPBAZkMwD` (Europe) or
        `Mgw4R6YeaA` (USA). Do NOT pass `emailAccountId` (the API rejects it). Note the
        returned `sequenceId`.
     2. `add_sequence_step` four times, `type` = `Email`, by `sequenceId`, each with ONE
        variant `{"payload": {"subject": …, "content": …, "preheader": ""}}`, using the
        merge-field template of sequence `bZwp7qe9zQ` exactly (no P.S. line):
        - `absoluteDays` 1: subject `{{Custom Subject Line}}`; content
          `Hi {{First Name}},\n\n\n{{Custom First Line}}\n\n\n{{Custom Second Line}}\n\n\n{{Custom Third Line}}\n\n\n{{Custom CTA}}\n\n\nHave a nice day!\nParthraj Gohil\nCEO, CoreFragment Technologies\ncorefragment.com`
        - `absoluteDays` 4: subject `""`; content
          `Hi {{First Name}},\n\n\n{{Custom Follow Up 1 First Line}}\n\n\n{{Custom Follow Up 1 Second Line}}\n\n\n{{Custom Follow Up 1 Third Line}}`
        - `absoluteDays` 9: subject `""`; content `Hi {{First Name}},\n\n\n{{Custom Follow Up 2}}`
        - `absoluteDays` 16: subject `""`; content `Hi {{First Name}},\n\n\n{{Custom Follow Up 3}}`
        Follow-ups have an empty subject so they go as replies in the same thread. Note
        step 1's ID (`variants[0].stepId` in the response).
     3. `update_sequence_settings` (`sequenceId`) with exactly these settings: code 9 = "2"
        (plain text), 4 = "0", 5 = "0" (no click/open tracking), 3 = "1", 6 = "0", 10 = "1",
        11 = "0", 12 = "0", 13 = "1", and 2 = "Reply 'Stop' if you'd prefer not to receive
        messages at this time." Never set BCC/CC (codes 7, 8).
     4. `add_email_accounts_to_sequence` (`sequenceId`, `emailAccountIds` = `["Y8aL7kk3PN"]`,
        the CEO's mailbox parthraj.gohil@corefragment.com).
     5. `import_prospects_to_sequence_step` (step 1's `stepId`, `conflictAction` =
        `upsert`, `verifyProspects` = false) with all of the batch's prospects (max 10), one
        object per lead using the **exact Saleshandy field labels**: `First Name`,
        `Last Name`, `Email`, `Company`, `Job Title`, `LinkedIn`, `Company Domain`,
        `Custom Subject Line`, `Custom First Line`, `Custom Second Line`,
        `Custom Third Line`, `Custom CTA`, `Custom Follow Up 1 First Line`,
        `Custom Follow Up 1 Second Line`, `Custom Follow Up 1 Third Line`,
        `Custom Follow Up 2`, `Custom Follow Up 3`. Fill them from the approved draft, word
        for word:
        - Custom Subject Line = subject option 1
        - Email 1, split by paragraph: Custom First Line = appreciation/trigger paragraph;
          Custom Second Line = problem paragraph; Custom Third Line = "I'm the CEO of
          CoreFragment…" paragraph; Custom CTA = the two-option closing paragraph (one
          paragraph, under ~250 characters)
        - Follow-up 1: everything after the greeting, split by paragraph into Custom Follow
          Up 1 First / Second / Third Line (the sign-off counts as a paragraph; if there are
          more than three, merge the extra ones into the Third Line)
        - Custom Follow Up 2 / Custom Follow Up 3 = everything after the greeting in
          follow-ups 2 and 3, sign-off included (keep line breaks), but WITHOUT any "Not
          relevant? Reply 'no'…" line
        - Never include the greeting or email 1's signature; the template adds them.
        Then `check_prospect_import_status` until complete; report any failure.
     6. `list_sequences` (`sequenceName` = the title): confirm it shows 4 steps and
        `active: false`.
     If any call fails or is refused, stop building that batch, leave its leads at
     `approved` (the next batch run retries; their emails are already recorded, so no
     credits are spent again), and report what failed. The CEO can delete a half-built
     sequence in Saleshandy.
   - For each lead in a batch, record the batch title and `sequenceId` in the brief's
     Buyers section, the draft's front matter (`saleshandy_sequence: <sequenceId>`), and a
     HubSpot NOTE on the company "AGENT: in Saleshandy batch, ready to activate · <title>".
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
- For `ready_to_import` (sequence built, waiting for the CEO): look the lead's sequence
  (per-lead or batch) up with `list_sequences` (by its title or ID from the brief). If it shows `active: true`, the
  CEO has activated it: set `in_sequence`. If it's still inactive, leave it and change
  nothing in it. Never edit a sequence after the run that created it.
- Older leads (before 2026-10-07) were imported by CSV into `bZwp7qe9zQ`: for those, set
  `in_sequence` if `get_email_list` / `get_outcomes` clearly show the contact in it.
- For `in_sequence`: check Saleshandy for replies from the contact's email
  (`get_unread_email_threads_count`, `get_email_list`, `get_email_thread`). If they
  replied, set `replied`, add a NOTE "AGENT: reply received <date>" with a two-line
  summary (not the whole email), and alert the CEO on Teams. Never reply to anyone.

## Teams (one message per run, only if something changed)
Use `teams_send_chat_message` to chat
`19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
and no other. Plain text, no mentions. A sequence you built is NOT sending until the CEO
activates it: say so plainly and give each sequence title, for example:
```
Lead updates (<HH:MM>)
READY TO ACTIVATE in Saleshandy → Sequences (review, then activate):
- CF · batch 2026-10-08 17:03 · Europe · 2 leads: HeyCharge (Chris Cardé), Pollen (Miguel Morgado)
- CF · batch 2026-10-08 17:03 · USA · 1 lead: Legato (Mehul Trivedi)
To drop a lead, remove that prospect from the batch before activating.
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
Only if this run changed something (a stage, a file, a HubSpot record, a Teams message) or a
tool call failed: append a short section "Hourly <HH:MM>" to `drafts/leads/<YYYY-MM-DD>.md`,
using the time given at the top of this prompt, listing each change, credits charged, and
any tool call that failed or was refused. A run that only checked and found nothing new
writes no section.

## Never
- Send email, reply to prospects, or activate, start or resume any Saleshandy sequence.
  In Saleshandy, only build this run's new inactive batch sequences described above; never
  touch any other sequence (including `bZwp7qe9zQ`) or any existing prospect.
- Set a CEO-owned stage, set `cf_linkedin_touch` to anything but `to_send`, update any
  other HubSpot field (except a contact's empty `email`), or touch deals.
- Send LinkedIn messages or visit LinkedIn yourself; the CEO sends them.
- Reveal phone numbers, or reveal emails for leads that aren't `approved`.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`. Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
