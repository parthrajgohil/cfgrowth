# Wellinks  ·  Fit: A  ·  Researched: 2026-09-28

## Snapshot
- **What they make:** a virtual-first cardiopulmonary care program (COPD first) that combines
  hardware, software and coaching [1][2]. The hardware is the **Spire RPM system**, which
  Wellinks acquired with Spire Health in 2024 [3]. Small sensor "Health Tags" stick to the
  patient's undergarments and measure respiratory force, intermittent PPG (pulse) and 3-axis
  activity. They send data over Bluetooth to an in-home hub, which forwards it over cellular
  to a clinical dashboard [4]. The tags can be laundered and last about a year [4]. FDA-cleared
  in 2020 [1]. Wellinks also owns Wing, an FDA-cleared smartphone spirometer, from its 2022
  Sparo Health acquisition [5].
- **HQ / region:** New Haven, Connecticut, USA [3].
- **Size:** unverified. Apollo indexes 19 people at wellinks.com (2026-09-28).
- **Stage / funding:** $10M first close of a Series B, 2026-08-04, from UMass Memorial Health
  and inside investors [2]. Total raised: unverified.
- **Website:** https://www.wellinks.com

## Lead info
- **Website:** https://www.wellinks.com · **Newsroom:** https://www.wellinks.com/news ·
  **Careers:** unverified (third-party listing: https://simplify.jobs/c/Wellinks)
- **LinkedIn:** unverified · **X/Twitter:** unverified
- **HQ:** New Haven, CT, USA · **Founded:** 2012 (per wellinks.com [3]) · **Employees:** unverified (~19 in Apollo)
- **Funding:** $10M Series B first close, 2026-08-04, UMass Memorial Health + inside investors [2].
- **What they make / tech:** Spire Health Tags (respiratory force, PPG, accelerometer), BLE
  to an in-home hub, cellular to cloud, clinician dashboard, patient app, predictive analytics
  [1][4]. Wing smartphone spirometer [5].
- **Recent news (last 6 months):**
  - 2026-08-04: $10M Series B. Plans: expand commercially, reach **rural and underserved**
    patients, strengthen predictive models, and **expand Spire RPM into congestive heart
    failure (CHF)** [2]
  - 2026-08-31: two board appointments; **Andrew Brimer promoted to VP of Technology**,
    plus new VPs of Clinical Operations and Customer Success [6]
- **HubSpot company ID:** 348743815889 (https://app.hubspot.com/contacts/247517534/record/0-2/348743815889)
- **HubSpot contact IDs:** Andrew Brimer 559756965594, Jennifer Barretta 559763717871 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Andrew Brimer (**primary**) | VP of Technology | https://www.linkedin.com/in/abrimer/ | Co-founder of Sparo Health (Wing spirometer, acquired by Wellinks 2022); 10+ years building healthcare hardware and software; promoted 2026-08-31 [5][6] | **Lead ID 120569591** | 5f8812870d61c10001f58356, has email (title shown as "Entrepreneur") |
| Jennifer Barretta | COO & Interim CEO | unverified | Named in the Series B release [2] | **Lead ID 163762089** | not found |
| Travis Pitts | Director of Engineering (Apollo) / Senior Software Engineer (Saleshandy) | not found | Title conflicts between sources | Lead ID 292851556 | 54ac005a7468692a6b7fd21a, has email (alternative) |

## Why now (triggers)
- $10M Series B first close ([2], 2026-08-04), with two plans that touch the device:
  **expanding Spire RPM into CHF** and **reaching rural and underserved communities** [2].
- New engineering leader: Andrew Brimer promoted to VP of Technology to "advance the
  development of its integrated cardiopulmonary care solution" ([6], 2026-08-31).

## Engineering signals
- Tag → BLE → home hub → cellular → cloud [4]. Rural homes mean weak cellular coverage, so
  hub connectivity, buffering and retry logic matter more.
- A new condition (CHF) usually means revalidating sensing and algorithms, and possibly new
  hardware or firmware features. (Inference; Wellinks says it will apply "its technology and
  care model" to CHF [2].)
- The people visible in Apollo/Saleshandy are software, data, QA, clinical and operations.
  No firmware or hardware engineers are visible (unverified; lists may be incomplete).
- The Spire hardware came through a non-cash acquisition in 2024 [3]. Hardware know-how may
  not have fully moved over with it (unverified).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Andrew Brimer | VP of Technology | https://www.linkedin.com/in/abrimer/ | Hardware + software background (Wing spirometer). Newly promoted, so likely setting the tech plan for CHF and rural rollout. **Primary.** Saleshandy 120569591 |
| Jennifer Barretta | COO & Interim CEO | unverified | Business decision-maker. Saleshandy 163762089 |

## Best angle
**Service line:** IoT full-stack with embedded firmware and hardware underneath (tag
firmware, BLE-to-hub link, cellular hub, cloud ingest) · **Case study:** connected health
monitoring hub + app (/case-study/health-monitoring-hub); second: BLE smart glucometer
(/case-study/smart-glucometer) · **Blog:** `handle-mqtt-connection-loss` (second:
`medical-wearable-device-development-challenges-and-fix`)

**Hypothesis:** extending Spire into CHF and into rural homes puts pressure on the parts of
the system that software teams rarely own. The home hub has to hold data through weak or
dropped cellular, the tags need firmware changes for new metrics or longer wear, and a
hardware platform inherited in an acquisition needs someone who knows its firmware. We can
add firmware/hardware capacity or review the tag-to-hub-to-cloud path, under NDA with full
IP transfer.

## Risks / disqualifiers
- The CHF expansion may be mainly clinical and algorithmic, with no hardware changes. Ask,
  don't assert.
- $10M is a first close aimed mostly at commercial growth [2]; engineering budget may be tight.
- Wellinks' in-house hardware capacity and Spire's original engineering team are unverified.
  They may already use a contract manufacturer or design house.
- FDA-cleared device: CLAUDE.md lists no FDA submission experience, so don't claim any.
- Headcount, total funding and the company LinkedIn page are unverified.

## Sources
1. https://www.medicaldevice-network.com/news/wellinks-secures-10m-for-respiratory-disease-rpm-tool-advancement/ (2026-08-05)
2. https://www.wellinks.com/news/wellinks-closed-10-million-series-b-funding-from-umass-memorial-health-and-inside-investors (2026-08-04)
3. https://www.wellinks.com/blog/wellinks-acquires-spire-health (fetched 2026-09-28; acquisition 2024-09-30)
4. https://pmc.ncbi.nlm.nih.gov/articles/PMC9990506/ and https://www.fiercebiotech.com/medtech/spire-health-launches-copd-tracking-study-its-machine-washable-wearable (via search summary)
5. https://engineering.washu.edu/news/2022/How-St-Louis-helped-two-Washington-U-students-build-and-sell-a-company.html (via search summary)
6. https://www.prnewswire.com/news-releases/wellinks-appoints-andrew-agwunobi-and-mike-waters-to-board-of-directors-and-expands-management-team-302865304.html (2026-08-31)
7. Saleshandy Lead Finder and Apollo people search for wellinks.com (2026-09-28)
