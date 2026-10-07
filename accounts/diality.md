# Diality  ·  Fit: B  ·  Researched: 2026-10-07

## Snapshot
- **What they make:** the **Moda-flx Hemodialysis System**, a mobile dialysis machine about the size of a mini
  fridge on wheels, with built-in reverse-osmosis water filtration, a cloud data store with a physician portal,
  and support for IHD, SLED/SLEDD and PIRRT [1][2].
- **HQ / region:** Irvine, California, US [1].
- **Size:** 60 employees in 2023 [3]; current count unverified (Apollo lists ~32 managers and above).
- **Funding:** over USD 100M raised by 2024 [2] (USD 28M round in 2023 [3]).
- **Website:** https://www.diality.com

## Lead info
- **Website:** https://www.diality.com · **News:** https://www.diality.com (news section) · **Careers:** https://www.diality.com/careers
- **LinkedIn / X:** unverified
- **HQ:** Irvine, CA · **Founded:** 2015 per [3], 2018 per [2] (unverified) · **Employees:** ~60 (2023) [3]
- **Funding:** >USD 100M total (2024) [2]
- **What they make / tech:** hemodialysis system with embedded control, water treatment and a cloud physician
  portal [1]. MCUs, RTOS and radios: unverified. A Sr. Embedded Firmware Engineer post asked for C/C++, Python,
  RTOS, drivers and IEC 62304 for Class B/C software (post now gone, date unknown) [4].
- **Recent news:**
  - 2024-08: FDA 510(k) clearance for professional care settings [2]
  - 2025-09-11: first patient treated in the **PRESCRIBE Diality** home-use IDE trial (aQua Research Institute,
    Houston) [5]
  - Home-use indication is the next submission; limited market release talked about for 2027 (search summary,
    unverified)
- **HubSpot company ID:** 351018959573 (https://app.hubspot.com/contacts/247517534/record/0-2/351018959573)
- **HubSpot contact IDs:** Nicholas Hyun 565171902141, Derek Wiebenson 565126054635 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Nicholas Hyun (**primary**) | Director of Product Development | unverified | Aliso Viejo, CA; ~17 years' experience (Saleshandy) | **Lead ID 417291900** (decision maker) | 54a794e874686975f838c742 (has email) |
| Derek Wiebenson | VP, Digital Health Solutions | unverified | San Francisco (Saleshandy) | **Lead ID 100102124** (decision maker) | 5cb95226f3e5bb04e49b921b (has email) |

Others in Apollo: CEO Osman Khawar, COO, Lead Principal Software Engineer, Software V&V Manager, Director of
Mechanical Engineering, NPI Manager.

## Why now (triggers)
- No dated trigger in the last 6 months. **B:** clear roadmap: a home-use indication (IDE trial running since
  2025-09) [5] means a machine patients run themselves at home, with home connectivity and remote monitoring.
  Firmware hiring seen (post gone) [4].

## Engineering signals
- Class B/C embedded software under IEC 62304; dedicated software V&V manager.
- Cloud physician portal already exists; home use adds patient-facing UX, home Wi-Fi/cellular, remote alarms.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Nicholas Hyun | Director of Product Development | unverified | **Primary.** Saleshandy 417291900 |
| Derek Wiebenson | VP, Digital Health Solutions | unverified | Alternative for the connectivity/app angle. Saleshandy 100102124 |

## Best angle
**Service line:** embedded firmware + IoT connectivity/cloud for the home version · **Case study:** connected
health monitoring hub + app (/case-study/health-monitoring-hub) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** taking a clinic machine into the home changes the connectivity and data requirements: a treatment
can't depend on the patient's Wi-Fi, and data must reach the physician portal without gaps. We can add firmware,
connectivity and app capacity alongside their team under NDA with full IP transfer.

## Risks / disqualifiers
- Well funded with an in-house software team; they may prefer hires.
- Trigger is older (home trial started 2025-09); hence B.
- Founded year differs between sources.

## Sources
1. https://www.diality.com/ (read 2026-10-07)
2. https://www.ocbj.com/healthcare/fda-clears-dialitys-mobile-hemodialysis-system/ (2024-08-19; read 2026-10-07)
3. https://www.ocbj.com/healthcare/diality-raises-28m-for-dialysis-device/ (2023-08-21; read 2026-10-07)
4. https://embedded.jobs/job/Senior-Embedded-Firmware-Engineer-with-Diality-fe5ce0 (now 410; content via search summary)
5. https://www.businesswire.com/news/home/20250911893044/en/ (2025-09-11; via search summary, page 403)
6. Saleshandy Lead Finder and Apollo people search for diality.com (2026-10-07)

---
**Summary:** Fit B. Angle: connectivity/firmware capacity for the home version of Moda-flx. Next step: CEO
reviews the draft to Nicholas Hyun (`drafts/email/2026-10-07-diality.md`).
