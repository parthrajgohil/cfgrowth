# Pressac Communications  ·  Fit: B  ·  Researched: 2026-10-07

## Snapshot
- **What they make:** wireless sensors for smart buildings: desk/room occupancy (PIR), CO2, temperature,
  humidity and indoor-air-quality sensors, CT-clamp current sensors, pulse counters, dry-contact sensors,
  industrial gateways and repeaters. Mostly **EnOcean** with energy harvesting (battery-free where possible),
  plus **LoRaWAN variants** of some products; data as JSON to local or cloud systems [1].
- **HQ / region:** Nottingham, UK; design and manufacturing in Nottingham ("Made in Britain", 60+ years of UK
  electronics manufacturing) [1][2].
- **Size:** 11-50 employees [3]; Apollo lists ~30 people, including PCB and production staff.
- **Funding:** none found (established manufacturer).
- **Website:** https://www.pressac.com

## Lead info
- **Website:** https://www.pressac.com · **News:** https://www.pressac.com/news/ · **Careers:** https://www.pressac.com/careers/
- **LinkedIn / X:** linked from the site, URLs unverified
- **HQ:** 145 Glaisdale Drive West, Nottingham NG8 4GY, UK [2] · **Founded:** 1950 [3] · **Employees:** 11-50 [3]
- **Funding:** none found
- **What they make / tech:** EnOcean energy-harvesting sensors, LoRaWAN variants, gateways [1]. MCUs: unverified.
- **Recent news (last 6 months):**
  - 2026-09-22/23: exhibitor at The Things Conference 2026 (Amsterdam), showing the battery-free building-sensor
    range; panel on indoor energy harvesting and sensor design [2]
  - 2026-03: Light + Building 2026 visit; Cyber Essentials Plus accreditation [4]
  - Embedded Engineer (IoT Sensors & Gateways / Smart Buildings; firmware, UART) and an SMT/PCB engineer posted
    in the last 6 months, both now expired [3]
- **HubSpot company ID:** 351305615048 (https://app.hubspot.com/contacts/247517534/record/0-2/351305615048)
- **HubSpot contact IDs:** Robert Smith 565154115277, Stephen Keetley 565152296649 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Robert Smith (**primary**) | Technical Director | unverified | Nottinghamshire; ~34 years' experience (Saleshandy) | **Lead ID 358422819** (decision maker) | 66f69264a2325e000179b9e8 (has email) |
| Stephen Keetley | Engineering Manager | unverified | Nottinghamshire | **Lead ID 98810950** | 54a635377468693442ebdbca (has email) |
| Jamie Burbidge | Product and Marketing Director | unverified | Nottingham | **Lead ID 98237889** (decision maker) | 66f690aea2325e000179b9e8 (has email) |

## Why now (triggers)
- No funding or launch in the last 6 months. **B:** embedded-engineer hiring within 6 months (post now closed) [3],
  and a clear roadmap signal: pushing battery-free sensing and LoRaWAN variants at The Things Conference (2026-09) [2].

## Engineering signals
- Small embedded team (Apollo shows one embedded engineer and one embedded software engineer) for a broad range.
- Low-power and energy-harvesting design is the core skill; new radio variants multiply firmware work.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Robert Smith | Technical Director | unverified | **Primary.** Saleshandy 358422819 |
| Stephen Keetley | Engineering Manager | unverified | Alternative. Saleshandy 98810950 |

## Best angle
**Service line:** embedded firmware + PCB design for low-power sensors (overflow capacity, new variants,
cost-down) · **Case study:** access control with real-time monitoring (/case-study/access-control-system) ·
**Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** a ~30-person manufacturer with one or two embedded engineers, adding LoRaWAN variants and new
battery-free sensors, has more firmware and board work than people. We can take defined variants or a cost-down
respin under NDA, with full source and design files handed back.

## Risks / disqualifiers
- EnOcean and LoRaWAN aren't in our credible-tech list: the email must not claim them.
- They manufacture in-house and may see us as a competitor for design work; position as extra capacity.
- "Founded 1950" comes from one job-board profile.

## Sources
1. https://www.pressac.com/ (read 2026-10-07)
2. https://www.pressac.com/news/were-set-up-and-ready-for-the-things-conference/ (2026-09; read 2026-10-07)
3. https://embedded.jobs/company/pressac-communications (read 2026-10-07)
4. https://www.pressac.com/news/ (read 2026-10-07)
5. Saleshandy Lead Finder and Apollo people search for pressac.com (2026-10-07)

---
**Summary:** Fit B. Angle: firmware/PCB capacity for new low-power sensor variants. Next step: CEO reviews the
draft to Robert Smith (`drafts/email/2026-10-07-pressac.md`).
