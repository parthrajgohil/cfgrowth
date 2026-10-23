---
stage: in_sequence    # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: praxa-sense
recipient: Leonard Moonen, Founder & CEO <leonard@praxasense.com>
saleshandy_sequence: 9pa8ZvvOwy
sources: [accounts/praxa-sense.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Praxa Sense · [HubSpot 353647414997](https://app.hubspot.com/contacts/247517534/record/0-2/353647414997) · brief: `accounts/praxa-sense.md`
- **Website:** https://www.praxasense.com · **News:** https://www.praxasense.com/news · **LinkedIn:** https://www.linkedin.com/company/praxa-sense
- **HQ:** Delft, NL · **Founded:** 2018 · **Size:** ~14 people
- **Funding:** 2023-07 round (amount unverified); Eurostars grant 2025-01 with Withings and CSEM (not for use in emails)
- **Trigger:** EVKit datasheet 2026-08-19; EVKit launch at MEDICA 2026 (16–19 Nov); new CTO (Apollo, unverified date)
- **Segment:** 1 (medical wearable sensor maker)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Leonard Moonen (**primary**) | Founder & CEO | unverified | 253927116 | 66f3c1e72a4d3800019c66d8 (has email) | [572285270740](https://app.hubspot.com/contacts/247517534/record/0-1/572285270740) |
| David Ro*** | CTO (surname masked) | unverified | not found | 54eafd1974686931e2c78605 (has email) | not created |
| Liselotte Stolk | Co-founder & COO | unverified | not checked | 62c7f72b05268a0001a2cfa0 (has email) | [572282987205](https://app.hubspot.com/contacts/247517534/record/0-1/572282987205) |

## Subject options
1. ALIS EVKit firmware
2. speckle sensor, BLE side
3. EVKit before MEDICA

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Reading blood flow alongside PPG with laser speckle, and holding up under motion and on darker skin, is a clever answer to PPG's weak spots. With the EVKit going to OEMs at MEDICA, I imagine firmware, BLE streaming and a reference app are now as urgent as the optics.

I'm the CEO of CoreFragment; we've built BLE firmware and iOS/Android apps for medical devices, including a glucometer for a US healthcare company, under NDA with full IP transfer.

If extra hands there would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about speckle sensing in wearables, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

When OEMs evaluate a sensor kit, the questions are rarely about the optics first: battery life, dropped BLE packets, and how fast they can get raw data into their own app. We wrote about the usual traps in medical wearables: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A different angle: once an OEM likes the EVKit, they'll ask for a module they can drop into a watch or patch. We do low-power board design and BLE firmware for wearables, so a small, integration-ready ALIS module is something we could scope with you. Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox before MEDICA. If the timing is wrong, just let me know and I'll close this out. The offer of a casual technical chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their technology (laser speckle, blood flow + PPG), not money. No funding anywhere.
- [x] Specific to Praxa Sense: ALIS, EVKit, MEDICA, OEM evaluation.
- [x] Claims trace to accounts/praxa-sense.md or CLAUDE.md (BLE glucometer case study, wearable PCB, NDA + IP).
- [x] ~100 words; one CTA; no banned words. EU recipient: opt-out line included.
- [ ] Human: "holding up under motion and on darker skin" is the company's own claim. Founder is the recipient because the new CTO is masked and not in Saleshandy; the CTO may be the better contact (Apollo has his email).
