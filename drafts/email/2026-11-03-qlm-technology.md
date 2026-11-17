---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: qlm-technology
recipient: Xiao Ai, Co-founder & CTO (email: TO BE FILLED BY HUMAN)
sources: [accounts/qlm-technology.md, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** QLM Technology · [HubSpot 359341782722](https://app.hubspot.com/contacts/247517534/record/0-2/359341782722) · brief: `accounts/qlm-technology.md`
- **Website:** https://www.qlmtec.com · **LinkedIn:** https://uk.linkedin.com/company/qlm-technology-ltd
- **HQ:** Cardiff / Paignton / Bristol, UK · **Size:** ~25 in Apollo
- **Funding:** GBP 3.5M round (2025-11) for commercial scaling; SLB largest shareholder. Not for use in the email.
- **Trigger (B):** commercial-scaling round (2025-11) and EPA alternative-test-method route via SLB (2025-09); no dated 2026 launch
- **Segment:** device maker (segment 1); primary row (industrial IoT, hardware incl. cost-down)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Xiao Ai (**primary**) | Co-founder & CTO | not verified | not checked (API 400) | 66fe30b79e5f100001be3a75 (has email) | [583442798287](https://app.hubspot.com/contacts/247517534/record/0-1/583442798287) |
| Alex Du*** (masked) | Head of Engineering | not verified | not checked | 5f895041ba451700016631dd (has email) | — |

## Subject options
1. methane camera at volume
2. lidar camera cost-down
3. QLM field units

---

## Email 1 (day 0), ~100 words

Hi {{First Name}},

A scanning quantum lidar that finds individual methane emitters from 250 m, now accepted by the EPA as an alternative test method through SLB, is impressive work. Taking a camera like that from field units to volume production is usually where BOM cost, power design and long-life firmware start to dominate.

I'm Parthraj, CEO of CoreFragment. We design embedded hardware and firmware for industrial devices, including re-engineering and cost-down of existing products, under NDA with full IP transfer.

If extra hardware or firmware hands would help as you scale, I'd be happy to talk. Or if you'd enjoy a casual chat about field-deployed sensing electronics, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Fixed monitors on remote well pads live or die by their link. When the backhaul drops, you want buffered data and a clean resync, not gaps in the emissions record. We wrote up how we handle that: corefragment.com/blog/handle-mqtt-connection-loss. Possibly relevant for QLM's camera fleet.

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A short example: for a European industrial automation company we built the HMI and control system for a CNC drilling machine, from embedded hardware to the operator software. Industrial units, long service life, one team owning the whole stack. Happy to share more if useful.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the camera's electronics are covered, just tell me and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product, not money. No funding in the emails.
- [x] Specific to QLM: quantum lidar, 250 m standoff, EPA ATM via SLB.
- [x] Claims trace to the brief or CLAUDE.md (CNC case study, MQTT blog, re-engineering, NDA + IP).
- [x] ~100 words; one CTA; no banned words. UK: opt-out line included.
- [ ] Human: grade B (no dated 2026 trigger). "From field units to volume production" is inferred from the 2025-11 round's aim of commercial scaling. The EPA approval is SLB's (2025). Head of Engineering (surname masked) may be the better recipient than the founder-CTO. Follow-up 1 assumes MQTT-like backhaul (not public).
