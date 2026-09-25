# Boldr  ·  Fit: A  ·  Researched: 2026-09-24

## Snapshot
- **What they make:** smart climate controls for homes. **Klima** is a smart thermostat
  for ductless mini-splits, window ACs and heat pumps. It controls the AC unit over IR,
  connects over 2.4 GHz Wi-Fi and Thread, is Matter-compatible, and works with Google
  Home, Alexa, Apple HomeKit and SmartThings. Powered over USB, with a companion app. [1]
  A second product, **Kelvin**, is also listed [2]. Products are in about 20,000 homes [2].
- **HQ / region:** London, UK [2][3]. The main market is North America, with US distribution
  partnerships with Source 1 (Bosch-owned) and Daikin [3].
- **Size:** unverified. At least three firmware engineers are listed on The Org [5].
- **Stage / funding:** $5M (€4.2M) pre-Series A announced 2026-08-24, led by Unconventional
  Ventures with Ada Ventures, Techstars and others [2][3]. $3.2M seed in 2025 [4].
- **Website:** https://shopboldr.com
- **HubSpot company ID:** 348671431414 (https://app.hubspot.com/contacts/247517534/record/0-2/348671431414)

## Why now (triggers)
- $5M pre-Series A, announced 2026-08-24 ([3], 2026-08-24).
- Use of funds: extend the technology **beyond ductless HVAC controls into central HVAC
  systems**, accelerate product development, and grow contractor partnerships in North
  America ([3], 2026-08-24). Central HVAC means a new product class, with different hardware
  and wiring from an IR-blaster device (our inference).
- Stated roadmap: extend the platform later to batteries, EV chargers and solar ([3]).

## Engineering signals
- Klima's stack: IR control, Wi-Fi, Thread, Matter, plus several smart-home ecosystem
  integrations [1]. That's a lot of certification and interoperability surface for a small team.
- Contractor software platform in development [2] (web/cloud work).
- They have an in-house firmware team: a Senior Firmware Engineer, a Firmware Engineer and a
  Firmware Developer are listed on The Org [5]. No open firmware roles were found (unverified).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Matheus Marotzke | Co-founder, CTO & CPO | https://theorg.com/org/boldr-1/org-chart/matheus-marotzke | Owns tech and product. Previously co-founded Brazilian fintech Klubi. **Primary target.** [5][6] |
| Toma Paro | Co-founder, COO | https://www.linkedin.com/in/toma-p-2791a960/ | Product development and manufacturing background [6] |
| Madi Ablyazov | Co-founder & CEO | https://www.linkedin.com/in/madi-a-4boldr/ | Quoted in the funding coverage [2][3] |

Emails: not researched. The human fills these in from a legitimate business source.

## Best angle
**Service line:** IoT full-stack / embedded hardware + firmware (new central-HVAC product
line), with cloud/web for the contractor platform as a second angle ·
**Case study:** Access control with real-time monitoring (/case-study/access-control-system),
connected device + cloud · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** Boldr's firmware team is built around a USB-powered IR/Wi-Fi/Thread device.
A central-HVAC product is a different device class: it has to live on the HVAC control wiring,
switch the equipment directly, and still be Matter-certified. Building it while keeping Klima
shipping stretches a small team. We can own a defined piece (hardware and power design for
the new controller, firmware bring-up, or the contractor dashboard) under NDA with full IP
transfer, while their core team stays on Klima.

## Risks / disqualifiers
- They have an in-house firmware team, so they may want capacity for one piece, not an
  end-to-end build.
- CLAUDE.md lists no HVAC-specific case study. Don't claim HVAC or thermostat experience;
  pitch the IoT stack (Matter, Wi-Fi, cloud).
- Company size is unverified.

## Sources
1. https://shopboldr.com/products/klima (fetched 2026-09-24)
2. https://www.eu-startups.com/2026/08/smart-thermostat-maker-boldr-raises-e4-2-million-to-grow-connected-heating-and-cooling-platform (page blocked automated fetch; facts from search summary, cross-checked with [3])
3. https://tech.eu/2026/08/24/boldr-raises-5m-to-turn-home-energy-systems-into-grid-capacity/ (2026-08-24)
4. https://tech.eu/2025/09/30/boldr-raises-32m-to-turn-homes-into-residential-power-plants/
5. https://theorg.com/org/boldr-1/org-chart/matheus-marotzke (fetched 2026-09-24)
6. https://theorg.com/org/boldr-1 (via search summary)
