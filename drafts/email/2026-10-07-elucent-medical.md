---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: elucent-medical
recipient: Harshad Borgaonkar, Director of Hardware Engineering (email: TO BE FILLED BY HUMAN)
sources: [accounts/elucent-medical.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/design-ble-devices-for-crowded-rf-environments]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Elucent Medical · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351018959574) · brief: `accounts/elucent-medical.md`
- **Website:** https://www.elucent.com · **News:** none dated on site · **LinkedIn:** unverified
- **HQ:** Minnesota, US (city unverified) · **Size:** unverified
- **Funding:** Series C USD 42.5M; USD 30M Trinity Capital (2025)
- **Recent news:** 2026-05-14 510(k) K260565 SmartClip Delivery Catheter · 2025-05-16 Breakthrough Device Designation for EnVisio X1

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Harshad Borgaonkar (**primary**) | Director of Hardware Engineering | unverified | lead ID 279246210 | 5fc4b42d228fa500014b4ecd (has email) | [565127835324](https://app.hubspot.com/contacts/247517534/record/0-1/565127835324) |
| Jason Pesterfield | President & CEO | unverified | record under another company (not usable) | 66f3fb2630bf2000016d7d34 (has email) | [565199128311](https://app.hubspot.com/contacts/247517534/record/0-1/565199128311) |

## Subject options
1. smartsensor x hardware
2. envisio x1 sensors
3. stapler-mounted sensor design

---

## Email 1 (day 0), ~95 words (body, excluding greeting and signature)

Hi {{First Name}},

Tracking a marker from a sensor clipped onto the stapler, rather than handing the surgeon another probe, is a smart way to fit navigation into the workflow. With the delivery catheter cleared and X1 heading toward lung procedures, I imagine the sensor family is outgrowing the hardware team.

I'm the CEO of CoreFragment. We design compact, low-power boards and firmware for wireless medical devices, such as the BLE firmware and apps for a US glucometer maker, under NDA with full IP transfer.

If extra hands on a sensor variant would help, I'd be happy to talk. Or a casual chat about OR-grade wireless design works too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

An operating room is one of the noisiest RF places a small sensor can live in: monitors, energy devices, everyone's phones. We wrote up what we've learned about keeping wireless links reliable in crowded spectrum: corefragment.com/blog/design-ble-devices-for-crowded-rf-environments

Even if your link isn't BLE, the test approach carries over.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A different angle: verification. Small teams often lose weeks to building test fixtures for each new sensor revision. We set up HIL rigs and automated firmware tests so engineers stay on design work, and we hand over every fixture and script.

Worth a look for the X1 programme?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the hardware roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (SmartSensor on the stapler), not money. No funding anywhere.
- [x] Specific to Elucent: stapler-mounted sensor, delivery catheter clearance, EnVisio X1, lung procedures.
- [x] Claims trace to accounts/elucent-medical.md or CLAUDE.md (glucometer case study, HIL testing). US campaign: no opt-out line.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: B lead. The May 2026 clearance is for a non-electronic catheter; EnVisio X1 is still in development. SmartSensor X's radio is unverified (follow-up 1 says so). "Outgrowing the hardware team" is our inference; company size is unverified and they are well funded.
