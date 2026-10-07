# TidalSense  ·  Fit: A  ·  Researched: 2026-10-06

## Snapshot
- **What they make:** **N-Tidal Diagnose**, a handheld AI breath test for COPD. The patient breathes
  normally for ~75 seconds; a patented CO2 sensor captures the capnogram and AI (trained on 2.5M+
  breaths) analyses it. Connected handset with **built-in 4G**, cloud platform, delivered as a managed
  service. Also **N-Tidal Capture** for remote monitoring [1][2].
- **Regulatory:** CE mark Class IIa under EU MDR for COPD (2025-03); in NHS use (Suffolk and North East
  Essex ICB, NHS Wales, Glasgow, community lung clinics) [2][3].
- **HQ / region:** The Vinery, 15a Vinery Road, Cambridge, UK [1].
- **Size:** ~20 people listed in Apollo [7]; exact headcount unverified.
- **Funding:** £14.2M ($19M), 2026-07-24 (Cross-Border Impact Ventures, BGF, Airstream Capital,
  Foresight); ~£34M to date including ~£9M grants [2][3].
- **Website:** https://www.tidalsense.com

## Lead info
- **Website:** https://www.tidalsense.com · **News:** on site · **Careers:** https://www.tidalsense.com/careers/
- **LinkedIn:** https://www.linkedin.com/company/tidalsense/ · **X/Twitter:** https://twitter.com/tidalsense [1]
- **HQ:** Cambridge, UK · **Founded:** unverified (company no. 08500211) [1] · **Employees:** ~20 (Apollo) [7]
- **Funding:** £14.2M, 2026-07-24, led by Cross-Border Impact Ventures (with BGF, Airstream, Foresight) [2][3]
- **What they make / tech:** CO2 breath sensor handset, 4G, cloud, AI. MCU/RTOS: **unverified**.
- **Recent news (last 6 months):**
  - 2026-07-24: round to accelerate UK/Ireland/Europe, **prepare US market entry**, expand into
    **asthma diagnostics** and scale the commercial team [2]
- **Hiring:** an "Embedded Engineer" post on Workable appeared in search (https://apply.workable.com/tidalsense/jobs/view/5D85DCDF4F) but returned 404 on 2026-10-06 (closed or moved).
- **HubSpot company ID:** 350982630117 (https://app.hubspot.com/contacts/247517534/record/0-2/350982630117)
- **HubSpot contact IDs:** Alla Kitov 564744264413, Jaynell Ng 564632996542 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Alla Kitov (**primary**) | Head of Product | unverified | UK; decision maker per Saleshandy | **Lead ID 880752309** | 6707f662650c380001a5a1b3 (has email) |
| Jaynell Ng | Systems Engineering Manager | unverified | UK; owns device systems engineering | **Lead ID 452048273** | 5f4d83908d3cba000129b222 (has email) |
| Dr Ameera Patel | CEO | unverified | Quoted on the 2026 round [2] | not found | not found |

Also in Saleshandy: Molly Cox, Software Engineering Manager (526110484).

## Why now (triggers)
- **2026-07-24 round with stated plans** [2]: US entry (likely FDA work and a US-ready handset) and an
  asthma indication. Both usually mean hardware/firmware changes to the device (our inference).

## Engineering signals
- Small team (~20 in Apollo) with a systems engineering manager, one embedded software engineer and
  software engineers [7]: thin embedded bench for a regulated connected device.
- Recent embedded engineer post (now closed).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Alla Kitov | Head of Product | https://www.linkedin.com/in/allakitov (Saleshandy) | **Primary.** Saleshandy 880752309. **Email: alla.kitov@tidalsense.com** (valid; Saleshandy reveal 6ac4b266d4babb5074f308e1, 2026-10-06). **Saleshandy sequence:** "CF · TidalSense · Alla Kitov (2026-10-07)", `k4PexEQXwn`, built inactive 2026-10-07 |
| Jaynell Ng | Systems Engineering Manager | unverified | Alternative, closest to the device. Saleshandy 452048273 |

## Best angle
**Service line:** embedded firmware + hardware for a regulated connected medical device (low power,
cellular, IEC 62304-aware) · **Case study:** BLE smart glucometer (/case-study/smart-glucometer);
health monitoring hub (/case-study/health-monitoring-hub) · **Blog:** `iomt-development-services-cost-breakdown`

**Hypothesis:** a ~20-person medtech that plans a US launch and an asthma indication will need
handset changes (cellular variants, firmware for new test modes, possibly a cost-down) while the
team is busy with clinical and regulatory work. We can take a defined block under NDA with full IP transfer.

## Risks / disqualifiers
- Embedded post now closed; they may have hired.
- Funding is the source of the roadmap; the email mentions the plans only, never the round.
- Founded year unverified.

## Sources
1. https://www.tidalsense.com (read 2026-10-06)
2. https://www.uktech.news/medtech/tidalsense-secures-14-2m-for-ai-breath-test-20260724 (read 2026-10-06)
3. https://www.mobihealthnews.com/news/tidalsense-raises-19m-improve-copd-diagnostics and https://tech.eu/2026/07/24/uk-health-startup-using-ai-to-cut-lung-disease-test-time-clinches-19m/ (via search summary)
7. Saleshandy Lead Finder and Apollo people search for tidalsense.com (2026-10-06)

---
**Summary:** Fit A. Angle: device hardware/firmware capacity for the US and asthma versions of
N-Tidal. Next step: CEO reviews the draft to Alla Kitov (`drafts/email/2026-10-06-tidalsense.md`).
