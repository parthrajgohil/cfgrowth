---
name: upwork
description: How CoreFragment works Upwork — the CEO's personal freelancer profile only. Finding quality embedded/IoT jobs, background-checking clients, timing bids for US/EU clients, and drafting proposals in Parthraj's voice. Use for any Upwork task. Upwork is a separate channel from cold outreach.
---

# Upwork playbook

## 0. Separation (CEO decision, 2026-10-08). Never break these.
- **Upwork is its own channel.** Nothing from Upwork goes to HubSpot, Saleshandy, Apollo,
  `accounts/`, `drafts/email/`, `drafts/leads/` or any other tool.
- **Save our own work, never Upwork's content** (CEO decision 2026-10-08; Upwork's API
  terms limit storing its data to 24 hours and require deleting copies when no longer
  needed). `upwork/` is in git and pushed to GitHub, so it holds ONLY our work product:
  proposal drafts we wrote, our grades and reasons, suggested bids and reasoning, outcomes
  by job ID, learnings, the CEO's guidance. **Never save** job descriptions, client
  records, freelancers' reviews of clients, client or contact names, messages, or other
  freelancers' bids, not even as quotes. Use them during the run, then describe the job
  and client **in our own words, anonymously and briefly** (e.g. "US physician-led
  medical device company, high spend, hires often: dual-camera ESP32 imaging prototype").
  Refer to a job by its ID and URL.
- The only other thing that leaves the Upwork job: a short Teams alert to the CEO's 1:1
  chat (our short label for the job, link, grade, budget, suggested bid, Connects, file
  path). No names, no message content.
- **All communication with a client happens inside Upwork**, before and after a contract
  (Upwork's anti-circumvention policy). Never email, call, LinkedIn-message or cold-pitch an
  Upwork client, and never suggest moving off-platform in a proposal.
- **Background research on a client is fine** (public web: their company, product,
  funding, team) to judge fit and to tailor the proposal. Research, not contact.
- **Account:** only the personal freelancer profile, org_uid `473867419264262145`
  ("IoT Expert | Embedded | Firmware | Product development"). Never the CoreFragment
  agency (`474112535869386752`) or client account. Proposals go out under Parthraj's own
  name, written as Parthraj ("I"). **CoreFragment's work is Parthraj's work** (CEO,
  2026-10-08: "I am CoreFragment"): its case studies, projects and proof points (CLAUDE.md)
  can be presented as his own experience, alongside his Upwork history. Still never state
  team size, never name a client, never put numbers on results. In proposals and the
  profile, say "my engineering company" rather than the name CoreFragment (CEO's choice,
  2026-10-08; the name appears only in the profile's employment section).
- **The CEO submits.** Agents search, research, draft and make a proposal *preview*
  (`manage_proposals create`: nothing sent, no Connects spent). Submitting
  (`confirm_preview`), messaging, accepting invitations and profile edits are the CEO's,
  in an interactive session or on upwork.com. Contracts, offers, milestones and money are
  blocked by the gate.

## 1. What a quality lead is
Invest Connects only where a real, sizeable engagement is likely. **Not** one-off small
jobs ($100–$500 fixes, quick tweaks, homework, "flash this board").

**A (draft a proposal):** all of
- Work we're strong at: embedded firmware (MCU/RTOS/Linux/BSP/drivers/bootloader/OTA),
  BLE/Wi-Fi/LoRa/cellular devices, PCB/hardware design, IoT device-to-cloud, companion
  apps *as part of a device*, edge AI on devices. Healthcare/medical and industrial IoT
  first (CLAUDE.md Priorities).
- Size: fixed price **≥ $1,500**, or hourly with max rate **≥ $25/hr** and duration
  **≥ 1 month** (or "ongoing" / 30+ hrs/week) (CEO, 2026-10-08). A product build or multi-phase project
  with a smaller first milestone counts if the brief clearly describes the larger work.
- Client: **payment verified**, located in **USA, Canada, UK or EU/EEA/Switzerland**
  (others only with an exceptional brief and spend history, grade B at best), and either
  a hiring record (spend ≥ $1K, hire rate ≥ 40%, rating ≥ 4.5) **or** a new client whose
  brief is detailed and professional (a real company, a real product).
- Fresh and not crowded (CEO, 2026-10-08, all jobs): posted **within the last 3 days**
  and **fewer than 50 proposals**.
- Still open and the client is active (`find_jobs get` → `activityStat.jobActivity`):
  no hire (`totalHired` 0), `applied` false. The connector has no "last viewed by client"
  field, so use these signals instead:
  - **Active, good:** interviews started (`totalInvitedToInterview` > 0) or invites sent,
    and no offer yet: the client is reading proposals now.
  - **Weaker (B at best):** an offer already made (`totalOffered` > 0), or many interviews
    (7+) on a small job.
  - **Possibly idle (B):** posted more than 24 hours ago with 15+ proposals but no
    interviews and no invites.
  - Every draft tells the CEO to check **"Last viewed by client"** on the job page before
    submitting (a client who hasn't looked in 2+ days is usually not worth the Connects).

**B (list in the log, no draft):** good work but one weakness (budget borderline,
an offer already made, client looks idle, unclear scope, region outside the target). The CEO can ask for a draft.

**C / skip:** small jobs, entry level, hourly ceilings below $25/hr, "overseas cheap" framing,
unverified payment with a thin brief, defence/weapons/export-controlled, academic
tutoring/homework, pure web/mobile with no device, jobs that already hired, client
rating < 4.0 or feedback complaining about non-payment or scope creep, a hostile,
bullying or disrespectful tone in the post or in freelancers' reviews of the client
(Parthraj doesn't work with such clients), work outside his skills, requests for
free/unpaid test work, anything asking to move off Upwork.

## 2. Finding jobs (read-only, free)
Use our own searches; Upwork's Best Match feed is noisy.
- `find_jobs search` with `title` (1–3 words, ANDed; can't be combined with `query`), sort
  newest first, `verified_payment_only: true`, `limit: 10`. Rotate titles: `firmware`,
  `embedded`, `BLE` / `bluetooth`, `PCB`, `nRF52` / `ESP32` / `STM32`, `IoT device`,
  `hardware design`, `embedded linux`, `zephyr`, `medical device`.
- `find_jobs search` with `query` for concepts: "medical device firmware", "wearable
  hardware", "industrial IoT sensor", "connected product prototype to production",
  "BLE companion app device", "edge AI device".
- `find_jobs smart_search` `mode: most_recent`, `days_posted: 1` as a cross-check.
- Filters to use: `experience_level` expert or intermediate; `budget_min` 1500 for fixed;
  `rate_min` 25 with `job_type: hourly`; `location` (try "United States", "Europe",
  "United Kingdom", "Canada"; if `filters_rejected` appears, use the spelling it gives).
- Skip any job id already in `upwork/seen.tsv` (record every job you grade there).

## 3. Client background check (before drafting)
1. `find_jobs get` on the job: `client_record` (hires, spend, hire rate, rating, open jobs),
   `activityStat.jobActivity` (invites, interviews, hires, offers: is it still live?),
   `client_feedback` (what freelancers say; a contact's first name may appear),
   `preferred_qualifications`, `screening_questions`, `connects_cost`.
2. If the brief or client info names the company or product, research it on the public web
   (website, what they make, stage/funding, team, news). Note anything that shapes the
   approach (e.g. "FDA 510(k) planned", "nRF52832 already chosen").
3. Red flags to note: many open jobs never hired, low hire rate, reviews mentioning
   unpaid work, a brief copied from a template, NDA-only with no detail and a tiny budget.
Record the check in the draft file as **our own summary** (3–6 lines: what kind of
client, how they hire and pay, fit and risks), never copied text, numbers lists or names.
Research only; never contact anyone.

## 4. Timing (US and EU clients)
Early proposals get read: most hiring decisions start from the first 10–20 proposals, and
the first few hours after posting matter most.
- EU business hours: 09:00–17:00 CET/CEST = about **12:30–21:30 IST**.
- US East 09:00–17:00 ET = about **18:30–03:30 IST**; US West starts ~21:30 IST.
- So scans run on weekdays at **10:33** (US evening/overnight posts), **13:33** (EU
  morning), **17:33** (EU afternoon, US East early), **20:33** (US East morning) and
  **23:33** (US midday, US West morning) IST.
- A job posted < 3 hours ago with < 10 proposals is the best moment: mark it **URGENT** in
  the alert. Jobs older than 3 days or with 50+ proposals are not drafted (§1).
- The CEO reads Teams alerts on his phone: keep them short and give the deadline reason.

## 5. Writing the proposal
Clients now get dozens of AI-written proposals per job (CEO, 2026-10-08). Polish is no
longer the edge; **Parthraj's real experience, opinions and presence are**. The draft
leaves room for him instead of imitating him.

Load `cf-voice` (and its `examples.md`) and **`upwork/voice-bank.md`** first. Then:
- **`[YOUR LINE: …]` slot, always.** Put one marked slot in the first or second paragraph,
  with a prompt tailored to the job (e.g. "[YOUR LINE: which past project does this remind
  you of, and what went wrong there?]" or "[YOUR LINE: the first thing you'd check on
  their board]"). Parthraj writes one honest sentence there before submitting. **A
  proposal is never submitted with the slot still in it**: when asked to submit, check
  first and ask him for the line if it's missing.
- **Voice bank only.** Use Parthraj's stories, opinions and phrases from
  `upwork/voice-bank.md` where they genuinely fit (at most one story per proposal, in his
  words, lightly trimmed). Never invent a story, opinion, anecdote or detail about his past
  work. If nothing fits, use the slot and keep the rest plain.
- **One concrete technical observation about their project**: a risk they didn't mention,
  a chip/architecture choice and why, or the first milestone you'd propose. Specific to
  their post, something a practitioner would notice. This is the heart of the proposal.
- **It's a letter, with a beginning and an end** (CEO, 2026-10-08: a proposal that starts
  mid-thought and stops without a close reads like a joke with no setup or punchline).
  Shape:
  1. **Greeting:** "Hi," or "Hi <first name>," only when a review or invitation names the
     contact. Never "Dear Hiring Manager".
  2. **Read-and-fit opener (1–2 sentences, also the preview line the client sees in their
     list):** show you read *their* brief (name the product) and why it's your kind of work,
     plus the most relevant credential. E.g. "I read your brief for the nRF5340 bracelet,
     and it's very close to the work I do most: …". Not "I'm interested", not a job-title
     restatement, not "I came across your job".
  3. **The observation** (below), then proof, then approach.
  4. **One question.**
  5. **Close:** an invitation to talk on Upwork ("Happy to talk it through on a short call
     here on Upwork."), then "Thanks," and "Parthraj" on separate lines.
- **Proof, briefly:** one or two *real* relevant projects: past Upwork jobs (from
  `list_freelancer_proposals` Accepted/Hired items, `list_contracts`, profile work
  history) or CoreFragment case studies from CLAUDE.md, told as "I built…" (anonymized,
  no numbers). **No external links** (not even corefragment.com) and no contact details in
  proposals or the profile: Upwork reads them as off-platform contact. Describe the work in
  words and suggest the matching Upwork portfolio item (`list_highlights` id) instead.
  Never invent a project, metric, client or review. If nothing is directly relevant, say
  what is closest, honestly.
- **Approach:** 2–4 short lines on how you'd tackle it, ending with a concrete first step
  (e.g. "a one-week review of the schematic and current firmware, then a fixed quote for
  the rest").
- **One or two sharp questions** the client must answer anyway (chip choice, current
  state, certification target). Questions start conversations.
- **Close:** offer a short call through Upwork (its meeting tool) or a question to answer
  in chat. No off-platform contact details.
- **Length:** 150–260 words including greeting and close. Plain text, short paragraphs, no bullet walls, no emojis.
- **Sound like a person, not an agent:**
  - Never use: "I hope this finds you well", "I came across your job", "I'm excited/thrilled
    to", "As a seasoned/passionate…", "I am confident that", "look no further", "delve",
    "leverage", "seamless(ly)", "robust", "cutting-edge", "tailored solution", "I'd love the
    opportunity", "Best regards" + full title block, em dashes, restating the job title,
    "Dear Hiring Manager".
  - No rule-of-three lists everywhere, no bolded headings, no perfectly parallel bullets.
  - Vary the structure between proposals: sometimes open with the observation, sometimes
    with a question, sometimes with the voice-bank story.
  - Short sentences, contractions, the odd sentence fragment are fine. One honest
    limitation where true ("I haven't used that exact sensor, but…") beats claiming
    everything.
- **Video for the best jobs:** for every URGENT A job, add a 60-second video script (4
  talking points: hello and name, the one thing you noticed in their post, the closest
  thing you've built, the question you'd ask) so Parthraj can record it on his phone and
  attach it.
- **Screening questions:** answer each one specifically, 1–4 sentences.
- **Language:** if the client's language isn't English and the post asks for it, add the
  same letter in that language.
- **Bid: suggest one for every lead, from the background check** (CEO, 2026-10-08). The
  CEO decides; write the evidence so he can. Inputs:
  - the client's posted range or budget (and whether it's a client-set or platform-default
    range);
  - what this client actually pays: `client_record` total spend ÷ hours (hourly history),
    and the rates in `client_work_history` / `client_feedback` where shown;
  - the field: `applicationsBidStats` in `find_jobs get` (avg/min/max bids so far; use
    them for judgement, never save them). (`get_rate_insights` only works on a client
    account, which we don't use.)
  - the client's profile: region, company stage/funding from the web check, how
    specialised the work is (medical/regulated, RF, low-power and production work justify
    the top of the range), how many proposals and how strong the competition looks;
  - our profile rate ($40/hr) and any guidance in `upwork/notes.md`.
  Suggest **one number** (hourly rate, or fixed amount with milestones), plus a range
  (floor / stretch), and 2–4 lines of reasoning citing those figures. Position as a
  senior specialist: aim at the upper half of what this client can evidently pay; don't
  go below the posted range's midpoint to win. Flag clearly if the suggestion is below
  $40/hr. For fixed price, bid the budget when the scope fits; propose a paid discovery
  milestone when it doesn't.
- **Boost:** never in an unattended run (the gate refuses it). Suggest a boost amount in
  the draft only for an A job with strong fit and fewer than 15 proposals.
- **Attachments/portfolio:** suggest relevant portfolio items from `get_profile
  list_highlights` by id; the CEO decides.
- **Long relationships are proof:** several of his Upwork client relationships have run
  for 8+ years (some since 2016). Say so when reliability matters, without naming anyone.

## 5b. Voice bank
`upwork/voice-bank.md` holds Parthraj's own stories, opinions, phrases and openings, from
his interviews. Only he adds to it (agents may tidy wording, never add content). When a
proposal he submitted contains a good `[YOUR LINE]`, suggest adding it to the bank in the
next weekly learnings section.

## 6. Connects discipline
- At most **6 drafts a day** and about **120 Connects a week** across all drafts (track in
  `upwork/log/<date>.md`; Connects are spent only when the CEO submits).
- Prefer one excellent proposal to three average ones.
- Report the balance (`get_profile connects_balance`) in each run's log.

## 7. Learning loop (make the playbook better every week)
- Each run: check `list_freelancer_proposals` for status changes on proposals we drafted
  (viewed, interviewing, hired, declined) and record them in `upwork/outcomes.tsv`.
- Mondays (first run): read `upwork/outcomes.tsv` and the last week's logs and append a
  dated "What worked / what didn't" section to `upwork/notes.md` (which titles, budgets,
  regions, timings and openings got replies). Read `upwork/notes.md` at the start of
  every run and follow the CEO's guidance there first.
