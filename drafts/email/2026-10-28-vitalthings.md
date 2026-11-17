---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: vitalthings
recipient: Odd Rune Lykkebø, Engineering Team Lead (firmware & hardware) (email: TO BE FILLED BY HUMAN)
sources: [accounts/vitalthings.md, https://corefragment.com/blog/handle-mqtt-connection-loss, https://corefragment.com/case-study/health-monitoring-hub]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Vitalthings · [HubSpot 357514143455](https://app.hubspot.com/contacts/247517534/record/0-2/357514143455) · brief: `accounts/vitalthings.md`
- **Website:** https://vitalthings.com · **News:** https://vitalthings.com/en/resources/news · **LinkedIn:** not verified
- **HQ:** Trondheim, Norway · **Founded:** 2017 · **Size:** 30
- **Funding:** NOK 41.6M share issue (2024-02). Not for use in the email.
- **Trigger:** Guardian Fall and Guardian View launched ~2026-06; Hepro and Norlandia partnerships (spring 2026); M10 medical approval pending → A
- **Segment:** device maker (segment 1); primary row (healthcare, firmware + hardware)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Odd Rune Lykkebø (**primary**) | Engineering Team Lead (firmware & hardware) | not found | 158634369 | 57d980eda6da98721665b0e6 (has email) | [578853341924](https://app.hubspot.com/contacts/247517534/record/0-1/578853341924) |
| Marius Lind Volstad | CTO (unverified) | not found | 43118809 | 54a794867468696220af3f42 (no email) | [578842105534](https://app.hubspot.com/contacts/247517534/record/0-1/578842105534) |
| Bård Benum | Co-founder & CEO | not found | not checked | 6082be2d1909a00001c7b4ea (has email) | [578833075955](https://app.hubspot.com/contacts/247517534/record/0-1/578833075955) |

## Subject options
1. Guardian Fall rollout
2. Vitalthings Guardian line
3. Guardian firmware capacity

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

I saw that Vitalthings launched Guardian Fall and Guardian View this summer, and the Hepro partnership for municipalities. Camera-free monitoring for care homes is a thoughtful approach.

Several products on one sensing platform, German pilots and a medical approval for M10 still to come is a lot for one firmware and hardware team.

I'm the CEO of CoreFragment; we build embedded firmware and electronics for medical and IoT devices (Nordic, STM32, ESP32, low-power design, OTA), under NDA with full IP transfer.

If extra hands would help, I'd be happy to talk. Or if you'd enjoy a casual chat about contactless monitoring, I'm up for that too.

Not relevant? Reply 'no' and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

A fall alarm is only as good as the link that carries it, and care-home Wi-Fi is rarely kind. We wrote about designing devices that ride out dropped connections without losing events: corefragment.com/blog/handle-mqtt-connection-loss. It may be useful as Guardian Fall goes into more buildings.

Parthraj

---

## Follow-up 2 (day 8), ~45 words

Hi {{First Name}},

A short example: we built a connected health monitoring hub and its app for a healthcare client, from the device to the cloud. Gateway firmware, OTA and the app side are blocks a partner can take while your team stays on the sensing.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the Guardian roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their products (Guardian Fall, Guardian View, Hepro), not money. No funding anywhere.
- [x] Specific to Vitalthings: named products, municipalities, German pilots, M10 approval.
- [x] Claims trace to accounts/vitalthings.md or CLAUDE.md (Nordic, STM32, ESP32, low-power, OTA, MQTT blog, health hub case study, NDA + IP). No radar claim.
- [x] ~100 words with the opt-out line; one CTA; no banned words. Norway: opt-out line included.
- [ ] Human: "a lot for one firmware and hardware team" is our inference; they have their own firmware/hardware division (size unknown). The "care-home Wi-Fi" line in follow-up 1 is a general observation; we don't know their connectivity. CTO identity is unclear (three names in Apollo/Saleshandy); Odd Rune is the hands-on lead. Launch dates (~June 2026) come from the company's news page image paths.
