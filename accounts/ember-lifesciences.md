# Ember LifeSciences  ·  Fit: A  ·  Researched: 2026-10-09

## Snapshot
- **What they make:** connected cold-chain shippers for pharmaceuticals and vaccines. **Ember Cube** (active, on-board
  refrigeration) and **Ember Cube 2** (passive, reusable, modular, 9 lb, 48–72 h holdover), both with real-time location
  tracking, temperature monitoring and cloud reporting [1][2]. Cube 2 holds 2–8 °C for 72+ hours [3]. Spun out of Ember
  Technologies (the consumer temperature-control brand) [4].
- **HQ / region:** Westlake Village, California, USA (job posts [5]; press releases datelined Los Angeles [2][3]).
- **Size:** 21–50 employees (Prospeo listing, unverified) [6]; ~23 people in Apollo [7].
- **Funding:** Series A of USD 16.5M closed 2025-12 [8], extended to USD 27M on 2026-05-27 with Amgen Ventures and TDF
  Ventures [2]; Alfresa invested in the Series A on 2026-07-29 [3]. Other investors named: Amgen, Cardinal Health, Carrier,
  Sea Court Capital [3]. (Not for use in outreach.)
- **Website:** https://www.emberlifesciences.com

## Lead info
- **Website:** https://www.emberlifesciences.com · **News:** "In the News" section on the site (no dated items) ·
  **Careers:** https://www.emberlifesciences.com/careers (Ashby: https://jobs.ashbyhq.com/ember-life-sciences)
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** Westlake Village, CA, USA · **Founded:** unverified · **Employees:** 21–50 (unverified)
- **Funding:** USD 27M Series A (latest extension 2026-05-27, Amgen Ventures + TDF Ventures) [2]
- **What they make / tech:** IoT cold-chain shippers with GPS, connectivity/pairing, charging, sensors and OTA/local
  firmware updates (from the Firmware QA post [5]). MCU, radio and RTOS: **unverified**.
- **Recent news (last 6 months):**
  - 2026-05-27: Series A extended; **full commercial availability of Ember Cube 2**; plan to scale and expand globally [2]
  - 2026-07-29: capital and business alliance with Alfresa (Japan), evaluating the Cube for home-care delivery [3]
  - 2026-08-11: **James Braithwaite appointed Chief Product Officer** to lead next-generation cold-chain products [9][10]
  - Open since 2026-06-09: Firmware QA Engineer; since 2026-08-11/08-20: Senior Thermal Engineer, Sr. Mechanical Engineer [5]
- **HubSpot company ID:** 351485823691 (https://app.hubspot.com/contacts/247517534/record/0-2/351485823691)
- **HubSpot contact IDs:** James Braithwaite 566850512626, Rob Speck 566852548312 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| James Braithwaite (**primary**) | Chief Product Officer | unverified | Joined 2026-08; ex-Chief Innovation Officer at SharkNinja, ex-head of product development at Dyson [9][10] | **Lead ID 98246644** (decision maker) | 67da6b852867350001c736ef (has email) |
| Rob Speck | Director of Engineering | unverified | Westlake Village; ~18 yrs experience (Saleshandy) | **Lead ID 70970554** (decision maker) | 54a6f5a77468696b7f4e0d08 (has email) |

Others in Apollo: Clay Alexander (founder/CEO), one Embedded Software Engineer, one Sr. Electrical Engineer, test and
software QA staff. CFO Ann Hyllengren (appointed 2026-01) [8].

## Why now (triggers)
- **Cube 2 full commercial availability, 2026-05-27** [2], and the Alfresa alliance in Japan, 2026-07-29 [3]: the product
  is moving from pilots to volume and new markets.
- **New CPO, 2026-08-11**, tasked with next-generation products [9][10].
- **Engineering hiring:** Firmware QA (2026-06-09), thermal and mechanical (2026-08) [5]. The firmware QA post says the
  company is in its pilot phase of deployment [5].

## Engineering signals
- Small in-house engineering team: one embedded software engineer and one senior EE visible in Apollo [7], with firmware
  covering GPS, connectivity, charging, power, sensors, fault recovery and OTA [5].
- Pharma customers mean regulated, audit-heavy shipments (GDP); a logger that drops data is a customer problem.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| James Braithwaite | Chief Product Officer | unverified | **Primary.** New in role, owns next-gen roadmap. Saleshandy 98246644 |
| Rob Speck | Director of Engineering | unverified | Alternative, hands-on engineering lead. Saleshandy 70970554 |

- **Email (2026-10-09 17:03 hourly run):** James Braithwaite: james.braithwaite@emberlifesciences.com (Saleshandy, `valid`;
  reveal request 6ac8d108130d822bb6ae0d1f). LinkedIn per Saleshandy: https://www.linkedin.com/in/james-braithwaite-1b970913.
  HubSpot contact 566850512626 email set.
- **Saleshandy:** batch `CF · batch 2026-10-09 17:03 · USA · 1 lead`, sequence ID XdPd5VQ3aV (inactive; the CEO activates).

## Best angle
**Service line:** embedded firmware + IoT full-stack (GPS/cellular tracker firmware, low-power, OTA, cloud data path) ·
**Case study:** connected health monitoring hub (/case-study/health-monitoring-hub) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** with Cube 2 shipping in volume, Japan coming, and a new CPO planning the next generation, a small
firmware team has to keep fielded units reliable (GPS fixes, connectivity gaps inside trucks and cold rooms, battery) while
building the next product. We can add firmware/electronics capacity for the next-gen device and the data path, under NDA
with full IP transfer.

## Risks / disqualifiers
- Well funded (USD 27M) with strategic investors; may prefer to hire in-house.
- Size from a third-party listing (unverified).
- Device internals unverified; email doesn't name their stack.

## Sources
1. https://www.emberlifesciences.com (read 2026-10-09)
2. https://www.biospace.com/press-releases/ember-lifesciences-announces-new-strategic-investments-boosting-series-a-to-27m (2026-05-27)
3. https://www.biospace.com/press-releases/ember-lifesciences-and-alfresa-corporation-enter-into-capital-and-business-alliance-to-improve-the-quality-of-the-pharmaceutical-cold-chain-in-japan (2026-07-29)
4. Search summary of 2026 coverage (spin-out from Ember Technologies; 200+ patents)
5. https://api.ashbyhq.com/posting-api/job-board/ember-life-sciences (read 2026-10-09); Firmware QA post: https://jobs.ashbyhq.com/ember-life-sciences/c7e1f5bb-4a57-4c3a-850a-84e6c276d319
6. https://prospeo.io/c/ember-lifesciences-revenue (unverified aggregator)
7. Apollo people search, domain emberlifesciences.com (2026-10-09)
8. https://www.ajot.com/news/ember-lifesciences-appoints-ann-hyllengren-as-chief-financial-officer (2026-01-22)
9. https://pharmaphorum.com/digital/changing-faces-digital-and-supplier-hires-august-2026
10. https://app.fundz.net/executives/ember-lifesciences-hired-86ed (2026-08-11)

---
**Summary:** Fit A. Angle: firmware/IoT capacity for fielded Cube 2 units and the next-gen product under the new CPO.
Next step: CEO reviews the draft to James Braithwaite (`drafts/email/2026-10-09-ember-lifesciences.md`).
