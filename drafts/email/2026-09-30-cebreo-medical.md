---
stage: ready_to_import   # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: cebreo-medical
recipient: Richard Tøpholm, Chief Technology Officer <rt@cebreomedical.com>
saleshandy_sequence: eMPkq6vYzQ   # "CF · Cebreo Medical · Richard Tøpholm (2026-10-07)", inactive until the CEO activates
sources: [accounts/cebreo-medical.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** ready_to_import (source of truth: HubSpot "CF lead stage")
- **Company:** Cebreo Medical A/S · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/349681147630) · brief: `accounts/cebreo-medical.md`
- **Website:** https://cebreomedical.com · **News:** https://cebreomedical.com/news · **LinkedIn:** unverified
- **HQ:** Allerød, Denmark · **Founded:** unverified (Widex spin-out; T&W Medical is shareholder) · **Size:** ~30 employees
- **Funding:** venture funding unverified; > DKK 13M state R&D aid
- **Recent news:** CE mark for NeuroBuds in-ear EEG (2026-09-15); FDA pathway next

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Richard Tøpholm (**primary**) | Chief Technology Officer | unverified | lead ID 51213474 | 6198df5c9281c3000126cdd0 (has email) | [561328464577](https://app.hubspot.com/contacts/247517534/record/0-1/561328464577) |
| Philip Weng | Director of Hardware and Project Management | unverified | lead ID 242040475 | 60ffdc414d815c00018dd510 (has email) | [561330268899](https://app.hubspot.com/contacts/247517534/record/0-1/561330268899) |
| Rasmus Madsen | CEO | unverified | not found | 611bc63403f7cc00011349c5 (has email) | [561346428648](https://app.hubspot.com/contacts/247517534/record/0-1/561346428648) |

## Subject options
1. neurobuds after the ce mark
2. neurobuds fda path
3. in-ear eeg firmware

---

## Email 1 (day 0), 107 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

Congratulations on the CE mark for NeuroBuds. Multi-day EEG from something that looks like a hearing aid, applied by the patient, is a hard problem solved in a patient-friendly way.

With European sites starting and the FDA path ahead, I imagine the team is stretched.

I'm the CEO of CoreFragment. We build firmware and companion apps for medical wearables, including BLE firmware and iOS/Android apps for a US glucometer maker, under NDA with full IP transfer.

If extra hands on firmware, apps or test tooling would help, I'd be happy to talk. Or if you'd just enjoy a casual technical chat, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), 48 words

Hi {{First Name}},

We wrote up the problems we see most often when a medical wearable moves from prototype to real patients (power, wireless reliability, verification): corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Some of it may be familiar from NeuroBuds. Hope it's useful.

Parthraj

---

## Follow-up 2 (day 8), 55 words

Hi {{First Name}},

A different angle: a US submission usually means more verification evidence, cybersecurity documentation and test automation around the device and app. We can build test tooling or take over a well-defined app or data-pipeline piece, so your core team stays on the FDA file.

Would that help?

Parthraj

---

## Follow-up 3 (day 15), 36 words

Hi {{First Name}},

I don't want to crowd your inbox in a launch month. If you're covered, just let me know and I'll close this out. The offer of a casual chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product milestone (CE mark for NeuroBuds), not funding. No funding mentioned.
- [x] Specific to Cebreo: in-ear EEG that looks like a hearing aid, self-applied, multi-day, CE then FDA.
- [x] Claims trace to accounts/cebreo-medical.md or CLAUDE.md (glucometer case study anonymised); no numbers on our results. EU recipient: opt-out line included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: "the team is stretched" is an inference. Cebreo has its own ASIC/embedded team and a sister engineering company (T&W Engineering) nearby, so the pitch is overflow capacity. We make no EEG or FDA-submission claim. Headcount (~30) is from one secondary source.
