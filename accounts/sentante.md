# Sentante  ·  Fit: A  ·  Researched: 2026-10-09

## Snapshot
- **What they make:** a teleoperated robotic platform for endovascular interventions. A bedside unit drives standard
  guidewires and catheters while the team works from an X-ray-free control suite with haptic force feedback [1][2].
  Also **Inflante**, a digital balloon indeflator (digital pressure control, real-time feedback, data capture that feeds
  the robotic platform) [3].
- **HQ / region:** Kaunas, Lithuania (EU) [4].
- **Size:** unverified (~32 people in Apollo [5]).
- **Funding:** EUR 6M seed, 2023-12, led by Practica Capital with the EIC Fund [4]. (Not for use in outreach.)
- **Website:** https://sentante.com

## Lead info
- **Website:** https://sentante.com · **News:** news list on the homepage · **Careers:** unverified
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Kaunas, Lithuania · **Founded:** unverified · **Employees:** unverified (~32 in Apollo)
- **Funding:** EUR 6M seed (2023-12, Practica Capital + EIC Fund) [4]
- **What they make / tech:** endovascular robot (motion control, haptics, remote operation), Inflante digital indeflator.
  MCU/RTOS: **unverified**.
- **Recent news (last 6 months):**
  - 2026-05-21: **CE mark for the endovascular robot**; FDA TAP programme earlier in 2026; breakthrough designation
    for stroke [2]
  - 2026-08-03: **Inflante** digital indeflator introduced in Europe, CE-marked, FDA pathway in progress [3]
  - 2026-08-20: "Sentante takes physical AI to market, beginning commercial rollout in vascular surgery and
    interventional radiology" [1]
  - 2026-09-04: FDA 510(k) K260035 "Digital Indeflator INFLANTE", applicant UAB Telemedicina [6] (the link between
    UAB Telemedicina and Sentante is **unverified**, so this isn't used in the email)
- **HubSpot company ID:** 351554608829 (https://app.hubspot.com/contacts/247517534/record/0-2/351554608829)
- **HubSpot contact IDs:** Vilius Dambrauskas 566850192102, Vaidas Labunskas 566864246520 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Vilius Dambrauskas (**primary**) | Chief Technology Officer (Apollo: CTO / Chief Embedded System Engineer / System Architect) | unverified | Named on the leadership page [7] | **not found** | 65a797554c568e0001a193c2 (has email) |
| Vaidas Labunskas | Chief Mechanical Engineer | unverified | ~14 yrs experience (Saleshandy) | **Lead ID 229935838** (decision maker) | 642838bc61658b00018a2a46 (has email) |
| Edvardas Satkauskas | Chief Executive Officer | unverified | Co-founder [4][7] | not found | 670c822a98140d0001c0c56f (has email) |

## Why now (triggers)
- **CE mark (2026-05-21) and commercial rollout (2026-08-20)** [1][2]: moving from trials to installed systems.
- **Second product (Inflante) launched 2026-08-03** [3], plus US work (TAP, IDE for remote stroke) [2].

## Engineering signals
- In-house embedded team visible in Apollo: CTO who is also chief embedded engineer, 3–4 embedded engineers, 2 electronics
  engineers, a test engineer [5]. Two products, two regulators (EU MDR, FDA), and a remote-operation roadmap at once.
- Safety-critical motion control with haptics, plus a connected accessory: firmware validation, IEC 62304 documentation
  and HIL testing load grows fast after launch (our inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Vilius Dambrauskas | CTO | unverified | **Primary.** Not in Saleshandy; Apollo has email |
| Vaidas Labunskas | Chief Mechanical Engineer | unverified | Alternative in Saleshandy (229935838); the firmware angle fits him less well |

## Best angle
**Service line:** embedded firmware + hardware (motion-control firmware, drivers, HIL testing, IEC 62304-ready
documentation) · **Case study:** BLE smart glucometer (/case-study/smart-glucometer) and CNC drilling machine automation
(/case-study/industrial-cnc-drilling-machine-automation) · **Blog:** `outsourcing-decision-for-device-driver-development`

**Hypothesis:** with the robot rolling out commercially and Inflante launched in the same quarter, the embedded team is
split between field support, a second product and FDA/remote-stroke work. We can take well-bounded firmware blocks
(Inflante, drivers, test rigs) under NDA with full IP transfer.

## Risks / disqualifiers
- Primary buyer not in Saleshandy (Apollo has email).
- Strong in-house embedded team; we pitch bounded blocks, not the core robot.
- Headcount unverified.

## Sources
1. https://sentante.com (read 2026-10-09; dated news list)
2. https://www.medtechdive.com/news/sentante-lands-europes-ce-mark-for-endovascular-robot/820918/ (2026-05-21)
3. https://evtoday.com/news/sentante-introduces-inflante-digital-indeflator-for-endovascular-procedures-in-europe (2026-08-03)
4. https://tech.eu/2023/12/21/lithuanian-medtech-firm-sentante-secures-eur6m-funding-for-innovative-robotic-system/ (2023-12-21)
5. Apollo people search, domain sentante.com (2026-10-09)
6. https://meddevicestartups.com/cleared/2026-09 (FDA decision list)
7. https://sentante.com/about (leadership team, read 2026-10-09)

---
**Summary:** Fit A. Angle: firmware capacity for Inflante and test/driver work as the robot goes commercial.
Next step: CEO reviews the draft to Vilius Dambrauskas (`drafts/email/2026-10-09-sentante.md`).
