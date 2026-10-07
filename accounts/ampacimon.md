# Ampacimon  ·  Fit: A  ·  Researched: 2026-10-06

## Snapshot
- **What they make:** grid-monitoring hardware and software for transmission operators. Dynamic line
  rating (DLR) sensors clamped on overhead conductors; the **Sense X** measures temperature, sag,
  current and vibration, works up to 315 kV, and was installed on a live 220 kV line by drone in
  under 90 seconds (2025-05) [1][2]. **BlueBOX** partial-discharge monitoring for underground cables
  (from the 2020 Diael acquisition, Madrid) [3]. Software: GridBoost, GridLife, GridVisor [4].
- **HQ / region:** Loncin (Liège), Belgium; offices in Madrid and Cumming, Georgia (US) [4].
- **Size:** 51-100 employees [5].
- **Funding:** Series C ~EUR 10M (2023-10; Junction Growth, Korys, Noshaq, Creos, Gesval) [5].
  Total raised unverified.
- **Website:** https://www.ampacimon.com

## Lead info
- **Website:** https://www.ampacimon.com · **News:** https://www.ampacimon.com/news · **Careers:** not checked
- **LinkedIn:** https://www.linkedin.com/company/ampacimon/ · **X/Twitter:** https://twitter.com/ampacimoninc [4]
- **HQ:** Loncin, BE · **Founded:** 2010 (University of Liège research from 2003) [4] · **Employees:** 51-100 [5]
- **Funding:** Series C ~EUR 10M, 2023-10-16 [5]
- **What they make / tech:** line-mounted DLR sensors (Sense X, Sense D), MS Plus partial-discharge
  monitors, PDEye [4]. Power source, radio and MCU: **unverified**.
- **Recent news (last 6 months):**
  - 2026-04-30: **National Grid** awards a 5-year contract to LineVision, Ampacimon and Heimdall to add
    DLR to 585 km of UK lines (North East 345 km; Humber and East Anglia 240 km), most installs by 2028 [6]
  - 2026-07-02: Sense X deployment across seven transmission lines with Winter Wind d.o.o. Tomislavgrad [1]
  - 2026-06-11: grid-capacity solutions for Latin America (news item) [1]
  - 2026-02-02: strategic partnership with **AP Sensing** (fibre-optic distributed sensing + DLR) [7]
- **HubSpot company ID:** 350928398034 (https://app.hubspot.com/contacts/247517534/record/0-2/350928398034)
- **HubSpot contact IDs:** Thibaut Libert 564632368855, Nabil Khouya 564653192901 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Thibaut Libert (**primary**) | Head of Electronics Department | unverified | Liège; ~20 years' experience (Saleshandy) | **Lead ID 116074945** (decision maker) | 54c2863b7468697af7f16aa4 (has email) |
| Nabil Khouya | Chief Product Officer | unverified | France-based (Saleshandy) | **Lead ID 322151581** | 5570969d73696466d74d6c00 (has email) |
| Stephan Heberer | CEO | unverified | Quoted on AP Sensing partnership [7] | not checked | not found in Apollo list |

Others in Apollo: Bertrand Go***d (Head of Innovation), Juan Co***a (R&D Hardware Manager, BlueBOX line).

## Why now (triggers)
- **National Grid 5-year DLR contract, 2026-04-30** [6]: hundreds of km of new installs to 2028 means
  sensor volume, field reliability and possibly UK-specific variants.
- **AP Sensing partnership (2026-02)** and new deployments (2026-07) [1][7]: product scope growing.

## Engineering signals
- Own electronics department (Head of Electronics in Liège) plus a separate BlueBOX hardware team in Spain.
- Line-mounted sensors at high voltage: power budget, EMC, ruggedness and remote updates matter.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Thibaut Libert | Head of Electronics Department | unverified | **Primary.** Saleshandy 116074945 |
| Nabil Khouya | Chief Product Officer | unverified | Alternative. Saleshandy 322151581 |

## Best angle
**Service line:** embedded hardware + low-power firmware (sensor nodes, OTA, cellular) · **Case
study:** access control with real-time monitoring (/case-study/access-control-system) · **Blog:**
`handle-mqtt-connection-loss`

**Hypothesis:** a sub-100-person company that just won a multi-year National Grid rollout, on top of
new partnerships and deployments, has more sensor hardware to build and sustain than one electronics
department can carry. We can take a defined block (a sensor variant, a cost-down respin, firmware/OTA
work) under NDA with full IP transfer.

## Risks / disqualifiers
- Sensor internals unverified; the email names our stack, not theirs.
- Utility-grid equipment, not defence. No export-control signal found.
- The drone-install story is from 2025-05 (used as colour, not as the trigger).

## Sources
1. https://www.ampacimon.com/news/ampacimon-drone-installed-dlr-sensors (2025-05-16; related-news list read 2026-10-06)
2. https://www.ampacimon.com/news/ampacimon-to-deploy-dynamic-line-rating-technology-with-winter-wind-d-o-o-tomislavgrad (via search summary)
3. https://globaluniversityventuring.com/ampacimon-procures-diael-in-acquisition-deal (via search summary)
4. https://ampacimon.com/about-us (read 2026-10-06)
5. https://www.cbinsights.com/company/ampacimon and https://mercomindia.com/ampacimon-grid-monitoring-raises-series-c-funding (via search summary)
6. https://www.theconstructionindex.co.uk/news/view/national-grid-gets-dynamic (2026-04-30; read 2026-10-06)
7. https://www.ampacimon.com/news/ampacimon-ap-sensing-new-dlr-partnership (2026-02-02; read 2026-10-06)
8. Saleshandy Lead Finder and Apollo people search for ampacimon.com (2026-10-06)

---
**Summary:** Fit A. Angle: sensor hardware/firmware capacity for the National Grid DLR rollout.
Next step: CEO reviews the draft to Thibaut Libert (`drafts/email/2026-10-06-ampacimon.md`).
