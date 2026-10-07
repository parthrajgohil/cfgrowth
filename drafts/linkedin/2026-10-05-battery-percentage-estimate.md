# LinkedIn post: 2026-10-05 (Monday)

- **Slot:** Monday, Engineering insight
- **Pillar:** Engineering decisions / prototype-to-production pitfalls (hardware + firmware: BMS, power)
- **Audience:** CTOs / Heads of Engineering at medical wearable and industrial IoT device makers (segment 1); product heads planning a first battery-powered product (segment 2)
- **Page:** CoreFragment company page
- **Seed blog:** https://corefragment.com/blog/design-custom-battery-management-system
- **Teams:** sent to the CEO by the unattended run on 2026-10-05 (message id 1791181119546).

## Hooks
- **A (used below):** Your battery icon said 35%. / The device shut down twenty minutes later.
- **B:** Coulomb counting is accurate on day one. That's the problem.

## Post

Your battery icon said 35%.
The device shut down twenty minutes later. Here is why ->

State of charge is never measured. It is estimated, and each method fails in its own way.

Voltage lookup is the cheapest. It struggles on LiFePO4, which sits near 3.3 V for most of its charge, and on any cell under load, where voltage sags.

Coulomb counting adds up the current going in and out. It is accurate on day one, then it drifts. A 1 mA offset in current sensing is 24 mAh a day. On a 500 mAh wearable cell, that is about 5% of error every day until something corrects it.

A Kalman filter fixes most of this, at the cost of a cell model, test data and real firmware effort.

For most products we start in the middle: count coulombs, then correct the count at moments you can trust. A full charge. Or a rested cell, when open-circuit voltage actually means something.

Then let the firmware learn real capacity as the cell ages. A two-year-old cell is not the datasheet cell.

On a medical wearable, a wrong percentage means a missed reading. On a field sensor, a truck roll.

A battery percentage is a promise to your user. Decide how it stays true.

#EmbeddedSystems #BatteryManagement #MedicalDevices

(~215 words, no emoji)

## First comment
Our guide to custom BMS design covers this and the rest (cell balancing, protection thresholds, sensor placement, UL 2054 / IEC 62133 / UN 38.3): https://corefragment.com/blog/design-custom-battery-management-system

If you're designing a battery-powered device and want a second opinion on your BMS or fuel-gauge approach, our hardware and firmware team is happy to take a look. Or if you'd just like a technical chat about battery life, we're up for that too.

## Hashtags
#EmbeddedSystems #BatteryManagement #MedicalDevices (already at the end of the post)

## Mention
None (no single chip vendor is central to the post).

## Visual brief (single image)
- **File:** `drafts/linkedin/images/2026-10-05-battery-percentage-estimate.svg` (1200×1500) → rendered to `2026-10-05-battery-percentage-estimate.png`
- **Headline:** "Your battery % is an estimate." Subtitle: "Three ways to estimate state of charge (SoC)".
- **Body:** three cards: (1) Voltage lookup: cheap, blind on flat curves and under load; LiFePO4 sits near 3.3 V. (2) Coulomb counting: accurate on day one, then drifts; 1 mA offset = 24 mAh a day. (3) Kalman filter: most accurate, needs a cell model, test data and tuning. Orange highlight box: "What we usually start with: coulomb counting, corrected at full charge or on a rested cell."
- **Alt text:** "Graphic titled 'Your battery % is an estimate' comparing three ways to estimate battery state of charge: voltage lookup (cheap but unreliable on flat LiFePO4 curves and under load), coulomb counting (accurate at first but drifts) and a Kalman filter (most accurate but needs a cell model and tuning). A highlighted box says CoreFragment usually starts with coulomb counting corrected at full charge or on a rested cell."

## Best time to post
Monday 12:30–14:00 IST (Europe morning). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"A battery percentage looks like a measurement, but it's an estimate your firmware makes. If your users ever say 'it died at 30%', this is usually where to look."

## Sources (facts checked 2026-10-05)
- CoreFragment blog, "Design a custom battery management system": voltage lookup vs coulomb counting (drifts without correction) vs Kalman filtering (significant firmware and tuning effort); recommendation of coulomb counting with periodic voltage-based recalibration; chemistry-specific voltage windows; certification standards.
- LiFePO4's flat discharge plateau around 3.2–3.3 V per cell: general, widely published cell characteristic.
- 1 mA × 24 h = 24 mAh; 24/500 ≈ 4.8%: arithmetic on an illustrative cell, not a client figure. "35% / twenty minutes" is an illustrative scenario.
