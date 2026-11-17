---
stage: in_sequence          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: huxley-medical
recipient: Daniel Burnham, Chief Technology Officer <daniel.burnham@huxleymed.com>
saleshandy_sequence: mDPQNrY1aR
sources: [accounts/huxley-medical.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix, https://corefragment.com/case-study/health-monitoring-hub]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Huxley Medical, Inc. · [HubSpot 358306821854](https://app.hubspot.com/contacts/247517534/record/0-2/358306821854) · brief: `accounts/huxley-medical.md`
- **Website:** https://www.huxleymed.com · **News:** home page · **LinkedIn:** https://www.linkedin.com/company/huxley-medical-inc/
- **HQ:** Atlanta, GA, USA · **Founded:** unverified · **Size:** unverified (~38 Apollo records)
- **Funding:** unverified (CB Insights USD 30.1M; aggregators disagree). Not for use in the email.
- **Trigger:** SANSA GO point-of-care enrollment and hypoxic burden launched nationwide at SLEEP 2026, 14–17 June 2026 (Sleep Review, 2026-06-12) → A
- **Segment:** device maker (segment 1); primary row (healthcare, firmware + hardware)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Daniel Burnham (**primary**) | Chief Technology Officer | not verified | 395198408 | 66fc2a3c1e02380001ec3122 (has email) | [581420277487](https://app.hubspot.com/contacts/247517534/record/0-1/581420277487) |
| Chris Lee | Chair & CEO, Co-founder | not verified | not checked | 603686970e150700013221d3 (has email) | — |

## Subject options
1. SANSA GO at scale
2. one patch, nine channels
3. SANSA firmware hands

---

## Email 1 (day 0), ~105 words (body, excluding greeting and signature)

Hi {{First Name}},

SANSA GO caught my eye: a clinic hands a patient one cellular chest patch at the visit, and nine channels, ECG included, come back without any app pairing. That's a clean workflow. It also puts a lot on the device: modem power, upload retries and battery margin over a full night.

I'm Parthraj, CEO of CoreFragment. We build firmware and hardware for medical wearables; for a US healthcare company we built the BLE glucometer firmware and its iOS/Android apps, under NDA with full IP transfer.

If extra firmware or hardware hands would help on the next SANSA revision, I'd be happy to talk. Or if you'd just enjoy a casual chat about low-power cellular wearables, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

We wrote up the problems that come back on almost every medical wearable we've built, from power budgets to validation, and how we handle them: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix. The battery and test sections apply to a patch that has to run a whole night without a phone nearby.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A different angle: cost per patch. When a device moves from a few clinics to nationwide dispensing, BOM and assembly cost start to matter as much as features. We also do hardware re-engineering and cost-down work, keeping the cleared design intent intact. Happy to share how we approach it.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the SANSA roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (SANSA GO), not money. No funding anywhere in the emails.
- [x] Specific to Huxley: SANSA GO, nine channels, ECG, cellular with no app pairing, overnight use.
- [x] Claims trace to accounts/huxley-medical.md or CLAUDE.md (glucometer case study, medical wearable blog, re-engineering service, NDA + IP).
- [x] ~105 words; one CTA; no banned words. US lead: no opt-out line needed.
- [ ] Human: the device-side pain points (modem power, retries, battery) and "next SANSA revision" are our inference; Huxley hasn't said it is planning one. No firmware lead is visible at Huxley, so they may already use a partner. Follow-up 2's "keeping the cleared design intent intact" is a general statement about how we'd work; cut it if you prefer.
