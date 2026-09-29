# Sibel Health  ·  Fit: A  ·  Researched: 2026-09-29

## Snapshot
- **What they make:** soft, skin-mounted wireless wearable sensors for continuous patient
  monitoring. **ANNE One** measures ECG, heart rate, respiratory rate, SpO₂, pulse rate, skin
  temperature, body position, activity and fall detection, with the ANNE View bedside app and
  a central dashboard. It needs no proprietary gateway [1]. **ANNE Maternal** (FDA 510(k),
  2026-04-09) adds wireless fetal heart rate and uterine contraction monitoring [2]. Spun out
  of Prof. John Rogers' lab at Northwestern University [3].
- **HQ / region:** Chicago, IL, USA; office in Seoul [1].
- **Size:** ~102 employees (May 2026, per LeadIQ via search summary [5]). Apollo indexes 30 managers and above.
- **Stage / funding:** Series C: $30M (March 2025), extended to $39M (2025-10-14) [6]. Total
  raised: unverified (third-party figures range from $71M to $124M [6]).
- **Website:** https://sibelhealth.com

## Lead info
- **Website:** https://sibelhealth.com · **News:** press releases on PR Newswire (https://www.prnewswire.com/news/sibel-health/) · **Careers:** https://sibelhealth.com/careers/ (roles listed on LinkedIn)
- **LinkedIn:** https://www.linkedin.com/company/sibel-health · **X/Twitter:** unverified
- **HQ:** Chicago, IL, USA · **Founded:** 2018 (Built In Chicago, via search summary [5]) · **Employees:** ~102 (unverified)
- **Funding:** Series C $30M (2025-03), extended to $39M (2025-10-14) [6]; $3.5M ARPA-H SBIR contract (2026-04-27) [3]
- **What they make / tech:** soft epidermal wireless sensor patches (ECG, PPG/SpO₂, temperature,
  IMU), bedside app, central station, cloud; IEEE 11073 SDC interoperability; EU MDR Class IIb
  [1]. Radio not stated on the pages we read (likely BLE; unverified). Hiring has included a
  Senior Android Developer (https://sibelhealth.com/senior-android-developer/).
- **Recent news (last 6 months):**
  - 2026-04-09: FDA 510(k) clearance for ANNE Maternal [2]
  - 2026-04-27: $3.5M ARPA-H Direct-to-Phase II SBIR contract to build a first-in-class
    **wearable edema sensor** (ultra-thin, soft, multimodal patch for lower-leg fluid status)
    [3]
  - 2026-06-10: EU MDR Class IIb CE mark for ANNE One; Dräger partnership for European
    hospitals; Capital Region of Denmark deployment [1]
- **HubSpot company ID:** 349177514723 (https://app.hubspot.com/contacts/247517534/record/0-2/349177514723)
- **HubSpot contact IDs:** Jong Yoon Lee 560599186135, Andrew Senycia 560634761952, Steve Xu 560638404338 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Jong Yoon Lee (**primary**) | Co-founder & CTO | https://www.linkedin.com/in/jong-yoon-lee-33104613b/ | Co-founder; previously VP Software Engineering at Sibel and principal software engineer at Northwestern [4] | **Lead ID 471948325** | 61137911f4bdad00014dd175 (no email) |
| Andrew Senycia | Manager of Firmware Development | unverified | Leads firmware (Apollo/Saleshandy title) | **Lead ID 235665189** | 671fad8139241f0001e36338 (has email) |
| Steve Xu, MD | CEO & Co-founder | unverified | Quoted in all 2026 releases; PI on the ARPA-H contract [1][2][3] | not found | 66f287bcc144370001d7c229 (has email) |

## Why now (triggers)
- **New sensor program:** ARPA-H contract to develop a new wearable edema patch that "will
  integrate with Sibel's FDA-cleared mobile software platform and cloud" ([3], 2026-04-27).
  Sibel itself calls the challenges "deeply intertwined hardware, sensing, signal processing
  and clinical" ones [3].
- **Regulatory milestones:** ANNE Maternal FDA clearance ([2], 2026-04-09) and ANNE One EU MDR
  Class IIb CE mark ([1], 2026-06-10), with Dräger rolling it out to European hospitals.

## Engineering signals
- Three product lines (ANNE One, ANNE Maternal, edema sensor) plus a pharma-trial platform
  [1] on one sensor/firmware base, all in regulated markets.
- In-house team exists: CTO, a VP Hardware Engineering (initials only, via The Org [7]), a
  Manager of Firmware Development, directors of software, cloud and mechanical engineering
  (Apollo). A new ARPA-H program on top of EU rollout likely stretches firmware/hardware
  capacity (inference).
- Deployment in low-resource settings (India, Kenya) is part of the maternal product's
  mandate [2]: power and connectivity robustness matter.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Jong Yoon Lee | Co-founder & CTO | https://www.linkedin.com/in/jong-yoon-lee-33104613b/ | Owns the technical roadmap. **Primary.** Saleshandy 471948325 |
| Andrew Senycia | Manager of Firmware Development | unverified | Closer to firmware workload. Saleshandy 235665189 (alternative) |
| Steve Xu | CEO | unverified | Business decision-maker; Apollo only |

## Best angle
**Service line:** embedded firmware + hardware for a new wearable sensor (low-power firmware,
sensor front-end, BLE link to the existing app/cloud) · **Case study:** BLE smart glucometer
(/case-study/smart-glucometer) · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** Sibel's core team is busy with EU rollout and the maternal launch while ARPA-H
funds a brand-new patch with its own sensing and firmware. An outside firmware/hardware team
can take a defined piece (prototype firmware, sensor front-end bring-up, test fixtures)
under NDA with full IP transfer, so the core team stays on the cleared products.

## Risks / disqualifiers
- Strong in-house engineering (CTO, VP Hardware, firmware manager). They may see no need for
  outside help; position as extra capacity, not replacement.
- Well-funded; may prefer US partners for an ARPA-H program (ARPA-H rules on foreign
  subcontracting unverified; the CEO should check before pitching work on that contract).
- Headcount, total funding and radio type are unverified. CLAUDE.md lists no FDA submission
  experience, so don't claim any.

## Sources
1. https://www.prnewswire.com/news-releases/sibel-health-receives-eu-mdr-class-iib-ce-mark-for-anne-one-the-first-wireless-wearable-patient-monitoring-platform-certified-to-key-interoperability-standards-302796155.html (2026-06-10)
2. https://www.prnewswire.com/news-releases/sibel-health-receives-fda-clearance-for-anne-maternal-a-comprehensive-and-fully-wireless-maternal-fetal-monitoring-platform-302737398.html (2026-04-09)
3. https://www.prnewswire.com/news-releases/sibel-health-awarded-a-3-5-million-arpa-h-direct-to-phase-ii-sbir-contract-to-develop-a-first-in-class-wearable-sensor-for-continuous-edema-monitoring-302753528.html (2026-04-27)
4. https://www.linkedin.com/in/jong-yoon-lee-33104613b/ and https://theorg.com/org/sibel-health/org-chart/jong-yoon-lee (via search summary)
5. https://www.builtinchicago.org/company/sibel-health and https://leadiq.com/c/sibel-health/5f43f57aa0cf8ca20b3bdd8c/employee-directory (via search summary)
6. https://www.prnewswire.com/news-releases/sibel-health-secures-additional-series-c-extension-funding-to-39-million-from-key-strategic-investors-and-announces-new-board-of-director-appointments-302582505.html (2025-10-14); https://medcitynews.com/2025/03/healthcare-remote-patient-monitoring-capital/
7. https://theorg.com/org/sibel-health/teams/engineering-and-technology (via search summary)
8. Saleshandy Lead Finder and Apollo people search for sibelhealth.com (2026-09-29)
