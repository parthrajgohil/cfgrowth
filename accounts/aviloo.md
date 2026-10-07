# AVILOO Battery Diagnostics  ·  Fit: A  ·  Researched: 2026-10-07

## Snapshot
- **What they make:** manufacturer-independent battery diagnostics for EVs and plug-in hybrids. The
  **AVILOO Box** (their own hardware, licensed to businesses or rented to private users) runs the 3-minute
  **FLASH Test** and the full-discharge **PREMIUM Test**; results go to the **AVILOO Connect** dashboard and an
  AVILOO Battery Certificate (QR-verified) [1]. Coverage: 96% of EVs on the road [2].
- **HQ / region:** Wiener Neudorf (near Vienna), Austria [1]. Active in Europe, North America, Brazil and
  Asia-Pacific [1].
- **Size:** 51-100 employees (karriere.at); an internal IT job mentions ~120 users [3].
- **Funding:** ~EUR 30M strategic investment, 2026-02-11 (Armira Growth, Invest AG; Raiffeisen KMU Invest
  stays), partly buying out the EIC Fund [2]. Total raised unverified.
- **Website:** https://aviloo.com

## Lead info
- **Website:** https://aviloo.com · **News:** https://aviloo.com/en/ (news list) · **Careers:** https://www.karriere.at/f/aviloo
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Wiener Neudorf, AT · **Founded:** 2018 [2] · **Employees:** 51-100 [3]
- **Funding:** ~EUR 30M, 2026-02-11, Armira Growth (lead) [2]
- **What they make / tech:** AVILOO Box diagnostic hardware, FLASH/PREMIUM tests, AVILOO Connect dashboard with
  API [1]. Internals (MCU, radio, how the box talks to the vehicle and cloud): **unverified**.
- **Recent news (last 6 months):**
  - 2026-02-11: ~EUR 30M to "accelerate product development and international expansion", focus on the US and
    Asia, "several market introductions in 2026" [2] (outside 6 months; context only)
  - 2026-05-29: AVILOO Battery Warranty launched (used-EV battery protection based on the FLASH Test) [1]
  - 2026-09-07: warranty extended to 14 more European markets, 24 countries in total; partners include
    Mercedes-Benz, Volvo, Porsche Holding, Ayvens, Arval, BCA, Cox Automotive [4]
- **HubSpot company ID:** 351282215610 (https://app.hubspot.com/contacts/247517534/record/0-2/351282215610)
- **HubSpot contact IDs:** Moritz Cuscoleca 565159635642, Christian Rommer 565215350493 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Moritz Cuscoleca (**primary**) | Head of Embedded EV Diagnostics | unverified | ~15 years' experience (Saleshandy) | **Lead ID 427738987** (decision maker) | 5f0101d20c76d00001aa33c7 (has email) |
| Christian Rommer | Head of Software Development | unverified | Wiener Neudorf | **Lead ID 278317002** (decision maker) | 675103dcda9bd700013ea3a1 (has email) |

Others in Apollo: CEO North America (Brett Li***l), CSOO (Oliver Bi***r), Head of AI, Head of Research & Data
Science, Product Owner.

## Why now (triggers)
- **Warranty rollout to 24 countries, 2026-09-07** [4]: a financial guarantee now rides on the FLASH Test result,
  so test reliability across every supported model matters more.
- **Growth capital for US/Asia expansion and product development, 2026-02** [2]: new markets mean new vehicle
  models, regional variants and higher box volumes.

## Engineering signals
- Own diagnostic hardware plus an "embedded EV diagnostics" team; vehicle coverage must keep up with new models.
- Workshop and dealer environments: plug-and-play use, connectivity drop-outs, many simultaneous boxes.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Moritz Cuscoleca | Head of Embedded EV Diagnostics | unverified | **Primary.** Saleshandy 427738987 |
| Christian Rommer | Head of Software Development | unverified | Alternative (cloud/app side). Saleshandy 278317002 |

## Best angle
**Service line:** embedded firmware + hardware for the diagnostic box, mobile/cloud link · **Case study:** BLE
OBD device + connected app (/case-study/smart-obd-device) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** US and Asian market introductions plus a warranty that depends on the test mean more vehicle
coverage work, possibly a next box revision, and more field units to update. We built a BLE OBD device and its
app, so we understand plugging into vehicles in the field; we can add firmware or hardware capacity under NDA
with full IP transfer.

## Risks / disqualifiers
- Automotive aftermarket: counts as broad industrial IoT per CLAUDE.md, but not healthcare.
- Box internals unverified; CAN isn't in our credible-tech list, so the email doesn't claim CAN expertise.
- The EUR 30M round is the reason we picked them; the email must not mention it.

## Sources
1. https://aviloo.com/en/ (read 2026-10-07)
2. https://www.electrive.com/2026/02/11/battery-diagnostics-specialist-aviloo-secures-e30-million/ (2026-02-11; read 2026-10-07)
3. https://www.karriere.at/f/aviloo and https://www.karriere.at/jobs/10024067 (via search summary)
4. https://emobilityplus.com/2026/09/07/aviloo-expands-ev-battery-warranty-to-14-more-european-markets-reaching-24-countries/ (2026-09-07; read 2026-10-07)
5. Saleshandy Lead Finder and Apollo people search for aviloo.com (2026-10-07)

---
**Summary:** Fit A. Angle: embedded/OBD-device capacity for vehicle coverage and US/Asia rollout.
Next step: CEO reviews the draft to Moritz Cuscoleca (`drafts/email/2026-10-07-aviloo.md`).
