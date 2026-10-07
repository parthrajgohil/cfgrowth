---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: caretaker-medical
recipient: Justin McQuown, VP of Engineering (email: TO BE FILLED BY HUMAN)
sources: [accounts/caretaker-medical.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Caretaker Medical · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/349938995932) · brief: `accounts/caretaker-medical.md`
- **Website:** https://caretakermedical.net · **News:** https://caretakermedical.net/blog/ · **LinkedIn:** https://www.linkedin.com/company/caretaker-medical
- **HQ:** Charlottesville, VA, USA · **Founded:** 2014 · **Size:** ~86 employees
- **Funding:** ~$11–15.5M (grants and seed; sources differ)
- **Recent news:** CE mark under EU-MDR (2026-06-05); Philips PIC iX integration partner (2026-08)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Justin McQuown (**primary**) | VP of Engineering | https://www.linkedin.com/in/justin-mcquown-ba21045/ | lead ID 134728842 | 611b3836a9e6d70001cbd7eb (has email) | [562595585755](https://app.hubspot.com/contacts/247517534/record/0-1/562595585755) |
| Martin Baruch | Founder & CTO | https://www.linkedin.com/in/martin-baruch-0a093718/ | lead ID 292981255 | 611b38362c8c9000015ac391 (has email) | [562612288239](https://app.hubspot.com/contacts/247517534/record/0-1/562612288239) |

## Subject options
1. vitalstream wrist unit
2. caretaker EU rollout
3. PIC iX and firmware load

---

## Email 1 (day 0), 107 words (body, excluding greeting and signature)

Hi {{First Name}},

Congratulations on the VitalStream CE mark and the Philips PIC iX integration. Beat-by-beat hemodynamics from a wireless wrist unit is a genuinely useful idea for mid-acuity care. With an EU launch and a Philips integration in one summer, I imagine the engineering backlog is long.

I'm the CEO of CoreFragment. We build firmware and hardware for medical wearables (BLE, Wi-Fi, low-power, HIL testing) under NDA with full IP transfer, including firmware for a US healthcare company's BLE glucometer.

If extra hands on the wrist unit would help, I'd be happy to talk. Or if you'd enjoy a casual chat about wireless monitors, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), 52 words

Hi {{First Name}},

A patient-worn monitor has to stay small, stay connected and last a full shift on one charge, and those pull against each other. We wrote up the usual trade-offs and fixes here: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Some of it may be familiar from the VitalStream hub.

Parthraj

---

## Follow-up 2 (day 8), 55 words

Hi {{First Name}},

A different angle: with two sensing modes on one wrist hub, regression testing grows with every firmware release. We set up hardware-in-the-loop rigs that run the same checks on each build, so the team spends less time re-verifying by hand.

Would a short look at how you test the hub today be useful?

Parthraj

---

## Follow-up 3 (day 15), 36 words

Hi {{First Name}},

I don't want to crowd your inbox. If engineering is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product and news (CE mark, Philips PIC iX), not funding. No funding anywhere.
- [x] Specific to Caretaker: VitalStream, wrist unit, mid-acuity care, two sensing modes.
- [x] Claims trace to accounts/caretaker-medical.md or CLAUDE.md; no numbers on our results. US recipient, so no opt-out line.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: "the engineering backlog is long" is our inference. Caretaker sells through ECAT (DoD medical procurement) and the VA schedule. That is civilian device sales, not defence work, but please confirm you're happy with it. Martin Baruch (founder & CTO) is the alternative recipient.
