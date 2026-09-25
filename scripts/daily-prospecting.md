Daily prospecting run. You are running unattended; nobody can answer questions or
approve prompts. Anything that would need approval will be refused, so do not
attempt it.

## Goal
Find up to 5 NEW qualified leads, research each one, draft outreach, record it in
HubSpot with `cf_lead_stage` = `new`, and notify the CEO on Teams about each lead.
(Approved leads, email reveals, edits and replies are handled by the hourly run,
`scripts/hourly-leads.md`. Do not do those here.)

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

## Find new leads
- Look for companies that match the ICP in CLAUDE.md and have a trigger from the last
  6 months: funding, firmware/embedded/IoT hiring, a new device launch, prototype to
  production, a certification push, an RTOS migration, an end-of-life chip.
- You can use web research and Saleshandy's `sage_search` (free: describe the
  companies or people you want). Verify every trigger with a public source.
- Follow the **Priorities** and **ICP** sections of CLAUDE.md: about 4 in 5 leads in the
  primary rows (firmware and hardware for healthcare/medical and industrial IoT), the
  rest exploring the secondary rows. Include **segment 2** (traditional companies
  adding a connected product) on most days. Vary industries from recent days (check the
  dates in `accounts/index.md`).
- Regions: USA and Europe (EU + UK) only. Company size 10–500.
- Skip defense or export-controlled work, and pure software companies with no device.

For each candidate:
1. **Research it thoroughly** and write `accounts/<slug>.md` in the researcher's format,
   with a source URL for every non-obvious claim. Mark anything you can't verify as
   "unverified". Beyond the researcher's sections, always capture a **Lead info** block:
   - Website, blog/newsroom URL, careers page URL, LinkedIn company page, X/Twitter
   - HQ city/country, founded year, employee count or range, total money raised and
     latest round (amount, date, lead investor)
   - What they make, and known tech (chips, radios, RTOS, cloud, app platforms)
   - Recent news or blog posts (last 6 months), each with date and URL
   - 1–3 potential buyers: name, title, LinkedIn URL (public), one line on background,
     plus the Saleshandy result for each (step 2)
   Business information only (CLAUDE.md rule 5): no personal emails, phones or addresses.
2. **Reachability check (free):** `sage_search` (Saleshandy) for each potential buyer,
   and `apollo_mixed_people_api_search` (Apollo, free: company domain + name). Record
   which sources have them (`Saleshandy lead ID`, `Apollo ID`); "has_email" in Apollo is a
   good sign.
   - If found, record the `Saleshandy lead ID` next to that buyer in the brief.
   - If none is found, look at who Saleshandy does have at the company. If someone
     suitable exists (engineering/product leadership or founder), record them as an
     alternative buyer with their lead ID, and note whether the draft's angle fits them.
   - Never call `enrich_contacts` or `apollo_people_*match` here. Emails are revealed by
     the hourly run, only for leads the CEO approved.
3. Only for fit **A** or **B**:
   a. Write `drafts/email/<YYYY-MM-DD>-<slug>.md` in the writer's format. Right after the
      front matter, add `stage: new` to the front matter and a **Lead info** section
      (copied from the brief: website, blog/news, LinkedIn, size, funding, HQ, buyers
      table with LinkedIn and Saleshandy status, HubSpot company link). Then 2–3
      subjects, email 1, 3 follow-ups and the self-check. Recipient email:
      "TO BE FILLED BY HUMAN". Never guess an email address.
   b. In HubSpot, search for the company by domain. If it already exists, skip it and
      note that in the summary. Otherwise create, in ONE call, the COMPANY with every
      field you verified:
      `name, domain, website, description (one line), about_us (2–3 lines), city, state,
      country, founded_year, numberofemployees, total_money_raised,
      linkedin_company_page, twitterhandle, tech_stack` and `cf_lead_stage` = `new`
      (leave out any field you couldn't verify; don't set `industry`).
      Then, in a second call, create for that company:
      - a CONTACT for each potential buyer (firstname, lastname, jobtitle,
        hs_linkedin_url; **no email**), associated with the company. Search first
        (name + company) so you don't create duplicates;
      - NOTE "CoreFragment lead · Fit <A/B> (researched <date>)": trigger (with date and
        source), buyers, Saleshandy reachability, angle, recent news links, file paths;
      - NOTE "DRAFT FOR REVIEW · to <Name> (<Title>) · set CF lead stage to Approved /
        Needs edit / On hold / Archived": the first subject line, email 1 exactly as
        drafted, and one line flagging anything unverified or inferred.
      Write the HubSpot company ID and contact IDs into the brief and the draft's Lead
      info. Never update existing HubSpot records.
   c. Add or update the lead's row in `accounts/index.md` (see Finish).
   d. Send ONE Teams message with the `teams_send_chat_message` tool to this chat and
      no other:
      `19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
      (the 1:1 chat with parthraj@corefragment.com). Use plain text, no mentions, in this format:

      ```
      New lead: <Company> (Fit <A/B>)  ·  <website>
      What: <one line on what they make>
      Why now: <trigger, with date>
      Buyer: <Name>, <Title>  ·  Email: <in Saleshandy | in Apollo | alternative: Name | not found>
      Angle: <service line> / <case study>
      Review in HubSpot, then set "CF lead stage" (Approved / Needs edit / On hold / Archived)
      ```

Stop when you have 5 A/B leads or have spent a reasonable effort (about 15
candidates). Fewer good leads beat more weak ones.

## Finish
1. Update `accounts/index.md`, the local list of every lead. Keep one row per
   company, sorted by date researched (newest first). Columns:
   `| Researched | Company | Website | Fit | Stage | Buyer (title) | Email | HubSpot | Brief | Draft |`
   Before writing, read every company's `cf_lead_stage` from HubSpot
   (`search_crm_objects`, COMPANY, `cf_lead_stage` HAS_PROPERTY) so the Stage column
   and each draft's `stage:` front-matter line match HubSpot. C-grade and no-fit
   companies go in the table too, with Stage "not pursued".
2. Write `drafts/leads/<YYYY-MM-DD>.md`: a table of every company you looked at (lead or
   not), with fit grade, one-line reason, Saleshandy reachability, HubSpot company ID,
   and file paths. Add any tool call that failed or was refused. (The hourly run
   appends its own sections to this file later.)

## Never
- Send email, create Outlook drafts, post anywhere else, or use any write tool except
  the one Teams chat and the HubSpot creates described above.
- Reveal emails (`enrich_contacts`), change any lead's stage after creating it, or
  update any existing HubSpot record.
- Add prospects to Saleshandy sequences, or change anything in Saleshandy.
- Reveal phone numbers, or reveal emails for drafts that aren't approved.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`.
- Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
