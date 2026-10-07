# DiaMonTech AG  ·  Fit: B  ·  Researched: 2026-10-05

## Snapshot
- **What they make:** non-invasive blood glucose monitoring using mid-infrared laser
  spectroscopy. D-Base (CE certified 2019), the portable **D-Pocket** (finger on a sensor, phone-
  sized), and D-Sensor technology [1][2].
- **HQ / region:** Berlin, Germany [3].
- **Size:** unverified (Apollo lists 29 people, including senior electronics, hardware, FPGA and
  embedded engineers and an iOS developer [9]).
- **Stage / funding:** €12M round (2025-09-16, Samsung Next and Companisto) to "advance the
  miniaturization of its patented technology and launch a portable blood glucose meter" [1];
  earlier rounds incl. €8M [3]. Total raised unverified.
- **Website:** https://www.diamontech.de

## Lead info
- **Website:** https://www.diamontech.de · **News:** https://www.diamontech.de/news · **Careers:** https://www.diamontech.de/jobs
- **LinkedIn:** unverified · **X/Twitter:** unverified
- **HQ:** Berlin · **Founded:** 2015 (Thorsten Lubinski, Prof. Werner Mäntele) [3] · **Employees:** unverified (~29 in Apollo)
- **Funding:** €12M (2025-09-16; Samsung Next, Companisto) [1]
- **What they make / tech:** mid-IR laser measurement, microcontrollers and FPGAs, Ethernet/USB/
  SPI/I2C, DSP (from their Embedded Developer post, now closed) [4]; iOS app (iOS developer on
  staff [9]). ISO 13485 (2021) and ISO 27001 certified [1].
- **Recent news (last 6 months):**
  - 2026-08-26: CEO Thorsten Lubinski, Health Electronics Summit 2026 (Stuttgart): "From Prototype
    to Medical Device: Why Security Must Be Designed In": D-Pocket moving from lab setup to compact
    everyday systems; secure-by-design, data integrity, future connectivity [5]
  - 2026-04-06: MotionLab.Berlin collaboration, turning a real manufacturing challenge into a
    student engineering challenge [1]
- **HubSpot company ID:** 350473733865 (https://app.hubspot.com/contacts/247517534/record/0-2/350473733865)
- **HubSpot contact IDs:** Michael Kaluza 563970785994, Thorsten Lubinski 563970897654 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Michael Kaluza (**primary**) | Chief Technology Officer | unverified | Physicist; team page says he drives scientific progress and regulatory questions [3] | **Lead ID 436998513** | 57dd4340a6da987b1873a5f5 (has email) |
| Thorsten Lubinski | Co-founder & CEO | unverified | Wrote the Aug 2026 secure-by-design piece [5] | **Lead ID 200518223** | not seen in Apollo list |
| Werner Mäntele | Co-founder & Head of R&D / CSO | unverified | Physics professor; co-founder [3] | not found | 6719ff88ea5927000110f397 (has email) |

## Why now (triggers)
- No hard trigger in the last 6 months (grade B). Signals: the Aug 2026 talk on taking the
  D-Pocket from prototype to medical device, with connectivity still ahead [5]; the 2025 round was
  raised to miniaturise and launch the portable meter [1] (not to be mentioned in outreach).
- Embedded Developer role was advertised (title "Embedded Developer 2025"); page now 404 [4].

## Engineering signals
- In-house electronics, FPGA and embedded team exists; the open question is capacity for the
  portable product (firmware hardening, BLE/app connectivity, security, DFM).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Michael Kaluza | CTO | https://www.linkedin.com/in/michael-kaluza-a4428b114 (from Saleshandy reveal) | **Primary** by title; may lean scientific/regulatory. **Email:** michael.kaluza@diamontech.de (Saleshandy `valid`, reveal request 6ac336acf706343f289dfaa4, 2026-10-05) |
| Thorsten Lubinski | Co-founder & CEO | unverified | Alternative; author of the trigger piece. Saleshandy 200518223 |

## Best angle
**Service line:** embedded firmware + companion app for a medical device (secure boot, BLE, OTA,
iOS/Android) · **Case study:** BLE smart glucometer, firmware + Android/iOS apps for a US
healthcare organisation (/case-study/smart-glucometer) · **Blog:**
`medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** the D-Pocket needs secure connectivity and a phone app on top of a hard optical
core. We've built BLE firmware and apps for a glucometer before; we can take the connectivity,
security and app layer so their physicists and FPGA team stay on the measurement.

## Risks / disqualifiers
- Strong in-house R&D; may not outsource.
- CTO's remit may be regulatory/scientific rather than engineering.

## Sources
1. https://www.diamontech.de/news (read 2026-10-05)
2. https://www.notebookcheck.net/D-Pocket-personal-non-invasive-blood-glucose-monitor-from-DiaMonTech-attracts-substantial-investment-from-Samsung-Ventures.606261.0.html (via search summary)
3. https://www.diamontech.de/en/team and https://www.bionity.com/en/news/1187247/eur-8-million-for-berlin-based-medtech-company-diamontech.html (via search summary)
4. https://www.diamontech.de/jobs/embedded-developer (via search summary; 404 on 2026-10-05)
5. https://www.diamontech.de/pressemeldungen-en/from-prototype-to-medical-device-why-security-must-be-designed-in (read 2026-10-05)
9. Saleshandy Lead Finder and Apollo people search for diamontech.de (2026-10-05)
