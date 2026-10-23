# aquaManager (i2s)  ·  Fit: A  ·  Researched: 2026-10-13

## Snapshot
- **What they make:** aquaculture farm-management platform (hatchery, grow-out, planning, inventory/traceability,
  mobile apps) plus **BlueIoT**, which "connects smart devices, cameras and AI tools to aquaManager" for oxygen,
  temperature and water quality, pellet detection and biomass estimation [1]. Used by producers in 60+ countries [1].
- **Hardware direction:** with the Ocean 14 Capital investment (Nov 2024) the company planned hardware automation and
  "small hardware components not currently available at an affordable price" [2]. A 2022 shrimp-hatchery deployment for
  Nueva Pescanova included an "IoT device infrastructure" [3].
- **HQ / region:** Greece. Sources say Athens [4]; both open jobs are at i2s in **Chania, Crete** [5]. Exact HQ unverified.
- **Size:** unverified; ~21 people visible in Apollo, mostly software, sales and ML [6].
- **Funding:** Ocean 14 Capital took a significant minority stake, 2024-11-27 (growth equity, amount undisclosed) [2].
- **Website:** https://www.aqua-manager.com

## Lead info
- **Website:** https://www.aqua-manager.com · **News:** none dated on site · **Careers:**
  https://apply.workable.com/aquamanager/ (also https://www.aqua-manager.com/company/#join-our-team)
- **LinkedIn:** https://www.linkedin.com/company/aquamanager/ · **X/Twitter:** not found
- **HQ:** Greece (Athens per [4]; R&D jobs in Chania, Crete) · **Founded:** 1997 per one source, 2000 per another
  (unverified) · **Employees:** unverified (~21 in Apollo)
- **Funding:** minority stake by Ocean 14 Capital (2024-11), amount undisclosed
- **What they make / tech:** software + IoT. The open Electronics Engineer post asks for firmware for
  **microcontroller-based measurement and valve-control systems**, IoT platform integration, C/C++, MicroPython,
  Arduino / Raspberry Pi, KiCad / EAGLE PCB layout, SMD/THT [5].
- **Recent news:**
  - 2026-08-07: Electronics Engineer (firmware + PCB for measurement and control) posted, still open 2026-10-13 [5]
  - 2024-11-27: Ocean 14 Capital minority stake; plan for hardware automation and low-cost hardware components [2]
- **HubSpot company ID:** 351781629631 (https://app.hubspot.com/contacts/247517534/record/0-2/351781629631)
- **HubSpot contact IDs:** Kostas Seferis 568304466619 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Kostas Seferis (**primary**) | Founder (runs the company) | unverified | founded aquaManager; still leads it [2] | **Lead ID 276163746** (decision maker) | 6202a9df706a9700012f9587 (has email) |

No CTO, R&D or hardware lead is visible in Apollo; the founder is the buyer.

## Why now (triggers)
- **Electronics Engineer** posted **2026-08-07**, still open (Workable API, read 2026-10-13): firmware for
  microcontroller-based **measurement and valve-control** systems feeding their IoT platform, plus PCB layout [5].
  For a software-first team this looks like their first in-house hardware hire.
- Stated plan (2024-11) to build hardware automation and low-cost hardware components [2].

## Engineering signals
- No embedded/hardware staff visible in Apollo; electronics role is a single hire covering firmware, PCB and production
  support [5][6].
- Tools named (Arduino, MicroPython, Raspberry Pi) suggest prototype-grade hardware today; production-grade design
  (low power, enclosure-ready PCB, OTA, field reliability in salt water) is the gap.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Kostas Seferis | Founder | unverified | **Primary.** Saleshandy 276163746; Apollo has email. **Email: kostas.seferis@aqua-manager.com** (Saleshandy `valid`, reveal request 6ad9f4aa60c94a870b7b3b9c, 2026-10-22; LinkedIn per reveal: https://www.linkedin.com/in/kostas-seferis). **Saleshandy:** batch `CF · batch 2026-10-22 17:03 · Europe · 5 leads`, sequence ID mDPQN7mnaR (inactive; the CEO activates) |

## Best angle
**Service line:** IoT hardware + firmware (Industrial IoT read broadly: aquaculture) · **Case study:** CNC drilling
machine automation for a European industrial company (Raspberry Pi, Arduino, Flask: same prototyping stack) ·
**Blog:** `handle-mqtt-connection-loss` (remote farms, cellular links)

**Hypothesis:** A software company moving into its own sensors and valve controllers, with one electronics hire. We can
take a prototype (Arduino / Raspberry Pi) to a production design: custom PCB, low-power firmware with OTA, connectivity
that survives remote cage sites, feeding BlueIoT. Full IP and design files stay with them.

## Risks / disqualifiers
- Size and HQ unverified; may be small (<50).
- Hardware ambitions might stay low-cost and minimal; budget unknown.
- Greek founder; email should be plain English, short.

## Sources
1. https://www.aqua-manager.com (read 2026-10-13)
2. https://thefishsite.com/articles/ocean-14-aims-to-take-aquamanager-to-the-next-level (2024-11-27)
3. https://seafoodnews.com/Story/1226042/aquaManager-Nueva-Pescanova-Partner-to-Digitalize-Shrimp-Hatcheries (2022-05-18)
4. Web search 2026-10-13 (Dealroom / company profiles: "Based in Athens, Greece")
5. https://apply.workable.com/aquamanager/jobs/view/583B1B46B2 and Workable API (published 2026-08-07, Chania)
6. Apollo people search (domain aqua-manager.com) and Saleshandy Lead Finder (2026-10-13)

---
**Summary:** Fit A. Angle: prototype-to-production hardware and firmware for aquaManager's own sensors and valve
controllers, alongside their first electronics hire. Next step: CEO reviews the draft to Kostas Seferis
(`drafts/email/2026-10-13-aquamanager.md`).
