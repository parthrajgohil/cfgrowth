---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: peerbridge-health
recipient: Chris Darland, President & CEO (email: TO BE FILLED BY HUMAN)
sources: [accounts/peerbridge-health.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/design-ble-devices-for-crowded-rf-environments]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Peerbridge Health · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351516816120) · brief: `accounts/peerbridge-health.md`
- **Website:** https://www.peerbridgehealth.com · **News:** homepage headlines (undated) · **LinkedIn:** unverified
- **HQ:** New York, NY, USA · **Founded:** 2012 (unverified) · **Size:** unverified (~16 in Apollo)
- **Funding:** unverified
- **Recent news:** 2026-09-04 FDA 510(k) clearance for Cor MDx (K253529)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Chris Darland (**primary**) | President & CEO | unverified | lead ID 68937134 (decision maker) | 66fa396b5a82260001549252 (has email) | [566789033682](https://app.hubspot.com/contacts/247517534/record/0-1/566789033682) |
| Sandeep Gu*** (surname masked) | CTO and VP, R&D and Platform Innovation | unverified | not found | 689c17ca614d1b0001653532 (has email) | none (name incomplete) |
| J Chan | Software Engineering Manager | unverified | lead ID 570435094 | — | none |

## Subject options
1. cor mdx in the field
2. ecg wearable firmware
3. after the cor mdx clearance

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Congratulations on the Cor MDx clearance in September. Moving a multi-lead ECG wearable from trials to everyday patients usually shifts the pressure onto firmware: wireless links in crowded hospital RF, battery life across a full wear period, and safe field updates, with the next revision already being planned.

I'm the CEO of CoreFragment; we build firmware and companion apps for medical wearables. We did the BLE firmware and iOS/Android apps for a US healthcare company's glucometer, under NDA with full IP transfer.

If extra hands on Cor MDx would help, I'd be glad to talk. Or if you'd just enjoy a casual chat about ECG wearables, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Hospitals are some of the noisiest RF environments a wearable will meet: hundreds of BLE devices, WiFi everywhere, metal and bodies in the way. We wrote up what we do to keep links stable there: corefragment.com/blog/design-ble-devices-for-crowded-rf-environments

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A different angle: the next hardware revision. After a clearance, teams often want a BOM cost-down, a better battery budget or a smaller board, without touching what was validated more than needed. We take that kind of work as a fixed-scope project and hand over every design file.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the device roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product clearance (Cor MDx), not money. No funding anywhere.
- [x] Specific to Peerbridge: multi-lead ECG wearable, hospital RF, wear period.
- [x] Claims trace to accounts/peerbridge-health.md or CLAUDE.md (glucometer case study anonymized; BLE, low power, OTA, apps are listed services).
- [x] Under 110 words; one CTA; no banned words. US recipient: no opt-out line needed.
- [ ] Human: Cor MDx radios (BLE/LTE) come from a directory summary, so the email says "wireless links". The CTO (Sandeep Gu***, Apollo only, surname masked) may be the better technical contact; the hourly run can reveal via Apollo if you prefer him.
