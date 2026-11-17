# Ferri Srl  ·  Fit: A  ·  Researched: 2026-11-17

## Snapshot
Hydraulic reach mowers, central/offset mowers, agricultural and forestry mulchers, flail heads for excavators and
radio-controlled tool carriers (iCUT 3.40 / 3.60) for public and agricultural green maintenance · Tamara (Copparo),
Ferrara, Italy, with branches in France and the US · ~100 employees (company interview, 2025-03) · family-owned since
1844, six generations; no outside funding found · https://www.ferrisrl.it

## Lead info
- **Website:** https://www.ferrisrl.it · **News:** on the home page ("FERRI ad EIMA 2026", Agriumbria 2026, LAMMA 2026, Agritechnica 2025; undated cards) · **Careers:** not found · **LinkedIn:** https://www.linkedin.com/company/ferri-srl · **X:** not found (YouTube youtube.com/user/ferrisrl, Instagram ferri_srl)
- **HQ:** Via Corrado Govoni 30, 44034 Tamara (FE), Italy · **Founded:** 1844 · **Size:** ~100 employees, 72% of turnover from exports (Confindustria Emilia interview, 2025-03); an older press piece said 70 staff and EUR 15M turnover (undated). Apollo lists 27 people.
- **Funding:** none (family company). Not relevant to outreach.
- **What they make / tech:** tractor- and excavator-mounted mowers and mulchers; iCUT radio-controlled tool carriers; "Vision" reach mowers (TSI Vision Pro, TP 490 Vision; meaning of "Vision" not explained, likely cab visibility); robotic welding lines (ABB). Electronics content: radio control on iCUT, and now an **AI image-recognition safety camera on a mulcher** (EIMA 2026 Technical Innovation). Chips, cameras, compute and who designed the AI system: not public.
- **Recent news:**
  - 2026-09-30: EIMA 2026 Technical Innovation award (19 innovations) for a Ferri mulcher with an AI image-recognition camera that detects people in the work area, standing, kneeling or lying, even partly hidden by obstacles or vegetation (https://www.interempresas.net/agriservicios/664667-EIMA-2026-19-Innovaciones-Tecnicas-y-35-Evoluciones-Tecnicas.html)
  - 2026-11-10/14: exhibited at EIMA 2026, Bologna, Hall 36 Stand A/2 (https://www.eima.it/en/54/ferri-srl)
  - 2026: Agriumbria 2026 and LAMMA 2026 shows (https://www.ferrisrl.it, undated cards)
- **HubSpot:** see the line under Buyers

## Why now (triggers)
- **A:** EIMA 2026 Technical Innovation for the AI person-detection camera on a mulcher, announced 2026-09-30, shown at
  EIMA 2026-11-10/14. A safety feature that wins an award at the trade show is a feature customers will now ask for on
  the rest of the range (reach mowers, excavator heads, iCUT). Taking a prototype camera into series production is
  embedded vision hardware and firmware work.
  (https://www.interempresas.net/agriservicios/664667-EIMA-2026-19-Innovaciones-Tecnicas-y-35-Evoluciones-Tecnicas.html)

## Engineering signals
- Apollo shows 27 people: CEO, CFO, plant director, production and quality managers, a **Technical Office Manager**
  (Cosimo Fr***a), sales and export staff. **No electronics, embedded or software engineer visible.**
- The company site talks about "a technical team of designers from different fields", automated production lines and
  robotic welding: a strong mechanical/hydraulic company.
- Who built the AI camera system (in-house, a camera supplier such as ifm, or a partner) is unknown.
- A safety function that stops a mulcher when a person is detected has to interlock with the hydraulic control, which
  raises functional-safety, false-trigger and environmental (dust, vibration, sun) questions for production.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Mauro Magnanini (**primary**) | Amministratore Delegato (CEO) | LinkedIn URL not found | 54748751 | 54c230f9746869163972cc81 (has email) | Runs the company; in a ~100-person family firm the CEO decides on outside engineering partners |
| Cosimo Fr***a | Technical Office Manager | not found | not checked | 54c1c4017468697af73a4244 (has email) | **Alternative**, surname masked; owns product engineering. Not created in HubSpot |

HubSpot: company [368289905339](https://app.hubspot.com/contacts/247517534/record/0-2/368289905339) · contact Mauro Magnanini 598171580108 · notes 424126459600 (research), 424278813380 (draft). Technical Office Manager not created (surname masked).

## Best angle
Service line: Embedded hardware + firmware for an edge-AI camera on mobile machines, plus AI/ML (computer vision)
(primary row: hardware + firmware for industrial IoT, read broadly per CLAUDE.md; agriculture/municipal machinery) ·
Case study: PCB defect detection with computer vision; CNC drilling machine automation (European industrial
automation co.) · Blog: `computer-vision-for-manufacturing-quality-control`.
Hypothesis: a 180-year-old mechanical company has an award-winning AI safety camera and now has to put it on many
machines: a rugged camera + edge AI module that runs reliably in dust and vibration, a clean interlock with the
hydraulic controls, model updates in the field, and logs that prove the system worked. With no electronics team
visible, we can take the vision unit from prototype to production (hardware, firmware, model optimisation for the edge,
and a service/diagnostics app), under NDA with full IP handed over.

## Risks / disqualifiers
- The AI camera may come from a supplier (e.g. a camera or vision-system vendor) who already owns that work.
- Family company with mechanical DNA: may prefer local Italian partners; an Italian email may land better.
- Third Italian EIMA lead in two days (Cifarelli, Muzzi on 2026-11-16): different machine type, but the same source.
- No defence or export-control signals.

## Sources
- https://www.interempresas.net/agriservicios/664667-EIMA-2026-19-Innovaciones-Tecnicas-y-35-Evoluciones-Tecnicas.html (read 2026-11-17; dated 2026-09-30)
- https://www.eima.it/en/54/ferri-srl (read 2026-11-17: address, products, Hall 36)
- https://www.ferrisrl.it (read 2026-11-17: history since 1844, iCUT, branches in France/US, news cards, social links)
- https://www.confindustriaemilia.it/flex/cm/pages/ServeBLOB.php/L/EN/IDPagina/107511 (100 employees, 72% export; search result, 2025-03)
- https://new.abb.com/news/it/detail/123497/ferri-srl-180-anni-di-innovazione (robotic welding; search result)
- Apollo people search (domain ferrisrl.it, 27 people) · Saleshandy Lead Finder (1 search)
- Lead source: EIMA 2026 Technical Innovations list (carry-over from `candidate-pool.md`, 2026-11-16)

**Summary:** Fit A · edge-AI vision hardware + firmware to take the award-winning safety camera into production ·
next step: CEO reviews the draft to CEO Mauro Magnanini (an Italian version is an option).
