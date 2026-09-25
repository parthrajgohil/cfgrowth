LinkedIn content run (Tue / Wed / Thu, 11:47 IST). You are running unattended; nobody
can answer questions or approve prompts. Anything that needs approval will be refused.

## Goal
Write ONE ready-to-post LinkedIn post for the **CoreFragment company page**, plus
everything needed to publish it well, and send it to the CEO on Teams so he can copy and
paste it. Posts should make CTOs, founders and product heads at device and IoT companies
(see CLAUDE.md ICP, both segments) recognise their own problem and think of CoreFragment.
They should bring enquiries, not just likes.

## Before you start
1. Read CLAUDE.md (facts, services, priorities, ICP, case studies, hard rules).
2. Read `.claude/skills/linkedin-post/SKILL.md`, `.claude/skills/cf-voice/SKILL.md` and
   `.claude/skills/cf-voice/examples.md` (Parthraj's own post shows the rhythm: hook line,
   "Here is why ->", one-line paragraphs, human takeaway).
3. Read `drafts/linkedin/index.md` (create it if missing) to see recent posts. Never repeat
   a topic, hook or blog post used in the last 8 weeks.

## Today's slot (by weekday)
- **Tuesday: Engineering insight.** One concrete firmware/hardware trade-off or pitfall
  (chip, RTOS, BLE, OTA, power, BMS, certification, cost-down). Seed it from a blog post in
  CLAUDE.md's content library (fetch the post). Format: text + one **diagram/visual**.
- **Wednesday: Proof or playbook.** An anonymised project lesson from a CLAUDE.md case study,
  or a practical checklist ("7 things to lock before your first 1,000 units").
  Format: **carousel (LinkedIn document post)**, 6–8 slides.
- **Thursday: Industry POV or people.** Alternate weeks:
  (a) a timely take on news from the last 7 days in embedded/IoT/medtech/industrial IoT
      (search the web: e.g. Matter, Zephyr, EU Cyber Resilience Act, FDA cybersecurity,
      chip launches or end-of-life notices); or
  (b) a human, behind-the-scenes post about the team or building a product engineering firm
      from Ahmedabad for global clients (in the spirit of Parthraj's team-lunch post).
  On the **first Thursday of the month**, make it a **short video**: a 45–60 second
  talking-head script for Parthraj instead.
Use the weekday of today's date. If it's not Tue/Wed/Thu, use the Tuesday slot.

## Writing rules
- Company-page voice: "we" for CoreFragment, "you" for the reader. Warm, specific, humble,
  like the CEO's examples. Never salesy.
- 120–250 words. Hook in the first 1–2 lines (under 12 words each if possible), short
  paragraphs, one idea, one takeaway line. Give **2 hook variants**.
- Specific over generic: name chips, protocols, failure modes, numbers from public
  sources (never numbers about our own results or clients).
- Put any link in the **first comment**, not in the post. At most 3 hashtags, at the end.
  0–1 emoji. No engagement bait. Never name a client.
- Suggest 1–2 company pages to @mention only when genuinely relevant (e.g. Nordic
  Semiconductor in a post about nRF52), never people.

## Visuals (describe them exactly; a human or Canva makes them)
- **Diagram/visual:** give a precise brief: format 1200×1200 (or 1200×1500), headline text
  on the image (max 8 words), the diagram content (boxes/arrows/labels), style (clean,
  white background, one accent colour, CoreFragment logo bottom-right), and alt text.
- **Carousel:** slide-by-slide text (slide 1 = hook; last slide = takeaway + "Follow
  CoreFragment for more"). Max 25 words per slide. 1080×1350 portrait. Also a one-line
  design note.
- **Video:** script with timings (hook 0–5 s, point, example, takeaway, close), on-screen
  captions, and a filming note (phone, eye level, natural light, subtitles on).
- **People post:** a photo brief (what to shoot, e.g. the team at lunch, a bench with a
  prototype board, no client hardware or screens visible).

## Save
Write `drafts/linkedin/<YYYY-MM-DD>-<slug>.md` with: slot, pillar, 2 hooks, the post (hook
variant A in place), first comment, hashtags, visual/carousel/video brief, best time to
post, and a 1–2 line **reshare comment for Parthraj's personal profile** (company pages
get far less reach than people, so his reshare matters). Add a row to
`drafts/linkedin/index.md`: `| date | slot | topic | hook | blog/source | file |`.

## Send to Teams (one message)
Use `teams_send_chat_message` to chat
`19:a7e8ebf4-992c-431d-8daa-2ff7f01e0129_d31e5b95-dc3b-45f8-8ff7-0e63e143aaa4@unq.gbl.spaces`
and no other. Plain text, no mentions, laid out so each block can be copied:
```
LinkedIn post for today (<slot>): company page
Best time: <e.g. 12:30–14:00 IST for Europe, or 18:30–20:00 IST for the US>

--- POST (copy from here) ---
<post, hook A>
--- END POST ---

Alt hook B: <hook>

First comment: <text with link>
Hashtags: <already at the end of the post>
Mention: <@Company or "none">

Visual: <brief, carousel slides, or video script>

Reshare from your profile with: <1–2 lines>

File: drafts/linkedin/<file>.md
```
If the message would be very long (a carousel or video script), send the post in one
message and the visual brief in a second.

## Never
- Post to LinkedIn or anywhere else; the CEO posts.
- Invent facts, name clients, put numbers on our results, or disclose team size.
- Edit anything outside `drafts/linkedin/`. Use HubSpot, Saleshandy or shell commands.
