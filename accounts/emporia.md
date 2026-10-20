# Emporia  ·  Fit: B  ·  Researched: 2026-10-14

## Snapshot
- **What they make:** home energy hardware with its own app: **Vue** energy monitors (Vue 3, 2024: voltage measurement,
  Ethernet option), smart plugs, **Classic and Pro Level 2 EV chargers** (Pro: PowerSmart load management using Vue data,
  2025-04), a home battery solution; electricity plans in Texas (2026-06-24) [1][2][3].
- **In development:** **V2X bidirectional EV charger**, designed to comply with **ISO 15118-20**; release targeted
  **late 2026 or early 2027** [4]. Earlier materials quoted 2023 and 2024 launch dates [5].
- **HQ / region:** Littleton, Colorado, USA (customer service and "growing team in Colorado") [2][1].
- **Size:** unverified; ~30 managers/leads visible in Apollo, incl. VP Engineering, Firmware Manager, Lead Firmware
  Engineer, Hardware Product Line Manager [6].
- **Investors:** Siemens became a part shareholder (2025-07-30); Honda strategic investment (2024-06) [1].
- **Website:** https://www.emporiaenergy.com

## Lead info
- **Website:** https://www.emporiaenergy.com · **Press:** https://emporiaenergy.com/press/ · **Careers:** linked on site
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Littleton, CO · **Founded:** unverified · **Employees:** unverified
- **Funding:** Siemens (2025-07), Honda (2024-06), amounts undisclosed [1]
- **What they make / tech:** Vue monitors (Wi-Fi/Ethernet), smart plugs, L2 chargers, home battery, planned V2X
  (ISO 15118-20, earlier spec: 11.5 kW, CCS1) [4][5]
- **Recent news:**
  - 2026-06-24: Texas electricity plan with free EV charging windows used automatically by the charger [1]
  - Help center (undated, current): V2X charger "aiming for late 2026 or early 2027", ISO 15118-20 [4]
  - 2025-07-30: Siemens part shareholder [1]
- **HubSpot company ID:** 352222681827 (https://app.hubspot.com/contacts/247517534/record/0-2/352222681827)
- **HubSpot contact IDs:** none (buyer surnames masked in Apollo)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Andrew Me***s (**primary**, surname masked) | Vice President of Engineering | unverified | — | not found | 57dc7b8da6da987d8cb592f8 (has email) |
| Chris Pl***t (masked) | Firmware Manager | unverified | — | not found | 60f5a45a6d7dfc0001cc8a86 (has email) |
| Shawn Mc***n (masked) | Founder / CEO | unverified | — | not checked | 66f11a10e1016f00018dfc24 (has email) |

Nobody at Emporia was found in Saleshandy (search for VP Engineering / Firmware Manager returned nothing).

## Why now (triggers)
- V2X bidirectional charger targeted for **late 2026 / early 2027** (ISO 15118-20); it has moved from earlier 2023/2024
  targets [4][5]. Weaker, undated trigger: grade B.
- Product line keeps growing (battery, plans, chargers) on one firmware team [1][6].

## Engineering signals
- In-house firmware team exists (Firmware Manager, Lead Firmware Engineer) [6]: pitch extra capacity, not replacement.
- Bidirectional charging adds ISO 15118-20 communication, certificates/PKI, grid-interconnection behaviour and vehicle
  interop testing.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Andrew Me***s | VP of Engineering | unverified | **Primary.** Apollo has email; surname masked; not in Saleshandy |
| Chris Pl***t | Firmware Manager | unverified | Alternative. Apollo has email |

## Best angle
**Service line:** embedded firmware for EV charging / energy devices (website industry: Automotive & EV charging) ·
**Case study:** BLE OBD device + connected app (automotive) · **Blog:** `ocpp-compliance-importance`

**Hypothesis:** A V2X charger on a firmware team that also sustains monitors, plugs, chargers and a battery is a
capacity problem. We can take defined firmware pieces (OCPP backend link, OTA, secure boot, test automation) so their
team stays on the 15118-20 core.

## Risks / disqualifiers
- Larger and well staffed (Siemens/Honda backed); may not need outside help. Headcount unverified (could be near 200+).
- We have no ISO 15118 reference: the email must not claim 15118 experience.
- Buyer surnames masked; email reveal must come from Apollo.

## Sources
1. https://emporiaenergy.com/press/ (read 2026-10-14)
2. https://pv-magazine-usa.com/press-releases/emporia-launches-pro-level-2-ev-charger-with-built-in-load-management-to-eliminate-costly-panel-upgrades/ (2025-04)
3. Search results on Vue 3 (2024) and the home battery (undated)
4. https://help.emporiaenergy.com/en/articles/9084302-available-information (V2X, read via search 2026-10-14)
5. https://www.cleanenergyreviews.info/s/Emporia_V2X_bi-directional_charger_Technical_Specs.pdf (older spec sheet)
6. Apollo people search, domain emporiaenergy.com (2026-10-14)

---
**Summary:** Fit B. Angle: firmware capacity around the V2X charger. Next step: CEO reviews the draft to the VP
Engineering (`drafts/email/2026-10-14-emporia.md`); email needs an Apollo reveal.
