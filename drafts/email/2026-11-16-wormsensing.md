---
stage: in_sequence    # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: wormsensing
recipient: Jean-Sébastien Moulet, CEO & Co-founder <js.moulet@wormsensing.com>
saleshandy_sequence: GlPYgq9xzV
sources: [accounts/wormsensing.md, https://www.wormsensing.com/news/wormsensing-raises-9-5-million-series-a, https://www.wormsensing.com, https://corefragment.com/blog/handle-mqtt-connection-loss, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Wormsensing · [HubSpot 366875077335](https://app.hubspot.com/contacts/247517534/record/0-2/366875077335) · brief: `accounts/wormsensing.md`
- **Website:** https://www.wormsensing.com · **News:** https://www.wormsensing.com/news · **LinkedIn:** https://www.linkedin.com/company/wormsensing
- **HQ:** Seyssinet-Pariset (Grenoble), France · **Founded:** 2020 (CEA-Leti spin-off) · **Size:** 15 people in Apollo
- **Funding:** seed EUR 3.5M (2022-10, Innovacom); Series A EUR 9.5M (2026-10-27, Orano Venture Fund) — for our selection only, never in the email
- **Trigger:** Series A plan (2026-10-27): broaden the monitoring offering, simplify integration into industrial equipment, new markets → A
- **Segment:** device maker (segment 1, industrial condition monitoring); primary row (hardware + firmware, industrial IoT)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Jean-Sébastien Moulet (**primary**) | CEO & Co-founder | not found | 217487821 | 5fd7b8f5f2c0fa00019272f4 (has email) | [595131818742](https://app.hubspot.com/contacts/247517534/record/0-1/595131818742) |
| Sylvestre Le***u | Head of Applications (surname masked) | not found | not checked | 66f7e37feee1360001a58449 (has email) | not created |

HubSpot notes: 423001341637 (research), 423001341638 (draft).

## Subject options
1. Dragonfly acquisition electronics
2. from sensor to monitoring box
3. Wormsensing edge hardware

---

## Email 1 (day 0), ~105 words

Hi {{First Name}},

Taking a CEA-Leti piezo film to a line that can make two million Dragonfly sensors a year is a real achievement. Not many sensor start-ups get manufacturing right first.

Your next step, a broader monitoring offering that drops easily into machines, moves the hard part into the box around the sensor: a low-noise front-end, edge KPIs, a fieldbus or wireless link, and firmware updates in the field.

I'm Parthraj, CEO of CoreFragment. We design embedded hardware and firmware for industrial devices (STM32, NXP i.MX RT, Modbus, MQTT), under NDA with full IP handed over.

If extra hands would help, I'd be happy to talk. Or if you'd enjoy a casual chat about edge vibration monitoring, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

Not relevant? Reply 'no' and I won't follow up.

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Factory networks drop links more than anyone admits: a switch reboots, a machine moves cells, Wi-Fi fades behind a spindle. How an edge unit buffers and reconnects decides whether a customer trusts the KPI. We wrote up the patterns we use: https://corefragment.com/blog/handle-mqtt-connection-loss

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A related project: we automated a CNC drilling machine for a European industrial automation company, including the control electronics integration and the operator HMI: https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation

The same machine-side work your acquisition units will meet on spindles and ball screws. Happy to compare notes.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the electronics side is well covered, just tell me and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product and manufacturing (Dragonfly, two-million-a-year line). No funding amount, round or investor anywhere; the plan is mentioned in the second paragraph only.
- [x] Specific to Wormsensing: CEA-Leti film, Dragonfly, spindles and ball screws.
- [x] Claims trace to CLAUDE.md (chips/protocols on the approved list, NDA, full IP) and the brief; blog and case study are on the approved list; no numbers on our results.
- [x] ~105 words; one CTA; no banned words; EU opt-out line included.
- [ ] Human: "the box around the sensor" needs (front-end, edge KPIs, OTA) is our inference from the Series A plan; who designed their current acquisition hardware is unknown. A French version is an option.
