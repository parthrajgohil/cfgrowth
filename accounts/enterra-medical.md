# Enterra Medical, Inc.  ·  Fit: A  ·  Researched: 2026-10-13

## Snapshot
- **What they make:** Enterra Therapy, an implanted gastric electrical stimulation (GES) system for chronic, drug-refractory
  nausea and vomiting from gastroparesis (Humanitarian Device) [1][2]. New **Enterra ReliaStim** stimulation lead, FDA
  approved, introduced 2026-01-12 [3].
- **History:** formed in 2022 to take over Enterra Therapy from Medtronic [4].
- **HQ / region:** 5353 Wayzata Boulevard, Suite 400, St. Louis Park, MN 55416, USA [1].
- **Size:** 51–200 (Simplify) [5]; ~21 people visible in Apollo [8].
- **Funding:** not public (none listed on Simplify) [5].
- **Website:** https://www.enterramedical.com

## Lead info
- **Website:** https://www.enterramedical.com · **Newsroom:** https://www.enterramedical.com/newsroom/ ·
  **Careers:** https://enterramedicalinc.applytojob.com
- **LinkedIn:** https://www.linkedin.com/company/enterra-medical/ · **X/Twitter:** not found
- **HQ:** St. Louis Park (Minneapolis), MN, USA · **Founded:** 2022 · **Employees:** 51–200 (Simplify, unverified)
- **Funding:** unverified / not public
- **What they make / tech:** active implantable neurostimulator (IPG + leads). The open Principal Electrical Engineer post
  names analog/mixed-signal, low-power and power-management design, **BLE and RF telemetry**, hermetic packaging,
  ISO 14708 EMC/EMI, ISO 13485/14971, IEC 60601, and **closed-loop therapies**; works with firmware, systems and
  mechanical teams [6]. A Principal Firmware Engineer (implantables, C/C++, RTOS) post was published 09/04/2026 and is
  now inactive [7].
- **Recent news:**
  - 2026-01-12: Enterra ReliaStim lead introduced (FDA approved) [3]
  - 2025-06-24: NAVIGATE study (GES for chronic nausea with normal gastric emptying) begins; FDA IDE approval and
    Breakthrough Device designation [3]
  - 2026-08-11: UAMS starts offering Enterra Therapy [9]
- **HubSpot company ID:** 351797662412 (https://app.hubspot.com/contacts/247517534/record/0-2/351797662412)
- **HubSpot contact IDs:** none created (buyer surnames masked in Apollo; contact to be created when the email is revealed)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Barry Yo***v (**primary**, surname masked) | Director, Systems Engineering | unverified | systems lead; would own the next-gen architecture | not found (2 searches) | 659be0b03a09e900016c8396 (has email) |
| Peter So***s (surname masked) | Chief Executive Officer | unverified | | not found | 66fda40a685d630001b85941 (has email) |

## Why now (triggers)
- **Hiring a Principal Electrical Engineer** to lead design of implant electronics incl. **BLE / RF telemetry**, low-power
  and closed-loop therapy work; listed as open on their own job board, read 2026-10-13 [6].
- **Principal Firmware Engineer – Implantable Medical Devices** (7+ yrs firmware, 5+ implantable, C/C++, RTOS),
  published 09/04/2026, now inactive [7]. Date format is ambiguous (US: 4 Sept 2026); either way within ~6 months.
- ReliaStim lead FDA approved and introduced 2026-01-12 [3]; NAVIGATE IDE study running (2025-06) [3].

## Engineering signals
- Hiring senior electronics and firmware leads at the same time, for **closed-loop** therapy with **BLE telemetry**: this
  reads like a next-generation stimulator, not just sustaining the Medtronic-era device.
- Small company inheriting a legacy platform: thin in-house embedded bench, high regulatory bar.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Barry Yo***v | Director, Systems Engineering | unverified | **Primary.** Apollo has email; not in Saleshandy |
| Peter So***s | CEO | unverified | Alternative; Apollo has email |

## Best angle
**Service line:** Embedded firmware + mobile (primary row: firmware for healthcare) · **Case study:** BLE smart
glucometer (/case-study/smart-glucometer) · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** A BLE-telemetry, closed-loop next-gen system needs more than the implant: the external side (patient
controller, clinician programmer app, BLE link security, OTA for externals, data to cloud) is a big, parallel workload.
We should **not** claim implant experience. Offer to take the external BLE side (firmware + iOS/Android apps) so their
principals stay on the implant.

## Risks / disqualifiers
- Active implantables (ISO 14708, Class III) are a high bar; we have no implant reference. Pitch the external/BLE side.
- Buyer surnames masked; no Saleshandy match. Email needs Apollo reveal.
- Size and funding unverified.

## Sources
1. https://www.enterramedical.com (read 2026-10-13)
2. https://news.uams.edu/2026/08/11/uams-now-offers-enterra-therapy-a-minimally-invasive-treatment-for-gastroparesis/
3. https://www.enterramedical.com/newsroom/ (2026-01-12 ReliaStim; 2025-06-24 NAVIGATE) and
   https://www.businesswire.com/news/home/20260112583930/en/ (headline)
4. https://www.pharmadiversityjobboard.com/job/principal-firmware-engineer-implantable-medical-devices-14622705 (company blurb) and web search 2026-10-13
5. https://simplify.jobs/c/Enterra-Medical
6. https://enterramedicalinc.applytojob.com/apply/6whCUYoMQq/Principal-Electrical-Engineer (read 2026-10-13, open)
7. https://www.pharmadiversityjobboard.com/job/principal-firmware-engineer-implantable-medical-devices-14622705 ("Published 09/04/2026", inactive)
8. Apollo people search (domain enterramedical.com), Saleshandy Lead Finder (2026-10-13)
9. https://news.uams.edu/2026/08/11/uams-now-offers-enterra-therapy-a-minimally-invasive-treatment-for-gastroparesis/

---
**Summary:** Fit A. Angle: BLE firmware + patient/clinician apps for the external side of a next-gen closed-loop
stimulator, while they hire principals for the implant. Next step: CEO reviews the draft to the Director of Systems
Engineering (`drafts/email/2026-10-13-enterra-medical.md`).
