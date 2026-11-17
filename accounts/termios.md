# termios  ·  Fit: A  ·  Researched: 2026-11-09

## Snapshot
Battery-free smart radiator thermostats (termios Pro) with automatic hydraulic balancing for residential landlords,
plus gateway and cloud (Heating.AI) · Düsseldorf, Germany (2 locations) · 35+ employees · founded 2023 as a joint
venture of mantro (company builder), Oventrop (Sauerland family heating maker) and LEG Immobilien SE · funding not
disclosed · https://www.termios.de

## Lead info
- **Website:** https://www.termios.de · **News/magazine:** on the home page (articles dated 2025-10 to 2026-09) · **Careers:** https://www.termios.de/ueber-uns#offene-positionen → https://join.com/companies/termiosde
- **LinkedIn:** company page exists (logo in Saleshandy), URL unverified · **X:** none found
- **HQ:** Düsseldorf, Germany (job post); 2 locations (site) · **Founded:** 2023 (site) · **Size:** "35+ Mitarbeiter" (site); "35 people, growing" (job post); 26 people in Apollo
- **Funding:** not disclosed (JV of mantro, Oventrop, LEG Immobilien SE)
- **What they make / tech:** termios Pro thermostat: thermo-harvesting (charges its own cell from radiator/room temperature difference, 5+ years maintenance-free), LoRaWAN + 4G via gateway (max 2 per property), cloud with Heating.AI self-learning hydraulic balancing, end-to-end encryption, EU hosting. 30,000+ thermostats installed (site). Firmware: C on ARM Cortex-M (bare-metal and/or RTOS), LoRaWAN stack (Semtech SX127x/SX126x, ChirpStack nice-to-have), NXP MCUXpresso nice-to-have, OTA, HIL test infrastructure, RED/CRA compliance (job post).
- **Recent news (last 6 months):**
  - 2026-09-14: Firmware Engineer post published (Job ID 16894096), still listed on join.com on 2026-11-09 (https://join.com/companies/termiosde/16894096-firmware-engineer). Earlier IDs 16705893, 16769323, 16834600 for the same title suggest it has been re-posted several times.
  - 2026-09-21: article on the rollout process for thermostat replacement in existing buildings (termios.de)
  - 2026-07-29: article on BEG funding reform (new conditions from 2026-07-21) (termios.de)
  - 2026-07-07: article on digital hydraulic balancing citing an independent study (termios.de)
- **HubSpot:** company [362502771421](https://app.hubspot.com/contacts/247517534/record/0-2/362502771421) · contacts Bastian Breimhorst 588817379014, Matthias Kramer 588782641850 · notes 418129565374 (research), 418108796660 (draft)

## Why now (triggers)
- **Firmware Engineer post, published 2026-09-14 and still open 2026-11-09** (https://join.com/companies/termiosde/16894096-firmware-engineer):
  "Develop and optimize thermostat firmware", "Implement and maintain the LoRaWAN communication stack", "Optimize low
  power use and energy harvesting", "Build OTA update mechanisms", "Build, operate, and extend hardware-in-the-loop test
  infrastructure", "Own the release process, Definition of Done, and RED/CRA compliance". "The firmware team is small —
  your work ships directly to devices in real apartments." Requires 5+ years embedded C. The same title has been posted
  under at least four job IDs, so it looks hard to fill.
- **EU Cyber Resilience Act / RED cybersecurity:** named in the post as an owned responsibility; the RED delegated act
  applies since 2025-08 and CRA reporting obligations start 2026-09 (general regulatory context, not company-specific;
  dates unverified in this run, so the email does not cite them).

## Engineering signals
- Small in-house embedded team: Senior Embedded Software Engineer, Embedded Systems Developer, Hardwareentwickler,
  Development Engineer in Apollo; Head of Hardware and Head of Software on the site.
- 30,000+ devices in the field: OTA safety, field monitoring and release discipline matter.
- One firmware hire is expected to cover the radio stack, power/harvesting, OTA, HIL, release and compliance.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Bastian Breimhorst (**primary**) | Head of Hardware | LinkedIn not found (unverified) | 728042091 | 6513a3349a827c00016ec0ac (has email) | Named Head of Hardware on termios.de/ueber-uns; Dortmund (Saleshandy) |
| Dr. Matthias Kramer | Managing Director Product | not found | not checked | not found in Apollo (Apollo lists Mirko Eb***s as CPO, 6109534099547b0001eaa3a2, has email; title conflict) | Named on termios.de/ueber-uns |
| Martin Böhme | Head of Software | not found | not checked | not checked | Named on termios.de/ueber-uns; likely owns cloud/app |

## Best angle
Service line: embedded firmware (low-power / battery-life engineering, OTA architecture, secure boot, HIL testing, CI/CD) ·
Case study: none matches exactly (we have no LoRaWAN case study; do not claim LoRaWAN) · Blog: none directly; use the
CLAUDE.md capability list.
They have one open firmware seat that covers far more than one person can (radio stack, harvesting power budget, OTA,
HIL, release and CRA compliance) on a fleet of 30,000+ devices. We can take defined packages off that list: an OTA and
secure-boot architecture review for CRA, HIL/CI test infrastructure, or power-budget work, with full source handed over.

## Risks / disqualifiers
- Partly owned by Oventrop and LEG: budget decisions may sit with the JV partners (unverified).
- They want an in-house hire (hybrid, 3 office days); outsourcing may not be on their mind.
- LoRaWAN is not in our credible-claims list; the pitch must stay on power, OTA, security, test.

## Sources
- https://join.com/companies/termiosde/16894096-firmware-engineer · https://join.com/companies/termiosde
- https://www.termios.de · https://www.termios.de/ueber-uns
- https://www.haustechnikdialog.de/News/30198/Feldtest-erfolgreich-abgeschlossen-termios-Pro-startet-ab-April-2025-in-den-Marktlaunch
- Apollo people search (domain termios.de, 26 people), Saleshandy Lead Finder

**Summary:** Fit A · firmware capacity for OTA/secure boot (CRA), HIL and low-power work on a 30,000-unit thermostat fleet ·
next step: CEO reviews the draft to Bastian Breimhorst (Head of Hardware).
