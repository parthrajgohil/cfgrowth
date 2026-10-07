# Elucent Medical  ·  Fit: B  ·  Researched: 2026-10-07

## Snapshot
- **What they make:** the **EnVisio®** surgical navigation system ("In-Body Spatial Intelligence™") used in
  breast-cancer surgery with the **SmartClip®** soft-tissue marker; 25,000+ procedures by 2025-07 [1][2].
  Next platform: **EnVisio X1**, where a SmartClip placed percutaneously or bronchoscopically is tracked by a
  **SmartSensor X** that attaches to surgical staplers and wirelessly tracks position for real-time 3D guidance.
  X1 has FDA Breakthrough Device Designation (2025-05) and is still in development [3].
- **HQ / region:** Minnesota, US (exact city unverified; hardware director is in Minneapolis per Saleshandy).
- **Size:** unverified (Apollo lists ~52 managers and above, mostly sales).
- **Funding:** USD 42.5M Series C (Vensana Capital, RC Capital; date unverified) [2]; USD 30M growth capital
  from Trinity Capital in 2025 [3].
- **Website:** https://www.elucent.com

## Lead info
- **Website:** https://www.elucent.com · **News:** none dated on the site · **Careers:** https://recruitingbypaycor.com/career/CareerHome.action?clientId=8a7883d09157fd8f01918f4fe3350973
- **LinkedIn / X:** unverified
- **HQ:** Minnesota, US (unverified) · **Founded:** unverified · **Employees:** unverified
- **Funding:** Series C USD 42.5M [2]; Trinity Capital USD 30M (2025) [3]
- **What they make / tech:** EnVisio console, SmartClip markers, SmartSensor attachments (wireless) [1][3].
  Radio and chips: unverified.
- **Recent news:**
  - 2026-05-14: FDA 510(k) K260565 for the SmartClip Delivery Catheter (ADR-1715), a bronchoscope accessory,
    i.e. the delivery path for lung use of X1 [4]
  - 2025-05-16: Breakthrough Device Designation for EnVisio X1 [3]
- **HubSpot company ID:** 351018959574 (https://app.hubspot.com/contacts/247517534/record/0-2/351018959574)
- **HubSpot contact IDs:** Harshad Borgaonkar 565127835324, Jason Pesterfield 565199128311 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Harshad Borgaonkar (**primary**) | Director of Hardware Engineering | unverified | Minneapolis; ~30 years' experience (Saleshandy) | **Lead ID 279246210** (decision maker) | 5fc4b42d228fa500014b4ecd (has email) |
| Jason Pesterfield | President & CEO | unverified | Quoted on X1 designation [3] | record under another company (not usable) | 66f3fb2630bf2000016d7d34 (has email) |

## Why now (triggers)
- **510(k) for the SmartClip Delivery Catheter, 2026-05-14** [4]: a step toward bronchoscopic (lung) use, but the
  cleared item isn't electronic, so this is a weak trigger. **B:** clear roadmap signal: EnVisio X1 with a
  wireless SmartSensor X is in development under Breakthrough designation [3].

## Engineering signals
- Small wireless sensors clipped onto staplers in the operating room: tiny boards, power, RF in a crowded
  environment, sterilisation/reprocessing constraints.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Harshad Borgaonkar | Director of Hardware Engineering | unverified | **Primary.** Saleshandy 279246210 |
| Jason Pesterfield | President & CEO | unverified | Alternative via Apollo only |

## Best angle
**Service line:** embedded hardware (compact, low-power PCB) + firmware for the SmartSensor family · **Case
study:** BLE smart glucometer firmware + apps (/case-study/smart-glucometer) · **Blog:**
`design-ble-devices-for-crowded-rf-environments`

**Hypothesis:** moving from one surgical indication to a multi-procedure platform means more sensor variants
and more verification work for the hardware team while X1 heads toward clearance. We can take a defined sensor
board or firmware block under NDA with full IP transfer.

## Risks / disqualifiers
- Well funded; may have a large internal team. Size unverified.
- The radio in SmartSensor X is unverified (the email asks, it doesn't assume BLE).

## Sources
1. https://www.elucent.com/ (read 2026-10-07)
2. https://www.santelog.com/actualites-sante-nasdaq/elucent-medical-marks-25000-lives-impacted-through-envisior-technology and https://www.mobihealthnews.com/news/surgical-tech-company-elucent-medical-secures-30m (via search summary)
3. https://www.medicaldevice-developments.com/news/elucent-medicals-envisio-x1-system-earns-fda-breakthrough-device-designation/ (2025-05-16; read 2026-10-07)
4. https://www.regdatalab.com/510k/K260565 (decision 2026-05-14; read 2026-10-07)
5. Saleshandy Lead Finder and Apollo people search for Elucent Medical (2026-10-07)

---
**Summary:** Fit B. Angle: sensor hardware/firmware capacity for the EnVisio X1 platform. Next step: CEO reviews
the draft to Harshad Borgaonkar (`drafts/email/2026-10-07-elucent-medical.md`).
