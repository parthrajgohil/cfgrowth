# RESPINOR AS  ·  Fit: A  ·  Researched: 2026-10-28

## Snapshot
- **What they make:** RESPINOR DXT, a non-invasive, ultrasound-based device that continuously monitors the diaphragm
  (diaphragm excursion and respiratory rate) in critically ill, ventilated patients, to help ICU teams decide when to
  wean. Sensors "designed for patient comfort with computer-aided placement" [1]. Studies describe it as
  "operator-independent continuous ultrasound monitoring" [2].
- **HQ / region:** Gaustadalleen 21, 0349 Oslo, Norway [1].
- **Size:** 11 people on the team page [3]; Apollo lists 10 [4].
- **Stage / funding:** founded 2015 (per a Mercuri Urval CTO listing seen in search, unverified) [5]. NOK 14.2M from the
  Research Council of Norway (2020-12) and a ~NOK 20M private placement (2021-10) [2]; EU Horizon 2020 DiaMon project
  (grant 768260, 2017–2020) [6]. Nothing newer found; total raised unverified.
- **Website:** https://www.respinor.com

## Lead info
- **Website:** https://www.respinor.com · **News:** https://www.respinor.com/news · **Careers:** not listed ·
  **LinkedIn:** https://www.linkedin.com/company/respinor-as/ (inferred from Saleshandy logo path, unverified) · **X:** not listed
- **HQ:** Oslo, Norway · **Founded:** 2015 (unverified) · **Employees:** ~11 · **Raised:** NOK 20M placement 2021-10 +
  grants; latest round unknown
- **What they make / tech:** ultrasound sensors + monitor with signal processing; CE-marked under EU MDR (2025-08-04);
  FDA Breakthrough Device (2024-11-22); ISO 13485 since 2018; "MedTech partnership" with Kitron (2021-03-23, role not
  stated) [2]. Chips, radios and firmware stack not public.
- **Recent news (last 6 months) [2]:**
  - 2026-07-30: De Novo request submitted to the FDA for DXT
  - 2026-07-30: distribution agreement with Dextro Medica (Spain)
  - 2026-06-29: exclusive distributor GADOmed (Italy), "supporting RESPINOR's European launch" [7]
  - 2026-06-23: new CFO (Sondre Bergløff) "to support commercial scale-up and international growth"
  - Earlier: Eden Medical (England, Scotland, Wales) 2026-02-12; Arseus Medical (Benelux) 2025-12-01
- **HubSpot company ID:** 357142458070 (https://app.hubspot.com/contacts/247517534/record/0-2/357142458070)
- **HubSpot contact IDs:** Håkon Dahle 579384001242 · Trude Tingvoll 578831594224 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Håkon Dahle (**primary**) | Director Technology Development | not found | Leads the technology side of an 11-person team [3]; Saleshandy places him in Ski, Viken | 377941774 | 5cc608cff651250f2b387fd8 (has email) |
| Trude Tingvoll | Chief Executive Officer | not found | CEO, quoted in the GADOmed release [7] | not found | 5fca41fa5662140001c6348b (has email) |

## Why now (triggers)
- **FDA De Novo request submitted 2026-07-30** [2]: a US launch is the next step if granted. Within 6 months → **A**.
- **European roll-out:** four distributors signed in eight months (Benelux, UK, Italy, Spain) and a new CFO for
  "commercial scale-up" (2026-06-23) [2][7].

## Engineering signals
- Technology team on the team page: Director Technology Development, a signal-processing engineer, a cybernetics
  engineer and a senior software engineer, plus a supply-chain manager [3]. No dedicated firmware or electronics
  engineer visible.
- A **CTO / Tech Lead** search for RESPINOR via Mercuri Urval appeared on arbeidsplassen.nav.no (R&D team leadership,
  DXT project, technology strategy). The posting now returns 404; date unknown [5].
- Production partner: Kitron "MedTech partnership" (2021) [2].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Håkon Dahle | Director Technology Development | https://www.linkedin.com/in/håkon-dahle-315053a5 (from Saleshandy reveal) | **Primary.** Saleshandy 377941774; Apollo has email. **Email:** h.dahle@respinor.com (Saleshandy `valid`, reveal request 6ae1dd83be0fcc050286d1a6, 2026-10-28). **Saleshandy batch:** "CF · batch 2026-10-28 17:03 · Europe · 1 lead", `7pzVnV2kzb`, built inactive 2026-10-28 |
| Trude Tingvoll | CEO | not found | Alternative; Apollo has email, not in Saleshandy |

## Best angle
**Service line:** embedded firmware + hardware (primary row: healthcare/medical, Europe) · **Case study:** connected
health monitoring hub + app; BLE smart glucometer · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** a De Novo filing, four new distributors and a scale-up CFO all land on a technology team of about four
people. FDA reviewer questions, production support with the EMS partner, cost-down of the sensor/monitor electronics
for volume, and the next hardware revision (or a US-specific version) compete for the same few engineers. We can take a
defined block (firmware, electronics re-engineering/BOM cost-down, a clinician app or connectivity) under NDA with full
IP transfer.

## Risks / disqualifiers
- Small company with modest disclosed funding (last placement 2021); budget for outside engineering is unverified.
- They may be about to hire a CTO (Mercuri Urval search, date unknown): a new CTO could either want help or pause
  decisions.
- Norway (EEA, not EU): treated as Europe like earlier Norwegian leads. Opt-out line included.
- DXT's ultrasound front-end is specialist; we don't claim ultrasound transducer design.

## Sources
1. https://www.respinor.com (2026-10-28)
2. https://www.respinor.com/news (2026-10-28) and linked items; Demoule et al., Critical Care (2024-07-16 news item)
3. https://www.respinor.com/team (2026-10-28)
4. Apollo people search, domain respinor.com (2026-10-28)
5. arbeidsplassen.nav.no/stillinger/stilling/b3a8507a-7657-401e-b732-fdfa9adb92b7 (search snippet; page 404 on 2026-10-28)
6. https://cordis.europa.eu/project/id/768260
7. LinkedIn reposts of the GADOmed release (no.linkedin.com/in/thomas-andersen-48100617), 2026-06-29
8. Saleshandy Lead Finder, RESPINOR (2026-10-28)

---
**Summary:** Fit A (FDA De Novo filed 2026-07-30, European roll-out with four distributors, ~4-person tech team). Angle:
firmware/electronics capacity and cost-down for scale. Next step: CEO reviews the draft to Håkon Dahle.
