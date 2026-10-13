# Sonitor Technologies  ·  Fit: B  ·  Researched: 2026-10-13

## Snapshot
- **What they make:** real-time location systems (RTLS) for hospitals: **SonitorONE** platform (launched HIMSS 2024)
  combining ultrasound, Wi-Fi and low-frequency radio positioning with tags and room sensors; staff-safety app; workflow
  software from the 2025 Tagnos merger [1][2][3].
- **HQ / region:** Drammensveien 288, Oslo, Norway (engineering) [4]; large US customer base. Founded in Oslo, 1997 [4].
- **Size:** unverified; 22 leaders/managers in Apollo [6]; likely ~100–200 after the Tagnos merger.
- **Ownership:** merged with Tagnos (healthcare workflow software), 2025-08 [2].
- **Website:** https://sonitor.com

## Lead info
- **Website:** https://sonitor.com · **Newsroom:** https://sonitor.com/newsroom/ · **Careers:** via FINN / NAV
  (Norway)
- **LinkedIn:** unverified · **X/Twitter:** unverified
- **HQ:** Oslo, Norway · **Founded:** 1997 · **Employees:** unverified
- **Funding:** unverified
- **What they make / tech:** their own firmware stack, per the March 2025 Embedded Firmware Developer ad: C, **Zephyr
  RTOS**, **ST and Nordic** MCUs, **BLE**, **secure OTA, bootloaders**, power management, sensor drivers, Python test
  automation, CI/CD [4].
- **Recent news:**
  - 2026-10-12: two commercial leaders hired [1]
  - 2026-05-19: SonitorONE joins Rauland's VIP program (nurse-call integration) [1]
  - 2026-03-09: staff safety adds AstraNav M-GPS geomagnetic positioning [1]
  - 2026-02-04: Best in KLAS for RTLS, second time [1]
  - 2025-12-16: SonitorONE platform expansion [1]
- **HubSpot company ID:** 351887930045 (https://app.hubspot.com/contacts/247517534/record/0-2/351887930045)
- **HubSpot contact IDs:** Maaike Taklo 568305770174 (no email; CTO not created, surname masked)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Maaike Taklo (**primary**) | SVP Engineering | unverified | hiring contact on the firmware ad [4] | not found (2 searches; one timed out) | 66f13347396f6d0001440e96 (has email) |
| Arne Oy***n (surname masked) | Chief Technology Officer | unverified | | not found | 6704ebeda8396200015f5a47 (has email) |

## Why now (triggers)
- No dated hardware trigger in the last 6 months. Weaker signals: Embedded Firmware Developer (Zephyr, Nordic/ST, BLE,
  secure OTA) recruited **2025-03** (closed) [4]; growing integration footprint (Rauland 2026-05, AstraNav 2026-03) and
  KLAS 2026-02 [1]. Hence **B**.

## Engineering signals
- Exact overlap with our stack: Zephyr, nRF/STM32, BLE, secure boot/OTA, low power [4].
- Tag and sensor fleets in hospitals live on battery life and OTA reliability.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Maaike Taklo | SVP Engineering | unverified | **Primary.** Apollo has email; not in Saleshandy |
| Arne Oy***n | CTO | unverified | Alternative; surname masked |

## Best angle
**Service line:** Embedded firmware (primary row: healthcare) · **Case study:** access control with real-time
monitoring (/case-study/access-control-system) · **Blog:** `design-ble-devices-for-crowded-rf-environments`
(hospitals are crowded 2.4 GHz environments)

**Hypothesis:** A small Oslo firmware team carries Zephyr firmware for tags, room sensors and gateways while the
platform grows through integrations. Extra Zephyr/nRF hands for a new tag variant, power work or OTA hardening let
them ship without growing headcount.

## Risks / disqualifiers
- Has an in-house firmware team; pitch is capacity, not capability.
- No recent hardware trigger; size and funding unverified.

## Sources
1. https://sonitor.com/newsroom/ (read 2026-10-13)
2. https://www.cbinsights.com/company/sonitor-technologies and web search 2026-10-13 (Tagnos merger 2025-08)
3. https://www.businesswire.com/news/home/20240307594717/en/ (SonitorONE at HIMSS 2024)
4. https://finn.no/397808805 (Embedded Firmware Developer, last updated 2025-03-26, closed; contact Maaike Taklo, SVP Engineering)
5. https://arbeidsplassen.nav.no/stillinger/stilling/5ca9cbe1-0e19-499e-a0a4-f6f3e6936bcc (search snippet; page 404)
6. Apollo people search (domain sonitor.com) and Saleshandy Lead Finder (2026-10-13)

---
**Summary:** Fit B. Angle: Zephyr/nRF/BLE firmware capacity for hospital RTLS tags and sensors. Next step: CEO reviews
the draft to Maaike Taklo (`drafts/email/2026-10-13-sonitor.md`).
