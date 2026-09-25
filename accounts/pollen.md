# Pollen  ·  Fit: A  ·  Researched: 2026-09-24

## Snapshot
- **What they make:** a universal, brand-agnostic battery-swapping network for electric
  mopeds and motorcycles. They design their own universal battery with proprietary
  electronic cell-switching (ECS) and a multi-protocol comms layer, plus automated swap
  stations with sensors. A swap takes under a minute [1][2].
- **HQ / region:** Lisbon, Portugal. Spain is the first planned market abroad [2][3].
- **Size:** unverified.
- **Stage / funding:** €3.2M seed, first reported 2026-05-17, co-led by Pale Blue Dot and
  Mustard Seed Maze, with Kfund, Bynd, 4P Capital, Masia and angels [1][3].
- **Website:** https://www.pollen.energy (per Saleshandy Lead Finder, 2026-09-25)
- **HubSpot company ID:** 348565999330 (https://app.hubspot.com/contacts/247517534/record/0-2/348565999330)

- **HubSpot contact IDs:** Miguel Morgado 558502280897, Rui Bento 558514041557
- **Website / LinkedIn:** https://www.pollen.energy · https://www.linkedin.com/company/this-is-pollen

## Why now (triggers)
- €3.2M seed ([1], 2026-05-17).
- **Scaling hardware:** three stations live in Lisbon (at Galp sites). The plan is to triple
  the network to about 30–40 stations in the city by year-end, then expand to Spain ([2], 2026-07-15).
  Going from a handful of stations to dozens is the prototype-to-production jump.

## Engineering signals
- An in-house battery pack with electronic cell switching and multi-protocol comms to fit
  different two-wheelers [2]. This is BMS, power design and firmware work.
- Automated stations with sensors [2]: embedded hardware, connectivity, fleet backend.
- No hiring posts found (unverified).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Miguel Morgado | Co-founder & CTO | (profile not found; see [2]) | Previously co-founded Hunter, a micro-mobility company [1]. **Primary target.** |
| Rui Bento | Co-founder & CEO | (profile not found; see [3]) | Ex-GM Uber Portugal/Iberia; founded Kitch (acquired by Glovo) [1][3] |

Emails: not researched. The human fills these in from a legitimate business source.

**Reachability (2026-09-25, free Apollo search):** Miguel Morgado: `Apollo ID 60faccba9e8eab0001fdca60`, has email. Also in Apollo: Rui Bento (CEO), Diogo (Hardware Engineer), Tiago (Product Engineer).

**Email:** Miguel Morgado: `miguel@pollen.energy` (verified), Apollo reveal 2026-09-25 (request 5424813322482938087, 1 credit). LinkedIn: https://www.linkedin.com/in/miguelmorgado1991

## Best angle
**Service line:** Embedded hardware (BMS, power design, BOM optimization), with IoT
full-stack for the stations as a second angle · **Case study:** BLE OBD device + connected app
(/case-study/smart-obd-device), automotive · **Blog:** `design-custom-battery-management-system`

**Hypothesis:** going from 3 to 30–40 stations means building batteries and stations in real
volume. BOM cost, BMS robustness across many vehicle protocols, and station-to-cloud
reliability start to matter more than prototype speed. We can help with BMS and power design
review, cost-down of the pack or station electronics, or the station firmware/cloud
link, under NDA with full IP transfer.

## Risks / disqualifiers
- Seed-stage budget (€3.2M across hardware, stations and operations). The deal would be small.
- ECS is their core IP; they may keep all battery work in-house.
- Team size, website and hiring are unverified.
- There's no automotive BMS case study in CLAUDE.md; the BMS capability comes from the services list and blog only.
  Don't claim battery-swap experience.

## Sources
1. https://portugalstartupnews.com/2026/05/17/pollen-raises-e3-2m-to-expand-universal-battery-swapping-network-for-two-wheelers/ (2026-05-17)
2. https://tech.eu/2026/07/15/pollen-is-building-the-battery-swapping-network-electric-motorcycles-have-been-waiting-for/ (2026-07-15)
3. https://techfundingnews.com/pollen-3-2m-seed-rui-bento-uber-universal-battery-swapping-europe/ (via search summary)
