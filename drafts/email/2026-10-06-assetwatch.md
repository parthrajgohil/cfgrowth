---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: assetwatch
recipient: Shawn Nichols, VP of Hardware Innovation (email: TO BE FILLED BY HUMAN)
sources: [accounts/assetwatch.md, https://corefragment.com/case-study/access-control-system, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** AssetWatch · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/350956991195) · brief: `accounts/assetwatch.md`
- **Website:** https://www.assetwatch.com · **Product updates:** https://www.assetwatch.com/product-updates · **Careers:** https://job-boards.greenhouse.io/assetwatch · **LinkedIn:** unverified
- **HQ:** Westerville, Ohio · **Size:** 201-500
- **Funding:** USD 75M Series C (2025-04, Viking Global)
- **Recent news:** hazardous-location vibration sensor deploying since 2026-01; Firmware Engineer posted 2026-07-09 (now closed); Senior Embedded Systems Engineer open (2026-10-06)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Shawn Nichols (**primary**) | VP of Hardware Innovation | unverified | lead ID 145922371 | 6110102e2a33f90001df77d0 (has email) | [564639149760](https://app.hubspot.com/contacts/247517534/record/0-1/564639149760) |
| Patrick Ca***l | VP, Product Management | unverified | not checked | 54a28ab87468693a7eb0bf2a (has email) | not created |

## Subject options
1. hazardous-location sensor
2. assetwatch embedded hiring
3. c1d1 sensor firmware

---

## Email 1 (day 0), ~80 words (body, excluding greeting and signature)

Hi {{First Name}},

Getting a vibration sensor certified for C1D1 through C2D2, and deployed indoors and out, is hard hardware work. I also saw the open Senior Embedded Systems Engineer role, so I imagine the device roadmap is busy.

I'm the CEO of CoreFragment. We build industrial sensor hardware and firmware (STM32, nRF52, BLE, secure OTA, HIL testing) under NDA with full IP transfer.

If extra embedded capacity would help while you hire, I'd be happy to talk. Or a casual chat about sensor firmware works too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Plant floors are hard on wireless links. What a sensor does when the hub disappears (buffer, back off, reconnect without burning battery) decides whether the trend data has holes. We wrote up our approach: corefragment.com/blog/handle-mqtt-connection-loss

Might be useful for the next sensor or hub release.

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A different angle: test capacity. Hardware-in-the-loop rigs and firmware CI are often the first thing to slip when a team is hiring. We set up HIL testing and CI/CD for embedded products, and we can run it as a fixed-scope project with everything handed over to your team.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the embedded roles are filled, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (hazardous-location sensor), not money. No amount, round or investor anywhere.
- [x] Specific to AssetWatch: C1D1-C2D2 sensor, open Senior Embedded Systems Engineer role.
- [x] Claims trace to accounts/assetwatch.md or CLAUDE.md (HIL testing and CI/CD are listed services). US campaign, so no opt-out line (Saleshandy adds unsubscribe).
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: B lead (hiring + 9-month-old launch, no 2026 news event). AssetWatch is well funded and may only want in-house hires. Their chips, radio and battery design are unverified.
