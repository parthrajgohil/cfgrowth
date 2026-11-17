# LinkedIn post: 2026-10-26 (company page)

- **Slot:** Monday, engineering insight
- **Pillar:** Prototype-to-production pitfalls (Linux device drivers, I2C, kernel updates)
- **Source:** https://corefragment.com/blog/outsourcing-decision-for-device-driver-development (I2C-in-the-enclosure example, kernel 5.4 → 6.1, race conditions, undocumented power-on sequencing). Public fact: the I2C spec (NXP UM10204) caps bus capacitance at 400 pF in Standard and Fast mode.
- **Status:** draft for CEO review

## Hooks

- **A (used below):** A driver that works and a driver you can ship / are two different pieces of code. Here is why ->
- **B:** The I2C driver was fine. / The cable was just longer than the reference design.

## Post

A driver that works and a driver you can ship
are two different pieces of code. Here is why ->

The first is written against a dev kit, a short cable and one kernel version.

The second has to survive everything the bench never shows it.

One example from industrial monitoring work: an I2C sensor read perfectly on the bench, then started dropping readings inside the real enclosure.

The wiring was longer than the reference design assumed. The I2C spec allows 400 pF of bus capacitance in Fast mode, and long wires use it up quickly. Slower edges, and a signal outside the sensor's tolerance.

The fix needed both sides: a hardware change, plus a retry step in the driver.

The same pattern shows up again and again:
- Power-on sequencing the datasheet doesn't describe.
- A race between an interrupt and a read that appears once in thousands of attempts.
- A driver written for kernel 5.4 that needs rework on 6.1 after a BSP update.

A demo won't catch these. Your customers will.

Before you call a driver done, test it in the real enclosure, across power cycles, and on the kernel you'll ship next year.

#EmbeddedLinux #DeviceDrivers #ProductDevelopment

(~200 words)

## First comment

We wrote about when to build drivers in-house and when to bring in outside help, with a simple decision table and what a complete handoff should include: https://corefragment.com/blog/outsourcing-decision-for-device-driver-development

## Mentions

None (no company page is central to this post).

## Visual brief

One 1200×1500 image. Headline "A working driver is / not a shipping driver", subhead "Four things the bench never tests".
Four rows, each "Bench:" vs "Field:": WIRING (highlighted orange: short cable vs long wiring, slow I2C edges, lost reads),
POWER (powered once vs power cycles the datasheet never covers), TIMING (one read at a time vs an IRQ race once in thousands),
KERNEL (today's kernel vs a BSP update, 5.4 becomes 6.1). Takeaway at the bottom: "Test it in the enclosure, across power
cycles, and on the kernel you'll ship next year."

- SVG: `drafts/linkedin/images/2026-10-26-working-vs-shipping-driver.svg`
- PNG (after render): `2026-10-26-working-vs-shipping-driver.png` in OneDrive "CF LinkedIn images"

**Alt text:** A four-row comparison titled "A working driver is not a shipping driver". For wiring, power, timing and kernel version, it contrasts what a device driver sees on the bench with what it meets in the field, and ends with the advice to test in the real enclosure, across power cycles and on the kernel you will ship.

## Best time to post

Monday 12:30–14:00 IST (Europe lunchtime).

## Reshare comment for Parthraj's profile

"It works on my bench" is where driver work starts, not where it ends. The hardest bugs we chase live between the wiring, the power rails and the kernel version.
