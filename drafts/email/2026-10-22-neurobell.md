---
stage: approved          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: neurobell
recipient: Colm Murphy, Chief Technology Officer (email: TO BE FILLED BY HUMAN)
sources: [accounts/neurobell.md, https://corefragment.com/case-study/smart-glucometer, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** NeuroBell · [HubSpot 354511423184](https://app.hubspot.com/contacts/247517534/record/0-2/354511423184) · brief: `accounts/neurobell.md`
- **Website:** https://www.neurobell.com · **News:** blog linked from the site · **LinkedIn:** https://www.linkedin.com/company/neurobell/
- **HQ:** Ballincollig, Cork, Ireland (US entity in Fort Wayne, IN) · **Founded:** 2023/2024 (UCC spin-out) · **Size:** ~15 (Apollo)
- **Funding:** EUR 2.1M (2024) + EUR 4.8M (2026-06). Not for use in the email.
- **Trigger:** US launch and FDA preparation for LUNA, with the Fort Wayne office open (2026-06-29/30) → A
- **Segment:** device maker (segment 1); primary row, healthcare firmware/hardware

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Colm Murphy (**primary**) | Chief Technology Officer, co-founder | unverified | 420838972 | 5dcea2aca0af2d000180add3 (has email) | [574541039329](https://app.hubspot.com/contacts/247517534/record/0-1/574541039329) |
| Pramod Krishna | Lead Engineer | unverified | 345676136 | 54a602d87468692abfd64cbb (no email) | [574547521224](https://app.hubspot.com/contacts/247517534/record/0-1/574547521224) |

## Subject options
1. LUNA firmware capacity
2. wireless neonatal EEG
3. LUNA US launch

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

Putting clinical-grade EEG with onboard seizure detection into a pocket-sized wireless amplifier is a genuinely useful idea for NICUs that don't have a neurophysiologist on call. With the Fort Wayne office open and the US launch ahead, I imagine the next LUNA revisions and the FDA work are competing for the same engineers.

I'm the CEO of CoreFragment; we build firmware and hardware for connected medical devices (nRF52, STM32, BLE, Wi-Fi, low-power design), under NDA with full IP handed over.

If extra hands on LUNA's firmware or electronics would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about edge AI on low-power hardware, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

A wireless EEG amplifier on a neonate has to live within its battery budget, keep its signal clean and work on a hospital Wi-Fi network it doesn't control. We wrote up the problems we see most often as medical wearables move towards production, and how teams fix them: corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A short example: for a US healthcare organisation we built the BLE firmware and the Android/iOS apps for a smart glucometer (Laird module, Keil). It's a different signal, but the same kind of job: a small battery-powered device feeding data that clinicians rely on. We take a defined work package and hand over all source and design files.

Parthraj

---

## Follow-up 3 (day 15), ~40 words

Hi {{First Name}},

I don't want to crowd your inbox. If LUNA's engineering is covered for now, just let me know and I'll close this out. The offer of a casual technical chat stands.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (LUNA), not money. No funding amount, round or investor anywhere in the emails.
- [x] Specific to NeuroBell: LUNA, onboard seizure detection, Fort Wayne, US launch.
- [x] Claims trace to accounts/neurobell.md or CLAUDE.md (nRF52, STM32, BLE, low-power design, glucometer case study, wearable blog, NDA + IP).
- [x] ~100 words; one CTA; no banned words. EU recipient: opt-out line included.
- [ ] Human: "next LUNA revisions" and the capacity strain are our inference. NeuroBell has an experienced in-house Lead Engineer (Pramod Krishna, embedded firmware architect), so the pitch is extra capacity. LUNA's chips and RTOS are not public. Neonatal EEG is the same niche as CergenX (lead 2026-10-14).
