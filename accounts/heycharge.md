# HeyCharge  ·  Fit: A  ·  Researched: 2026-09-24

## Snapshot
- **What they make:** "offline-first" EV charging. Chargers authenticate and run sessions
  locally over BLE via the driver's phone, with Zigbee mesh between chargers and a sub-GHz
  868 MHz backhaul; the cloud is optional [1]. Products include SecureCharge, an industrial
  gateway for multi-charger and DC sites, an Eichrecht-compliant 22 kW AC charger, a CPMS
  and an SDK [1][2][3].
- **HQ / region:** Munich, Germany. Europe (DACH first) [3][4].
- **Size:** 17 employees per its Y Combinator profile [5].
- **Stage / funding:** backed by BMW i Ventures, Statkraft Ventures and Y Combinator; €2.5M
  EIC Accelerator grant announced February 2026 [2]; €6.3M private funding to date (per
  EU-Startups search summary, unverified).
- **Website:** https://www.heycharge.com
- **HubSpot company ID:** 348484334304 (https://app.hubspot.com/contacts/247517534/record/0-2/348484334304)

- **HubSpot contact IDs:** Chris Cardé 558510428902, Robert Lasowski 558510910154
- **Website / LinkedIn:** https://www.heycharge.com · https://www.linkedin.com/company/heycharge

## Why now (triggers)
- **New device launch:** CONNECT MagicBox with Easee, announced 2026-03-25, available
  Q2–Q3 2026. It's a retrofit adapter that makes any OCPP wallbox offline-capable and
  solar-aware ([4], 2026-03-25).
- **Second new device:** a 22 kW AC charger launching with HUMAX in summer 2026 ([1], 2026-03-26).
- **Hiring a Head of Engineering** to lead "embedded software, hardware, backend, mobile,
  and web", including BLE/Zigbee firmware, wireless SoCs and embedded Linux ([5], undated,
  so whether it's still open is unverified).
- EIC grant (Feb 2026): 24-month project taking SecureCharge FLEX from TRL 7 to TRL 8, adding
  dynamic load management, demand response, dynamic tariffs and **bidirectional (V2G)** ([2]).

## Engineering signals
- MagicBox hardware: Silicon Labs EFR32 multiprotocol SoC, EFR32FG23 sub-GHz radio,
  ESP32-S3 for IP connectivity, RS-485 for Modbus energy systems, OCPP to the wallbox [1].
- Stack from the job post: C/C++, Rust, embedded Linux, GCP, Flutter mobile/SDK, React web [5].
- With two new devices in 2026, a V2G roadmap and no Head of Engineering in place, a
  17-person team is carrying firmware, apps and cloud at the same time (inference from [1][2][5]).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Chris Cardé | Founder & CEO (Managing Director) | https://www.linkedin.com/in/pilotchris/ | Wrote the technical architecture post [1]; owns engineering until the Head of Engineering is hired. **Primary target.** |
| Robert Lasowski | Co-founder & CBDO | (profile not found) | Fleet and commercial angle [4] |

Emails: not researched. The human fills these in from a legitimate business source.

**Reachability (2026-09-25, free Apollo search):** Chris Cardé: `Apollo ID 66ed5087992a840001fe4608`, has email. Also in Apollo: Robert Lasowski (co-founder), Olena (Product Manager), Sergey (Senior Embedded Software Engineer).

## Best angle
**Service line:** Embedded firmware (BLE, Zigbee, Silicon Labs, ESP32, Modbus, OCPP), with
IoT full-stack as a second angle (Flutter app, cloud) · **Case study:** Access control with real-time
monitoring (/case-study/access-control-system); BLE smart glucometer for BLE firmware + apps ·
**Blog:** `ocpp-compliance-importance`

**Hypothesis:** HeyCharge's hardware sits almost entirely on chips and protocols we work with:
Silicon Labs, ESP32, BLE, Zigbee, Modbus and OCPP. They are shipping two new devices this
year, have EIC-funded V2G work ahead, and the leadership seat over engineering is empty.
We can take a defined workstream (MagicBox firmware hardening, the HUMAX charger
integration, or the Flutter SDK) under NDA with full IP transfer, until the new Head of
Engineering is in place.

## Risks / disqualifiers
- Their blog pitches offline charging for "federal, defense, and R&D sites" (May 2026 post,
  per search summary). Their core product is civilian EV charging, which is fine. But we should
  **not** take on any defense-specific deployment work.
- Sensitive IP (security architecture): expect a thorough NDA process.
- Funding total and the job post's status are unverified.
- Eichrecht and V2G certification: CLAUDE.md lists no experience there. Don't claim it.

## Sources
1. https://www.heycharge.com/news/we-engineered-the-internet-out-of-ev-charging/ (Chris Cardé, 2026-03-26)
2. https://www.heycharge.com/news/heycharge-wins-eic-accelerator-grant/ (Feb 2026, via search summary); https://chargedevs.com/newswire/heycharge-wins-e2-5-million-grant-to-develop-its-offline-ev-charging-solution/
3. https://www.heycharge.com/products/
4. https://www.heycharge.com/news/heycharge-launches-connect-magicbox/ (2026-03-25)
5. https://www.ycombinator.com/companies/heycharge/jobs/Q9Va4eK-head-of-engineering (fetched 2026-09-24, undated)
