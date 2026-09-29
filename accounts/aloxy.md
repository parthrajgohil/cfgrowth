# Aloxy  ·  Fit: B  ·  Researched: 2026-09-29

## Snapshot
- **What they make:** battery-powered wireless industrial IoT sensors for hazardous sites
  (oil & gas, chemicals). Main product: a **manual valve position sensor** that fits
  quarter-turn and multi-turn valves and reports open/closed/intermediate using inertial
  sensors (magnetometer) [2][3]. Also the **Aloxy Pulse** multi-purpose sensor, emergency
  shower and line-blind sensors, and the **Aloxy IIoT Hub** for device management and firmware
  updates [1]. Radios: LoRaWAN and DASH7. Certified IECEx/ATEX and Class 1 Div 2 [1].
- **HQ / region:** Antwerp, Belgium; US office in Dripping Springs, Texas [1].
- **Size:** 33 employees by July 2026 (via search summary [5]); Apollo indexes 22.
- **Stage / funding:** €7.4M round, March 2025, from Dow Venture Capital, Emerson Ventures and
  existing investors [4]; earlier €3.8M (June 2022) [6].
- **Website:** https://www.aloxy.io

## Lead info
- **Website:** https://www.aloxy.io · **News:** https://www.aloxy.io/publications · **Careers:** https://www.aloxy.io/company/career (no vacancies listed on 2026-09-29)
- **LinkedIn:** https://www.linkedin.com/company/aloxy · **X/Twitter:** unverified
- **HQ:** Antwerp, Belgium · **Founded:** unverified · **Employees:** ~33 (unverified)
- **Funding:** €7.4M (2025-03, Dow VC, Emerson Ventures) [4]; €3.8M (2022-06) [6]
- **What they make / tech:** LoRaWAN/DASH7 battery sensors, magnetometer-based position
  sensing, ATEX/IECEx enclosures, IIoT Hub (cloud or on-prem) with OTA firmware updates [1][2].
  In development: Aloxy.Connect for PT100 and 4-20 mA probes [6]; an ATEX low-power VOC gas
  sensor with VOCSens [7].
- **Recent news:** no dated 2026 news found. Latest: €7.4M round (2025-03) to launch new
  products and scale through channel partners [4].
- **HubSpot company ID:** 349224992501 (https://app.hubspot.com/contacts/247517534/record/0-2/349224992501)
- **HubSpot contact IDs:** Kwinten Schram 560546341574, Frank Gielissen 560552799955 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Kwinten Schram (**primary**) | Head of Hardware | unverified | Antwerp | **Lead ID 453956207** | 5f530cbcc767be0001533bcf (has email) |
| Frank Gielissen | CEO | https://www.linkedin.com/in/frankgielissen/ | At Aloxy since 2019, previously CCO [8] | not found | 54a4f71274686934420aed71 (has email) |

## Why now (triggers)
- No trigger in the last 6 months, so graded **B**. Roadmap signals: the 2025 round was raised
  explicitly to "launch new products" [4], with Aloxy.Connect and new Ex-certified sensors on
  the roadmap [6][7].

## Engineering signals
- Every new sensor variant needs low-power firmware, LoRaWAN/DASH7 stacks, and ATEX-compatible
  hardware design, which is slow and specialised work for a ~33-person company.
- Apollo shows one Head of Hardware, one embedded firmware engineer (also the certification
  manager) and one embedded software engineer: a thin device team.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Kwinten Schram | Head of Hardware | unverified | **Primary.** Saleshandy 453956207 |
| Frank Gielissen | CEO | https://www.linkedin.com/in/frankgielissen/ | Apollo only |

## Best angle
**Service line:** embedded hardware + low-power firmware for new sensor variants (battery
life, LPWAN, sensor front-ends) · **Case study:** CNC drilling machine automation for a
European industrial automation company · **Blog:** `design-custom-battery-management-system`
(power design) or `handle-mqtt-connection-loss` (hub side)

**Hypothesis:** a roadmap of new Ex-certified sensors on a three-person device team means
each variant waits its turn. We can take a sensor variant's electronics and firmware (e.g. the
4-20 mA/PT100 interface) end to end, under NDA with full IP transfer, while their team keeps
the certified core.

## Risks / disqualifiers
- No fresh trigger; the 2025 round is 18 months old.
- ATEX/IECEx: CLAUDE.md lists no hazardous-area certification experience. Don't claim it; the
  pitch is design capacity, with certification staying with Aloxy.
- Founded year and exact headcount unverified.

## Sources
1. https://www.aloxy.io/ (fetched 2026-09-29)
2. https://www.aloxy.io/applications/valve-position-sensor
3. https://inspenet.com/en/video-tv/wireless-sensors-for-valves/ (via search summary)
4. https://www.aloxy.io/publications/aloxy-raises-eu7-4-million-from-dow-venture-capital-emerson-ventures-and-existing-investors-to-accelerate-its-global-expansion and https://siliconcanals.com/antwerps-aloxy-raises-7-4m/ (2025-03)
5. https://profiles.crustdata.com/company/aloxy (via search summary)
6. https://www.electramining.co.za/exhibitor-press-releases/aloxy-press-release (2022-06-16 release)
7. https://www.aloxy.io/publications/aloxy-engages-in-an-industrial-research-development-project-with-vovcsens (undated)
8. https://www.linkedin.com/in/frankgielissen/ (via search summary)
9. Saleshandy Lead Finder and Apollo people search for aloxy.io (2026-09-29)
