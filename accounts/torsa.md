# TORSA  ·  Fit: A  ·  Researched: 2026-10-29

## Snapshot
- **What they make:** TORSA designs and manufactures technology for heavy industry (mining, civil works), logistics,
  pharma and agri-food [1]. Lead product: **Collision Management System (CMS)** for open-pit mining (shovels, haul
  trucks, light vehicles) that detects moving and static objects with several sensor types, including high-accuracy GPS,
  and brakes or slows the machine itself (EMESRT Level 9 intervention) [2][3]. Other lines: environmental monitoring
  (e.g. CO2 in wineries, GxP monitoring, Borea for farming), Torsa Logistic (order preparation, traceability) [4].
- **HQ / region:** Málaga Tech Park, Spain; offices in Peru, Chile and South Africa (site also mentions Australia, UK,
  Mexico) [1].
- **Size:** unverified. Apollo lists 83 people records [6].
- **Stage / funding:** Ferreycorp's tech arm Vixora bought 20% for USD 2M (2024-07) and distributes TORSA in Peru and
  Chile; CMS runs on 500+ machines in Peru (per that 2024 release) [5]. Total raised unverified.
- **Website:** https://torsaglobal.com

## Lead info
- **Website:** https://torsaglobal.com · **News:** https://torsaglobal.com/en/news/ · **Careers:**
  https://torsaglobal.com/en/join-our-team/ · **LinkedIn:** https://www.linkedin.com/company/torsaglobal · **X:** not found
- **HQ:** Málaga, Spain · **Founded:** unverified · **Employees:** unverified (83 Apollo records) · **Raised:** USD 2M for
  20% from Vixora/Ferreycorp (2024-07); total unverified
- **What they make / tech:** CMS with high-accuracy GPS and multi-sensor detection, automatic braking, ISO/TS 21815-2
  machine interface [2]; 3D LiDAR on the shovel system (Aptella / earlier search) [3]. Open embedded role names embedded
  Linux, STM32 and Texas Instruments platforms, C++ [7]. A firmware developer's profile mentions "embedded real-time
  fault-tolerant computer vision" [8].
- **Recent news (last 6 months):**
  - 2026-07-22: CMS passes University of Pretoria CxD TRL4 tests (EMESRT Level 9), "second company worldwide"; next:
    TRL7 and TRL9 tests and demonstrations in live mines [2]
  - ~2026-08: Aptella (distributor for Australia, NZ, SE Asia) covers the result [3]
  - Open now: C++ Developer for Embedded Systems (immediate start), C++ programmer intern, assembly workshop operator [7]
  - Earlier: PERUMIN 2025 talk (~2025-12) [4]
- **HubSpot company ID:** 357781060310 (https://app.hubspot.com/contacts/247517534/record/0-2/357781060310)
- **HubSpot contact IDs:** Francisco Javier Serrano Morales 580076368606 · Diego Rodríguez Riera 580112065268 · Juan Raúl
  Santana Moreno 580111788746 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Francisco Javier Serrano Morales (**primary**) | Chief Technology Officer | not found | Listed as CTO in Saleshandy and Apollo ("Francisco Mo***s") [6][8] | 287240241 | 54a7841d746869705a06913c (no email) |
| Diego Rodríguez Riera | Chief Software Engineer and Firmware Engineer | not found | Firmware/software developer, real-time fault-tolerant computer vision [8] | 473086811 | 60cbe3d9ea3439000108ba45 (has email) |
| Juan Raúl Santana Moreno | Director General / CEO, co-founder | not found | Named co-founder and CEO in the 2024 Vixora release [5] | 232668299 | 6863a2e53d20a90001a1f394 (has email) |

## Why now (triggers)
- **2026-07-22:** CMS passed EMESRT Level 9 / University of Pretoria TRL4 tests; TRL7 and TRL9 tests in live mines come
  next [2]. Within 6 months → **A**.
- **Open embedded role** (C++, embedded Linux, STM32, TI) with immediate start [7].

## Engineering signals
- In-house firmware/software lead plus C++ developers, an electronics technician and an assembly workshop [6][7][8]:
  they design and build their own hardware.
- Moving from TRL4 to TRL7/TRL9 means field hardening, logging and self-diagnostics on real machines across several
  countries (inference from [2]).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Francisco Javier Serrano Morales | CTO | not found | **Primary.** Saleshandy 287240241; Apollo no email |
| Diego Rodríguez Riera | Chief Software Engineer and Firmware Engineer | not found | Hands-on lead; Saleshandy 473086811; Apollo has email |
| Juan Raúl Santana Moreno | CEO | not found | Saleshandy 232668299; Apollo has email |

## Best angle
**Service line:** embedded firmware + hardware (primary row: industrial IoT, Europe) · **Case study:** CNC drilling
machine automation (European industrial automation co.) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** after the Level 9 pass, TORSA has to take the CMS through TRL7/TRL9 in live mines while supporting
hundreds of installed units in Latin America and Africa and running environmental and logistics product lines. The open
embedded C++ role shows the firmware team needs capacity. We can take defined blocks (a sensor or controller board
revision, gateway/telemetry firmware, OTA and logging, test rigs, BOM cost-down) so their team stays on detection and
braking logic.

## Risks / disqualifiers
- Mining safety, not defence. No defence ties found.
- Strong in-house know-how; pitch capacity, not expertise. We don't claim LiDAR or collision-avoidance experience.
- CTO's name is not on TORSA's site; the CEO name differs between sources (Apollo "Juan Mo***o" vs. Raúl Santana in the
  2024 release; Saleshandy reconciles them as Juan Raúl Santana Moreno).
- Spain (EU): opt-out line included.

## Sources
1. https://torsaglobal.com/en/about-us/ (2026-10-29)
2. https://torsaglobal.com/en/wp-json/wp/v2/posts/7141 (post dated 2026-07-22) · https://torsaglobal.com/en/mining/torsas-cms-successfully-passes-emesrt-level-9-intervention-testing-at-the-university-of-pretoria/
3. https://www.aptella.com/?p=156299 (undated, images 2026-08) · https://www.aptella.com/product/torsa-collision-avoidance-system/
4. https://torsaglobal.com/en/news/ (2026-10-29; dates inferred from image paths)
5. https://mineriaenergia.com/vixora-adquiere-participacion-en-torsa-empresa-tecnologica-experta-en-innovacion-minera/ (2024-07-10)
6. Apollo people search, domain torsaglobal.com and mining technology search (2026-10-29)
7. https://torsaglobal.com/en/join-our-team/ (2026-10-29)
8. Saleshandy Lead Finder, TORSA (2026-10-29)

---
**Summary:** Fit A (EMESRT Level 9 pass 2026-07-22, TRL7/TRL9 next, embedded C++ role open). Angle: firmware/hardware
capacity for an industrial safety device. Next step: CEO reviews the draft to the CTO.
