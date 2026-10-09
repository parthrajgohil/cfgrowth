# Peerbridge Health  ·  Fit: A  ·  Researched: 2026-10-09

## Snapshot
- **What they make:** wearable multi-lead ambulatory ECG. **Cor** (cleared 2017, K171936) and the next-generation
  **Cor MDx**, FDA-cleared **2026-09-04** (K253529, product code MWJ, ambulatory ECG) [1][2]. Clinical programmes on
  detecting heart failure, estimating ejection fraction and diagnosing sleep apnea from the wearable (EF-ACT, ~1,000
  patients; COR-INSIGHT, up to 15,000) [3]. A directory summary says Cor MDx streams multi-lead data in real time over
  **BLE and LTE** (unverified, source page blocked) [3].
- **HQ / region:** New York, NY, USA (3 Columbus Circle, per the FDA record) [1].
- **Size:** unverified (~16 people in Apollo [4]).
- **Funding:** unverified.
- **Website:** https://www.peerbridgehealth.com

## Lead info
- **Website:** https://www.peerbridgehealth.com · **News:** headlines on the homepage (undated) · **Careers:** not found
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** New York, NY · **Founded:** 2012 (MarketScreener profile, unverified) · **Employees:** unverified
- **Funding:** unverified
- **What they make / tech:** wearable ECG patch + clinic platform; BLE + LTE (unverified); AI-enabled analysis.
- **Recent news (last 6 months):**
  - 2026-09-04: **FDA 510(k) clearance for Cor MDx** (K253529, received 2025-11-13) [1]
- **HubSpot company ID:** 351516816120 (https://app.hubspot.com/contacts/247517534/record/0-2/351516816120)
- **HubSpot contact IDs:** Chris Darland 566789033682 (no email; no contact for the CTO, surname masked)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Chris Darland (**primary**) | President & CEO | unverified | Nashville, TN | **Lead ID 68937134** (decision maker) | 66fa396b5a82260001549252 (has email) |
| Sandeep Gu*** (surname masked) | CTO and VP, R&D and Platform Innovation | unverified | Technical owner of the device | not found | 689c17ca614d1b0001653532 (has email) |
| J Chan | Software Engineering Manager | unverified | Irvine, CA | Lead ID 570435094 | — |

## Why now (triggers)
- **Cor MDx cleared 2026-09-04** [1]: a new device going to market, with commercial leaders hired in East and West regions
  (Saleshandy/Apollo) and a new Head of Operations and Director of Operations & Supply Chain [4].

## Engineering signals
- No firmware, hardware or electrical engineers visible in Apollo or Saleshandy; the visible technical staff are a CTO,
  a software engineering manager and clinical-AI engineers [4]. Device engineering is likely small or outsourced.
- A wearable streaming multi-lead ECG over BLE and LTE has to manage battery life, link drops and data integrity in
  homes and hospitals (our inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Chris Darland | President & CEO | unverified | **Primary** (complete name, in Saleshandy) |
| Sandeep Gu*** | CTO & VP R&D | unverified | Better technical fit, but surname masked in Apollo and not in Saleshandy; no HubSpot contact created |

## Best angle
**Service line:** embedded firmware (BLE/LTE, low-power, OTA) + BLE companion apps · **Case study:** BLE smart
glucometer, firmware + Android/iOS apps (/case-study/smart-glucometer) · **Blog:** `design-ble-devices-for-crowded-rf-environments`

**Hypothesis:** with Cor MDx cleared and the commercial team scaling, the next pressures are field reliability (BLE in
crowded hospital RF, LTE fallback, battery) and the next revision, with little visible in-house device engineering. We can
add firmware and hardware capacity under NDA with full IP transfer.

## Risks / disqualifiers
- Device internals (BLE/LTE) from a directory summary; the email says "streaming wearable" only.
- Size and funding unverified.
- CEO is a commercial leader; the CTO may be the better first contact (CEO decides).

## Sources
1. https://www.accessdata.fda.gov/scripts/cdrh/cfdocs/cfpmn/pmn.cfm?ID=K253529 (decision 2026-09-04)
2. https://fda.report/PMN/K171936 (original Cor, 2017)
3. Search summary of https://www.lifesciencemarketresearch.com/insights/the-memo-peerbridge-health-expanding-the-cardiac-monitoring-toolkit-to-detect-disease-earlier and https://www.hospimedica.com/critical-care/articles/294801965/first-of-its-kind-trial-to-measure-ejection-fraction-severity-directly-from-ai-enabled-remote-ecg-wearable.html (pages not fully readable)
4. Apollo people search (domain peerbridgehealth.com) and Saleshandy Lead Finder (2026-10-09)
5. https://www.peerbridgehealth.com (read 2026-10-09)

---
**Summary:** Fit A. Angle: wearable firmware/hardware capacity as Cor MDx goes to market.
Next step: CEO reviews the draft to Chris Darland, or swaps to the CTO (`drafts/email/2026-10-09-peerbridge-health.md`).
