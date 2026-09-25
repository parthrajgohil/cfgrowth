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
   - Never call `enrich_contacts` here. Emails are revealed by the hourly run, only
     for leads the CEO approved.
3. Only for fit **A** or **B**:
   a. Write `drafts/email/<YYYY-MM-DD>-<slug>.md` in the writer's format (front matter,
      2–3 subjects, email 1, 3 follow-ups, self-check). Recipient email:
      "TO BE FILLED BY HUMAN". Never guess an email address.
   b. In HubSpot, search for the company by domain. If it already exists, skip it and
      note that in the summary. Otherwise create the COMPANY (name, domain, city,
      country, a one-line `description`, and `cf_lead_stage` = `new`) and two NOTEs on it:
      - "CoreFragment lead · Fit <A/B> (researched <date>)": trigger (with date and
        source), buyer (name, title, LinkedIn URL if public), Saleshandy reachability,
        angle, and file paths.
      - "DRAFT FOR REVIEW · to <Name> (<Title>) · set CF lead stage to Approved / Needs
        edit / On hold / Archived": the first subject line, email 1 exactly as drafted,
        and one line flagging anything unverified or inferred.
      Write the HubSpot company ID into the brief (Snapshot section). Do NOT create
      contacts here, and never update existing HubSpot records.
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
      Review: HubSpot, then set "CF lead stage" (Approved / Needs edit / On hold / Archived)
      ```

Stop when you have 5 A/B leads or have spent a reasonable effort (about 15
candidates). Fewer good leads beat more weak ones.

## Finish
Write `drafts/leads/<YYYY-MM-DD>.md`: a table of every company you looked at (lead or
not), with fit grade, one-line reason, Saleshandy reachability, HubSpot company ID, and
file paths. Add any tool call that failed or was refused. (The hourly run appends its
own sections to this file later.)

## Never
- Send email, create Outlook drafts, post anywhere else, or use any write tool except
  the one Teams chat and the HubSpot creates described above.
- Reveal emails (`enrich_contacts`) or change any lead's stage after creating it.
- Add prospects to Saleshandy sequences, or change anything in Saleshandy.
- Reveal phone numbers, or reveal emails for drafts that aren't approved.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`.
- Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
