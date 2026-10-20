# Flow Neuroscience  ·  Fit: A  ·  Researched: 2026-10-20

## Snapshot
- **What they make:** FL-100, a prescription at-home tDCS headset for major depressive disorder (0.5–2.0 mA to the left
  DLPFC), with a companion app that controls stimulation timing, limits overuse, logs symptoms and reports adherence to
  prescribers. FDA PMA P230024; US launch announced 2026-09-08. Also sold in the UK, Europe and Australia (65,000+ users,
  used by 15 NHS services) [1][2].
- **HQ / region:** Malmö, Sweden [3]
- **Size:** under 100 per Dealroom [3]; 29 people in Apollo [4]
- **Funding:** Series A (2021) led by Khosla Ventures; total raised unverified (aggregators give USD 10M–22M) [3]. Not for use in outreach.
- **Website:** https://www.flowneuroscience.com (US site: flowneuroscience.us)

## Lead info
- **Website:** https://www.flowneuroscience.com · **Blog:** https://www.flowneuroscience.com/blog/ · **Careers:** not found
- **LinkedIn:** unverified · **X/Twitter:** https://x.com/flowneurosci [2]
- **HQ:** Malmö, Sweden · **Founded:** unverified (co-founders Daniel Månsson and Erik Rehn) [3] · **Employees:** <100 (Dealroom) [3]
- **Raised:** Series A 2021, Khosla Ventures lead; total unverified [3]
- **What they make / tech:** wireless tDCS headset + iOS/Android app; remote clinician oversight; protocol not stated [1]
- **Recent news (last 6 months):**
  - 2026-09-08: FL-100 launched across the US (PMA P230024); prescribing via psychiatrists, primary care and psychiatric NPs; Flow Care telemedicine pathway [1]
  - 2026-01: FDA approval announced (sources date the decision 2025-12 to 2026-01) [5]
- **HubSpot company ID:** 353929384657 (https://app.hubspot.com/contacts/247517534/record/0-2/353929384657)
- **HubSpot contact IDs:** Erik Rehn 573016910542 · Stephen Day 573043948235 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Erik Rehn (**primary**) | CTO & Co-founder | unverified | Co-founder, technology lead since founding [3] | 76058221 | 611040295df6e8000176e928 (has email) |
| Stephen Day | Head of Supply Chain | unverified | Name per Apollo; production/supply | not checked | 5efa70dceca943000166384c (has email) |
| Richard No***e | Head of Software | unverified | Surname masked in Apollo | not checked | 6701468323d9e00001cfeeb8 (has email) |

## Why now (triggers)
- **US launch of FL-100, 2026-09-08** after FDA PMA approval (P230024) [1][5].
- US launch means volume ramp, US-specific support and prescriber reporting through the app; the PMA covers the headset, so
  later hardware/firmware changes need careful change control.

## Engineering signals
- Apollo shows one Electronics Engineer, a Quality Control Engineer, a Head of Software and several software/ML/analytics
  people, plus a Head of Supply Chain [4]. Hardware/firmware depth looks thin next to a US launch (inferred).
- Product is a battery-powered wireless headset tied to an app: power, BLE link reliability, dose-control firmware and
  production test are the hardware-side risks.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Erik Rehn | CTO & Co-founder | unverified | **Primary.** Saleshandy 76058221; Apollo has email |
| Stephen Day | Head of Supply Chain | unverified | Alternative (production/cost-down) |
| Head of Software (masked) | Head of Software | unverified | Alternative |

## Best angle
**Service line:** embedded firmware + hardware for a medical wearable (primary row: healthcare firmware/hardware), BLE app
link · **Case study:** BLE smart glucometer (firmware + Android/iOS apps for a US healthcare org) · **Blog:**
`medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** With FL-100 now launched across the US, Flow has to scale a PMA device: production volume, cost, BLE/app
reliability and a next-generation headset, with one visible electronics engineer. A partner that can take firmware and hardware
work (sustaining engineering, cost-down, next-gen design under the PMA change process) adds capacity without hiring in Malmö.

## Risks / disqualifiers
- PMA device: any change needs supplements; they may prefer to keep engineering in-house.
- Existing electronics partner unknown.
- EU recipient: opt-out line needed.

## Sources
1. https://hlth.com/insights/news/flow-neuroscience-launches-fda-approved-at-home-depression-treatment-in-the-us (2026-09-09)
2. https://www.flowneuroscience.com (read 2026-10-20)
3. https://dealroom.co/companies/flow-neuroscience/ ; https://www.cbinsights.com/company/flow-neuroscience ; https://www.preqin.com/data/profile/asset/flow-neuroscience-ab/261650
4. Apollo people search, domain flowneuroscience.com (2026-10-20)
5. https://www.goodwinlaw.com/en/news-and-events/news/2026/01/announcements-technology-flow-neuroscience-announces-fda-approval ; https://www.medicaldevice-network.com/news/fda-clears-flow-neuroscience-at-home-depression-treatment-in-us-first/
6. Saleshandy Lead Finder, Erik Rehn (2026-10-20)

---
**Summary:** Fit A (US launch of the FDA-approved FL-100 headset, 2026-09-08; thin hardware team in Apollo). Angle: firmware
and hardware capacity for scaling the headset. Next step: CEO reviews the draft to the CTO (`drafts/email/2026-10-20-flow-neuroscience.md`).
