# Epitel  ·  Fit: A  ·  Researched: 2026-09-28

## Snapshot
- **What they make:** REMI® Remote EEG Monitoring System. Four small wireless "Epilog" sensors
  stick to the scalp below the hairline with disposable hydrogel stickers. Each records a
  single EEG channel, and together they give 10 channels. The sensors stream over Bluetooth
  to the REMI app on a tablet or other qualified off-the-shelf mobile device, which relays
  the EEG to REMI Cloud for review in Persyst [3][4][5]. Recording can last up to 30 days [4].
  REMI Vigilenz™ AI flags possible seizures [1].
- **HQ / region:** Salt Lake City, Utah, USA [2].
- **Size:** unverified. Apollo indexes 38 people at epitel.com (2026-09-28).
- **Stage / funding:** $26M Series B, 2026-07-28, co-led by Catalyst Health Ventures and
  Genoa Ventures [1]. Total raised: unverified.
- **Regulatory:** five FDA 510(k) clearances for wireless EEG and AI event detection [1].
  The first REMI clearance was in 2021 [2].
- **Website:** https://www.epitel.com

## Lead info
- **Website:** https://www.epitel.com · **Blog/newsroom:** none found on the site (press via
  BusinessWire) · **Careers:** no careers link on the site (checked 2026-09-28)
- **LinkedIn:** https://www.linkedin.com/company/epitel-inc · **X/Twitter:** unverified
- **HQ:** Salt Lake City, UT, USA · **Founded:** unverified (an interview calls it a
  "15-year journey" [6]) · **Employees:** unverified (~38 in Apollo)
- **Funding:** $26M Series B, 2026-07-28, co-led by Catalyst Health Ventures and Genoa
  Ventures [1]. Total: unverified.
- **What they make / tech:** wearable single-channel EEG sensors (Epilog), BLE to a
  tablet/mobile app (REMI Mobile), cloud (REMI Cloud), Persyst review software, and AI
  event detection [1][3][4]. The team includes an electrical engineer, a software architect,
  a React Native engineer, DevOps, data science and manufacturing process engineering [2][7].
- **Recent news (last 6 months):**
  - 2026-07-28: $26M Series B to expand REMI into ambulatory/home use and younger patients [1]
  - 2026-08-04: HIT Consultant coverage of the Series B [8]
- **HubSpot company ID:** 348778821357 (https://app.hubspot.com/contacts/247517534/record/0-2/348778821357)
- **HubSpot contact IDs:** Matt Parrott 559753779934, Mark Lehmkuhle 559757319893 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Matt Parrott (**primary**) | VP of R&D and Manufacturing | https://www.linkedin.com/in/matthew-parrott-b752745/ | 25+ years in global product development and medical hardware engineering [2] | **Lead ID 152219163** ("Vice President of Mfg R&D") | 60c7570462bc0e000114eb95, has email |
| Mark Lehmkuhle, PhD | CTO & Founder | https://www.linkedin.com/in/mark-lehmkuhle-0b617a19/ | 25+ years in neural engineering, epilepsy and signal processing; ex-University of Utah neurosurgery research faculty [2][9] | Lead ID 31608874, but listed under "MedTech Innovator" (stale company) | 60f1d7136f64f100010f3852, has email |
| Justin Ca*** (surname masked) | Director of Engineering & Architecture | not found | — | not found | 54c1d9c274686916398cef50, has email (alternative) |

## Why now (triggers)
- $26M Series B, 2026-07-28. The funds go to commercial expansion, wider provider adoption
  and **ambulatory market access, including younger patients** ([1], 2026-07-28).
- Moving from hospital to home (ambulatory) use means more sensors in the field, patients'
  own phones/tablets and weeks-long wear. That's where BLE reliability, battery life and
  app robustness get tested. (Inference; not stated by Epitel.)

## Engineering signals
- Four BLE sensors streaming at once to a single tablet/mobile device [3][4]. Multi-node BLE
  in hospital and home RF environments is a known pain point.
- REMI Mobile runs on "qualified commercial off-the-shelf mobile computing platforms" [4].
  Expanding to home use points to more phone models and more OS versions to qualify.
- Disposable stickers plus reusable sensors, with a supply chain manager and a manufacturing
  process engineer on staff [7]. Scaling production raises BOM and manufacturability questions.
- No open firmware/hardware roles found (no careers page).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Matt Parrott | VP of R&D and Manufacturing | https://www.linkedin.com/in/matthew-parrott-b752745/ | Owns R&D and manufacturing, so both the product and the cost-down angle. **Primary.** Saleshandy 152219163 |
| Mark Lehmkuhle, PhD | CTO & Founder | https://www.linkedin.com/in/mark-lehmkuhle-0b617a19/ | Founder and the technical authority on the sensor. Saleshandy record is stale (lists MedTech Innovator); Apollo has email |

## Best angle
**Service line:** Embedded firmware (BLE, low-power) + mobile apps (BLE companion app), with
hardware re-engineering / cost-down as a second angle · **Case study:** BLE smart glucometer,
firmware + Android/iOS apps for a US healthcare org (/case-study/smart-glucometer) ·
**Blog:** `design-ble-devices-for-crowded-rf-environments` (second:
`medical-wearable-device-development-challenges-and-fix`)

**Hypothesis:** REMI works in hospitals. Home use for weeks, in younger patients, stresses
the parts around the EEG science: four sensors keeping a stable BLE link to a consumer
phone or tablet in a crowded 2.4 GHz home, reconnection without data gaps, battery life
over long recordings, and app qualification on more devices. A small team focused on
commercial rollout may want extra firmware/app capacity or a review, and cost-down of the
sensor as volumes grow. We can help under NDA with full IP transfer.

## Risks / disqualifiers
- They have in-house engineering (EE, software architect, mobile, DevOps) [2][7], and the
  Series B is aimed at commercial growth, not R&D [1]. Pitch capacity and a second
  opinion, not a rebuild.
- FDA-cleared device: any change goes through their design controls. CLAUDE.md lists no
  FDA submission experience, so don't claim any.
- Battery life per sensor and the BLE chip are not public; the angle is a hypothesis, so ask.
- Headcount, founding year and total funding are unverified.

## Sources
1. https://www.utahbusiness.com/press-releases/2026/07/28/epitel-secures-26-million-series-b-expand-remote-wireless-eeg-monitoring/ (2026-07-28)
2. https://www.epitel.com/about-epitel (fetched 2026-09-28)
3. https://pmc.ncbi.nlm.nih.gov/articles/PMC8558398/ (peer-reviewed description of Epilog/REMI, via search summary)
4. https://www.epitel.com (fetched 2026-09-28)
5. https://www.businesswire.com/news/home/20241021071646/en/Epitel-Expands-AI-Portfolio-With-A-Fourth-FDA-510k-Clearance-for-REMI (via search summary)
6. https://www.frontlines.io/building-the-holter-monitor-for-the-brain-inside-epitels-15-year-journey/ (title only; page blocked fetch)
7. Saleshandy Lead Finder and Apollo people search for epitel.com (2026-09-28)
8. https://hitconsultant.net/2026/08/04/epitel-secures-26m-series-b-remote-wireless-eeg-monitoring/ (via search summary)
9. https://www.crunchbase.com/person/mark-lehmkuhle (via search summary)
