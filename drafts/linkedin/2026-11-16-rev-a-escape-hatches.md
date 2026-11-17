# LinkedIn post: 2026-11-16 (company page)

- **Slot:** Monday, engineering insight
- **Pillar:** Prototype-to-production pitfalls / hardware (PCB respins; design Rev A so it can be probed and patched)
- **Source:** https://corefragment.com/blog/reduce-pcb-respins (Parthraj Gohil, 13 Oct 2026): respin = a revision ordered because Rev A couldn't be repaired on the bench; "ERC and DRC verify rules, not intent" (a mirrored connector passes both); Rev A escape hatches: test point on every rail and key signal (1 mm pad), SWD header (10-pin Cortex Debug or Tag-Connect TC2030), 0 Ω link or ferrite in series with each rail (also usable to measure rail current), unpopulated pads for pull-ups / filter caps / alternate parts, pi-network pads at the antenna feed, spare GPIOs to pads; log every bring-up finding, batch fixes into one Rev B, don't order Rev B until firmware has exercised every interface on Rev A; "A Rev A you cannot probe teaches you nothing."
- **Not used:** the blog's "three to six weeks" respin delay and "many fabs offer this free" (both flagged "[verify before publishing]" on the page itself; the CEO may want to remove those markers from the live post).
- **Status:** draft for CEO review

## Hooks

- **A (used below):** Your first PCB will have mistakes. / What matters is whether you can fix them on the bench. Here is why ->
- **B:** ERC and DRC passed. / The connector is still mirrored.

## Post

Your first PCB will have mistakes.
What matters is whether you can fix them on the bench. Here is why ->

A respin is any board revision you order because you couldn't repair Rev A.

ERC and DRC won't catch every mistake. They check rules, not intent. A mirrored connector passes both.

So treat Rev A as a learning spin, and give it escape hatches before you send the Gerbers:
- A test point on every rail and key signal.
- An SWD header: 10-pin Cortex Debug or Tag-Connect.
- A 0 Ω link in series with each rail. Lift it to isolate the rail or measure its current.
- Unpopulated pads for pull-ups, filter capacitors and alternate parts.
- Pi-network pads at the antenna feed, so you retune instead of re-route.
- Spare GPIOs broken out to pads.

Each one costs a pad or a small part.

Then, during bring-up, log every finding and batch the fixes into one Rev B. Don't order it until firmware has exercised every interface on Rev A.

A Rev A you can't probe teaches you nothing. A Rev A you can probe and patch tells you exactly what Rev B needs.

#PCBDesign #HardwareDevelopment #EmbeddedSystems

(~200 words)

## First comment

The full guide, with pin-map sign-off, footprint checks at 1:1, fab review and a patch-or-respin rule: https://corefragment.com/blog/reduce-pcb-respins

## Mentions

None.

## Visual brief

One 1200×1500 image. Headline "Design Rev A / to be repaired" (second line in blue), subhead "Six escape hatches before you send the Gerbers".
A numbered list of six rows (blue number circles, bold title + grey detail line): test point on every rail; SWD header (10-pin Cortex
Debug or Tag-Connect TC2030); 0 Ω link in series with each rail; unpopulated pads; pi-network pads at the antenna feed; spare GPIOs
broken out to pads. Takeaway in a tinted box with an orange bar: "Log every bring-up finding. Then batch the fixes into one Rev B."

- SVG: `drafts/linkedin/images/2026-11-16-rev-a-escape-hatches.svg`
- PNG (after render): `2026-11-16-rev-a-escape-hatches.png` in OneDrive "CF LinkedIn images"

**Alt text:** A numbered checklist titled "Design Rev A to be repaired" lists six escape hatches to add to a first PCB: test points on every rail, an SWD header, 0 Ω links in series with each rail, unpopulated pads, pi-network pads at the antenna feed and spare GPIOs broken out to pads. A highlighted note says to log every bring-up finding and batch the fixes into one Rev B.

## Best time to post

Monday 12:30–14:00 IST (Europe lunchtime; hardware and medtech engineering leads in the EU/UK).

## Reshare comment for Parthraj's profile

Every first board I've worked on had at least one mistake. The projects that stayed on schedule were the ones where Rev A had the test points and spare pads to fix it on the bench.
