# Praxa Sense  ·  Fit: A  ·  Researched: 2026-10-19

## Snapshot
- **What they make:** ALIS® (Absorption & Laser Interference Sensor), a patented laser speckle sensor that captures PPG plus a
  blood-flow index (speckle plethysmography), claimed to cope better with motion and darker skin than LED PPG [1][2][3].
  Sold as an **EV Kit**: a battery-operated 40 × 40 × 14 mm module (strap-on, wristband or finger clip) for wearable OEMs and
  medical device makers; first product "Afi" is being validated with cardiology centres (EU co-financed Afi-Ablation project) [1].
- **HQ / region:** Delft, Netherlands (founder located in The Hague) [3][6]
- **Size:** ~14 people in Apollo; 13 per a third-party profile [5][7]
- **Funding:** investment round 2023-07 (amount not shown); Eurostars grant with Withings and CSEM (2025-01) [4]. Not for use in outreach.
- **Website:** https://www.praxasense.com

## Lead info
- **Website:** https://www.praxasense.com · **News:** https://www.praxasense.com/news · **Careers:** https://www.praxasense.com/vacancies (no open roles 2026-10-19)
- **LinkedIn:** https://www.linkedin.com/company/praxa-sense [1] · **X/Twitter:** not found
- **HQ:** Delft, NL · **Founded:** 2018 [3] · **Employees:** ~14 [5]
- **Raised:** 2023-07 investment round (amount unverified); Eurostars grant 2025-01 (with Withings, CSEM) [4]
- **What they make / tech:** laser speckle optical sensor module, battery-powered wearable form factors; in-house photonics,
  signal-processing and one embedded software engineer [5]; radio/MCU not stated
- **Recent news:**
  - 2026-08-19: EVKit datasheet published, "direct access to the signals collected by ALIS®" for wearable OEMs [4]
  - Upcoming: "EVKit launch at MEDICA 2026" (MEDICA runs 16–19 Nov 2026, Düsseldorf) per the company site [1][4]
  - 2026-08-04: application note on low-perfusion (foot) sensing [4]
  - 2026: internship posts on sensor signal robustness (motion artefacts) [8]
  - New CTO (David Ro***s) in role for under ~200 days per Apollo (date unverified) [5]
- **HubSpot company ID:** 353647414997 (https://app.hubspot.com/contacts/247517534/record/0-2/353647414997)
- **HubSpot contact IDs:** Leonard Moonen 572285270740 · Liselotte Stolk 572282987205 (no emails; CTO not created, surname masked)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Leonard Moonen (**primary**) | Founder & CEO | unverified | Technical founder; former Philips graduate intern on wearables/smartwatches; Eurostars #1 ranking [6] | 253927116 | 66f3c1e72a4d3800019c66d8 (has email) |
| David Ro*** (surname masked) | CTO | unverified | New in role per Apollo [5] | not found (2026-10-19) | 54eafd1974686931e2c78605 (has email) |
| Liselotte Stolk | Co-founder & COO | unverified | [3][5] | not checked | 62c7f72b05268a0001a2cfa0 (has email) |

## Why now (triggers)
- **EVKit introduced 2026-08-19, launch at MEDICA 2026 (16–19 Nov)** [1][4]: moving from a lab sensor to a kit that OEMs evaluate.
- New CTO within the last ~6 months (Apollo tenure filter; unverified date) [5].

## Engineering signals
- OEMs evaluating a sensor kit expect reference firmware, a BLE data path, a companion app/SDK and documentation; the team is
  photonics- and signal-heavy with one embedded engineer visible [5].
- Motion-artefact work (internship posts) and low-perfusion notes show the algorithm side is active [4][8].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Leonard Moonen | Founder & CEO | https://www.linkedin.com/in/leonard-moonen (Saleshandy) | **Primary.** Saleshandy 253927116; Apollo has email. **Email: leonard@praxasense.com** (Saleshandy, valid, 2026-10-19, request 6ad60003c2476b6a5cb7c3f1; HubSpot contact updated). **Batch:** CF · batch 2026-10-19 17:03 · Europe · 1 lead (sequence 9pa8ZvvOwy, inactive, ready to activate) |
| David Ro*** | CTO | unverified | Alternative; surname masked; not in Saleshandy |
| Liselotte Stolk | Co-founder & COO | unverified | Alternative |

## Best angle
**Service line:** embedded firmware + BLE companion apps for medical wearables (primary row: healthcare firmware/hardware) ·
**Case study:** BLE smart glucometer (firmware + Android/iOS apps, US healthcare org) · **Blog:**
`medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** With the EVKit going to OEMs at MEDICA, the bottleneck shifts from optics to everything around it: low-power
firmware, a reliable BLE streaming path, a reference app/SDK, and later a module design an OEM can drop into a watch or patch.
A small team can buy that capacity without hiring, keeping IP.

## Risks / disqualifiers
- Very small (~14) and grant/seed funded: budget may be tight.
- They may already have a design partner (CSEM is a Eurostars partner).
- EU recipient: opt-out line needed.

## Sources
1. https://www.praxasense.com/ (read 2026-10-19)
2. https://talents.yesdelft.com/careers/internship-sensor-signal-robustness-engineer (ALIS description)
3. https://dcd.tudelft.nl/nl/bedrijven/praxa-sense/ and https://www.medicaldelta.nl/en/news/praxa-sense-wins-the-zuid-holland-regional-round-of-the-national-healthcare-innovation-award
4. https://www.praxasense.com/news (read 2026-10-19)
5. Apollo people search, domain praxasense.com (2026-10-19)
6. Saleshandy Lead Finder, Leonard Moonen (2026-10-19)
7. https://bouncewatch.com/company/praxa-sense (13 employees, third-party, unverified)
8. https://magnet.me/nl-NL/vacature/1070197/internship-opportunity--sensor-signal-robustness-engineer

---
**Summary:** Fit A (EVKit for OEMs, datasheet 2026-08-19, MEDICA launch in November). Angle: reference firmware, BLE data
path and companion app around the sensor. Next step: CEO reviews the draft to the founder-CEO
(`drafts/email/2026-10-19-praxa-sense.md`).
