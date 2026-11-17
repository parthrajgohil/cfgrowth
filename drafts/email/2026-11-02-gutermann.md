---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: gutermann
recipient: Achim Hugger, CTO (email: TO BE FILLED BY HUMAN)
sources: [accounts/gutermann.md, https://corefragment.com/blog/handle-mqtt-connection-loss, https://corefragment.com/blog/design-custom-battery-management-system]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Gutermann AG · [HubSpot 358984225484](https://app.hubspot.com/contacts/247517534/record/0-2/358984225484) · brief: `accounts/gutermann.md`
- **Website:** https://en.gutermann-water.com · **News:** https://en.gutermann-water.com/news-info/news/ · **LinkedIn:** https://www.linkedin.com/company/gutermann
- **HQ:** Baar/Zug, Switzerland; R&D in Stuttgart and Ravensburg (DE) · **Founded:** 1948 · **Size:** 11–50 (AroundDeal) / ~51 in Apollo (unverified)
- **Funding:** none; family-owned
- **Trigger:** ZONESCAN HYDRO (NB-IoT hydrophone leak logger) launched 2025-12-04 → B (6–12 months)
- **Segment:** device maker (segment 1); primary row (industrial IoT / water utilities, firmware + hardware)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Achim Hugger (**primary**) | CTO | not found | 122919880 | 54a7ed6b74686975f88c5c58 (has email) | [582808818363](https://app.hubspot.com/contacts/247517534/record/0-1/582808818363) |
| Uri Gutermann | CEO (per 2025-12 release; current CEO unverified) | not verified | not checked | 54a627087468693676eaeac5 (has email) | — |

## Subject options
1. ZONESCAN HYDRO firmware
2. NB-IoT logger power budget
3. five years on one battery

---

## Email 1 (day 0), ~104 words (body, excluding greeting, signature and opt-out)

Hi {{First Name}},

ZONESCAN HYDRO caught my eye: a hydrophone in the water column, NB-IoT with a roaming SIM, remote firmware updates and 5+ years on one battery. Keeping that power budget honest across every upload and update, year after year in the network, is careful firmware work.

I'm Parthraj, CEO of CoreFragment. We build firmware and hardware for battery-powered connected devices (STM32, Nordic, Quectel cellular modules, OTA), under NDA with full IP transfer.

If extra embedded hands would help on the next ZONESCAN generation, I'd be happy to talk. Or if you'd enjoy a casual chat about low-power NB-IoT design, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

A logger in a chamber under the street sees weak coverage and dropped sessions every week. We wrote down how we design devices to ride through connection loss without draining the battery on retries: corefragment.com/blog/handle-mqtt-connection-loss. Some of it maps directly to NB-IoT uploads.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A different angle: the battery itself. With a fuel-gauge chip and a replaceable pack already in HYDRO, better state-of-charge prediction is the next step for utilities planning swaps. We design battery and power subsystems as well as firmware: corefragment.com/blog/design-custom-battery-management-system

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If your embedded roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (ZONESCAN HYDRO), not money. No funding anywhere.
- [x] Specific to Gutermann: hydrophone, NB-IoT roaming SIM, remote firmware updates, 5+ year battery, fuel gauge.
- [x] Claims trace to accounts/gutermann.md or CLAUDE.md (MCUs and Quectel from the tech list, two blog posts, NDA + IP).
- [x] ~104 words; one CTA; no banned words. Switzerland/Germany: opt-out line included.
- [ ] Human: no matching case study, so email 1 uses a capability line instead. The CTO title comes from data aggregators (Saleshandy, Apollo), not Gutermann's site. "Chamber under the street" and "better state-of-charge prediction is the next step" are our inferences. Trigger is 11 months old (B).
