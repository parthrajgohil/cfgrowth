# Parthraj's voice bank

Parthraj's own stories, opinions, phrases and openings, in his words (lightly tidied). The
Upwork job uses ONLY what is here for personal touches (SKILL.md §5 and §5b); it never
invents anything about his past or adds detail to these entries. Only Parthraj adds
content. Anonymous: no client names. First interview: 2026-10-08.

## War stories (bugs fixed, products rescued, hard lessons)

**W1. Wireless bugs hide in the field.** In IoT, the hardest bugs I've found are in
wireless connectivity, and I found them during field testing, because everything works
well in a controlled lab environment.
- Use when: BLE / Wi-Fi / LoRa / cellular products, reliability or "it drops in the field"
  complaints, a client about to pilot or ship.
- Proposal angle: plan field testing early, not after the lab says it's done.

**W2. The project that was twice behind schedule.** I joined a project that was 2x behind
its timeline and had doubled its budget. The problem: the execution wasn't aligned with
the requirements; there were many gaps between what the client actually needed and what
the team was building. I turned it around by joining the client meetings and reshaping
the schedule around the expected product behaviour, instead of blindly doing engineering
work.
- Use when: rescue jobs ("take over", "previous developer", "behind schedule", "fix and
  finish"), unclear requirements.

## Strong opinions (technical views he'd defend)

**O1. Feasibility before engineering.** Many clients don't spend enough time on
feasibility and a risk matrix before they come to me. Depending on the project's size,
complexity and risks, I usually propose a phase-based approach that de-risks the hard
items first, so the program succeeds in a systematic way.
- Use when: new product builds, prototype-to-production, vague scopes, large budgets.

**O2. nRF vs ESP32: it depends on the application.** For a battery-operated device with
hard power-consumption constraints, I'd go with Nordic (nRF). If the product handles a
camera, Wi-Fi connectivity and high RAM usage, I'd go with ESP32.
- Use when: chip selection is open or the client asks "ESP32 or Nordic?", wearables vs
  camera/Wi-Fi devices.

**O3. Scrub the BOM for production, not the prototype.** Before building your first
units, do the BOM scrub with your yearly production volume in mind, not the prototype
quantity. And check each chip's expected end of life.
- Use when: hardware startups, prototype-to-production, PCB/BOM jobs, cost-down work.

## How he works with clients (habits, what he insists on)

**H1. What I insist on at the start:** the current status of the project (if anything has
already been built, like hardware), a feasibility check, a phase-wise approach, a review
of the project plan, and a weekly check-in.

**H2. Why clients stay for years:** they value transparency, technical help and going
beyond what's expected. I don't just work for the money; I work for the product. I
suggest what's best for the product, not just follow what the client says.
- Use when: long-term or ongoing roles, clients who've been burned before, "partner"
  language in the post. "I work for the product" is a signature line: use it sparingly
  (at most one proposal in five) so it stays genuine.

## How he opens and closes a conversation (real phrases)
_Not answered yet (interview question 9). Until he adds it: plain openings that start with
the client's project; sign off with just "Parthraj"._

## Things he's honest about (what he doesn't do, limits)

**L1. Who I don't work with:** clients who are bullying by nature or don't respect other
people. I also don't take projects that don't fit my skills or my proposed budget.
- INTERNAL: use for client screening (SKILL.md §1 red flags: hostile or disrespectful
  tone in the post or in reviews of the client), not as proposal text. If a job is
  outside his skills, don't draft it; say so in the log.

## Open questions for the next interview
- Q5: what do most people get wrong about BLE or battery life?
- Q9: how he usually opens a first message and signs off.
