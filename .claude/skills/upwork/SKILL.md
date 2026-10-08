---
name: upwork
description: How CoreFragment works Upwork — the CEO's personal freelancer profile only. Finding quality embedded/IoT jobs, background-checking clients, timing bids for US/EU clients, and drafting proposals in Parthraj's voice. Use for any Upwork task. Upwork is a separate channel from cold outreach.
---

# Upwork playbook

## 0. Separation (CEO decision, 2026-10-08). Never break these.
- **Upwork is its own channel.** No Upwork data (jobs, clients, names, messages, proposals)
  goes to HubSpot, Saleshandy, Apollo, `accounts/`, `drafts/email/`, `drafts/leads/` or any
  other tool. Upwork data lives only in `upwork/` (git-ignored, never pushed).
- The only thing that leaves the Upwork job: a short Teams alert to the CEO's 1:1 chat
  (job title, link, grade, budget, Connects, file path). No client names beyond what the
  job post shows, no message content.
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
  team size, never name a client, never put numbers on results.
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
- Still open: `find_jobs get` shows no hire made, few interviews, and `applied` is false.
- Competition we can win: fewer than ~20 proposals, or we are early (posted < 3 hours ago),
  or the brief is specialised enough that most proposals won't qualify.

**B (list in the log, no draft):** good work but one weakness (budget borderline,
40+ proposals, unclear scope, region outside the target). The CEO can ask for a draft.

**C / skip:** small jobs, entry level, hourly ceilings below $25/hr, "overseas cheap" framing,
unverified payment with a thin brief, defence/weapons/export-controlled, academic
tutoring/homework, pure web/mobile with no device, jobs that already hired, client
rating < 4.0 or feedback complaining about non-payment or scope creep, requests for
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
Record the check in the draft file. Research only; never contact anyone.

## 4. Timing (US and EU clients)
Early proposals get read: most hiring decisions start from the first 10–20 proposals, and
the first few hours after posting matter most.
- EU business hours: 09:00–17:00 CET/CEST = about **12:30–21:30 IST**.
- US East 09:00–17:00 ET = about **18:30–03:30 IST**; US West starts ~21:30 IST.
- So scans run on weekdays at **10:33** (US evening/overnight posts), **13:33** (EU
  morning), **17:33** (EU afternoon, US East early), **20:33** (US East morning) and
  **23:33** (US midday, US West morning) IST.
- A job posted < 3 hours ago with < 10 proposals is the best moment: mark it **URGENT** in
  the alert. A job older than 3 days with 30+ proposals is rarely worth Connects.
- The CEO reads Teams alerts on his phone: keep them short and give the deadline reason.

## 5. Writing the proposal
Load `cf-voice` (and its `examples.md`) first. Then:
- **The first two lines are the preview** the client sees in their list. Open with their
  project and one specific, useful observation (a risk, a design choice, a question that
  shows we read it). Never open with "Dear Hiring Manager", "I'm interested", "I have 12
  years…", or a restatement of the job title.
- **Proof, briefly:** one or two *real* relevant projects: past Upwork jobs (from
  `list_freelancer_proposals` Accepted/Hired items, `list_contracts`, profile work
  history) or CoreFragment case studies from CLAUDE.md, told as "I built…" (anonymized,
  no numbers; a corefragment.com case-study link is fine as a work sample, but it is not
  contact information and never invites off-platform contact).
  Never invent a project, metric, client or review. If nothing is directly relevant, say
  what is closest, honestly.
- **Approach:** 2–4 short lines on how you'd tackle it, ending with a concrete first step
  (e.g. "a one-week review of the schematic and current firmware, then a fixed quote for
  the rest").
- **One or two sharp questions** the client must answer anyway (chip choice, current
  state, certification target). Questions start conversations.
- **Close:** plain, available to talk on Upwork. No off-platform contact details.
- **Length:** 120–220 words. Plain text, short paragraphs, no bullet walls, no emojis.
- **Screening questions:** answer each one specifically, 1–4 sentences.
- **Language:** if the client's language isn't English and the post asks for it, add the
  same letter in that language.
- **Bid: suggest one for every lead, from the background check** (CEO, 2026-10-08). The
  CEO decides; write the evidence so he can. Inputs:
  - the client's posted range or budget (and whether it's a client-set or platform-default
    range);
  - what this client actually pays: `client_record` total spend ÷ hours (hourly history),
    and the rates in `client_work_history` / `client_feedback` where shown;
  - the market: `get_rate_insights` (expert, the job's title/description) and, from the
    proposal preview, `bid_stats` (avg/min/max of other bids) when available;
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
