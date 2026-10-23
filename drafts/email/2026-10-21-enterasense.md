---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: enterasense
recipient: Chiara Di Carlo, Chief Technology Officer (email: TO BE FILLED BY HUMAN)
sources: [accounts/enterasense.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** EnteraSense · [HubSpot 354372692677](https://app.hubspot.com/contacts/247517534/record/0-2/354372692677) · brief: `accounts/enterasense.md`
- **Website:** https://www.enterasense.com · **LinkedIn:** unverified
- **HQ:** Galway, Ireland · **Founded:** 2015 · **Size:** unverified (8 in Apollo)
- **Funding:** not found (Enterprise Ireland HPSU)
- **Trigger:** UK randomised trial PRIORITISE (ISRCTN12586238) registered 2026-04-30, recruiting (clinical → B)
- **Segment:** 1 (medical device maker)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Chiara Di Carlo (**primary**) | Chief Technology Officer | unverified | 433189844 | 66faa8e6397616000120cd0e (has email) | [573912388335](https://app.hubspot.com/contacts/247517534/record/0-1/573912388335) |
| David Co***s | Director New Business Development | unverified | not checked | 68e3fbe89401c9000181547e (has email) | not created |

## Subject options
1. PillSense capsule electronics
2. PillSense receiver link
3. low-power capsule design

---

## Email 1 (day 0), ~105 words (body, excluding greeting and signature)

Hi {{First Name}},

A capsule that tells the team "blood" or "no blood" in about ten minutes is a very practical idea, and running PRIORITISE in the UK to show it can free hospital beds is a smart next step.

Scaling a capsule like that usually brings another round of work on the optics drive, the radio link to the receiver and the power budget.

I'm the CEO of CoreFragment; we design low-power embedded hardware and firmware for medical devices, under NDA with full IP handed over.

If an extra team on the next capsule or receiver revision would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about low-power wireless sensing, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

A relevant example: for a US healthcare company we built the BLE firmware and the Android/iOS apps for a smart glucometer, a small regulated device where the radio link and battery life had to be right first time. Short write-up: corefragment.com/case-study/smart-glucometer

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

Small body-worn and ingested devices tend to fail in the same places: power, antenna placement and test coverage. We wrote down the common problems and fixes here: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix. Parts of it should map onto the PillSense capsule and receiver.

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox. If the capsule roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (PillSense) and the trial, not money. No funding anywhere.
- [x] Specific to EnteraSense: blood/no-blood capsule, ten-minute result, PRIORITISE trial.
- [x] Claims trace to accounts/enterasense.md or CLAUDE.md (low-power hardware/firmware, glucometer case study, wearable blog, NDA + IP).
- [x] ~105 words; one CTA; no banned words. EU recipient: opt-out line included.
- [ ] Human: the second paragraph is our inference (no public engineering roadmap). Headcount unverified (Apollo shows 8 staff). Saleshandy places the CTO in Austin TX while the company is in Galway; the opt-out line stays either way.
