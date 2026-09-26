LinkedIn content run (Mon / Wed / Fri, 11:47 IST). You are running unattended; nobody
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
- **Monday: Engineering insight.** One concrete firmware/hardware trade-off or pitfall
  (chip, RTOS, BLE, OTA, power, BMS, certification, cost-down). Seed it from a blog post in
  CLAUDE.md's content library (fetch the post). Format: text + one **diagram/visual**.
- **Wednesday: Proof or playbook.** An anonymised project lesson from a CLAUDE.md case study,
  or a practical checklist ("7 things to lock before your first 1,000 units").
  Format: **carousel (LinkedIn document post)**, 6–8 slides.
- **Friday: Industry POV or people.** Alternate weeks:
  (a) a timely take on news from the last 7 days in embedded/IoT/medtech/industrial IoT
      (search the web: e.g. Matter, Zephyr, EU Cyber Resilience Act, FDA cybersecurity,
      chip launches or end-of-life notices); or
  (b) a human, behind-the-scenes post about the team or building a product engineering firm
      from Ahmedabad for global clients (in the spirit of Parthraj's team-lunch post).
  On the **first Friday of the month**, make it a **short video**: a 45–60 second
  talking-head script for Parthraj instead.
Use the weekday of today's date. If it's not Mon/Wed/Fri, use the Monday slot.

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

## Visuals: design them as SVG files (the Mac renders them to PNG/PDF)
Write the visual yourself as SVG in `drafts/linkedin/images/`. After this run, the Mac
renders it (`scripts/render-linkedin-images.sh`), embeds the logo, and puts it in the
CEO's OneDrive folder "CF LinkedIn images".
- **Monday image:** `drafts/linkedin/images/<YYYY-MM-DD>-<slug>.svg`,
  `width="1200" height="1500"`: diagram, timeline, comparison or checklist that makes the
  post's one idea visible at a glance.
- **Wednesday carousel:** 6–8 slides, `…/<YYYY-MM-DD>-<slug>-slide-1.svg` … `-slide-8.svg`,
  each `width="1080" height="1350"`. Slide 1 = hook (big), last slide = takeaway +
  "Follow CoreFragment for more". They're combined into `<YYYY-MM-DD>-<slug>-carousel.pdf`.
- **Friday:** for a news post, an image as on Monday. For a people post, no graphic: give a
  photo brief (what to shoot: the team at lunch, a bench with a prototype board; no client
  hardware or screens). For the monthly video, a script with timings and captions.

**Design system (follow exactly):**
- Plain SVG only: `rect`, `circle`, `line`, `polygon`, `path`, `text`, `g`. No external
  fonts, images or CSS files. `font-family="Helvetica Neue, Helvetica, Arial"`.
- White background (`<rect width="100%" height="100%" fill="#FFFFFF"/>` first).
- Colours: brand blue `#1F5FAE` (headline accent, lines, icons), brand orange `#F26522`
  (one highlight per image), highlight tint `#FDEBD7`, text dark `#1F2933`, secondary text
  `#52606D`, dividers `#E4E7EB`. Nothing else.
- Margins 100 px. Headline 72–84 px bold (max 8 words, 2 lines), body text 34–40 px,
  labels ≥ 24 px, so everything reads on a phone.
- Make text fit: estimate width ≈ 0.55 × font-size per character (0.6 for bold); break
  long lines with separate `<text>` elements. Nothing may touch or cross the margins.
- Footer on every image and slide: a divider line at y = height − 120, `corefragment.com`
  bottom-left (26 px, `#52606D`), and bottom-right the logo plus the name:
  `<image href="{{LOGO}}" x="{width-416}" y="{height-98}" width="100" height="60"/>` and
  `<text x="{width-100}" y="{height-54}" text-anchor="end" font-size="34" font-weight="700" fill="#1F2933">CoreFragment</text>`
  (substitute the numbers). Leave `{{LOGO}}` literally; the renderer inserts the logo.
- No stock photos, clip-art, padlocks or emojis. Diagrams beat decoration.
- Also write the **alt text** (one or two plain sentences describing the image).

## Save
Write `drafts/linkedin/<YYYY-MM-DD>-<slug>.md` with: slot, pillar, 2 hooks, the post (hook
variant A in place), first comment, hashtags, visual/carousel/video brief, best time to
post, the SVG file names, alt text, and a 1–2 line **reshare comment for Parthraj's personal profile** (company pages
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

Image: <"CF LinkedIn images" folder in OneDrive: <file name>.png (or -carousel.pdf)>, ready in ~2 minutes
Alt text: <text>
(For a people post or video: the photo brief or the script instead.)

Reshare from your profile with: <1–2 lines>

File: drafts/linkedin/<file>.md
```
If the message would be very long (a carousel or video script), send the post in one
message and the visual brief in a second.

## Never
- Post to LinkedIn or anywhere else; the CEO posts.
- Invent facts, name clients, put numbers on our results, or disclose team size.
- Edit anything outside `drafts/linkedin/` (including `drafts/linkedin/images/`). Use HubSpot, Saleshandy or shell commands.
