Upwork scan (weekdays 10:33, 13:33, 17:33, 20:33 and 23:33 IST). You are running
unattended; nobody can answer questions or approve prompts. Anything that needs approval
will be refused.

## Rules first
- Read `.claude/skills/upwork/SKILL.md` and follow it exactly. Read `upwork/notes.md`
  (the CEO's guidance comes first) and CLAUDE.md (services, technology, case studies,
  hard rules 3–4: never invent facts, never name a CoreFragment client).
- Upwork is a **separate channel**. Use only Upwork tools, public web research, the
  `upwork/` folder and ONE Teams chat. Never use or write to HubSpot, Saleshandy, Apollo,
  `accounts/`, `drafts/`, or any other tool or folder. Never contact a client outside Upwork.
- **Save only our own work** (SKILL.md §0). `upwork/` is pushed to GitHub: never write job
  descriptions, client records, reviews, names, messages or other freelancers' bids into
  any file, not even as quotes. Describe jobs and clients in our own words, anonymously.
- Account: org_uid `473867419264262145` only (the CEO's personal freelancer profile).
- You never submit, message, accept, withdraw or boost. `manage_proposals create` (a
  preview) is the furthest you go.

## Step 0: anything new? (keep this cheap)
1. `get_freelancer_dashboard check`: note new invitations, offers and unread client
   messages (count and job titles only).
2. Search (SKILL.md §2): 4–6 `find_jobs search` calls with rotating titles and queries,
   newest first, `verified_payment_only: true`; plus one `smart_search most_recent` with
   `days_posted: 1`.
3. Drop every job id already in `upwork/seen.tsv`.
If there are no new jobs, no new invitations/offers and no unread client messages, append
nothing and stop with "Nothing new."

## Step 1: grade every new job (SKILL.md §1)
Record each one in `upwork/seen.tsv` (job_id, first_seen, posted, label, grade, reason),
where label is OUR short anonymous description (e.g. "BLE wearable firmware, US, hourly"),
not the job title.
For promising ones, call `find_jobs get` before deciding A: hires/offers already made,
proposal count, `applied`, `client_record`, `client_feedback`, `connects_cost`.

## Step 2: for each A job (max 6 drafts a day across all runs; check today's log)
1. Background check (SKILL.md §3), including public web research on the company if it's
   named. Never contact anyone.
2. Pull real proof: `get_profile get` and `list_highlights`, `list_freelancer_proposals`
   (Accepted/Hired items as tone and evidence), `list_contracts` for relevant past work.
   Use only what these return and CLAUDE.md's case studies.
3. Read `.claude/skills/cf-voice/SKILL.md` and `examples.md`, then write the proposal
   (SKILL.md §5): cover letter, answers to screening questions, a **suggested bid from the
   background check** (one number, floor/stretch, reasoning: client's range, what the
   client has paid, `get_rate_insights`, bid stats from the preview),
   suggested portfolio ids, suggested boost (or "no boost").
4. `manage_proposals create` (org `473867419264262145`, no `boost_connects`) to get the
   preview: connects_cost, balance, screening questions, bid stats, unmet preferred
   qualifications. If it reports an existing invitation or proposal, don't draft; note it.
   If the preview lists screening questions you didn't answer, add the answers.
5. Save `upwork/drafts/<YYYY-MM-DD>-<job_id>.md`:
   ```
   ---
   job_id: <numeric id>
   url: <job url>
   grade: A
   posted: <time>   proposals: <n or tier>   connects: <cost>
   budget: <fixed $ / hourly range>   suggested_bid: <amount>  (floor <x>, stretch <y>)
   status: draft   # the CEO changes this after submitting
   ---
   ## Why this job (our words, 2–4 lines)
   ## Client background check (our anonymous summary, 3–6 lines, no names or quotes)
   ## Cover letter
   ## Suggested bid (our reasoning; cite figures as ranges, e.g. "client pays ~$40–60/hr")
   ## Screening answers
   ## Suggestions (portfolio ids, boost, attachments)
   ## Preview (connects cost, balance, unmet qualifications; no other freelancers' bids)
   ```
6. Add a row to `upwork/outcomes.tsv` (job_id, drafted date, submitted empty, status
   "draft").

## Step 3: outcomes and learning (SKILL.md §7)
- `list_freelancer_proposals` (list): update `upwork/outcomes.tsv` for jobs we drafted
  (submitted? viewed? interviewing? hired? declined?).
- If today is Monday and this is the first run of the day, append the weekly "What
  worked / what didn't" section to `upwork/notes.md`.

## Step 4: one Teams message (only if there's something for the CEO)
Use `teams_send_chat_message` to chat
`19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
and no other. Plain text, no mentions. Only Upwork-safe facts: job title, link, grade,
budget, proposals, Connects, file path; never message contents or client personal details.
```
Upwork (<HH:MM>)
URGENT A: <our short label> · <budget> · bid <suggested> · <n> proposals · <cost> Connects
<url>
Draft: upwork/drafts/<file>.md

A: <our short label> · <budget> · bid <suggested> · <n> proposals · <cost> Connects
<url>
Draft: upwork/drafts/<file>.md

Also: <n> invitation(s), <n> unread client message(s) on Upwork
To submit: open a Claude session and say "submit Upwork draft <file>", or paste it on Upwork.
```
Mark a job URGENT when it was posted < 3 hours ago with < 10 proposals.

## Log
Append "Upwork <HH:MM>" to `upwork/log/<YYYY-MM-DD>.md` (only when Step 0 found something):
searches run, jobs seen / new / A / B / C (one line each: job ID, our label, the reason),
drafts made,
Connects balance, invitations/messages, and any tool call that failed or was refused.

## Never
- Submit, boost, withdraw, message, accept or decline anything on Upwork; edit the profile.
- Use the agency or client Upwork accounts.
- Share Upwork data with any other tool, or write outside `upwork/`.
- Contact a client outside Upwork, or suggest it in a proposal.
- Invent experience, clients, metrics or reviews.
