---
stage: ready_to_import          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: vertigenius
recipient: Damien Daly, Chief Technology Officer <damien@vertigenius.com>
saleshandy_sequence: mDPQN7mnaR
sources: [accounts/vertigenius.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/design-ble-devices-for-crowded-rf-environments]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Vertigenius · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351769094899) · brief: `accounts/vertigenius.md`
- **Website:** https://www.vertigenius.com · **News:** site blog/news · **LinkedIn:** unverified
- **HQ:** Dublin, Ireland · **Size:** unverified (~10 visible in Saleshandy)
- **Funding:** ~€4.65M total; latest €2.55M (2026-04, Atlantic Bridge). Not for outreach.
- **Trigger:** US launch 2025-10 (20 clinics, 11 states); April 2026 plan to hire in product R&D, QA/RA and clinical research in Ireland

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Damien Daly (**primary**) | Chief Technology Officer | unverified | lead ID 235890913 | 6119e86c80186d0001c5932b (has email) | [567886103281](https://app.hubspot.com/contacts/247517534/record/0-1/567886103281) |

## Subject options
1. the head sensor, next revision
2. vertigenius BLE sensor
3. sensor firmware and the app

---

## Email 1 (day 0), ~100 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

Putting an IMU behind the ear so a clinician can see how home exercises are really done is a clever way into vestibular care. With the US rollout growing since last October and R&D hires planned in Ireland, I imagine the sensor and app roadmap is getting busy.

I'm the CEO of CoreFragment; we built the BLE firmware and iOS/Android apps for a US glucometer maker, and we hand over full IP and source code.

If extra hands on the sensor firmware or the app would help, I'd be glad to talk. Or if you'd just enjoy a casual chat about BLE wearables, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

A clinic is a noisy radio place: Wi-Fi, other patients' phones, other BLE devices. If the head sensor ever drops the link mid-exercise, the biofeedback stops being real-time. We wrote up what we do about it in firmware and in the app: corefragment.com/blog/design-ble-devices-for-crowded-rf-environments

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

The glucometer project I mentioned covered the whole path: BLE firmware on the meter, pairing and sync on Android and iOS, data up to the cloud. For your sensor, that would mean one team answering for the sensor, the patient app and the link between them.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the engineering roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (behind-the-ear IMU, clinician view), not money. The R&D hiring plan is mentioned, not the round, amount or investors, and not in the first sentence.
- [x] Specific to Vertigenius: vestibular care, head sensor, US rollout, Irish R&D.
- [x] Claims trace to accounts/vertigenius.md or CLAUDE.md (glucometer case study, IP transfer). Irish campaign: opt-out included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: who designed the sensor is unknown (no hardware staff visible; an outside design house is possible). Team is about 10 people, at the low edge of our range.
