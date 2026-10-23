# Vertigenius  ·  Fit: A  ·  Researched: 2026-10-12

## Snapshot
- **What they make:** a wearable behind-the-ear **IMU head sensor** for vestibular (vertigo/dizziness) rehabilitation.
  It measures head-movement frequency, velocity and amplitude and gives real-time audio/visual biofeedback over **BLE**
  to an **iOS/Android patient app**; a cloud **clinician portal** handles assessments, a 400+ exercise library and
  adherence tracking [1].
- **Regulatory:** CE-marked Class I (EU), FDA registered and listed, Class II (US), per its own FAQ [1].
- **HQ / region:** Dublin, Ireland [2].
- **Size:** unverified; ~9 staff visible in Saleshandy (CEO, CTO, CCO, QA/RA lead, two US sales directors, two
  software engineers, clinical/sales coordinator) [5].
- **Funding:** €2.55M round (April 2026, led by Atlantic Bridge) after €2.1M in 2024 [2][3]. Not for outreach.
- **Website:** https://www.vertigenius.com

## Lead info
- **Website:** https://www.vertigenius.com · **News:** blog/news on the site [1] · **Careers:** none listed [1]
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Dublin, Ireland · **Founded:** unverified · **Employees:** unverified (~10)
- **Funding:** ~€4.65M total; latest €2.55M, 2026-04, Atlantic Bridge (with Enterprise Ireland, MedTech Syndicate,
  IRRUS, Xcendra, Ascentifi) [2][3]
- **What they make / tech:** IMU head sensor, BLE, iOS + Android app, cloud clinician portal, GDPR/HIPAA claims, ISO 13485
  manufacturing claim [1]
- **Recent news:**
  - 2026-04-08/10: round to fund US growth; hiring in clinical research, **product R&D**, QA and regulatory at the Irish HQ;
    two US sales directors recently joined [2][3]
  - 2025-10: US launch after FDA registration; 20 clinics in 11 states, ~3,000 patients treated [2]
  - Undated: Boise Balance and Vestibular named a provider clinic (Idaho) [1]
- **HubSpot company ID:** 351769094899 (https://app.hubspot.com/contacts/247517534/record/0-2/351769094899)
- **HubSpot contact IDs:** Damien Daly 567886103281 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Damien Daly (**primary**) | Chief Technology Officer | unverified | Ireland; ~19 years' experience | **Lead ID 235890913** (decision maker) | 6119e86c80186d0001c5932b (has email) |
| Mark Barry | CEO, Board Chair | unverified | Saleshandy lists him under Ei Electronics (board role), not usable | 357675906 (other company) | 6014cad047ee840001961c68 (has email) |

## Why now (triggers)
- US launch (2025-10) followed by the April 2026 round with **product R&D hiring planned** in Ireland [2][3].
- A small team with two software engineers and no visible hardware/firmware engineer [5]: sensor revisions likely
  need outside help.

## Engineering signals
- BLE wearable + phone app + cloud is exactly our glucometer stack.
- Remote Therapeutic Monitoring reimbursement guide (2026) on the site: data quality and adherence logging matter [1].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Damien Daly | CTO | unverified | **Primary.** Saleshandy 235890913. **Email: damien@vertigenius.com** (Saleshandy `valid`, reveal request 6ad9f4aa60c94a870b7b3b9c, 2026-10-22; LinkedIn per reveal: https://www.linkedin.com/in/damien-daly-14a16bb). **Saleshandy:** batch `CF · batch 2026-10-22 17:03 · Europe · 5 leads`, sequence ID mDPQN7mnaR (inactive; the CEO activates) |

## Best angle
**Service line:** Embedded firmware + BLE companion app for a medical wearable (primary row) · **Case study:** BLE
smart glucometer: firmware + Android/iOS apps (/case-study/smart-glucometer) · **Blog:**
`design-ble-devices-for-crowded-rf-environments`

**Hypothesis:** With US clinics growing, the next sensor revision (battery life, BLE robustness in busy clinics, cost)
and app work compete for a very small engineering team. We can own the sensor firmware and app work end to end, with
full IP and source transfer.

## Risks / disqualifiers
- Very small (≈10); may be at the lower edge of our size range.
- Who designed the sensor is unknown; an incumbent design house is possible.

## Sources
1. https://www.vertigenius.com (read 2026-10-12)
2. https://itbrief.news/story/vertigenius-raises-eur-2-55-million-for-us-expansion (2026-04-10)
3. https://www.thinkbusiness.ie/articles/vertigenius-raises-2-55m-us-expansion-vertigo-treatment/ (2026-04-08)
4. https://accessgudid.nlm.nih.gov/devices/05391548420012 (GUDID listing)
5. Apollo people search (domain vertigenius.com) and Saleshandy Lead Finder (2026-10-12)

---
**Summary:** Fit A. Angle: BLE sensor firmware + iOS/Android app (glucometer case study). Next step: CEO reviews the
draft to Damien Daly (`drafts/email/2026-10-12-vertigenius.md`).
