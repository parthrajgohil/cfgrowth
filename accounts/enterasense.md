# EnteraSense  ·  Fit: B  ·  Researched: 2026-10-21

## Snapshot
- **What they make:** PillSense, an ingestible capsule that detects blood in the upper GI tract. The capsule is paired
  with a bedside receiver, which shows "Blood detected" / "No Blood detected" in under 10 minutes [1][2]. FDA De Novo
  (2023-02) [3]; Cook Medical is the exclusive US distributor (since 2024) [4].
- **HQ / region:** Galway, Ireland; Enterprise Ireland High Potential Start-up [3][5]
- **Size:** unverified. Apollo lists 8 people: CTO, Director QA/RA, Director New Business Development, founders, Principal
  Device Design Engineer, Senior Hardware Engineer [6]
- **Funding:** not found
- **Website:** https://www.enterasense.com

## Lead info
- **Website:** https://www.enterasense.com · **News:** not checked · **Careers:** not found
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Galway, Ireland · **Founded:** 2015 [3] · **Employees:** unverified
- **Raised:** not found (Enterprise Ireland HPSU, innovation vouchers) [5]
- **What they make / tech:** optical blood sensing (bespoke LEDs, filters, detector) developed with the CAPPA gateway;
  drive/measurement electronics with CIT's TEC Gateway; a Bluetooth interface was used for bench testing [5]. Capsule-to-
  receiver radio not specified.
- **Recent news:**
  - 2026-04-30: UK randomised trial PRIORITISE (ISRCTN12586238) registered, sponsored and funded by EnteraSense; recruiting; tests
    whether PillSense can let some suspected UGI-bleed patients go home and come back for endoscopy [2][7]
  - Earlier: US pivotal study NCT05385224 (131 patients, completed) [1]
- **HubSpot company ID:** 354372692677 (https://app.hubspot.com/contacts/247517534/record/0-2/354372692677)
- **HubSpot contact IDs:** Chiara Di Carlo 573912388335 (no email)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Chiara Di Carlo (**primary**) | Chief Technology Officer | unverified | Biomedical engineer (ULB / Politecnico di Milano); led GI, urology and cardiovascular product development; was R&D Engineer on the early PillSense electronics work [5][8] | 433189844 (location Austin TX) | 66faa8e6397616000120cd0e (has email) |
| David Co***s | Director New Business Development and Commercialisation | unverified | Also a contact on the US study [1] | not checked | 68e3fbe89401c9000181547e (has email) |

## Why now (triggers)
- **PRIORITISE UK trial registered 2026-04-30**, recruiting [2][7]. Clinical, not an engineering trigger → B.
- US commercial channel via Cook Medical since 2024 [4]; scaling production of a disposable electronic capsule.

## Engineering signals
- Tiny in-house hardware team in Apollo (one senior hardware engineer, one principal device design engineer) [6].
- Has used outside partners for optics and electronics before (CAPPA and TEC Gateways) [5]: open to external engineering.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Chiara Di Carlo | CTO | unverified | **Primary.** Saleshandy 433189844; Apollo has email |

## Best angle
**Service line:** low-power medical embedded hardware + firmware (capsule optics drive, radio link, power budget,
receiver); primary row (healthcare hardware/firmware) · **Case study:** BLE smart glucometer firmware + apps (US
healthcare org) · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** A disposable electronic capsule moving from trials toward routine hospital use needs cost, yield and
reliability work on the capsule and receiver electronics. A small team that already used outside electronics partners is
a natural fit for a firmware/hardware work package with full IP handover.

## Risks / disqualifiers
- Headcount unverified; may be under 10.
- CTO location per Saleshandy is Austin TX (company in Galway); unverified.
- Trigger is clinical, not engineering.
- EU recipient (Irish company): opt-out line included.

## Sources
1. https://ctv.veeva.com/study/pillsense-system-for-detecting-ugi-bleed (NCT05385224)
2. https://www.isrctn.com/ISRCTN12586238 (registered 2026-04-30)
3. https://directory.enterprise-ireland.com/vendor/life-sciences-health-tech/enterasense-limited
4. https://www.cookmedical.com/newsroom/enterasense-distribution-agreement/ ; https://www.massdevice.com/cook-medical-begins-distributing-pillsense-ingestible-capsule-that-detects-gi-bleeds/
5. https://technologygateway.ie/case-studies/enterasense (undated)
6. Apollo people search, domain enterasense.com (2026-10-21)
7. https://www.hra.nhs.uk/planning-and-improving-research/application-summaries/research-summaries/prioritise-version-10/
8. Saleshandy Lead Finder, EnteraSense CTO (2026-10-21)

---
**Summary:** Fit B (UK PRIORITISE trial registered 2026-04-30; small hardware team that has used outside electronics
partners). Angle: capsule/receiver low-power electronics and firmware. Next step: CEO reviews the draft to the CTO
(`drafts/email/2026-10-21-enterasense.md`).
