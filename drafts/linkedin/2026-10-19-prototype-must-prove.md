# LinkedIn post: 2026-10-19 (company page)

- **Slot:** Monday, engineering insight
- **Pillar:** Engineering decisions (chip choice), prototype-to-production pitfalls
- **Source:** https://corefragment.com/blog/esp-vs-nordic
- **Status:** draft for CEO review

## Hooks

- **A (used below):** Your BLE demo worked on day one. / It may still have proved the wrong thing. Here is why ->
- **B:** ESP32 or nRF52? / Ask what the prototype has to prove first.

## Post

Your BLE demo worked on day one.
It may still have proved the wrong thing. Here is why ->

Most chip debates start with the chip. They should start with the prototype's job.

A prototype usually has one of two jobs.

Job 1: show the idea.
An investor demo, a UX test, a board running on USB power on a table.
Speed wins here. ESP32 has cheap dev kits, libraries for almost every sensor, and a huge community. Use it.

Job 2: produce evidence.
Battery life on a small cell, BLE range in a real building, numbers that go into the spec.
Here you need the chip you'll ship, or one very close to it. The nRF52 was built BLE-first: lower BLE active and sleep current, and no Wi-Fi radio sharing the hardware.

The trouble starts when Job 1 hardware is used for Job 2 decisions.
The demo runs on ESP32, its battery estimate gets copied into the spec, and the gap shows up after the enclosure is designed.

Neither chip is wrong. ESP32 fits a product that needs Wi-Fi and BLE together. nRF52 fits a BLE-only device on a small battery.

Before you order dev kits, write one line: "This prototype must prove ___."
Then pick the chip that can prove it.

#EmbeddedSystems #BLE #ProductDevelopment

(~215 words)

## First comment

We wrote a longer comparison of ESP32 and nRF52 for BLE prototypes, with a five-question checklist to run before you start: https://corefragment.com/blog/esp-vs-nordic

## Mentions

@Nordic Semiconductor, @Espressif Systems (both chips are discussed fairly; optional)

## Visual brief

One 1200×1500 image: headline "What must your prototype prove?", two side-by-side columns.
"Job 1: Show the idea" (investor/UX demo, USB power, speed, Wi-Fi + BLE → pick for speed: ESP32)
and "Job 2: Produce evidence" (highlighted orange: battery numbers, BLE range on site, figures
for the spec, BLE-only → pick what ships: nRF52-class). Below: "The risk: Job 1 numbers end up
in the Job 2 spec." Takeaway line: "This prototype must prove ___."

- SVG: `drafts/linkedin/images/2026-10-19-prototype-must-prove.svg`
- PNG (after render): `2026-10-19-prototype-must-prove.png` in OneDrive "CF LinkedIn images"

**Alt text:** A two-column diagram asking "What must your prototype prove?". A demo prototype that only shows the idea can use ESP32 for speed; a prototype that must produce battery, range and spec figures should be built on the production-class chip such as nRF52.

## Best time to post

Monday 12:30–14:00 IST (Europe lunchtime).

## Reshare comment for Parthraj's profile

Most ESP32 vs nRF52 arguments I hear are really arguments about what the prototype is for. Settle that first and the chip question usually answers itself.
