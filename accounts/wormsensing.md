# Wormsensing  ·  Fit: A  ·  Researched: 2026-11-16

## Snapshot
Dragonfly® piezoelectric strain/vibration sensors (Passive, IEPE and IO variants), industrial acquisition hardware that
turns the signal into KPIs, and a monitoring platform with an AI analytics engine, for predictive maintenance, process
and quality control (gearboxes, ball screws, spindles, winding systems) · Seyssinet-Pariset (Grenoble), France ·
15 people in Apollo (no official headcount found) · founded 2020, CEA-Leti spin-off · seed EUR 3.5M (2022-10), Series A
EUR 9.5M (2026-10-27) · https://www.wormsensing.com

## Lead info
- **Website:** https://www.wormsensing.com · **News:** https://www.wormsensing.com/news · **Careers:** https://www.wormsensing.com/careers · **LinkedIn:** https://www.linkedin.com/company/wormsensing · **X:** not found (YouTube @wormsensing1472)
- **HQ:** 2 rue des Murailles, 38170 Seyssinet-Pariset, France · **Founded:** 2020 (founders incubated at CEA-Leti 2018–2020) · **Size:** 15 people in Apollo (unverified as a total)
- **Funding:** seed EUR 3.5M led by Innovacom with KBC Focus Fund and CEA Investissement (2022-10-17); Series A EUR 9.5M led by Orano Venture Fund (Supernova Invest), with French Tech Seed (Bpifrance), Fonds Régional Avenir Industrie AURA (UI Investissement) and existing investors (2026-10-27). Total ~EUR 13M. (One aggregator says EUR 10.6M for the Series A: unverified.)
- **What they make / tech:** Dragonfly piezo film sensors from CEA-Leti research (45 patents incl. 20 CEA, per press), SMA coaxial output to any DAQ (DirectIndustry listing); own "industrial-grade acquisition hardware"; monitoring platform with AI analytics; Hyperion production line in Grenoble, capacity up to 2 million sensors a year (mass production since 2024-01). MCU/RTOS/radio of the acquisition unit: not public.
- **Recent news:**
  - 2026-10-27: Series A to broaden the monitoring offering, move into digital services, simplify integration into industrial equipment, and extend to aerospace, robotics and energy (https://www.wormsensing.com/news/wormsensing-raises-9-5-million-series-a)
  - 2026: BIMU 2026 exhibitor listing (https://www.bimu.it/?p=40205)
  - Open internship "Vibration sensing in robotics" (Minalogic; undated) (https://www.minalogic.com/offres-emploi/vibration-sensing-in-robotics/)
- **HubSpot:** see the line under Buyers

## Why now (triggers)
- **A:** Series A closed 2026-10-27 (company release). The stated plan is the trigger: "broadening our monitoring offering",
  digital services and "simplifying integration into industrial equipment", plus new markets (robotics, energy,
  aerospace). That is acquisition electronics, edge firmware and connectivity work, not sensor-film work.
  (https://www.wormsensing.com/news/wormsensing-raises-9-5-million-series-a)

## Engineering signals
- Apollo shows 15 people: CEO, Head of Applications, Head of Industrial Operation, process/QHSE/supply-chain staff, an
  Industrial Software Architect, application and field engineers, a test & validation technician, one robotics/deep
  learning R&D person. **No electronics, embedded or firmware engineer visible.**
- The sensor ships with an SMA coax lead to third-party DAQs today; making it "easy to integrate into equipment" points
  to smart variants (the "IO" line), compact acquisition modules and an edge-to-cloud path.
- No embedded job post found (search 2026-11-16); only a robotics internship.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Jean-Sébastien Moulet (**primary**) | CEO & Co-founder (board member) | LinkedIn URL not found | 217487821 | 5fd7b8f5f2c0fa00019272f4 (has email) | CEA-Leti researcher turned founder; quoted in the Series A release ("we are now ready to scale"). **Email:** js.moulet@wormsensing.com (Saleshandy `valid`, reveal request 6afaea0d3e7dea9cc46ac0f6, 2026-11-16). LinkedIn (from reveal): https://www.linkedin.com/in/jean-sebastien-moulet-549b0030. **Saleshandy batch:** "CF · batch 2026-11-16 17:03 · Europe · 3 leads", `GlPYgq9xzV`, built inactive 2026-11-16 |
| Sylvestre Le***u | Head of Applications | not found | not checked | 66f7e37feee1360001a58449 (has email) | **Alternative**, surname masked; owns customer integrations |

HubSpot: company [366875077335](https://app.hubspot.com/contacts/247517534/record/0-2/366875077335) · contact Jean-Sébastien Moulet 595131818742 · notes 423001341637 (research), 423001341638 (draft). Head of Applications not created (surname masked).

## Best angle
Service line: Embedded hardware + firmware for an industrial acquisition/edge unit (primary row, industrial IoT) ·
Case study: CNC drilling machine automation (European industrial automation co.) · Blog: `handle-mqtt-connection-loss`.
Hypothesis: a sensor-physics and manufacturing team now has to ship the box around the sensor: a low-noise analog
front-end, sampling and edge KPIs on an MCU, a fieldbus or wireless link into machines (IO-Link, Modbus, MQTT), and
OTA updates. With no visible embedded engineers, we can build or co-build that acquisition unit and its firmware under
NDA with full IP handed over, while they keep the sensor and analytics.

## Risks / disqualifiers
- CEA-Leti roots: they may lean on CEA for electronics, or already have a design partner (not found).
- The acquisition hardware exists already; who designed it is unknown. Apollo may miss engineers.
- Orano (nuclear) is lead investor; no defence or export-control signals found in the product or markets.
- Previously screened out (2026-11-03) as a "sensor component maker"; re-graded today because the Series A plan moves
  them into monitoring systems.

## Sources
- https://www.wormsensing.com (read 2026-11-16: products, acquisition hardware, platform, address, links)
- https://www.wormsensing.com/news/wormsensing-raises-9-5-million-series-a (read 2026-11-16; dated 2026-10-27)
- https://innovacom.com/2022/10/17/innovacom-invests-in-vibration-sensor-specialist-wormsensing/?lang=en (seed, search result)
- https://www.lejournaldesentreprises.com/article/la-start-up-wormsensing-leve-35-millions-deuros-2048089 (founding, search result)
- https://www.directindustry.com/prod/wormsensing/product-4606401-2753086.html (SMA output, search result)
- https://www.bimu.it/?p=40205 (mass production since 2024-01, search result)
- Apollo people search (domain wormsensing.com, 15 people) · Saleshandy Lead Finder (1 search)
- Lead source: web search for industrial IoT sensor funding (2026-10)

**Summary:** Fit A · embedded hardware + firmware for the acquisition/edge unit behind Dragonfly · next step: CEO reviews
the draft to CEO Jean-Sébastien Moulet.
