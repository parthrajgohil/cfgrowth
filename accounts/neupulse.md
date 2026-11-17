# Neupulse (Neurotherapeutics Ltd)  ·  Fit: A  ·  Researched: 2026-11-06

## Snapshot
Wrist-worn median-nerve stimulation wearables: Neupulse C (wellness, calm/relaxation; on sale in the UK with the
Neutrack C app) and Neupulse M (medical device for Tourette syndrome tics, in the regulatory pathway) · Nottingham
HQ with an engineering office in Basingstoke, UK · 19 employees (Built In) · founded 2021 as a University of
Nottingham spin-out · GBP 3M round 2026-02-13 led by Eos Advisory and MEIF II (Mercia) · https://www.neupulse.co

## Lead info
- **Website:** https://www.neupulse.co (Built In lists neupulse.co.uk; that host fails TLS) · **News:** https://www.neupulse.co/blogs/news (empty) · **Careers:** https://builtin.com/company/neupulse/jobs
- **LinkedIn:** not linked from the site (unverified) · **X:** none (site links Facebook, Instagram, TikTok, YouTube)
- **HQ:** Nottingham, UK (Mercia release); engineering roles in Basingstoke, Hampshire
- **Founded:** 2021 (University of Nottingham spin-out; trading name of Neurotherapeutics Ltd)
- **Size:** 19 employees (Built In); 11–50 (embedded.jobs)
- **Funding:** USD 3.2M seed led by Eos Advisory (2024-03, Business Wire); GBP 3M led by Eos Advisory and Midlands Engine Investment Fund II via Mercia Ventures, 2026-02-13, to move from development to commercial launch (https://www.mercia.co.uk/neupulse-raises-3m-to-accelerate-delivery-of-tourettes-wristband/). Not for use in the email.
- **What they make / tech:** button-activated rhythmic median-nerve stimulation at the wrist; app-controlled. Firmware: embedded C/C++ on STM32 / ARM Cortex-M, FreeRTOS, BLE, low-power battery device, IEC 62304 (job post). Earlier posts: Altium, STM32, BLE electronics engineer; senior embedded firmware engineer (FreeRTOS, BLE) (embedded.jobs, expired). Early prototype and design support from Ensera Design (2025 launch release).
- **Recent news (last 6 months):**
  - 2026-10-09: University of Nottingham: "New wrist stimulation device is bringing relief for people with Tourette's" (Neupulse C launched; Neupulse M still in the regulatory pathway) (https://www.nottingham.ac.uk/news/new-wrist-stimulation-device-is-bringing-relief-for-people-with-tourettes)
  - ~2026-10-28: two Embedded Software Engineer posts (Basingstoke, Nottingham), "9 days ago" on 2026-11-06 (https://builtin.com/job/embedded-software-engineer/11944827)
  - ~2026-09/10: Electronic Manufacturing Engineer and Electronic Development & Support Engineer posts (production transfer to a contract manufacturer) (https://builtin.com/job/electronic-manufacturing-engineer/11044821)
  - 2026-07: CTO – Medical Device post in Basingstoke (itjobboard, unverified whether filled)
- **HubSpot:** company [361483916990](https://app.hubspot.com/contacts/247517534/record/0-2/361483916990) · contacts David Moser 586340940482, Paul Cable 586530881267 · notes 416922785467 (research), 416888346298 (draft)

## Why now (triggers)
- **Embedded Software Engineer posts, ~9 days old (2026-11-06):** the hire will "take technical ownership of the
  firmware", "review and guide the external development partner's work", shape the architecture for **Version 2**
  and future products, keep it IEC 62304-compliant, and "lay the groundwork for bringing firmware development
  in-house". Works with the Lead Engineer and the **incoming CTO**. The first device is "selling ahead of
  expectations"; the company is preparing for US and European markets.
  (https://builtin.com/job/embedded-software-engineer/11944827)
- **Neupulse C launched in the UK** (University of Nottingham, 2026-10-09); Neupulse M still in regulatory review.
- **Production transfer:** Electronic Manufacturing Engineer post owns NPI, DFM reviews and automated test systems
  with the external contract manufacturer.

## Engineering signals
- Firmware today sits with an external development partner; the company wants in-house ownership over time.
- STM32 / Cortex-M, FreeRTOS, BLE, low-power, IEC 62304.
- A 19-person company hiring two embedded engineers plus manufacturing and sustaining electronics roles: a thin team
  carrying V2, a medical submission and a production ramp at once.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| David Moser (**primary**) | Chief Technology Officer | not found | 360501232 | 66faeecbf923c40001c693dd (has email) | Background in electromechanical medical devices, wireless and embedded control (Saleshandy summary). May be the "incoming CTO" in the job post; start date unverified |
| Paul Cable | Chief Executive Officer | not found | not checked | 66f104e11a38cf0001273431 (has email) | Named CEO in Mercia release and the 2025 launch release |

## Best angle
Service line: embedded firmware (primary row: healthcare) · Case study: BLE smart glucometer (/case-study/smart-glucometer) ·
Blog: `medical-wearable-device-development-challenges-and-fix`.
They have one partner writing firmware and want to bring it in-house while V2 and the medical file move forward. We
can add capacity on V2 firmware (BLE, low-power, stimulation control, IEC 62304 documentation, HIL/production test)
and deliver full source and IP, so the in-house team can take it over cleanly.

## Risks / disqualifiers
- An external firmware partner is already in place (likely the one that built V1); they may not want a second one.
- The posts say "in-office" in Basingstoke; they are building in-house capacity.
- CTO identity: Saleshandy/Apollo list David Moser as CTO; the job post mentions an incoming CTO.

## Sources
- https://builtin.com/company/neupulse · https://builtin.com/company/neupulse/jobs
- https://builtin.com/job/embedded-software-engineer/11944827
- https://builtin.com/job/electronic-manufacturing-engineer/11044821
- https://www.mercia.co.uk/neupulse-raises-3m-to-accelerate-delivery-of-tourettes-wristband/
- https://www.nottingham.ac.uk/news/new-wrist-stimulation-device-is-bringing-relief-for-people-with-tourettes
- https://drug-dev.com/neupulse-launches-first-of-its-kind-wearable-with-the-support-of-ensera-design-to-help-people-living-with-tourette-syndrome/
- https://embedded.jobs/company/neupulse
- https://www.neupulse.co

**Summary:** Fit A · V2 firmware capacity and a clean in-house handover for a 19-person neurostim wearable maker ·
next step: CEO reviews the draft to David Moser (CTO).
