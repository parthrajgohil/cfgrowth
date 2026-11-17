# TWK-ELEKTRONIK GmbH  ·  Fit: B  ·  Researched: 2026-11-12

## Snapshot
Family-run German maker of customer-specific position sensors for machine and plant engineering: rotary encoders,
MEMS inclinometers (incl. SIL2/PLd safety versions with CANopen Safety and PROFIsafe), inductive displacement
transducers and vibration sensors, also sold into agricultural machinery · Düsseldorf (HQ) with a development site in
Wedel near Hamburg · 51–200 employees ("over 150" in one post) · founded 1962, independent family company · https://www.twk.de

## Lead info
- **Website:** https://www.twk.de (returned 403 to our fetch) · **News:** not reachable · **Careers:** https://join.com/companies/twk · **LinkedIn:** not verified · **X:** not found
- **HQ:** Bismarckstraße 108, 40210 Düsseldorf (PROFIBUS product listing); development/test site Flerrentwiete 28, 22880 Wedel (job posts) · **Founded:** 1962 by Theo W. Kessler (50-year anniversary article, 2012) · **Size:** 51–200 (join.com), "over 150" (job listing via search)
- **Funding:** none; family-owned (job posts: "familiengeführt"). In 2012 Johannes W. Steinebach led the company and two of his sons joined management (https://www.industrial-production.de/wirtschaft---unternehmen/jubilaeum--50-jahre-twk-elektronik.htm); Apollo lists two CEOs, Felix St***h and Hannwelm St***h (surnames masked; likely Steinebach, unverified).
- **What they make / tech:** STM32 (ARM Cortex) firmware on FreeRTOS; bus interfaces CANopen, IO-Link, PROFINET, EtherCAT; functional-safety documentation (SIL, PLd); an existing in-house sensor software library; own SMD assembly and electronics production (production job posts). Products: NBN/NBT/NBA inclinometers (MEMS), encoders, displacement transducers (DirectIndustry, PROFIBUS listings).
- **Recent news (last 6 months):**
  - 2026-04-29: Entwicklungsingenieur/in Embedded Software (Wedel), still open (https://join.com/companies/twk/16909090-entwicklungsingenieur-in-im-bereich-embedded-software); an earlier posting of the same role exists (join.com 16271352)
  - 2026-04-29: Technische/r Projektleiter/in Hardware und Sensorik (Wedel), still open (https://join.com/companies/twk/16204167-technische-r-projektleiter-in-hardware-und-sensorik)
  - Also posted: EDA component librarian, electronics/mechatronics technicians, SMD production staff (join.com)
  - No dated product launch found for 2026 (PROFIsafe NBT/S3 TÜV certification listing is undated)
- **HubSpot:** see "HubSpot" line under Buyers

## Why now (triggers)
- **Embedded software engineer post open since 2026-04-29** (6+ months, and posted before that), plus a technical
  project lead for hardware and sensors (same date): steady embedded and project capacity gap. B (open roles, no fresh
  product event).

## Engineering signals
- In-house embedded team (a Senior Embedded Software Developer, development engineers, PCB designer, hardware test
  engineer in Apollo) led by a Head of Software & Technical Program Management. Customer-specific variants plus
  safety certification mean many small firmware projects running in parallel.
- Stack overlaps ours: STM32, FreeRTOS, C, Python test tooling, bus interfaces. Their safety buses (CANopen Safety,
  PROFIsafe) and SIL/PLd process are outside our listed claims.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Ankit Ag***l (**primary**, surname masked) | Head of Software & Technical Program Management | not found | not found | 67596ab6640ba6000125fd84 (has email) | Owns the embedded software team the open post sits in |
| Felix St***h (surname masked; likely Steinebach, unverified) | CEO | not found | not found | 64688b5c0a4d6d0001de502d (has email) | **Alternative**: family owner-manager |
| Hannwelm St***h (surname masked) | CEO | not found | not found | 5570833b7369643355a31800 (has email) | Second managing director |

Saleshandy has no one at TWK (three searches: Head of Software, MD/CEO; none found). Email reveal would have to come from Apollo.

HubSpot: company [364553280194](https://app.hubspot.com/contacts/247517534/record/0-2/364553280194) · contacts Ankit Ag***l 592190294771, Felix St***h 592179060433 · notes 420206359237 (research), 420206359238 (draft).

## Best angle
Service line: Embedded firmware (primary row, industrial IoT: sensors for machine builders) · Case study: CNC drilling
machine automation (HMI) for a European industrial automation company · Blog: `outsourcing-decision-for-device-driver-development`.
Hypothesis: a family sensor maker with many customer-specific variants has had an STM32/FreeRTOS firmware seat open
since April. Variant work, driver and bus-stack maintenance, and test automation pile up while the team does the
safety-critical core. We can take defined, non-safety slices (customer variants, drivers, HIL test rigs, CI) with
MISRA C and full source handed over, so their own engineers stay on SIL/PLd work.

## Risks / disqualifiers
- German-speaking, conservative family company; English cold email may land less well (draft is English; CEO may want German).
- Functional-safety work usually stays in-house; our offer must stay on non-safety slices.
- Buyer names are masked; no Saleshandy contacts; website blocked our fetch, so current management is unverified.
- No fresh product trigger (B).

## Sources
- https://join.com/companies/twk/16909090-entwicklungsingenieur-in-im-bereich-embedded-software (read 2026-11-12)
- https://join.com/companies/twk/16271352-entwicklungsingenieur-in-im-bereich-embedded-software (read 2026-11-12)
- https://join.com/companies/twk/16204167-technische-r-projektleiter-in-hardware-und-sensorik (read 2026-11-12)
- https://se.profibus.com/produkter/absolute-inclination-sensor-on-mems-technology-with-profinet-interface (via search)
- https://www.industrial-production.de/wirtschaft---unternehmen/jubilaeum--50-jahre-twk-elektronik.htm (via search, 2012)
- https://digital.agritechnica.com/newfront/exhibitor/twk-elektronik-gmbh (via search)
- Apollo people search (domain twk.de, 57 people) · Saleshandy Lead Finder (no matches)

**Summary:** Fit B · STM32/FreeRTOS firmware capacity for customer-specific sensor variants, around their safety core ·
next step: CEO reviews the draft to Head of Software Ankit Ag***l (Apollo email), with CEO Felix St***h as the alternative.
