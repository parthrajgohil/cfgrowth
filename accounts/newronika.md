# Newronika S.p.A.  ·  Fit: A  ·  Researched: 2026-10-07

## Snapshot
- **What they make:** αDBS®, an adaptive (closed-loop) deep brain stimulation system for Parkinson's disease.
  It senses local field potentials and adjusts stimulation in real time. The CE-marked system includes the
  implantable pulse generator, a physician interface, a **patient remote control**, a patient app for
  at-home data collection, and integration with **WebBioBank™**, their cloud neural-data platform [1].
- **HQ / region:** Milan area, Italy (Cologno Monzese site; legal address Milan); US location in Goose Creek,
  South Carolina [2]. Spin-off of Fondazione IRCCS Ca' Granda Policlinico and the University of Milan [1].
- **Size:** 21-50 employees [3].
- **Funding:** Series B EUR 13.6M (2025-02; led by Fondazione ENEA Tech e Biomedical, with Indaco, Innogest,
  Wille Finance, TNBT Capital, F3F) [3]. Total raised unverified.
- **Website:** https://www.newronika.com

## Lead info
- **Website:** https://www.newronika.com · **News:** https://www.newronika.com/news · **Careers:** https://www.newronika.com/careers (no listings visible)
- **LinkedIn:** https://www.linkedin.com/company/newronika [2] · **X/Twitter:** not found
- **HQ:** Cologno Monzese (MI), Italy · **Founded:** unverified · **Employees:** 21-50 [3]
- **Funding:** Series B EUR 13.6M, 2025-02 [3]
- **What they make / tech:** implantable adaptive DBS (IPG with LFP sensing), physician programming interface,
  patient remote control, patient app, WebBioBank cloud [1][2]. Chips, radios and RTOS: **unverified**.
- **Recent news (last 6 months):**
  - 2026-07-14: CE Mark for the latest commercial release of αDBS, now with full WebBioBank cloud integration;
    "first CE Mark for an adaptive DBS system with integrated cloud connectivity" [1]
  - 2026-09-30: first participant implanted (2026-09-21, Monza) in the **ADVENT** pivotal study: 104 patients,
    up to 18 sites in the US and EU, under an FDA IDE, to support FDA approval [4]
- **HubSpot company ID:** 351038728947 (https://app.hubspot.com/contacts/247517534/record/0-2/351038728947)
- **HubSpot contact IDs:** Lorenzo Rossi 565127834332, Martino Sykora 565231614667 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Lorenzo Rossi (**primary**) | Co-founder, CEO & CTO | unverified | Quoted on the CE Mark and ADVENT news [1][4] | not found | 5b18009ba6da98796bcb51de (has email) |
| Martino Sykora | Firmware Manager | unverified | Milan; ~25 years' experience (Saleshandy) | **Lead ID 232827896** | 66fbaeb16a0f4f0001b374c2 (has email) |

Others in Apollo: a Senior Systems and Electronics Engineer, two firmware engineers, a firmware developer /
clinical field engineer, QA/RA and operations managers. A small firmware team carrying an implant, a patient
remote, an app and a cloud link.

## Why now (triggers)
- **CE Mark with cloud integration, 2026-07-14** [1]: the connected-care side (patient remote, app, WebBioBank)
  is now part of the regulated product and has to be maintained under change control.
- **ADVENT pivotal study started, 2026-09-21** (announced 2026-09-30) [4]: 18 sites across the US and EU, a
  US launch path, and a commercial European release, all on a 21-50 person team.

## Engineering signals
- Firmware team of a few people (Apollo) covering implant, external devices and data upload.
- Cloud platform plus at-home data collection: wireless link, app, data integrity, cybersecurity.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Lorenzo Rossi | Co-founder, CEO & CTO | unverified | **Primary.** Not in Saleshandy; Apollo has email |
| Martino Sykora | Firmware Manager | unverified | Alternative. Saleshandy 232827896. Same angle fits him |

## Best angle
**Service line:** embedded firmware + mobile/cloud for the external side of the system (patient remote, app,
data upload), IEC 62304-style documentation discipline · **Case study:** connected health monitoring hub + app
(/case-study/health-monitoring-hub) · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** with a commercial European release and a two-continent pivotal study running at the same time,
the firmware team is the bottleneck. The implant stays in-house; we can take the patient-side pieces (remote
control firmware, BLE/app link, sync to the cloud, test automation) under NDA with full IP transfer.

## Risks / disqualifiers
- Active implantable device: they will keep implant firmware in-house. Our pitch is the external devices, app
  and cloud. We have no implant case study and must not suggest one.
- Radio and chip details unverified; the email doesn't name their stack.
- Not defence. EU MDR / FDA regulated: expect long supplier qualification.

## Sources
1. https://pr.washingtoncitypaper.com/article/Newronika-Receives-CE-Mark-for-aDBSr-Advancing-Its-Mission-to-Make-Adaptive-Therapy-the-Standard-of-Care/6a55fb6916e7610b3c53e71d (2026-07-14; read 2026-10-07)
2. https://www.newronika.com/ (read 2026-10-07)
3. https://www.biospace.com/press-releases/newronika-closes-13-6-million-series-b-financing-to-accelerate-development-of-adaptive-dbs-platform and search summaries (startbase, life-sciences-europe) for size
4. https://www.boersennews.de/nachrichten/meldungen/eqs/eqs-news-newronika-announces-first-participant-implanted-in-advent-pivotal-study/5294983/ (2026-09-30; read 2026-10-07)
5. Saleshandy Lead Finder and Apollo people search for Newronika (2026-10-07)

---
**Summary:** Fit A. Angle: firmware/app/cloud capacity for the patient side of αDBS during the EU launch and
ADVENT study. Next step: CEO reviews the draft to Lorenzo Rossi (`drafts/email/2026-10-07-newronika.md`).
