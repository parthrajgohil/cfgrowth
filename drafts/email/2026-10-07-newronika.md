---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: newronika
recipient: Lorenzo Rossi, Co-founder, CEO & CTO (email: TO BE FILLED BY HUMAN)
sources: [accounts/newronika.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Newronika S.p.A. · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351038728947) · brief: `accounts/newronika.md`
- **Website:** https://www.newronika.com · **News:** https://www.newronika.com/news · **LinkedIn:** https://www.linkedin.com/company/newronika
- **HQ:** Cologno Monzese (Milan), Italy; US site in Goose Creek, SC · **Size:** 21-50
- **Funding:** Series B EUR 13.6M (2025-02)
- **Recent news:** 2026-07-14 CE Mark for αDBS with WebBioBank cloud integration · 2026-09-21 first implant in the US/EU ADVENT pivotal study (announced 2026-09-30)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Lorenzo Rossi (**primary**) | Co-founder, CEO & CTO | unverified | not found | 5b18009ba6da98796bcb51de (has email) | [565127834332](https://app.hubspot.com/contacts/247517534/record/0-1/565127834332) |
| Martino Sykora | Firmware Manager | unverified | lead ID 232827896 | 66fbaeb16a0f4f0001b374c2 (has email) | [565231614667](https://app.hubspot.com/contacts/247517534/record/0-1/565231614667) |

## Subject options
1. αdbs patient side
2. advent and the patient remote
3. newronika connected care

---

## Email 1 (day 0), ~100 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

Congratulations on the αDBS CE Mark with WebBioBank built in, and on the first ADVENT implant in Monza. Bringing adaptive therapy data home from patients is a real step for Parkinson's care. With a European release and an 18-site study running, I imagine your firmware team is stretched.

I'm the CEO of CoreFragment. We build firmware and companion apps for connected medical devices, for example the BLE firmware and iOS/Android apps for a US glucometer maker, under NDA with full IP transfer.

If help on the patient remote, app or cloud sync would be useful, I'd be happy to talk. Or a casual chat about connected neuromodulation works too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

One thing that bites at-home data collection: the phone or remote loses its connection mid-upload, and a session arrives incomplete or twice. We wrote up how we design reconnect and resend logic so no record is lost or duplicated: corefragment.com/blog/handle-mqtt-connection-loss

Could be relevant to the WebBioBank sync path.

Parthraj

---

## Follow-up 2 (day 8), ~60 words

Hi {{First Name}},

A different angle: the ADVENT sites. Eighteen hospitals means many physician-interface setups, firmware versions and field updates to keep traceable. We often take on test automation and HIL rigs for small medical teams so their engineers stay on the core product. We hand over all source and test files at the end.

Worth a short conversation?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the team has this covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product milestones (CE Mark, ADVENT), not money; no funding mentioned anywhere.
- [x] Specific to Newronika: αDBS, WebBioBank, ADVENT, Monza, 18 sites.
- [x] Claims trace to accounts/newronika.md or CLAUDE.md (glucometer case study, HIL testing, NDA, IP transfer). EU campaign: opt-out line included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: "your firmware team is stretched" is our inference from a 21-50 person team with a few firmware engineers in Apollo. We pitch the external side (remote, app, cloud), not the implant; we have no implant case study. Lorenzo Rossi is not in Saleshandy (Apollo has an email); Martino Sykora (Firmware Manager, Saleshandy 232827896) is the alternative.
