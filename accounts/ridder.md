# Ridder  ·  Fit: A  ·  Researched: 2026-10-21

## Snapshot
- **What they make:** greenhouse and horticulture automation. Drive systems (incl. SmartDrive), Hortimax climate
  computers (Pro, Plus, Go), climate screens, water treatment, labour management and a tomato harvesting robot [1][2].
  Markets: glass and poly greenhouses, livestock and crop storage [2].
- **HQ / region:** Netherlands. Drive Systems in Harderwijk [4]; the Hortimax Plus release is datelined Maasdijk [1]. Group HQ
  city unverified.
- **Size:** 350+ employees [2]; 49 people in Apollo [5]
- **Ownership:** family business founded 1953 by Frans Nugteren; the third generation runs Drive Systems [2][4]. Apollo lists an
  interim CEO/MD [5]; another press item names Pascal Piepers as CEO [6]. Leadership is changing; details unverified.
- **Website:** https://ridder.com

## Lead info
- **Website:** https://ridder.com · **News:** https://ridder.com/insights/news · **Careers:** not checked
- **LinkedIn:** unverified (logo URL suggests /company/riddergroup) · **X/Twitter:** not found
- **HQ:** Netherlands · **Founded:** 1953 [2] · **Employees:** 350+ [2]
- **Raised:** n/a (family-owned)
- **What they make / tech:** Hortimax climate computers with a mobile app for remote monitoring/control and support for
  third-party sensors (e.g. substrate sensors) [1]; SmartDrive greenhouse drives whose end positions are copied between
  motors over Bluetooth from a phone app (iOS app "Ridder SmartDrive") [3][7]
- **Recent news:**
  - 2026-06-03: Hortimax Plus climate computer, "future-ready and cost-efficient", with mobile app, first new product at
    GreenTech Amsterdam 2026 (9–11 June) [1]
  - GreenTech 2026 preview: new grower app for 24/7 insight, redesigned climate computer UI, SmartDrive and Poly Drive shown [8]
- **HubSpot company ID:** 354525115082 (https://app.hubspot.com/contacts/247517534/record/0-2/354525115082)
- **HubSpot contact IDs:** Erwin Althof 573900936894 · Rob Eling 573912668893 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Erwin Althof (**primary**) | Chief Technology Officer | unverified | "Technical executive with a commercial touch"; Saleshandy summary links an Alfen video, likely a previous employer (unverified) [9] | 172684767 | 60074fcbfe915900015da7cc (has email) |
| Rob Eling | Product Development Manager | unverified | Based in Ermelo, near Harderwijk [9] | 212368960 | 630500c1035cc80001a03dd1 (has email) |
| Daan Br***n | Manager Product Development | unverified | Surname masked in Apollo [5] | not checked | 54a300487468693a7eed404d (has email) |

## Why now (triggers)
- **Hortimax Plus launch** (release 2026-06-03, GreenTech 2026-06-09/11): a new lower-cost climate computer plus a mobile
  app for remote monitoring and control [1]. Within 6 months → A.
- Product line is getting more connected: grower app, redesigned UI, BLE-configured SmartDrive [3][8].

## Engineering signals
- Apollo shows software architects, a Director of Software and Innovation, product development engineers and product
  managers, but **no firmware, embedded or electronics titles** [5]. Whether controller electronics are designed in-house
  is unverified.
- A cheaper controller for a broader grower base implies cost-reduced hardware and a larger connected fleet to support
  (inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Erwin Althof | CTO | unverified | **Primary.** Saleshandy 172684767; Apollo has email |
| Rob Eling | Product Development Manager | unverified | Alternative. Saleshandy 212368960; Apollo has email. Angle fits him (hands-on product development) |

## Best angle
**Service line:** industrial IoT firmware + hardware (controllers, BLE drives, connectivity to app/cloud); primary row
(industrial IoT, broadly read: agriculture) · **Case study:** CNC drilling machine automation (European industrial
automation co.) · **Blog:** `design-ble-devices-for-crowded-rf-environments` (dozens of BLE drives in one greenhouse),
`handle-mqtt-connection-loss` (remote app)

**Hypothesis:** Ridder is a drives-and-screens manufacturer that has grown into automation and now wants growers on an
app. Pushing a lower-cost controller and more connected drives into 100+ countries means hardware cost-down, firmware
updates in the field and reliable connectivity. With no visible embedded team, a partner that can own a controller or
drive-electronics work package (with full IP handover) fits.

## Risks / disqualifiers
- 350+ employees: within ICP but near the top; may have external electronics suppliers already.
- Leadership change (interim CEO in Apollo) could slow decisions.
- CTO's Saleshandy profile may be partly out of date (Alfen link).
- EU recipient: opt-out line needed.

## Sources
1. https://ridder.com/insights/news/hortimax-plus-takes-center-stage-in-the-ridder-portfolio-at-greentech (2026-06-03)
2. https://ridder.com/about-us (read 2026-10-21)
3. https://ridder.com/smartdrive
4. https://www.hortidaily.com/article/9273994/brigitte-nugteren-new-managing-director-drive-systems-at-ridder/
5. Apollo people search, domain ridder.com (2026-10-21)
6. https://www.foodbusinessmea.com/?p=2118413 (CCO appointment item naming the CEO; date unverified)
7. https://apps.apple.com/us/app/-/id1599280091
8. https://hortidaily.com/article/9633175/app-to-provide-growers-with-24-7-insight-into-their-greenhouse-activities
9. Saleshandy Lead Finder, Ridder CTO / Product Development Manager (2026-10-21)

---
**Summary:** Fit A (Hortimax Plus + grower app launched 2026-06; no visible firmware/electronics team). Angle: controller
and BLE-drive electronics/firmware capacity. Next step: CEO reviews the draft to the CTO (`drafts/email/2026-10-21-ridder.md`).
