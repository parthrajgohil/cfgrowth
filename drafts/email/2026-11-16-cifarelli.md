---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: cifarelli
recipient: Roberto Cifarelli, Direttore Ricerca e Sviluppo (R&D Director) (email: TO BE FILLED BY HUMAN)
sources: [accounts/cifarelli.md, https://www.cifarellispa.com/en/news-events/, https://www.eima.it/it/novita-tecniche-eima-2026.php, https://corefragment.com/blog/design-custom-battery-management-system, https://corefragment.com/case-study/smart-obd-device]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Cifarelli S.p.A. · [HubSpot 366633590487](https://app.hubspot.com/contacts/247517534/record/0-2/366633590487) · brief: `accounts/cifarelli.md`
- **Website:** https://www.cifarelli.it · **News:** https://www.cifarellispa.com/en/news-events/ · **LinkedIn:** company page exists (URL not verified)
- **HQ:** Voghera (PV), Italy · **Founded:** 1967 · **Size:** 53 employees, revenue EUR 10.7M (2024)
- **Funding:** none (family company)
- **Trigger:** SB45 battery hook shaker, EIMA 2026 Technical Innovation award (2026-10-05; shown 2026-11-10/14); control unit "prepared" for an app → A
- **Segment:** segment 2 (traditional agri-machinery maker going battery + connected); industrial IoT (agriculture) / IoT full-stack

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Roberto Cifarelli (**primary**) | R&D Director and Consigliere delegato | not found | 293836674 | 57d5cd05a6da9853f54b8c67 (has email) | [594985517811](https://app.hubspot.com/contacts/247517534/record/0-1/594985517811) |
| Fabrizio Ve***e | CDO (surname masked) | not found | not found | 55711c487369642773890600 (has email) | not created |

HubSpot notes: 423001341639 (research), 422652097261 (draft).

## Subject options
1. SB45 app connectivity
2. SB45 control unit
3. battery shaker firmware

---

## Email 1 (day 0), ~100 words

Hi {{First Name}},

Congratulations on the EIMA award for the SB45. An axial-flux motor designed in-house and mounted straight on the shaft, with no gearbox and no oil, is clean engineering for a hook shaker.

The spec says the control unit is ready for an app for maintenance and data monitoring. That link (BLE firmware, a phone app for operators and dealers, maybe a service dashboard) is often where a mechanical team wants a partner.

I'm Parthraj, CEO of CoreFragment. We build embedded firmware, BLE companion apps and cloud dashboards for connected machines, under NDA with full IP handed over.

If help on the SB45 app would be useful, I'd be happy to talk. Or if you'd enjoy a casual technical chat, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Once more machines go battery, the pack decides runtime in the olive grove and the warranty claims afterwards. Cell balancing, temperature limits and state-of-charge accuracy are where most of the trouble hides. Our notes on designing a custom BMS: https://corefragment.com/blog/design-custom-battery-management-system

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A related project: we built a BLE OBD device and its companion app for an automotive client, reading machine data and getting it to the phone reliably: https://corefragment.com/case-study/smart-obd-device

Close to what an SB45 app would do with runtime, faults and service hours. Happy to compare notes.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the SB45 connectivity is already covered, just tell me and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (SB45, in-house axial-flux motor) and its award, not money. No funding anywhere (none exists).
- [x] Specific to Cifarelli: SB45, hook shaker, olive grove, "prepared for an app" from the official EIMA description.
- [x] Claims trace to CLAUDE.md (BLE apps, cloud dashboards, BMS, NDA, full IP) and the brief; blog and case study are on the approved list; no numbers on our results.
- [x] ~100 words; one CTA; no banned words; EU opt-out line included.
- [ ] Human: whether the SB45 controller electronics were designed in-house or by a supplier is unknown; the "partner for the app" need is our inference. Roberto Cifarelli is also a managing director, so this reaches a decision maker. An Italian version is likely to land better.
