# NOXON GmbH  ·  Fit: B  ·  Researched: 2026-10-14

## Snapshot
- **What they make:** **OCIAN**, a non-invasive "muscle-computer interface": a compact skin-worn unit that measures
  **high-density myoelectric (EMG) signals** and applies **neuromuscular electrical stimulation (NMES)** in a closed
  loop, connected to the **OCIAN Hub** cloud [1][2]. Built into tapes, patches and orthopaedic aids [2].
- **Clinical:** pilots with University Hospital Würzburg and N-Squared Lab, e.g. tremor reduction in Parkinson's [2].
- **HQ / region:** Munich, Germany (Agnes-Pockels-Bogen 1) [3]. Founded 2022 as a spin-off of three universities [2][4].
- **Size:** 11–50 employees [4]; ~8 people visible in Apollo [5].
- **Funding:** multi-million-euro **seed round** led by High-Tech Gründerfonds and Bayern Kapital, with Auxxo
  (announced **2026-03-02**), for clinical validation, certification and launch of first therapy modules [2].
- **Website:** https://www.noxon.io

## Lead info
- **Website:** https://www.noxon.io · **News:** none on site · **Careers:** https://www.noxon.io/career/ (jobs on
  join.com)
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Munich · **Founded:** 2022 · **Employees:** 11–50 [4]
- **Funding:** seed (undisclosed), HTGF + Bayern Kapital lead, 2026-03-02 [2]
- **What they make / tech:** HD-EMG + NMES wearable; battery-powered PCBs in Altium; embedded C firmware; OCIAN Hub
  cloud; Flutter apps [1][4][6]
- **Recent news / signals:**
  - Open now: **Front-End Software Engineer (Flutter)**: cross-platform apps, backend APIs and **connected-device
    workflows**, debugging across app state, backend and device integration [6] (posting date unknown)
  - 6+ months ago (closed): Electrical Engineer, PCB Design for wearables (Altium, battery-powered, EMC, DFM/DFT) [4];
    Firmware Engineer (embedded C for medical devices, sensing pipelines, device communication, power optimisation) [7]
  - 2026-03-02: seed round [2]
- **HubSpot company ID:** 352173946613 (https://app.hubspot.com/contacts/247517534/record/0-2/352173946613)
- **HubSpot contact IDs:** Marius Neugschwender 569213107933 (no email); masked names not created
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Marius Neugschwender (**primary**) | CTO | unverified | — | **Lead ID 480616484** | 6127ef06b153680001f5d7fd (has email) |
| Jeremy Sn***n (masked) | Head of Hardware | unverified | — | not found | 60ce5f22dd854a000106cee6 (has email) |
| Maria Neugschwender | Co-founder | unverified | named founder [8] | not checked | 62d67e9e9a98760001d6760e (has email) |

## Why now (triggers)
- Open Flutter role to connect apps with the device (date unknown, still listed 2026-10-14) [6].
- Seed round 2026-03-02 (7 months ago, just outside the 6-month window) aimed at certification and launch [2].
- Firmware and PCB roles were open earlier in 2026 and are now closed: likely filled, so the team is small and new.

## Engineering signals
- Small in-house hardware team (Head of Hardware, founding engineer) [5]; firmware and PCB were single hires [4][7].
- Medical certification ahead (design controls, traceability mentioned in posts) [4].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Marius Neugschwender | CTO | unverified | **Primary.** Saleshandy 480616484; Apollo has email |
| Jeremy Sn***n | Head of Hardware | unverified | Apollo only, surname masked |

## Best angle
**Service line:** medical wearable firmware + companion app (device-to-app layer), hardware support for
certification · **Case study:** BLE smart glucometer (firmware + Android/iOS apps, US healthcare org) ·
**Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** Dense EMG data plus stimulation control over a wireless link, with apps being built now, makes the
device-to-app layer the bottleneck before certification. We can add firmware and app capacity next to their new hires.

## Risks / disqualifiers
- Radio type (BLE or other) unverified; the email doesn't name it.
- Seed-stage budget; trigger dates are slightly old (B).

## Sources
1. https://www.noxon.io (read 2026-10-14)
2. https://tech.eu/2026/03/02/noxon-closes-seed-funding-round-to-advance-muscle-computer-interface-technology/ (2026-03-02); https://www.htgf.de/en/noxon-seed-funding-round/
3. KIT career portal company directory (search result, 2026-10-14)
4. https://startupjobs.htgf.de/companies/noxon-gmbh/jobs/74626479-electrical-engineer-pcb-design-wearable-devices-full-time-munich-germany ("posted 6+ months ago", closed)
5. Apollo people search (2026-10-14)
6. https://join.com/companies/noxonio/16414522-front-end-software-engineer-flutter-full-time-munich-germany
7. https://hexjobs.com/praca/oferta/zewnetrzna/firmware-engineer-embedded-c-wearable-devices-full-time-munich-germany-66c1c553145b7b91fc862eb0a9f0715a (aggregator; arbeitnow copy now 410)
8. LinkedIn post cited in search results naming founders Maria Neugschwender and Ka Hou Leong (unverified)

---
**Summary:** Fit B. Angle: device-to-app firmware and companion-app capacity for OCIAN before certification. Next
step: CEO reviews the draft to Marius Neugschwender (`drafts/email/2026-10-14-noxon.md`).
