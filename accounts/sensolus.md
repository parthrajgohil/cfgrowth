# Sensolus  ·  Fit: A  ·  Researched: 2026-10-26

## Snapshot
- **What they make:** battery-powered IoT trackers, BLE location tags and condition sensors (temperature, humidity, load,
  fill level, open/closed) for non-powered industrial assets: trailers, tank containers, IBCs, returnable packaging. Sold
  as tracking-as-a-service (hardware, platform, connectivity and support for one fee per asset) [1].
- **HQ / region:** Ghent, Belgium (Moutstraat 54). Offices in Munich (Sensolus GmbH) and Alpharetta, Georgia, USA [2].
- **Size:** "50+ team members across 24 nationalities" [2]. Apollo returns 50+ people [6].
- **Stage / funding:** founded 2013 by four Belgians. Investors include private investors, Capricorn Partners / Quest for
  Growth and Matterwave [2]. EUR 2.75M round in 2017 [7]. Total raised: unverified.
- **Website:** https://www.sensolus.com

## Lead info
- **Website:** https://www.sensolus.com · **Blog/news:** https://www.sensolus.com/knowledge-hub/ · **Careers:**
  https://careers.sensolus.com/ (no open roles listed, 2026-10-26)
- **LinkedIn:** https://www.linkedin.com/company/sensolus/ · **X/Twitter:** not listed on the site
- **HQ:** Ghent, Belgium · **Founded:** 2013 · **Employees:** 50+ (company) · **Raised:** EUR 2.75M in 2017 (Capricorn /
  Quest for Growth); later rounds unverified
- **What they make / tech:** TRACK 1105: NB-IoT and LTE-M, GNSS/Wi-Fi/BLE positioning that switches automatically indoors
  and outdoors, onboard temperature sensor, shock detection, "guaranteed data recovery", IP69k/IP68, battery life up to 7
  years [3][4]. Platform tracks 1.5M+ assets for 500 enterprises (company claim) and adds "Sensolus AI" agents [1].
  Chips not public.
- **Recent news:**
  - 2026-09-01: IAA Transportation 2026 (Hall 12, D04): TRACK 1105 shown, TRACK 1105 EX previewed [4]
  - 2026-08-11: TRACK 1105 EX announced: ATEX (Europe) + IECEx certification, Zone 1 gas / Zone 21 dust, for tank
    containers, UN 31A/Y IBCs, hazardous-goods and waste containers; **launch planned for early 2027** [3]
  - 2026: SITL 2026 winner; nominated for TFIS 2026 and the Digital Supply Chain Award 2026 [1]
  - Undated: next-gen industrial IoT tracking for US, Canada and Mexico [8]
- **HubSpot company ID:** 356211863233 (https://app.hubspot.com/contacts/247517534/record/0-2/356211863233)
- **HubSpot contact IDs:** Johan Criel 577150497518 · Bart Thoen 577097320142 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Johan Criel (**primary**) | Co-founder & CTO | https://be.linkedin.com/in/johancriel | Software architecture, M2M/IoT, telecom research (Saleshandy summary) [5] | 135078534 | 6060ec7faa3ad00001cd3547 (has email) |
| Bart Thoen | Firmware Lead | unverified | Former researcher/PhD; embedded system design, embedded software, PCB design, sensors, wireless [5] | 95997144 | 54c227f27468697af7192980 (has email) |
| Steven Van Hoof | VP of Engineering | unverified | Name from an aggregator (flashintel.ai); Apollo shows "Steven Va***f" [6][9] | not found | 6060ec907ff7c90001ec3871 (has email) |

## Why now (triggers)
- **TRACK 1105 EX** for ATEX/IECEx Zone 1 and Zone 21, previewed at IAA Transportation 2026 (Hannover, September 2026),
  launch planned for early 2027 (announced 2026-08-11) [3][4]. A certified hazardous-area variant of a battery tracker is a
  hardware and firmware programme, within 6 months → **A**.

## Engineering signals
- Apollo shows a Firmware Lead, 2 firmware engineers, a firmware test engineer, a hardware design engineer and a technical
  lead [6]. A real but small embedded team for a tracker range, an EX variant and US expansion.
- No open roles on the careers page today, so no hiring signal [10].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Johan Criel | Co-founder & CTO | https://be.linkedin.com/in/johancriel | **Primary.** Saleshandy 135078534; Apollo has email |
| Bart Thoen | Firmware Lead | unverified | Alternative, most hands-on. Saleshandy 95997144; Apollo has email. The draft's angle fits him too |
| Steven Van Hoof | VP of Engineering | unverified | Apollo has email; not in Saleshandy (name partly unverified) |

## Best angle
**Service line:** embedded hardware (power design) + low-power firmware (primary row: industrial IoT) · **Case study:** BLE
OBD device + connected app · **Blog:** `handle-mqtt-connection-loss` (their "guaranteed data recovery" is the same problem)

**Hypothesis:** an EX version of a battery tracker usually reopens the power design, the cell choice and the battery-life
budget, while the standard TRACK range and the US rollout still need sustaining work. Extra firmware/PCB hands for either
side fit a team of about six embedded people.

## Risks / disqualifiers
- We don't have ATEX/IECEx experience to cite; the email must not claim it.
- The CTO's background is software architecture; the Firmware Lead may be the better reader.
- Belgium (EU): opt-out line needed.
- Funding history beyond 2017 is unverified.

## Sources
1. https://www.sensolus.com/ (2026-10-26)
2. https://www.sensolus.com/about/ (2026-10-26)
3. https://itsupplychain.com/sensolus-to-showcase-smart-asset-tracking-and-preview-track-1105-ex-for-hazardous-environments/ (2026-08-11); https://doc.sensolus.com/docs/spec_sheets/trackers/track_1105
4. https://logistik-heute.de/news/iaa-transportation-2026-ladungstraeger-smart-tracken-281712.html (2026-09-01); https://transport-online.de/news/iaa-transportation-2026-sensolus-zeigt-neuen-tracker-fuer-ex-bereiche-193737.html
5. Saleshandy Lead Finder, Sensolus CTO / Firmware Lead (2026-10-26); LinkedIn via web search
6. Apollo people search, domain sensolus.com (2026-10-26)
7. https://tech.eu/2017/10/12/sensolus-funding
8. https://www.sensolus.com/knowledge-hub/behind-the-tech/sensolus-unveils-nextgen-industrial-iot-tracking-solution-for-us-canada-and-mexico/ (undated)
9. https://www.flashintel.ai/people/Bart-Thoen-b96706841bcd522c09fef32ea05161e5/ (aggregator)
10. https://careers.sensolus.com/ (2026-10-26)

---
**Summary:** Fit A (TRACK 1105 EX for ATEX/IECEx zones, launch early 2027). Angle: power design and low-power firmware
capacity. Next step: CEO reviews the draft to the CTO (`drafts/email/2026-10-26-sensolus.md`).
