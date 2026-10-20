---
stage: in_sequence              # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: ember-lifesciences
recipient: James Braithwaite, Chief Product Officer <james.braithwaite@emberlifesciences.com>
saleshandy_sequence: XdPd5VQ3aV
sources: [accounts/ember-lifesciences.md, https://corefragment.com/case-study/health-monitoring-hub, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** ready_to_import (source of truth: HubSpot "CF lead stage")
- **Company:** Ember LifeSciences · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351485823691) · brief: `accounts/ember-lifesciences.md`
- **Website:** https://www.emberlifesciences.com · **News:** "In the News" on the site · **LinkedIn:** unverified
- **HQ:** Westlake Village, CA, USA · **Founded:** unverified · **Size:** 21–50 (unverified)
- **Funding:** USD 27M Series A (extended 2026-05-27); not used in the email
- **Recent news:** 2026-05-27 Cube 2 full commercial availability · 2026-07-29 Alfresa alliance (Japan) · 2026-08-11 new CPO

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| James Braithwaite (**primary**) | Chief Product Officer | unverified | lead ID 98246644 (decision maker) | 67da6b852867350001c736ef (has email) | [566850512626](https://app.hubspot.com/contacts/247517534/record/0-1/566850512626) |
| Rob Speck | Director of Engineering | unverified | lead ID 70970554 (decision maker) | 54a6f5a77468696b7f4e0d08 (has email) | [566852548312](https://app.hubspot.com/contacts/247517534/record/0-1/566852548312) |

## Subject options
1. cube 2 in the field
2. next-gen cube firmware
3. cold-chain tracker firmware

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Ember Cube 2 going fully commercial, with Alfresa now evaluating it for home-care delivery in Japan, is a big step for a reusable shipper. Moving from pilots to fleets usually shifts the pressure onto firmware: GPS fixes inside trucks, connectivity gaps in cold rooms, battery life and clean OTA updates, while the next generation is already on the roadmap.

I'm the CEO of CoreFragment; we build embedded firmware and hardware for connected devices (GPS/cellular, BLE, low-power design, OTA), under NDA with full IP transfer.

If extra hands on the next Cube would help, I'd be glad to talk. Or if you'd just enjoy a casual chat about cold-chain tracking tech, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

A shipper that loses signal in a truck still has to deliver a complete temperature record when it reconnects, in order, with no gaps an auditor would question. We wrote up how we handle that reconnect-and-resend logic: corefragment.com/blog/handle-mqtt-connection-loss

Might be useful as Cube 2 fleets grow.

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A different angle: the device-to-dashboard path. We built a connected health monitoring hub and its app for a healthcare company, covering the device, the cloud link and the app as one project. For the next-gen Cube, we could take a block like that end to end and hand over every design file.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the next-gen roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (Cube 2) and a business plan (Alfresa home-care evaluation), not money. No funding amount, round or investor anywhere.
- [x] Specific to Ember: reusable cold-chain shipper, trucks and cold rooms, Japan home care.
- [x] Claims trace to accounts/ember-lifesciences.md or CLAUDE.md (health monitoring hub case study; GPS/cellular, BLE, OTA, low power are listed capabilities).
- [x] Under 110 words; one CTA; no banned words. US recipient: no opt-out line needed.
- [ ] Human: the firmware pressure points are our inference from their Firmware QA post; the Cube's MCU/radio is unverified. Rob Speck (Director of Engineering) is the hands-on alternative.
