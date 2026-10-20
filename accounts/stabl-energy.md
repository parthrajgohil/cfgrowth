# STABL Energy GmbH  ·  Fit: A  ·  Researched: 2026-10-16

## Snapshot
- **What they make:** commercial and industrial battery storage systems built on a patented modular multilevel inverter
  that controls each battery module individually and replaces the central inverter and the conventional BMS. Works with
  first-life and second-life (used EV) batteries, mixed chemistries and ageing states [1][2].
- **HQ / region:** Munich, Germany; spin-off of a university project (three academic institutions) [2]. Entered Austria
  in 2026-07 [3].
- **Size:** "over 80" employees per its own site [2].
- **Funding:** EUR 15M round in 2023-08 (Nordic Alpha Partners, EIC Fund, UVC Partners, Energie 360°) [4]; EUR 4.5M seed
  2021-10 [5]. Not for use in outreach.
- **Website:** https://stabl.com

## Lead info
- **Website:** https://stabl.com · **News:** https://stabl.com/en/company/press/ · **Careers:** https://stabl-energy-gmbh.jobs.personio.de/
- **LinkedIn:** https://www.linkedin.com/company/stablenergy [2] · **X/Twitter:** not found
- **HQ:** Munich, DE · **Founded:** 2019 (per third-party profile, unverified) · **Employees:** 80+ [2]
- **Raised:** EUR 15M (2023-08, led by Nordic Alpha Partners) after a EUR 4.5M seed (2021-10) [4][5]
- **What they make / tech:** power-electronics battery storage; module-level inverter/BMS firmware; Embedded C, RTOS,
  SPI/UART/CAN per the job post [1][6]; MCU family not named
- **Recent news:**
  - 2026-09-23: 50 MWh of storage in operation, 100 MWh more in planning; plans to "enter additional product categories" [1]
  - 2026-07-20: market entry in Austria, seven systems (13.7 MWh) at Elektrowerk Schöder [3]
  - 2026-03: storage installation at Mantos International Food with Maxxsolar [1]
  - Open roles now: **Firmware Engineer (m/f/d)**, **Systems Engineer (m/f/d)**, Certification Lead (BESS, Power
    Electronics & Digital Systems), Technical Sourcing Manager (BESS hardware) [6][7]
- **HubSpot company ID:** 352965187266 (https://app.hubspot.com/contacts/247517534/record/0-2/352965187266)
- **HubSpot contact IDs:** Julian Schneider 570756212426 · Nam Truong 570717460180 (no emails; Gregor Sc***t not created, surname masked)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Julian Schneider (**primary**) | Director of Engineering | unverified | "Senior engineering leader with a background in power electronics, embedded systems" (Saleshandy summary) [8] | 292440408 | 689d97602b48d30001b3b225 (has email) |
| Gregor Sc***t | Head of Engineering | unverified | surname masked [9] | not checked | 5f530a251cbb1300010a9702 (has email) |
| Dr. Nam Truong | CEO & co-founder | unverified | quoted on the 50 MWh milestone [1] | not checked | 60ca92199568f40001e3bb13 (has email) |

## Why now (triggers)
- **Open Firmware Engineer and Systems Engineer roles** in Munich, listed 2026-10-16 [6][7]. The firmware role covers
  power-electronics firmware, quality, CI and release processes, and mentoring juniors.
- **Growth:** 50 MWh milestone (2026-09-23) and Austria entry (2026-07-20); stated plan to enter additional product
  categories [1][3].

## Engineering signals
- Firmware is the core of the product (module-level control replaces the central inverter and BMS) [2].
- Job post asks for someone to build the firmware "ecosystem" (build infrastructure, testing pipelines, release
  processes): a sign the firmware process is still being formalised [6].
- Certification Lead role (BESS, power electronics, digital systems) points to a certification push [7].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Julian Schneider | Director of Engineering | unverified | **Primary.** In Saleshandy (292440408) and Apollo (has email) |
| Gregor Sc***t | Head of Engineering | unverified | Alternative; surname masked in Apollo |
| Nam Truong | CEO & co-founder | unverified | Alternative |

## Best angle
**Service line:** embedded firmware + hardware for power electronics / BMS (primary row: industrial IoT firmware and
hardware/BMS) · **Case study:** CNC drilling machine automation (European industrial automation co.) · **Blog:**
`design-custom-battery-management-system`

**Hypothesis:** STABL is scaling installs and adding product categories while hiring a firmware engineer to put
structure (CI, test, releases) around module-level control firmware. A partner that can take a defined firmware
package or set up HIL/CI around it, with full source and IP handed over, relieves the seat while it's open.

## Risks / disqualifiers
- In-house power-electronics and embedded team exists (an Embedded Software Engineer is visible in Apollo) [9].
- Safety-critical energy product: certification knowledge matters.
- German company: EU email rules (opt-out line).

## Sources
1. https://stabl.com/en/press/milestone-50-mwh-of-installed-storage-capacity-in-operation-2/ (2026-09-23)
2. https://stabl.com/en/company/ (read 2026-10-16)
3. https://stabl.com/en/press/market-entry-in-austria-first-battery-storage-project-at-elektrowerk-schoeder/ (2026-07-20, via search)
4. https://stabl.com/en/press/stabl-funding-growth-battery-storage/ (2023-08-09)
5. https://www.startbase.com/news/45-millionen-euro-fuer-stabl-energy/ (2021-10)
6. https://stabl-energy-gmbh.jobs.personio.de/job/2821964 (Firmware Engineer, read 2026-10-16)
7. https://stabl-energy-gmbh.jobs.personio.de/ (job list incl. Systems Engineer 2821893, read 2026-10-16)
8. Saleshandy Lead Finder (2026-10-16)
9. Apollo people search, domain stabl.com (2026-10-16)

---
**Summary:** Fit A (open firmware + systems roles, 50 MWh milestone 2026-09-23). Angle: power-electronics/BMS
firmware capacity and CI/HIL setup. Next step: CEO reviews the draft to the Director of Engineering
(`drafts/email/2026-10-16-stabl-energy.md`).
