---
stage: in_sequence        # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: bluedrop-medical
recipient: Gavin Corley, CTO <gavin@bluedropmedical.com>
saleshandy_sequence: 6vaK53oKwW
sources: [accounts/bluedrop-medical.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Bluedrop Medical · [HubSpot 357836118731](https://app.hubspot.com/contacts/247517534/record/0-2/357836118731) · brief: `accounts/bluedrop-medical.md`
- **Website:** https://www.bluedropmedical.com · **News:** none on site · **LinkedIn:** https://www.linkedin.com/company/bluedrop-medical/
- **HQ:** Galway, Ireland (+ Houston TX) · **Founded:** unverified · **Size:** unverified (21 Apollo records)
- **Funding:** Enterprise Ireland ~EUR 1M (2026-02); USD 11.7M deal 2025-12 (PitchBook). Not for use in the email.
- **Trigger:** no dated product news; funding older than 6 months / third-party → B (email opens on the product)
- **Segment:** device maker (segment 1); primary row (healthcare, firmware + hardware)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Gavin Corley (**primary**) | CTO | not found | 275915985 | 611d2d217466a20001a03e00 (has email) | [580086904557](https://app.hubspot.com/contacts/247517534/record/0-1/580086904557) |
| Suman Shetty Harapanahalli | Lead Firmware Engineer | not found | 383641972 | 5aa98c09a6da987e3f2c27c1 (has email) | [580078672576](https://app.hubspot.com/contacts/247517534/record/0-1/580078672576) |

## Subject options
1. OneStep scanner firmware
2. OneStep at home
3. Bluedrop device roadmap

---

## Email 1 (day 0), ~105 words (body, excluding greeting and signature)

Hi {{First Name}},

OneStep is a thoughtful design: a daily scan that is as easy as stepping on a bathroom scale, with images and temperature, so an ulcer risk shows up before the wound does. Making something people actually use every day at home is the hard part.

Taking a connected home device from clinical studies into wider use in Ireland and the US usually brings more firmware, test and connectivity work than one team planned for.

I'm the CEO of CoreFragment; we build firmware, electronics and apps for medical devices (we did the BLE firmware and apps for a US glucometer maker), under NDA with full IP transfer.

If extra hands would help, I'd be happy to talk. Or if you'd enjoy a casual chat about home monitoring devices, I'm up for that too.

Not relevant? Reply 'no' and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

We wrote up the problems that come back on almost every medical device we've built, from power budgets to validation, and how we handle them: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix. A few of them apply to a device that sits in a patient's bathroom and runs every day.

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A different angle: the monitoring side. We built a connected health monitoring hub and its app for a healthcare client, from the device to the cloud. If EveryStep's device, app or dashboard work needs another pair of hands, that's work we do every week.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If OneStep's roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (OneStep), not money. No funding anywhere in the emails.
- [x] Specific to Bluedrop: OneStep, images + temperature, daily home use, Ireland and US, EveryStep.
- [x] Claims trace to accounts/bluedrop-medical.md or CLAUDE.md (glucometer and health hub case studies, medical wearable blog, NDA + IP).
- [x] ~105 words with the opt-out line; one CTA; no banned words. Ireland (EU): opt-out line included.
- [ ] Human: B lead with no verified dated trigger. "Wider use in Ireland and the US" is inferred from the Galway/Houston offices and funding coverage. A "Delta Foot Scanner" launch appears only in one employee's profile, so it's not in the email. Follow-up 2 says "work we do every week", which is a general statement; cut it if you'd rather not. They have their own firmware team (capacity pitch).
