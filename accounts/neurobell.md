# NeuroBell  ·  Fit: A  ·  Researched: 2026-10-22

## Snapshot
- **What they make:** LUNA, a pocket-sized wireless brain monitor for neonatal intensive care. The system has three parts:
  the Luna EEG Amplifier (portable, wireless, onboard seizure-detection alerts), the Luna Software Portal (web-based,
  real-time EEG review with automated seizure detection) and the Incereb Neon10 neonatal headcap [1]. Coverage describes the
  amplifier as battery-powered and Wi-Fi-connected, with 8 EEG channels, 10-20 placement for neonates and a two-button setup [4].
- **HQ / region:** NeuroBell Ltd., Core House, Link Road, Ballincollig, Cork, Ireland. US entity NeuroBell Inc. in Fort Wayne,
  Indiana [1][3].
- **Size:** 15 people in Apollo [5]. Headcount is not published.
- **Stage / funding:** spun out of University College Cork (2023 or 2024; sources disagree) after a EUR 2.1M round [2][3]. In
  2026-06 it raised USD 5.5M (EUR 4.8M), led by Elkstone with Parkview Health [2]. This is a reason for us to pick the company,
  never something to mention in an email.
- **Website:** https://www.neurobell.com

## Lead info
- **Website:** https://www.neurobell.com · **Blog/news:** linked from the site, no dated items visible · **Careers:** link on
  the site, no listings visible [1]
- **LinkedIn:** https://www.linkedin.com/company/neurobell/ · **X/Twitter:** https://x.com/neurobell_ [1]
- **HQ:** Ballincollig, Cork, Ireland · **Founded:** 2023 or 2024 (sources disagree) · **Employees:** ~15 (Apollo)
- **Raised:** EUR 2.1M (2024 spin-out round) + EUR 4.8M (2026-06) [2][3]. Total unverified.
- **What they make / tech:** wireless, battery-powered 8-channel EEG amplifier, Wi-Fi, embedded edge-AI seizure detection,
  web review portal [1][4]. Chips and RTOS are not public.
- **Recent news:**
  - 2026-06-29/30: funding round to prepare for FDA clearance and expand US commercial activity. A Fort Wayne office is open,
    and the CEO expects FDA clearance "in the coming months" [2][3]
  - 2026-07-03: Fort Wayne coverage says the funding supports LUNA's US launch and a later European launch [6]
  - 2025: clinical investigation completed at Cork University Maternity Hospital [3]
- **HubSpot company ID:** 354511423184 (https://app.hubspot.com/contacts/247517534/record/0-2/354511423184)
- **HubSpot contact IDs:** Colm Murphy 574541039329 · Pramod Krishna 574547521224 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Colm Murphy (**primary**) | Chief Technology Officer, co-founder | not in Saleshandy record (unverified) | Co-founder from the UCC/INFANT research team [2] | 420838972 | 5dcea2aca0af2d000180add3 (has email) |
| Pramod Krishna | Lead Engineer | unverified | "Product and Engineering Leader, embedded firmware and systems architect with 20+ years" (Saleshandy summary) [7] | 345676136 | 54a602d87468692abfd64cbb (no email) |
| Dr Mark O'Sullivan | CEO, co-founder | unverified | Quoted in the funding release [2] | not checked | 6518532baecc510001b6d31e (has email) |

## Why now (triggers)
- **US launch and FDA preparation** (funding announced 2026-06-29/30, US office in Fort Wayne). The CEO expects FDA clearance
  in the coming months, and a European launch is planned [2][3][6]. This is within 6 months → A.

## Engineering signals
- Apollo shows a Lead Engineer (embedded firmware architect), a Senior R&D Engineer, a Graduate Engineer, several software
  engineers, an ML engineer and a Director of QA/RA [5]. That is a small team carrying hardware, firmware, AI and a portal.
- The 2024 plan expected commercial sales in 2025, so the timeline has slipped about a year [4]. Slippage is common in a
  first US submission and may point to capacity pressure (inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Colm Murphy | CTO | unverified | **Primary.** Saleshandy 420838972; Apollo has email |
| Pramod Krishna | Lead Engineer | unverified | Alternative, hands-on firmware lead. Saleshandy 345676136; Apollo no email. Angle fits him |

## Best angle
**Service line:** embedded firmware + hardware (healthcare, primary row), with edge AI as a secondary hook · **Case study:**
BLE smart glucometer (US healthcare org) · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** a 15-person team is taking a wireless, battery-powered EEG amplifier through FDA and a US launch while also
planning CE. Battery life, signal integrity, Wi-Fi behaviour on hospital networks and the next hardware revision all compete
for the same few engineers. A partner that can take a defined firmware or electronics work package, under NDA with full IP
handover, adds capacity without hiring.

## Risks / disqualifiers
- They have a senior in-house firmware lead, so position us as extra capacity.
- Neonatal EEG is the same niche as CergenX (lead 2026-10-14, also Irish). The CEO may not want both in the same month.
- EU recipient: an opt-out line is needed.
- Funding must not appear in the email (CEO rule).

## Sources
1. https://www.neurobell.com (read 2026-10-22)
2. https://www.ucc.ie/en/innovation/news-events/ucc-spin-out-neurobell-secures-48m-to-support-us-expansion.html (2026-06-30)
3. https://www.irishexaminer.com/business/companies/arid-41870727.html (2026-06-29)
4. MassDevice coverage, via search snippet: https://www.massdevice.com/neurobell-5m-ai-neonatal-brain-monitor/ (page returned 403)
5. Apollo people search, keyword NeuroBell (2026-10-22)
6. https://www.journalgazette.net/business/neurobell-lands-funding-to-keep-ai-enabled-brain-monitor-on-development-track/article_a8a78afd-2b7f-4198-8030-1700479ef6ae.html (2026-07-03)
7. Saleshandy Lead Finder, NeuroBell leadership (2026-10-22)

---
**Summary:** Fit A (US launch and FDA prep for LUNA, 2026-06/07; small team). Angle: firmware/electronics capacity for a
wireless medical EEG device. Next step: CEO reviews the draft to the CTO (`drafts/email/2026-10-22-neurobell.md`).
