---
stage: approved          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: digital-yacht
recipient: Paul Sumpner, CTO (email: TO BE FILLED BY HUMAN)
sources: [accounts/digital-yacht.md, https://corefragment.com/case-study/smart-obd-device, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Digital Yacht · [HubSpot 354514920160](https://app.hubspot.com/contacts/247517534/record/0-2/354514920160) · brief: `accounts/digital-yacht.md`
- **Website:** https://www.digitalyacht.co.uk · **News:** https://digitalyacht.net · **LinkedIn:** unverified
- **HQ:** Bristol, UK · **Founded:** 2010/2011 · **Size:** ~9 in Apollo (likely more in production)
- **Funding:** none found (founder-led)
- **Trigger:** new ECS1000 professional range, announced 2026-08-11 for Cannes 2026-09; five or more other launches in 2026 → A
- **Segment:** connected-equipment maker; secondary row (exploring), connected products / IoT full-stack

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Paul Sumpner (**primary**) | CTO | unverified | 338261563 | 66fe9490f53ad5000156da9b (has email) | [574539980522](https://app.hubspot.com/contacts/247517534/record/0-1/574539980522) |
| Nick Heyes | CEO, founder | unverified | not checked | 66f7a2e08317390001a7a97b (has email) | [574548540124](https://app.hubspot.com/contacts/247517534/record/0-1/574548540124) |

## Subject options
1. ECS1000 and NjordLink+
2. Digital Yacht 2026 line-up
3. NMEA 2000 to cloud

---

## Email 1 (day 0), ~95 words (body, excluding greeting and signature)

Hi {{First Name}},

Bringing out the ECS1000 for professional users in the same year as the AIT6000, Bilge iQ and NjordLink+ is a lot of new hardware for one engineering team. A move into commercial systems usually also brings longer support lifetimes and more test work on every release.

I'm the CEO of CoreFragment; we design embedded hardware and firmware for connected products (STM32, ESP32, Wi-Fi, BLE, MQTT, cloud dashboards), under NDA with full IP handed over.

If extra hands on firmware, PCB work or the cloud side of NjordLink+ would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about NMEA 2000-to-cloud designs, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

A boat that reports to the cloud loses its link all the time: marinas, offshore, switching between 4G and Wi-Fi. How the device buffers and reconnects decides whether the owner sees a clean history or gaps. We wrote up the patterns we use: corefragment.com/blog/handle-mqtt-connection-loss. It may be useful for NjordLink+.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A short example from a similar setup: we built a BLE OBD device and its connected app for an automotive client: a small box on a vehicle's data bus talking to a phone app, much like a bilge monitor on NMEA 2000. We take a defined work package and hand over all source and design files.

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox. If engineering is covered for now, just let me know and I'll close this out. The offer of a casual technical chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their products (ECS1000, AIT6000, Bilge iQ, NjordLink+). No funding anywhere.
- [x] Specific to Digital Yacht; couldn't be sent elsewhere unchanged.
- [x] Claims trace to accounts/digital-yacht.md or CLAUDE.md (STM32, ESP32, Wi-Fi, BLE, MQTT, OBD case study, MQTT blog, NDA + IP). No NMEA 2000 experience is claimed.
- [x] ~95 words; one CTA; no banned words. UK recipient: opt-out line included.
- [ ] Human: team size (9 in Apollo) and the support/test load are inferred. Follow-up 2 compares the OBD case study (BLE OBD device + connected app) with Bilge iQ; that comparison is ours. The CTO is a hands-on hardware designer and may keep core design in-house; NjordLink+ cloud or app work may be the softer entry. Marine is today's exploration lead (secondary row).
