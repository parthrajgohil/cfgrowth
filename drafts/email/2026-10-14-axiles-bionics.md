---
stage: approved          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: axiles-bionics
recipient: Felipe Gomez, Chief Technology Officer (email: TO BE FILLED BY HUMAN)
sources: [accounts/axiles-bionics.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix, https://corefragment.com/blog/how-to-choose-right-llm]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Axiles Bionics · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/352210097897) · brief: `accounts/axiles-bionics.md`
- **Website:** https://www.axilesbionics.com · **News:** site blog (latest 2026-07-22) · **LinkedIn:** https://www.linkedin.com/company/axilesbionics/
- **HQ:** Brussels · **Founded:** unverified (VUB spin-off) · **Size:** ~29 in Apollo
- **Funding:** Series A EUR 6M of EUR 8M (2025-06). Not for the email.
- **Trigger:** open Software & AI Engineer role to run ML models on the prosthesis (embedded); OTWorld 2026 with connected Lunaris IO/IO+

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Felipe Gomez (**primary**) | Chief Technology Officer | unverified | lead ID 405562802 | 6104120856db820001d9678e (has email) | [569247900370](https://app.hubspot.com/contacts/247517534/record/0-1/569247900370) |
| Pierre Cherelle | Founder, CEO & Board member | unverified | lead ID 23217920 | 66e26a0658c5670001e7ea55 (has email) | [569291670240](https://app.hubspot.com/contacts/247517534/record/0-1/569291670240) |

## Subject options
1. ML on the Lunaris
2. on-device AI for Lunaris IO
3. Lunaris IO sensor data

---

## Email 1 (day 0), ~100 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

Lunaris IO collecting real-world usage data from its own sensors is a smart step for a prosthetic foot. I saw you're hiring a Software & AI Engineer to run ML models on the prosthesis itself, together with your embedded team.

Inference on inertial data inside a battery-powered device is a tight fit: memory, latency within the gait cycle, power, and a safe way to update models in the field.

I'm the CEO of CoreFragment; we build embedded firmware, edge AI and BLE companion apps for medical devices, under NDA with full IP transfer.

If extra embedded hands next to your new hire would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about ML on microcontrollers, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Medical wearables tend to hit the same walls between prototype and field use: power, wireless links, updates and test evidence. Our notes on what goes wrong and how to fix it: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A short example: for a US healthcare company we built the BLE firmware and the Android/iOS apps of a smart glucometer as one team. For Lunaris IO that would mean the sensor-to-app path and OTA for both firmware and models, with all source code yours.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If your new hire has it covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (Lunaris IO), not money. No funding anywhere.
- [x] Specific to Axiles: Lunaris IO sensors, the on-device ML hire, gait-cycle latency.
- [x] Claims trace to accounts/axiles-bionics.md or CLAUDE.md (firmware, edge AI, BLE apps, glucometer case study, NDA, IP). Belgian company: opt-out included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: the AI role's posting date is unknown; the IO app launch date (2026-06-29) is from an aggregator only. Prosthesis control is core IP, so they may keep it in-house.
