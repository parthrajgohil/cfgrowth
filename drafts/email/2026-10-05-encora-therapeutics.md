---
stage: ready_to_import   # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: encora-therapeutics
recipient: Kyle Pina, Co-Founder, VP of Engineering <kyle@encoratherapeutics.com>
saleshandy_sequence: 6vaK5xlxwW   # "CF · Encora Therapeutics · Kyle Pina (2026-10-07)", inactive until the CEO activates
sources: [accounts/encora-therapeutics.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** ready_to_import (source of truth: HubSpot "CF lead stage")
- **Company:** Encora Therapeutics · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/350514271939) · brief: `accounts/encora-therapeutics.md`
- **Website:** https://www.encoratherapeutics.com · **News:** news room on site · **LinkedIn:** unverified
- **HQ:** USA (city unverified; founders in Boston per Saleshandy) · **Founded:** unverified · **Size:** ~14 (Apollo)
- **Funding:** accelerator round (2022) and grant; total unverified
- **Recent news:** FDA 510(k) for Encora X1, 2026-02-12; pre-launch waitlist; CEO Nadim Yared since 2025-10

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Kyle Pina (**primary**) | Co-Founder, VP of Engineering | unverified | lead ID 159596823 | 66f9eeb3d1c6fd000182f849 (has email) | [563868632764](https://app.hubspot.com/contacts/247517534/record/0-1/563868632764) |
| Daniel Carballo | Co-Founder, VP Strategy | unverified | lead ID 66626255 | 66f49d265321e00001cd1e58 (has email) | [563950455513](https://app.hubspot.com/contacts/247517534/record/0-1/563950455513) |

## Subject options
1. encora x1 launch build
2. x1 production firmware
3. tremor wearable, next step

---

## Email 1 (day 0), ~101 words (body, excluding greeting and signature)

Hi {{First Name}},

Congratulations on the X1 clearance. Reading each patient's tremor rhythm and answering with mechanical stimulation, in a watch-sized device, is clever engineering. The step from clinical units to a commercial build usually brings its own list: DFM, battery life, test fixtures, firmware hardening.

I'm the CEO of CoreFragment. We build medical wearable firmware and hardware (nRF52, STM32, low-power design, BLE companion apps), including the BLE firmware and apps for a US glucometer maker, under NDA with full IP transfer.

If extra hands for the launch build would help, I'd be happy to talk. Or a casual chat about wearable power budgets works too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~48 words

Hi {{First Name}},

All-day wrist wear with an actuator running is a tough power budget. We collected the problems we see most in medical wearables (battery, skin-contact sensing, pairing, data integrity) and how we fix them: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Hope a point or two is useful for X1.

Parthraj

---

## Follow-up 2 (day 8), ~52 words

Hi {{First Name}},

A different angle: once X1 ships, prescribers and patients will ask for a phone app to track tremor and therapy time. We built BLE firmware and Android/iOS apps for a US glucometer maker, from device to phone. If an app is on your list, we can take it end to end.

Parthraj

---

## Follow-up 3 (day 15), ~33 words

Hi {{First Name}},

I don't want to crowd your inbox. If engineering for the launch is covered, just let me know and I'll close this out. A casual technical chat is always welcome.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product and clearance, not funding. No funding anywhere.
- [x] Specific to Encora: tremor-rhythm sensing, mechanical stimulation, watch-sized, launch build.
- [x] Claims trace to accounts/encora-therapeutics.md or CLAUDE.md (glucometer case study anonymized). US recipient: no opt-out line needed.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: **B lead**. The clearance is 8 months old; we don't know how far the commercial build is, or whether X1 has (or plans) an app; follow-up 2's app idea is our suggestion. The team looks very small (~14 in Apollo), so budget is unknown. Encora is in the same category as Cala Health (lead from 2026-10-01).
