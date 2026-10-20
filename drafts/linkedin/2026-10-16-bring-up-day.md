# LinkedIn post: 2026-10-16 (Friday)

- **Slot:** Friday: Industry POV or people. This week is the **people / behind-the-scenes** turn (last Friday, 9 Oct, was news: Zephyr at ten). Not the first Friday of the month, so a text post with a photo, no video.
- **Pillar:** Founder perspective: running a product engineering firm from Ahmedabad for global clients (one team from hardware to firmware to app)
- **Audience:** CTOs, founders and heads of engineering at device makers (segment 1), and product heads at companies building their first connected product (segment 2) who'd otherwise split hardware and firmware between vendors
- **Page:** CoreFragment company page

> **Check before posting:** the post describes a first power-on at our bench (current-limited
> bench supply, debug UART, scope on the reset pin, hardware and firmware engineers together,
> people smiling at the first console line). Change any detail that doesn't match how the
> team really does bring-up. The rail / pull-up / crystal examples are generic failure modes,
> not from a specific client project.

## Hooks
- **A (used below):** Bring-up day is the most honest day in a hardware project.
- **B:** The first power-on of a new board tells you more than any design review.

## Post

Bring-up day is the most honest day in a hardware project.
Here is why ->

Until the first board powers on, everything is a plan.

The schematic, the BOM, the firmware architecture. All of it looks right on screen.

Then someone sets a current limit on the bench supply and switches it on.

The hardware engineer watches the current draw.
The firmware engineer waits for the first line on the debug UART.
Someone already has a scope probe on the reset pin.

When something is wrong, it's rarely only a hardware problem or only a firmware problem.

A power rail that comes up a few milliseconds late. A pull-up the bootloader quietly depended on. A crystal that starts fine at room temperature and hesitates in the cold.

Those get found fastest when the people who drew the board and the people who wrote the code stand at the same bench.

That's how we like to work at CoreFragment in Ahmedabad: one team from PCB to firmware to app, in the same room when the board wakes up.

And the first line on the serial console still makes everyone smile.

If your hardware and firmware teams only meet in review meetings, invite both to bring-up day.

#EmbeddedSystems #HardwareEngineering #ProductDevelopment

(About 190 words.)

## First comment
How we work as one team from hardware and firmware to cloud and apps, with full source code and design files handed over: https://corefragment.com

If you have a board coming back from the fab and would like a second pair of eyes on bring-up, we're happy to help. Or if you'd just like a casual chat about first power-on stories, we're up for that too.

## Hashtags
#EmbeddedSystems #HardwareEngineering #ProductDevelopment (already at the end of the post)

## Mention
None.

## Photo brief (no graphic this week)
**Shoot:** one photo at our own bench during a real or staged first power-on.
- In frame: a bare prototype board (our own or a generic dev/eval board, e.g. an ESP32 or nRF52 kit, **no client hardware**), a bench power supply with its current reading visible, a scope probe or logic-analyser clip on the board, a USB-serial adapter.
- People: two engineers side by side at the bench, one hardware, one firmware; hands and profiles are enough. Faces only with their consent.
- **No screens** (no code, schematics or client names visible), no logos of client products.
- Natural light, phone at bench height, landscape or 4:5. Keep the bench as it is: a real bench looks better than a tidy one.
- Fallback if no bench shot is possible: a close-up of the board with the power supply display in the background.

## Visual files
None (people post with a photo). No SVG this week.

## Alt text
Two engineers at a workbench in CoreFragment's Ahmedabad office power on a new prototype circuit board, with a bench power supply showing the current draw and an oscilloscope probe clipped to the board.

(Edit the alt text to match the photo you take.)

## Best time to post
Today 12:30–14:00 IST (morning in the UK and Europe). If the photo isn't ready, Tuesday 12:30–14:00 IST works too.

## Reshare comment for Parthraj's profile
"Bring-up day is still my favourite day of any project. After ten years, the first line on the serial console still makes me smile."

## Sources
- Company facts (10+ years, one team from hardware to cloud and apps, source and design files delivered): CLAUDE.md.
- Failure modes (rail sequencing, bootloader strap/pull-up dependency, crystal start-up at low temperature): general embedded engineering knowledge, no client data.
