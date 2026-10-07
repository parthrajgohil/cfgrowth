# Stenon  ·  Fit: A  ·  Researched: 2026-09-29

## Snapshot
- **What they make:** **FarmLab**, a handheld real-time soil sensor that measures N, P, K, Mg,
  soil organic carbon, pH, texture and moisture in the field [3]. It combines electrical
  impedance spectroscopy (low, radio and microwave frequencies) with a VIS/NIR spectrometer,
  has GPS, and uploads results to the Stenon Cloud over WiFi via a connected device [3][4].
  Stenon plans a **next-generation, machine-integrated** real-time nutrient platform for later
  in 2026 [1].
- **HQ / region:** Potsdam, Germany [1]. Main growth markets: Brazil, Central Asia, Europe [1].
- **Size:** unverified. Apollo indexes 32 people at stenon.io, and the job ad calls it a
  "fast-growing scale-up" [2].
- **Stage / funding:** €18M Series B, 2026-07-01, led by Pymwymic with DTCF, Atlantic, Oyster
  Bay, Founders Fund and TIME Ventures [1]. Total raised: unverified.
- **Website:** https://stenon.io

## Lead info
- **Website:** https://stenon.io · **Blog/news:** https://blog.stenon.io · **Careers:** https://stenon-gmbh.jobs.personio.de
- **LinkedIn:** unverified · **X/Twitter:** unverified
- **HQ:** Potsdam, Germany · **Founded:** 2018 [1] · **Employees:** unverified (32 in Apollo)
- **Funding:** €18M Series B, 2026-07-01, lead Pymwymic [1]
- **What they make / tech:** FarmLab handheld sensor (impedance spectroscopy + VIS/NIR,
  GPS, WiFi to cloud) [3][4]. Device stack from the open job ad: ARM microcontrollers (STM32
  and ESP32 named), embedded Linux on Yocto, ARM SBCs (Raspberry Pi referenced), GPIO/UART/
  SPI/I2C sensor boards, C/C++ and Python tooling, "harsh outdoor conditions" [2].
- **Recent news (last 6 months):**
  - 2026-07-01: €18M Series B; funds go to the machine-integrated platform, FarmLab N/SOC
    capability and expansion [1]
  - Open role: Embedded Software / Firmware Engineer (Agri-Tech / Sensor Systems), Potsdam,
    posted 2026-03-04 and still open on 2026-09-29 [2]
- **HubSpot company ID:** 349376662252 (https://app.hubspot.com/contacts/247517534/record/0-2/349376662252)
- **HubSpot contact IDs:** Jens Meichsner 560624102085, Niels Grabbert 560623917777 (no emails; Swadhin G. not created, surname unknown)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Jens Meichsner (**primary**) | CTO & Managing Director | unverified | Quoted as CTO in the Series B release [1] | **Lead ID 411073639** | 600803d7b543580001996ceb (has email) |
| Swadhin G. (surname not shown) | VP of Hardware Engineering and Production | unverified | Owns hardware and production (Saleshandy/Apollo title) | **Lead ID 58449085** | 69c7d3f4fc5c800001912a30 (has email) |
| Niels Grabbert | Founder & CEO | unverified | Quoted in the Series B release [1] | not checked | 60df063d052baa0001dbccbb (has email) |

## Why now (triggers)
- **Series B with a hardware plan:** €18M (2026-07-01) to build a "next-generation,
  machine-integrated real-time nutrient intelligence platform" to be unveiled later in 2026
  [1]. Moving from a handheld tool to a machine-mounted sensor is a new hardware and firmware
  program.
- **Hiring firmware:** Embedded/Firmware Engineer role open since 2026-03-04 (Yocto Linux +
  STM32/ESP32 firmware, prototype-to-production) [2]. Six months open suggests the seat is
  hard to fill.

## Engineering signals
- Mixed Linux + MCU architecture, sensor boards over SPI/I2C/UART, outdoor ruggedness [2].
- Machine integration (inference): vibration, wide supply voltage, sealed enclosures, likely
  a tractor/implement data bus. Stenon hasn't said which; ask, don't assert.
- Customers mostly in Brazil and Central Asia [1]: field connectivity is patchy, so buffering
  and offline sync matter (inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Jens Meichsner | CTO & MD | https://www.linkedin.com/in/jens-meichsner | Technical decision-maker. **Primary.** Saleshandy 411073639. **Email: jens.meichsner@stenon.io** (Saleshandy, valid; reveal request 6ac328a3f706341a889dc76b, 2026-10-05) |
| Swadhin G. | VP Hardware Engineering & Production | unverified | Direct owner of the machine-integrated hardware (alternative). Saleshandy 58449085 |
| Niels Grabbert | Founder & CEO | unverified | Apollo only |

## Best angle
**Service line:** embedded firmware + hardware (STM32/ESP32 firmware, embedded Linux/Yocto,
ruggedised sensor boards) · **Case study:** CNC drilling machine automation for a European
industrial automation company (/case-study/industrial-cnc-drilling-machine-automation;
Raspberry Pi, Flask) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** a firmware seat open for six months, plus a machine-mounted product due this
year, means the device team is short of hands at the worst time. We can take firmware and
Linux BSP work for the new platform or keep FarmLab firmware moving while their team focuses
on the new product, under NDA with full IP transfer.

## Risks / disqualifiers
- Headcount, total funding and company LinkedIn page are unverified.
- They may only want an in-house hire in Potsdam. Offer project capacity, not staff
  augmentation.
- The "machine-integrated" platform details are not public. Don't guess the interface.

## Sources
1. https://blog.stenon.io/2026/07/01/stenon-raises-18-million-in-series-b-financing-to-scale-real-time-nitrogen-and-soil-data-management/ (2026-07-01)
2. https://stenon-gmbh.jobs.personio.de/job/2533433?language=en (open 2026-09-29; posted 2026-03-04 per join.com listing https://join.com/companies/stenon/16214697-embedded-firmware-developer-agri-tech-sensor-systems-m-f-d)
3. https://pmc.ncbi.nlm.nih.gov/articles/PMC12737063/ (FarmLab accuracy study, via search summary)
4. https://agtecher.com/en/hardware/stenon-farmlab/ (via search summary)
5. Saleshandy Lead Finder and Apollo people search for stenon.io (2026-09-29)
