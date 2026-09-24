Daily prospecting run. You are running unattended; nobody can answer questions or
approve prompts. Anything that would need approval will be refused, so do not
attempt it.

## Goal
Find up to 5 NEW qualified leads for CoreFragment, research each one, draft outreach,
and notify the CEO on Teams about each lead.

## Before you start
1. Read CLAUDE.md (ICP, services, case studies, hard rules). Follow it exactly.
2. Read `.claude/agents/account-researcher.md` and `.claude/agents/content-writer.md`.
   Do their jobs yourself in this session, following their process and output formats.
3. Read `.claude/skills/cf-voice/SKILL.md` and `.claude/skills/cold-email/SKILL.md`
   (and `examples.md` in cf-voice if it exists).
4. List `accounts/`. Never research a company that already has a brief.

## Find leads
- Look for companies that match the ICP in CLAUDE.md and have a trigger from the last
  6 months: funding, firmware/embedded/IoT hiring, a new device launch, prototype to
  production, a certification push, an RTOS migration, an end-of-life chip.
- The priority table is not filled in yet, so do not rank service lines or
  industries. Spread the day's leads across the website industries, and
  vary them from recent days (check the dates in `accounts/`).
- Target regions: USA and Europe (where the case studies are), unless CLAUDE.md says
  otherwise.
- Skip defense or export-controlled work, and pure software companies with no device.

## For each candidate
1. Research it and write `accounts/<slug>.md` in the researcher's format, with a
   source URL for every non-obvious claim. Mark anything you can't verify as "unverified".
2. Only for fit **A** or **B**: write `drafts/email/<YYYY-MM-DD>-<slug>.md` in the
   writer's format (front matter, 2–3 subjects, email 1, 3 follow-ups, self-check).
   Leave the recipient email as "TO BE FILLED BY HUMAN". Never guess an email address.
3. Only for fit **A** or **B**: send ONE Teams message with the
   `teams_send_chat_message` tool to this chat and no other:
   `19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
   (the 1:1 chat with parthraj@corefragment.com). Use plain text, no mentions, in this format:

   ```
   New lead: <Company> (Fit <A/B>)
   What: <one line on what they make>
   Why now: <trigger, with date>
   Buyer: <Name>, <Title>
   Angle: <service line> / <case study>
   Review: accounts/<slug>.md and drafts/email/<date>-<slug>.md
   ```

Stop when you have 5 A/B leads or have spent a reasonable effort (about 15
candidates). Fewer good leads beat more weak ones.

## Finish
Write `drafts/leads/<YYYY-MM-DD>.md`: a table of every company you looked at (lead or
not), with fit grade, one-line reason, and file paths. If a Teams message failed, say
so there.

## Never
- Send email, create Outlook drafts, post anywhere else, or use any write tool except
  the one Teams chat above.
- Edit `pipeline/`, `.claude/`, `CLAUDE.md` or `STATUS.md`.
- Run shell commands.
- Invent facts, name CoreFragment clients, or put numbers on case-study results.
