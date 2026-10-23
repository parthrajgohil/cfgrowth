---
stage: approved          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: enterra-medical
recipient: Barry Yo***v (surname masked), Director, Systems Engineering (email: TO BE FILLED BY HUMAN)
sources: [accounts/enterra-medical.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Enterra Medical, Inc. · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351797662412) · brief: `accounts/enterra-medical.md`
- **Website:** https://www.enterramedical.com · **News:** https://www.enterramedical.com/newsroom/ · **LinkedIn:** https://www.linkedin.com/company/enterra-medical/
- **HQ:** St. Louis Park (Minneapolis), MN, USA · **Founded:** 2022 (took over Enterra Therapy from Medtronic) · **Size:** 51–200 (Simplify, unverified)
- **Funding:** not public
- **Trigger:** open Principal Electrical Engineer for implant electronics incl. BLE/RF telemetry and closed-loop therapy (read 2026-10-13); Principal Firmware Engineer (implantables) published 09/04/2026, now inactive; ReliaStim lead introduced 2026-01-12

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Barry Yo***v (**primary**, surname masked) | Director, Systems Engineering | unverified | not found | 659be0b03a09e900016c8396 (has email) | not created (masked; create on reveal) |
| Peter So***s (surname masked) | CEO | unverified | not found | 66fda40a685d630001b85941 (has email) | not created |

## Subject options
1. BLE side of Enterra's next stimulator
2. Enterra telemetry hiring
3. patient app and programmer for GES

---

## Email 1 (day 0), ~95 words (body, excluding greeting and signature)

Hi {{First Name}},

ReliaStim was a clear first step after taking Enterra over from Medtronic. Your open principal electrical role, with BLE telemetry and closed-loop therapy in the brief, suggests the next stimulator is already being designed.

The implant gets the attention, but the external side (patient controller, clinician app, BLE link security, OTA for the externals) is a full workload of its own.

I'm the CEO of CoreFragment; we build BLE firmware and iOS/Android apps for medical devices, under NDA with full IP transfer.

If extra hands on that external side would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about BLE telemetry in a closed-loop therapy, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

One example of the external-side work: for a US healthcare company we built the BLE firmware and the Android and iOS apps of a smart glucometer, from the device's radio to the phone screen. A patient controller or clinician app for a stimulator is the same kind of job, with stricter pairing and security.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

Medical wearables and externals tend to fail in the same places: battery budgets set too early, BLE pairing that patients can't complete, and OTA that nobody tested at the edge of range. We wrote down the fixes we use: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the new principals have it covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (ReliaStim, Enterra), not money. No funding anywhere.
- [x] Specific to Enterra: Medtronic hand-over, the principal EE post (BLE telemetry, closed loop), external devices.
- [x] Claims trace to accounts/enterra-medical.md or CLAUDE.md (BLE firmware, mobile apps, NDA, IP transfer, glucometer case study). No implant experience claimed.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: "the next stimulator is already being designed" is our inference from the job posts. Buyer surname is masked in Apollo and he isn't in Saleshandy: the email needs an Apollo reveal (ID above), or switch to the CEO.
