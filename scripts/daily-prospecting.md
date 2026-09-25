Daily prospecting run. You are running unattended; nobody can answer questions or
approve prompts. Anything that would need approval will be refused, so do not
attempt it.

## Goal
1. Fill in emails for drafts the CEO has approved (part A).
2. Find up to 5 NEW qualified leads, research each one, draft outreach, record it
   in HubSpot, and notify the CEO on Teams about each lead (part B).

## Before you start
1. Read CLAUDE.md (ICP, services, case studies, hard rules). Follow it exactly.
2. Read `.claude/agents/account-researcher.md` and `.claude/agents/content-writer.md`.
   Do their jobs yourself in this session, following their process and output formats.
3. Read `.claude/skills/cf-voice/SKILL.md` and `.claude/skills/cold-email/SKILL.md`
   (and `examples.md` in cf-voice if it exists).
4. List `accounts/`. Never research a company that already has a brief.
5. For HubSpot: call `get_user_details` once, and use `tool_guidance` for
   `manage_crm_objects` before your first create (notes need `hs_timestamp` and
   `hs_note_body` and must be associated with a record).

## Part A: approved drafts, then emails and contacts
Find drafts in `drafts/email/` whose front matter says `status: approved` and whose
recipient still says `TO BE FILLED BY HUMAN`. For each one (at most 10 per day):
1. Get the buyer's Saleshandy lead ID from the account brief (`Saleshandy lead ID`),
   or find it with `sage_search` (free).
2. Reveal the email with `enrich_contacts`: email only, never phone, with all of
   today's leads in ONE call. Then poll `get_enrichment_status` and read
   `get_enrichment_result`. Use only emails marked `valid`. Never guess one.
3. Put the email in the draft's `recipient:` line, and record it (and the reveal
   request ID) in the account brief's Buyers section.
4. In HubSpot, create the CONTACT (first/last name, email, job title, company)
   associated with the account's HubSpot company (ID in the brief). Search first so
   you don't create a duplicate.
5. Append a row to `drafts/saleshandy/<YYYY-MM-DD>.csv` (create it with a header if
   needed): `first_name,last_name,email,company,job_title,linkedin_url,subject,email_1,followup_1,followup_2,followup_3,draft_file`.
   Use the draft's first subject line and the email texts exactly as approved, with
   the merge tags left in place. Quote every field (RFC 4180).
If no valid email is found, leave the recipient as is and say so in the summary.

## Part B: find new leads
- Look for companies that match the ICP in CLAUDE.md and have a trigger from the last
  6 months: funding, firmware/embedded/IoT hiring, a new device launch, prototype to
  production, a certification push, an RTOS migration, an end-of-life chip.
- You can use web research and Saleshandy's `sage_search` (free: describe the
  companies or people you want). Verify every trigger with a public source.
- The priority table is not filled in yet, so do not rank service lines or
  industries. Spread the day's leads across the website industries, and
  vary them from recent days (check the dates in `accounts/`).
- Target regions: USA and Europe, unless CLAUDE.md says otherwise.
- Skip defense or export-controlled work, and pure software companies with no device.

For each candidate:
1. Research it and write `accounts/<slug>.md` in the researcher's format, with a
   source URL for every non-obvious claim. Mark anything you can't verify as "unverified".
2. **Reachability check (free):** `sage_search` for the chosen buyer at that company.
   - If found, record the `Saleshandy lead ID` next to the buyer in the brief.
   - If not, look at who Saleshandy does have at the company. If someone suitable
     exists (engineering/product leadership or founder), record them as the
     alternative buyer with their lead ID, and note whether the draft's angle fits them.
   - Never call `enrich_contacts` in part B. Emails are only revealed for approved drafts.
3. Only for fit **A** or **B**:
   a. Write `drafts/email/<YYYY-MM-DD>-<slug>.md` in the writer's format (front matter,
      2–3 subjects, email 1, 3 follow-ups, self-check). Recipient email:
      "TO BE FILLED BY HUMAN". Never guess an email address.
   b. In HubSpot, search for the company by domain. If it's missing, create the
      COMPANY (name, domain, city/country, industry) and a NOTE on it with the fit
      grade, trigger (with date and source), buyer (name, title, LinkedIn URL if
      public), angle, and file paths. Write the HubSpot company ID into the brief.
      Do NOT create contacts in part B, and never update existing HubSpot records
      (that would need approval).
   c. Send ONE Teams message with the `teams_send_chat_message` tool to this chat and
      no other:
      `19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
      (the 1:1 chat with parthraj@corefragment.com). Use plain text, no mentions, in this format:

      ```
      New lead: <Company> (Fit <A/B>)
      What: <one line on what they make>
      Why now: <trigger, with date>
      Buyer: <Name>, <Title>  ·  Email: <in Saleshandy | alternative: Name | not in Saleshandy>
      Angle: <service line> / <case study>
      Review: accounts/<slug>.md and drafts/email/<date>-<slug>.md
      To send: set status: approved in the draft
      ```

Stop when you have 5 A/B leads or have spent a reasonable effort (about 15
candidates). Fewer good leads beat more weak ones.

## Finish
Write `drafts/leads/<YYYY-MM-DD>.md` with:
- Part A: which approved drafts got emails (and HubSpot contacts), which didn't and
  why, Saleshandy credits charged today, and the CSV path if one was written.
- Part B: a table of every company you looked at (lead or not), with fit grade,
  one-line reason, Saleshandy reachability, HubSpot company ID, and file paths.
- Any tool call that failed or was refused.
If part A produced a CSV, also send one Teams message: "Saleshandy import ready:
drafts/saleshandy/<date>.csv (<n> prospects)".

## Never
- Send email, create Outlook drafts, post anywhere else, or use any write tool except
  the one Teams chat and the HubSpot creates described above.
- Add prospects to Saleshandy sequences, or change anything in Saleshandy.
- Reveal phone numbers, or reveal emails for drafts that aren't approved.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`.
- Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
