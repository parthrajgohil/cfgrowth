---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: inductosense
recipient: Chenghuan Zhong, CTO and Director (email: TO BE FILLED BY HUMAN)
sources: [accounts/inductosense.md, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Inductosense · [HubSpot 354006323920](https://app.hubspot.com/contacts/247517534/record/0-2/354006323920) · brief: `accounts/inductosense.md`
- **Website:** https://www.inductosense.com · **News:** https://www.inductosense.com/latest/ · **Careers:** https://www.inductosense.com/about/careers/ · **LinkedIn:** https://www.linkedin.com/company/inductosense
- **HQ:** Bristol, UK · **Founded:** 2015 · **Size:** 40 (2025-05)
- **Funding:** >GBP 8M total incl. Aramco Ventures (not for use in emails)
- **Trigger:** several Embedded Systems Engineer openings (senior to principal) for next-gen permanently installed sensors, still listed 2026-10-20 (undated → B)
- **Segment:** 1 (industrial IoT device maker)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Chenghuan Zhong (**primary**) | CTO and Director | unverified | 756884763 (also 229779701) | 67133e8586e2180001642a3a (no email) | [572918236888](https://app.hubspot.com/contacts/247517534/record/0-1/572918236888) |
| Erik Fabre | Head of R&D Projects | unverified | 76054633 | 57dd572ba6da987ae49119d8 (has email) | [573017527000](https://app.hubspot.com/contacts/247517534/record/0-1/573017527000) |
| Matt Butcher | CEO | unverified | not checked | 557143f97369645875cc0500 (has email) | not created |

## Subject options
1. next-gen WAND firmware
2. Inductosense embedded hiring
3. low-power WAND collectors

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Battery-free sensors that stay under insulation for years and give a thickness reading in a fraction of a second are clever engineering. I see you're hiring several senior embedded engineers for the next generation of WAND products, which usually means the roadmap is waiting on firmware.

I'm the CEO of CoreFragment; we build low-power STM32 firmware, bootloaders and connectivity for industrial sensors, under NDA with full IP handed over.

If a team that can take a firmware work package while you hire would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about low-power sensor design, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Remote collectors on a plant site lose their link more often than anyone plans for. We wrote up how we keep data intact when the connection drops: corefragment.com/blog/handle-mqtt-connection-loss. Some of it may apply to the WAND Remote Data Collector.

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A short example from the industrial side: for a European industrial automation company we built the control and HMI layer for a CNC drilling machine (Raspberry Pi, Arduino, Flask). Different product, same habit: we take a defined work package, deliver it with tests, and hand over all source.

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox. If the embedded roles are filled, just let me know and I'll close this out. The offer of a casual technical chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (WAND sensors) and the hiring trigger, not money. No funding anywhere.
- [x] Specific to Inductosense: WAND, under-insulation sensors, embedded hiring.
- [x] Claims trace to accounts/inductosense.md or CLAUDE.md (STM32, bootloaders, low-power, CNC case study, MQTT blog, NDA + IP).
- [x] ~100 words; one CTA; no banned words. UK recipient: opt-out line included.
- [ ] Human: the job posting is undated (careers page still lists it). "Stay under insulation for years" paraphrases "permanently installed". The CTO has no email in Apollo; Erik Fabre (Head of R&D Projects) is the alternative.
