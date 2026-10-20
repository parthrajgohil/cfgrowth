# Marani Health  ·  Fit: A  ·  Researched: 2026-10-15

## Snapshot
- **What they make:** remote maternal and fetal monitoring. The **M•care System (MW-20)** includes the **M•wrap**, a
  wearable band worn around the abdomen with embedded electrodes that capture fetal and maternal heart signals; data
  goes to Marani's digital platform, with a patient app (average heart rate, fetal movement logging) and a provider
  portal for full heart tracings [1].
- **HQ / region:** Minneapolis, Minnesota, USA [1]. Founded 2018 as Odonata Health, co-founded with Mayo Clinic's
  venture arm; CEO Ann Holder is a former Medtronic executive [2][3].
- **Size:** unverified. 12 people visible in Apollo (2026-10-15) [5], so likely 11–50.
- **Funding:** unverified. Third-party figures range from ~USD 5.5M to ~13M in total; a USD 3.7M round is reported
  (year unclear) [3]. A USD 5M CDC grant with Ouma Health and UW-Madison (2024-10) is listed on its site [4].
- **Website:** https://www.maranihealth.com

## Lead info
- **Website:** https://www.maranihealth.com · **News:** listed on the homepage [4] · **Careers:** not found
- **LinkedIn:** https://www.linkedin.com/company/maranihealth/ [4] · **X/Twitter:** not found
- **HQ:** Minneapolis, MN · **Founded:** 2018 [2] · **Employees:** unverified (12 in Apollo)
- **Funding:** unverified (see Snapshot); not for the email
- **What they make / tech:** M•wrap electrode band (wearable ECG-type sensing for fetal and maternal heart), M•wrap
  app, M•care provider portal, AI alerts; AWS Health Equity Program (2024-06) [1][4]. Radio, MCU and who built the band
  are unverified.
- **Recent news:**
  - 2026-09-24: FDA 510(k) clearance for the M•care System incl. M•wrap; commercial availability planned for 2027 via
    health systems, providers and health plans [1]
  - 2026-08: post on remote monitoring reducing ER visits [4]
  - 2025-09: partnership with a Wyoming health payer for 24/7 remote monitoring [4]
- **HubSpot company ID:** 352535803583 (https://app.hubspot.com/contacts/247517534/record/0-2/352535803583)
- **HubSpot contact IDs:** Jim Tafur 569745637064 · Ann Holder 569815941834 (no emails; VP Eng not created, surname masked)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Jim Tafur (**primary**) | Chief Technology Officer | unverified | authors posts on the company site [4]; title per Apollo [5] | not found | 6074ca285a287300016fcc4a (has email) |
| Christian La***n | VP of Engineering, R&D | unverified | surname masked in Apollo [5] | not found | 61085d9f6975d30001d97f9e (has email) |
| Ann Holder | CEO | unverified | former Medtronic executive; quoted in the clearance release [1][2] | not checked | not checked |

## Why now (triggers)
- **FDA 510(k) clearance for M•care incl. the M•wrap wearable, announced 2026-09-24**; the company is now "preparing for
  commercial availability" in 2027 [1]. Going from a cleared device to commercial volume means design-for-manufacture,
  field firmware updates, app and portal hardening, and support for a growing installed base.

## Engineering signals
- Apollo shows a CTO, a VP Engineering R&D, a VP of Software Development, a Director of Technology Operations and a
  Technical Production Manager, but no firmware or electronics engineers [5]. The band's electronics may be built by a
  partner (unverified).
- Device-to-app-to-cloud chain: wearable electrodes → phone app → cloud platform → provider portal [1].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Jim Tafur | CTO | unverified | **Primary.** Not in Saleshandy; Apollo has email |
| Christian La***n | VP of Engineering, R&D | unverified | Alternative (surname masked; needs Apollo reveal) |
| Ann Holder | CEO | unverified | Alternative; founder-CEO |

## Best angle
**Service line:** embedded firmware + BLE companion app + cloud for a medical wearable (primary row: healthcare
firmware) · **Case studies:** BLE smart glucometer (firmware + Android/iOS apps, US healthcare org); connected health
monitoring hub + app · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** With clearance in hand and a 2027 launch, the next year is about turning M•wrap into a product that
ships at volume: firmware robustness and OTA, BLE reliability with patients' phones, cost-down of the band
electronics, and app/portal scale. A small team (no visible firmware engineers) can use a partner that owns the device
stack end to end, with full IP transfer.

## Risks / disqualifiers
- Electronics may already be owned by a design partner (unverified).
- Headcount and funding unverified; small company, budget may be tight before launch.
- Changes to a cleared device need regulatory care (design controls, IEC 62304): we must not overclaim.

## Sources
1. https://www.prnewswire.com/news-releases/marani-health-receives-fda-clearance-for-mcare-system-clearing-the-path-toward-commercial-launch-302889495.html (2026-09-24)
2. https://www.medicaldevice-network.com/news/fda-clears-marani-health-maternal-remote-monitoring-system/ (2026-09)
3. https://med-tech.world/news/ai-powered-pregnancy-care-platform-marani-health-raises-3-7m-after-telehealth-boom/ (date unclear)
4. https://www.maranihealth.com (read 2026-10-15)
5. Apollo people search, domain maranihealth.com (2026-10-15); Saleshandy Lead Finder (2026-10-15: CTO / VP Eng not found)

---
**Summary:** Fit A (healthcare wearable, FDA clearance 2026-09-24, 2027 launch). Angle: firmware + BLE app + cloud to take
M•wrap from clearance to volume. Next step: CEO reviews the draft to Jim Tafur (`drafts/email/2026-10-15-marani-health.md`);
email needs an Apollo reveal.
