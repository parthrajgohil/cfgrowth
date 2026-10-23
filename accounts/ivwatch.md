# ivWatch  ·  Fit: A  ·  Researched: 2026-10-22

## Snapshot
- **What they make:** continuous IV-site monitoring that detects infiltration and extravasation. The Model 400 patient
  monitor works with SmartTouch optical sensors [1][2]. The original clearance (K142374) covered optically clear infusates.
  A later clearance added iron sucrose (announced 2024-03) [2]. Older coverage reports an integration of the sensor into
  Philips patient monitors [3].
- **HQ / region:** Newport News, Virginia, USA. Devices are designed and made at its Newport News facility [4].
- **Size:** 27 people in Apollo [5]. Headcount is not published.
- **Stage / funding:** venture-backed, about USD 13.7M total per VCBacked, last round 2022-02 (unverified) [6].
- **Website:** https://www.ivwatch.com (WebFetch returned HTTP 418, so the site was not read)

## Lead info
- **Website:** https://www.ivwatch.com · **News:** PR Newswire releases · **Careers:** not checked (site blocked fetch)
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Newport News, VA, USA · **Founded:** unverified · **Employees:** ~27 in Apollo
- **Raised:** ~USD 13.7M (VCBacked, unverified)
- **What they make / tech:** optical IV-site sensors (SmartTouch, SmartTouch+), Model 400 monitor ("more than 18,000 checks
  per hour", company claim) [1]. Chips and firmware platform are not public.
- **Recent news:**
  - 2026-08-18: 510(k) submitted for the SmartTouch+ Sensor, extending detection to white-opaque infusates (TPN, propofol) [1][2]
  - 2026-07-22: report on a GBP 8M sole-supplier NHS framework for the Model 400 and SmartTouch sensors, starting
    2026-02-16; availability through NHS Supply Chain announced 2026-03 [7]
  - 2026-03-11: partnership with Aon on a return-on-investment model for patient harm (headline only) [7]
- **HubSpot company ID:** 354641002200 (https://app.hubspot.com/contacts/247517534/record/0-2/354641002200)
- **HubSpot contact ID:** Jason Naramore 574549181115 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Jason Naramore (**primary**) | Chief Technology Officer | unverified | "Experienced engineering leader with a deep background in signal processing and medical…" (Saleshandy summary); based in Williamsburg VA [8] | 129274214 | 66f25659b086030001bf584a (has email) |
| John Ga***n | VP, Manufacturing Technology | unverified | Surname masked in Apollo [5] | not checked | 5fe6e4d28c9052000186df57 (has email) |

## Why now (triggers)
- **SmartTouch+ 510(k) submitted 2026-08-18** for white-opaque infusates [1][2]. That is a new sensor generation under FDA
  review, within 6 months → A.
- **NHS framework** (from 2026-02-16) means more UK installs to support [7].

## Engineering signals
- Apollo lists 27 people. Engineering is 1 Embedded Software Engineer, 1 Senior Product Development Engineer and the CTO. The
  rest are sales, clinical, manufacturing and QA [5]. A new sensor plus sustaining work for a growing installed base is a
  lot for that team (inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Jason Naramore | CTO | unverified | **Primary.** Saleshandy 129274214; Apollo has email |

## Best angle
**Service line:** embedded firmware + hardware for a medical sensor/monitor (healthcare, primary row) · **Case study:**
connected health monitoring hub + app · **Blog:** `outsourcing-decision-for-device-driver-development`

**Hypothesis:** ivWatch is a manufacturer with a very small engineering team. It now has a new sensor under FDA review, a
UK framework to deliver and a monitor platform to sustain. Taking a firmware or electronics work package off the CTO's
plate (next sensor revision, monitor firmware, integration interfaces) fits, with full IP handover.

## Risks / disqualifiers
- Headcount and funding are unverified. Apollo may undercount engineers.
- The core optical IP is clearly theirs, so pitch around it (firmware, electronics, sustaining), not into it.
- US recipient, so no opt-out line is required.

## Sources
1. https://pharmashots.com/?p=35325 (2026-08-19, summarising PR Newswire 2026-08-18)
2. Web search summary of the PR Newswire release and prior clearances (K142374; iron sucrose 2024-03), 2026-10-22
3. https://www.massdevice.com/ivwatch-to-integrate-iv-infiltration-sensor-into-philips-patient-monitors/ (older)
4. https://newportnewsva.com/?p=6324 (local profile)
5. Apollo people search, domain ivwatch.com (2026-10-22)
6. https://www.vcbacked.co/company/ivwatch
7. https://runtimewire.com/article/ivwatch-secured-sole-supplier-nhs-route-continuous-iv-monitoring (2026-07-22)
8. Saleshandy Lead Finder, ivWatch CTO (2026-10-22)

---
**Summary:** Fit A (SmartTouch+ 510(k) submitted 2026-08-18; thin engineering team). Angle: firmware/electronics capacity
beside the core sensing IP. Next step: CEO reviews the draft to the CTO (`drafts/email/2026-10-22-ivwatch.md`).
