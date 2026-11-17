# Blubrake  ·  Fit: A  ·  Researched: 2026-10-27

## Snapshot
- **What they make:** anti-lock braking systems (ABS) for e-bikes, e-cargo bikes and light electric vehicles, sold to
  bike brands. The ABS unit monitors front-wheel speed and bike dynamics and modulates front brake pressure [1].
- **HQ / region:** Milan, Italy (Blubrake S.p.A., Milan REA registration) [1][3].
- **Size:** 11–50 per an aggregator (unverified) [4]; Apollo lists 15 people incl. CTO, embedded SW team leader, senior
  firmware engineer, functional safety engineer, validation engineer [5].
- **Stage / funding:** founded November 2015 as an e-Novia start-up and Politecnico di Milano spin-off [3]. Series A
  EUR 5.2M (earlier); round of EUR 12M (Algebris, Fundracer, Tri-Star) extended by EUR 2.5M (Suprajit, Primo Capital) to
  EUR 14.5M, to fund production capacity and market penetration (date of extension unverified, ~2025-11) [3].
- **Website:** https://www.blubrake.com

## Lead info
- **Website:** https://www.blubrake.com · **News:** https://www.blubrake.com/news · **Careers:**
  https://www.blubrake.com/careers (no open roles, 2026-10-27) · **LinkedIn:** https://www.linkedin.com/company/blubrake/
  · **X:** not listed
- **HQ:** Milan, Italy · **Founded:** 2015 · **Employees:** 11–50 (unverified) · **Raised:** latest round EUR 14.5M
  (Algebris, Fundracer, Tri-Star, Suprajit, Primo Capital); total unverified
- **What they make / tech:** NEO, third-generation ABS: 96 × 38.5 × 35 mm, less than half the volume of Gen2, fits in
  the fork, frame or steering pivot; communicates over **CAN**; works with Bosch, Ananda and Bafang motors and Shimano and
  Magura hydraulic brakes; lower production cost; "open integration/communication platform" [1][2][6]. Chips not public.
- **Recent news:**
  - 2026-06 / 2026-07-01: NEO unveiled at Eurobike 2026 (transitionvelo.com, 2026-07-01; bikerumor) [2][6]
  - Undated (~2025-11): round extended to EUR 14.5M to scale production [3]
- **HubSpot company ID:** 356575008459 (https://app.hubspot.com/contacts/247517534/record/0-2/356575008459)
- **HubSpot contact IDs:** Daniele Berretta 578040647369 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Daniele Berretta (**primary**) | Chief Technology Officer | unverified | PhD in systems and control; "passionate on embedded systems" for light electric vehicles and IoT (Saleshandy summary) [7] | 260358531 | 62466d1f1dc9ad00011f8f04 (has email) |
| Andrea Ru***n | Embedded SW Team Leader | unverified | Apollo only (surname masked) [5] | not found | 5d65b684f65125b7cbc54dd5 (has email) |
| Fabio Todeschini | Founder & CEO | unverified | Founder [3] | not checked | 66ed3e13b9e6b40001cdbc7f (has email) |

## Why now (triggers)
- **NEO launched at Eurobike 2026** (June 2026; coverage 2026-07-01), a new platform "designed from the ground up", now
  being integrated with several motor and brake makers [2][6]. Within 6 months → **A**.
- New capital to scale production (extension to EUR 14.5M) [3]. Not for use in the email.

## Engineering signals
- Small embedded team in Apollo: CTO, one embedded SW team leader, one senior firmware engineer, one functional safety
  engineer, one validation engineer [5].
- No open roles on the careers page [8].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Daniele Berretta | CTO | unverified | **Primary.** Embedded background. Saleshandy 260358531; Apollo has email |
| Andrea Ru***n | Embedded SW Team Leader | unverified | Alternative, hands-on; Apollo only (masked) |

## Best angle
**Service line:** embedded firmware (secondary row: automotive & EV / light mobility; firmware is the primary service)
· **Case study:** BLE OBD device + connected app (automotive) · **Blog:**
`outsourcing-decision-for-device-driver-development`

**Hypothesis:** an ABS that has to work with Bosch, Bafang and Ananda motors and several brake systems means a growing
list of integration, configuration and validation work for each bike brand. Extra firmware and test hands (HIL, drivers,
bootloaders, companion app/diagnostics) help a five-person embedded team ship integrations without slipping the core
platform.

## Risks / disqualifiers
- Light mobility is not one of the primary industries (automotive/EV is a website industry).
- Functional-safety work: we don't claim ISO 26262 / safety certification experience; CLAUDE.md doesn't list CAN, so the
  email doesn't claim CAN expertise.
- Italy (EU): opt-out line needed. Investor Suprajit is an Indian auto-component group (no issue, just context).

## Sources
1. https://www.blubrake.com/ (2026-10-27)
2. https://www.transitionvelo.com/?p=36395 (2026-07-01)
3. https://www.startupbusiness.it/en/?p=148587 ; https://new.deib.polimi.it/eng/spin-off/details/19 ; startupitalia.eu (Series A)
4. https://seedtable.com/startups/blubrake-DBJKD4W (aggregator)
5. Apollo people search, domain blubrake.com (2026-10-27)
6. https://bikerumor.com/blubrake-introduces-neo-at-eurobike-a-more-compact-and-affordable-abs-platform-for-e-bikes/
7. Saleshandy Lead Finder, Blubrake CTO (2026-10-27)
8. https://www.blubrake.com/careers (2026-10-27)

---
**Summary:** Fit A (NEO third-gen ABS launched at Eurobike 2026, multi-brand integrations). Angle: firmware/integration
capacity. Next step: CEO reviews the draft to the CTO.
