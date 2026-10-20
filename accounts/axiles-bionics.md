# Axiles Bionics  ·  Fit: B  ·  Researched: 2026-10-14

## Snapshot
- **What they make:** **Lunaris** ankle-foot prostheses: Lunaris Essential and **Lunaris IO / IO+** (up to 39° range
  of motion; IO models add "smart connectivity" with integrated sensors that collect real-world usage data) [1][2].
  Lunaris is FDA and CE certified per VUB [3].
- **HQ / region:** Brussels, Belgium (VUB spin-off) [3].
- **Size:** ~29 people visible in Apollo, incl. CTO, embedded software engineer, hardware engineer, bionics and
  robotics engineers, a cloud/app/AI engineer [4].
- **Funding:** Series A, first EUR 6M of an EUR 8M round (2025-06), led by PE Group with EIC Fund [5]; EIC-funded
  Solaris project (prosthetics-as-a-service) [6].
- **Website:** https://www.axilesbionics.com

## Lead info
- **Website:** https://www.axilesbionics.com · **News:** blog on site (latest 2026-07-22) · **Careers:**
  https://www.axilesbionics.com/careers
- **LinkedIn:** https://www.linkedin.com/company/axilesbionics/ · **X/Twitter:** not found
- **HQ:** Brussels · **Founded:** unverified · **Employees:** ~29 in Apollo (unverified)
- **Funding:** Series A EUR 6M of EUR 8M (2025-06) [5]
- **What they make / tech:** bionic ankle-foot prosthesis, inertial sensors, embedded software, on-device ML (planned),
  companion app (reported) [1][2][7]
- **Recent news:**
  - Open: **Software & AI Engineer** (Brussels HQ, reports to CTO): design ML models that run on the prosthetic,
    infrastructure for model development, **write embedded software that runs AI models on-device**, work with
    embedded engineers; inertial sensor data [7] (posting date not shown)
  - 2026-05-19..22: OTWorld 2026 exhibitor (Lunaris IO/IO+ "smart connectivity") [2]
  - 2026-06-29: mobile app launched with Lunaris IO (aggregator Bounce Watch; **unverified**)
  - 2026-06-03: CAP48 innovation recognition [1]
- **HubSpot company ID:** 352210097897 (https://app.hubspot.com/contacts/247517534/record/0-2/352210097897)
- **HubSpot contact IDs:** Felipe Gomez 569247900370 · Pierre Cherelle 569291670240 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Felipe Gomez (**primary**) | Chief Technology Officer | unverified | the AI role reports to him [7] | **Lead ID 405562802** (decision maker) | 6104120856db820001d9678e (has email) |
| Pierre Cherelle | Founder, CEO & Board member | unverified | 15+ years robotics R&D for amputees [8] | Lead ID 23217920 | 66e26a0658c5670001e7ea55 (has email) |

## Why now (triggers)
- Hiring to put **ML on the prosthesis** and the embedded code that runs it (open 2026-10-14, date unknown) [7].
- OTWorld 2026 showing the connected IO line (2026-05) [2].

## Engineering signals
- Small embedded team (one embedded SW engineer, one HW engineer visible) [4]; the AI hire must work across ML and
  embedded, a hard single-person brief.
- Sensors + connectivity + app = data pipeline device → app → cloud.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Felipe Gomez | CTO | unverified | **Primary.** Saleshandy 405562802; Apollo has email |
| Pierre Cherelle | Founder CEO | unverified | Alternative. Saleshandy 23217920 |

## Best angle
**Service line:** embedded firmware + edge AI on MCUs (primary firmware row, healthcare; AI/ML secondary) ·
**Case study:** BLE smart glucometer (firmware + Android/iOS apps, US healthcare org) · **Blog:**
`medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** Running inference on inertial data inside a battery-powered prosthesis means tight memory, latency
inside the gait cycle, power, and safe model updates in the field. We can support the embedded side next to their
new AI hire.

## Risks / disqualifiers
- Actuation/control is core IP; they may keep it fully in-house.
- App launch date only from an aggregator (unverified). Posting date unknown, so B not A.

## Sources
1. https://www.axilesbionics.com (read 2026-10-14)
2. https://www.ot-world.com/exhibitors-products/product/otworld/6953/2881 and exhibitor page (OTWorld 2026)
3. https://techtransfer.research.vub.be/empowering-amputees-with-a-smart-bionic-foot
4. Apollo people search, domain axilesbionics.com (2026-10-14)
5. https://finder.techleap.nl/news/feed/axiles-bionics-raises-6m-for-prosthetics ; https://seedtable.com/companies/axiles-bionics/funding-rounds/series-a-2025-06
6. https://cordis.europa.eu/project/id/190118954
7. https://www.axilesbionics.com/jobs/software-ai-engineer (read 2026-10-14)
8. Saleshandy Lead Finder (2026-10-14)

---
**Summary:** Fit B. Angle: embedded side of on-device ML for Lunaris IO. Next step: CEO reviews the draft to Felipe
Gomez (`drafts/email/2026-10-14-axiles-bionics.md`).
