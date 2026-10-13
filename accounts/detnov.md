# Detnov Security S.L.  ·  Fit: B  ·  Researched: 2026-10-12

## Snapshot
- **What they make:** fire detection and extinguishing systems: analogue and conventional control panels (**Vesta Next
  Generation**), 300 Series detectors, 600 Series sirens/beacons, call points, aspiration (ASD-2000), flame, linear heat,
  thermography and gas detection, aerosol/gas extinguishing (N2GEN nitrogen generator) [1][2].
- **Connected:** **Detnov Cloud** remote management built into the panels (element status, spare-part requests,
  commissioning and maintenance), which Detnov "plans to extend with new services" [2].
- **HQ / region:** Spain (engineering staff in Barcelona/Catalonia; exact HQ address unverified) [4].
- **Size:** unverified; 61 people in Apollo [4].
- **Funding:** private; none known.
- **Website:** https://www.detnov.com

## Lead info
- **Website:** https://www.detnov.com · **News:** trade press (Interempresas, IFEMA) · **Careers:** unverified
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Spain (Barcelona area, unverified) · **Founded:** unverified · **Employees:** unverified
- **What they make / tech:** analogue addressable fire panels with Loop+ and Power Link, touchscreen, map management,
  live imagery; Detnov Cloud [1][2]
- **Recent news:**
  - 2026-04-09: Interempresas on Detnov's connected solutions at SICUR (Vesta NG, Detnov Cloud) [2]
  - 2026-03-13: IFEMA post-show review; SICUR 2026 ran 24–27 Feb 2026 [1]
  - 2026: exhibited at Interschutz (Hannover) and Intersec (Dubai) [3]
- **HubSpot company ID:** 351774939884 (https://app.hubspot.com/contacts/247517534/record/0-2/351774939884)
- **HubSpot contact IDs:** David García 567887428284 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| David García (**primary**) | Head Senior Firmware Engineer | unverified | Barcelona; ~20 years' experience | **Lead ID 498926400** | 615074ff80f32500017fa867 (has email) |
| Hector Va***a | General Manager | unverified | Saleshandy match lists him under another company | not usable | 6513a9e1a756580001234dee (has email) |
| Edgar Lo***z | Software Team Lead | unverified | | not searched | 63f36424744ed30001a3e5d5 |

## Why now (triggers)
- **B:** product launch Feb 2026 (~7.5 months ago) and the stated plan to add Detnov Cloud services [1][2]. No dated
  trigger in the last 6 months.

## Engineering signals
- In-house firmware team (head, R&D firmware engineers, junior hardware engineer, software team lead) [4].
- Every cloud service on a fire panel touches certified firmware (EN 54; our inference).

## Best angle
**Service line:** Embedded firmware + cloud connectivity for industrial/building devices (primary row: firmware,
industrial IoT) · **Case study:** Access control with real-time monitoring (/case-study/access-control-system) ·
**Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** The Vesta NG panels moved Detnov into connected services. Building out Detnov Cloud while keeping
panel firmware certified stretches a small firmware team. We add capacity on the device-to-cloud link (MQTT/TLS/OTA)
and firmware, with full IP transfer.

## Risks / disqualifiers
- Older trigger; buyer is a team lead, not an executive.
- Fire-safety certification may make them cautious about outside firmware work.

## Sources
1. https://www.ifema.es/en/sicur/news/detnov-balance-sheet-sicur-2026 (2026-03-13)
2. https://www.interempresas.net/Seguridad/627932-Detnov-presenta-SICUR-soluciones-conectadas-reforzar-gestion-proteccion-contra-incendios.html (2026-04-09)
3. https://intersec.ae.messefrankfurt.com/dubai/en/exhibitor-search/exhibitor-search.detail.html/detnov-security-sl.html
4. Apollo people search (domain detnov.com) and Saleshandy Lead Finder (2026-10-12)

---
**Summary:** Fit B. Angle: firmware + cloud capacity for Detnov Cloud services on Vesta NG panels. Next step: CEO
reviews the draft to David García (`drafts/email/2026-10-12-detnov.md`).
