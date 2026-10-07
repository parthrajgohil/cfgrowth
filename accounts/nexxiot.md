# Nexxiot  ·  Fit: A  ·  Researched: 2026-09-30

## Snapshot
- **What they make:** battery-powered asset-monitoring devices for rail freight wagons, tank
  containers and intermodal containers, plus the **Connect** cloud platform [2]. **Globehopper**
  (rail/tank containers): data every 5 minutes, ATEX Zone 1/21 and HazLoc Div 2, design life up
  to 10 years; **Edge** (intermodal): 15–60 minute updates, ATEX Zone 2, 10-year design life.
  Also Vector, Temperature Monitor, Kingpin Monitor and Loadtracker devices [2]. Globehopper uses
  "energy harvesting and intelligent battery management" [1].
- **HQ / region:** Hardstrasse 201, Zurich, Switzerland; operates in Europe and the US [3].
- **Size:** ~75 employees (CB Insights, July 2026) [3]. Apollo indexes 36 managers and up.
- **Stage / funding:** VC-backed since 2015; total raised reported between $120M and $213M
  depending on source (unverified which is right) [4].
- **Website:** https://nexxiot.com

## Lead info
- **Website:** https://nexxiot.com · **Newsroom:** https://nexxiot.com/newsroom/ · **Careers:** https://nexxiot.com/careers
- **LinkedIn:** https://www.linkedin.com/company/nexxiot/ · **X/Twitter:** unverified
- **HQ:** Zurich, Switzerland · **Founded:** 2015 [4] · **Employees:** ~75 [3]
- **Funding:** total unverified (sources disagree) [4]; no round in the last 12 months found
- **What they make / tech:** Globehopper and Edge trackers; GNSS with Swift Navigation's Skylark
  precise positioning (centimetre-level corrections) [1]; energy harvesting + battery
  management [1]; ATEX-certified hardware [2]; Pairpoint cryptographic data provenance on the
  rail device family [5]; Connect Intelligent Cloud [2]. MCU, radio and RTOS: unverified.
- **Recent news (last 6 months):**
  - 2026-04-15: Swift Navigation Skylark integrated into the latest Globehopper for track-level
    accuracy [1]
  - 2026-02-25: Pairpoint (Vodafone/Sumitomo JV) technology integrated into Nexxiot's rail device
    family so every data point is cryptographically signed [5]
  - 2026: partnerships with Cedar AI, Namsung Shipping and Arviem [2]
  - Leadership: Apollo lists Walter He*** as **Acting CEO** (unverified; Max Eichhorn was
    appointed CEO 2024-06-10 [6])
- **Careers:** one open role (Customer Success Agent); no firmware or hardware openings [7]
- **HubSpot company ID:** 349690157765 (https://app.hubspot.com/contacts/247517534/record/0-2/349690157765)
- **HubSpot contact IDs:** Adrian Kundert 561360774850, Kuno Bärtschi 561357213429, Dominik Dumancic 561360774851 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Adrian Kundert (**primary**) | Head of Firmware | unverified | Owns the device firmware; Zurich | **Lead ID 138169260** | 54a1fdcb7468693825199a03 (has email) |
| Kuno Bärtschi | VP Hardware | unverified | Hardware leadership | **Lead ID 440015335** | 6112af5bfdafc60001273b8e (has email) |
| Dominik Dumancic | Head of Hardware Engineering and Programs | unverified | Runs hardware programs | **Lead ID 127346446** | 54ec18fa74686943111c4c4f (has email) |
| Bjorn Jacobsen | Chief Product Officer | unverified | Quoted in the Swift release [1] | not checked | 65619411bd37c30001e299e4 (has email) |

## Why now (triggers)
- **New positioning feature on Globehopper** (2026-04-15): Skylark integration into "our latest
  Globehopper device" [1]. Precise GNSS on a 10-year battery budget is a firmware and power
  problem.
- **Data-signing integration** across the rail device family (2026-02-25) [5]: security work on
  constrained, long-life devices.
- **Leaner team:** ~75 people [3], an acting CEO in Apollo, and no engineering roles open [7].
  A small firmware team carrying several integrations suggests a capacity gap (inference).

## Engineering signals
- Energy harvesting, 10-year design life, 5-minute reporting, ATEX certification [1][2]: every
  firmware change touches the power budget and the Ex certificate (inference).
- Multiple device families (Globehopper, Edge, Kingpin, Loadtracker) to maintain [2].
- A "Team Lead Certifications / Ex Authorized Person" in Apollo: certification is an in-house
  function.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Adrian Kundert | Head of Firmware | unverified | **Primary.** Saleshandy 138169260 |
| Kuno Bärtschi | VP Hardware | unverified | Alternative for a hardware/power angle. Saleshandy 440015335 |
| Dominik Dumancic | Head of Hardware Eng. & Programs | unverified | Saleshandy 127346446 |

## Best angle
**Service line:** embedded firmware (low-power / battery-life engineering, secure boot, OTA) ·
**Case study:** BLE OBD device + connected app (/case-study/smart-obd-device) · **Blog:**
`handle-mqtt-connection-loss`

**Hypothesis:** Nexxiot is adding precise positioning and cryptographic signing to devices built
for 10 years on harvested energy, with a small team and no open firmware roles. We can take a
defined firmware package (a feature, a power-budget review, or maintenance of an older device
family) so their firmware lead can focus on the Globehopper roadmap. Under NDA, full IP transfer.

## Risks / disqualifiers
- They have an in-house firmware and hardware team; the pitch is capacity, not capability.
- CoreFragment has no ATEX track record in CLAUDE.md: do not claim hazardous-area experience.
- Leadership change (acting CEO) could freeze spending.
- Funding totals are inconsistent across sources; don't cite them.

## Sources
1. https://www.swiftnav.com/resource/press-release/nexxiot-and-swift-navigation-unlock-track-level-precision-for-rail-freight-operations (2026-04-15)
2. https://nexxiot.com/ (read 2026-09-30)
3. https://www.cbinsights.com/company/nexxiot (via search summary: ~75 employees, July 2026)
4. https://www.crunchbase.com/organization/nexxiot/financial_details and https://tracxn.com/d/companies/nexxiot/__JB0P4ICdn2GiEfbEv4_njGc1jtR44ezgATlvHnggOXQ (via search summary)
5. https://nexxiot.com/newsroom/pairpoint-nexxiot-rail-supply-chain-visibility-partnership/ (2026-02-25, via search summary)
6. https://nexxiot.com/newsroom/board-appoints-new-ceo-max-eichhorn/ (2024-06-10)
7. https://nexxiot.com/careers (read 2026-09-30)
8. Saleshandy Lead Finder and Apollo people search for nexxiot.com (2026-09-30)
