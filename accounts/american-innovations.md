# American Innovations  ·  Fit: A  ·  Researched: 2026-10-27

## Snapshot
- **What they make:** remote monitoring units (RMUs) and software for pipeline cathodic protection and asset integrity,
  sold to pipeline operators and gas utilities. Hardware line is **Bullhorn** (RMUs for rectifiers and test stations);
  software covers compliance and field data collection [1][2][3].
- **HQ / region:** 12211 Technology Blvd., Austin, Texas, USA; second office in Fort Collins, Colorado [1][2].
- **Size:** about 100 employees (Rigzone directory) [4]; Apollo lists ~119 people, mostly software, compliance and
  sales [5].
- **Stage / ownership:** private; owned by HMI International, a long-term private-equity partnership of two families
  (AMPP donor page, secondary source) [6]. Subsidiary Bass Engineering does cathodic-protection installation [6].
- **Website:** https://www.aiworldwide.com

## Lead info
- **Website:** https://www.aiworldwide.com · **News:** press releases on aiworldwide.com (e.g. [1][2]) · **Careers:** job
  posts on Built In Austin [7] · **LinkedIn / X:** not verified
- **HQ:** Austin, TX, USA · **Founded:** unverified ("more than 40 years" in the field per its releases [1][2]) ·
  **Employees:** ~100 [4] · **Funding:** none; PE/family-owned (HMI International, unverified) [6]
- **What they make / tech:** Bullhorn RMUs (RM510, RM4210/4250 test-station RMUs, RM4211/4251), older units with up to
  10-year battery life [3]. The firmware job post lists embedded C/C++, state machines, HAL/driver architecture, RTOS,
  bootloaders, firmware update, low-power design, BLE/USB/serial, and (preferred) GPS/GNSS, cellular and satellite
  modems, ADC calibration, HIL testing [7]. Chips not public.
- **Recent news:**
  - 2026-07-22: Bullhorn RM510 External Enclosure (IP65, pre-wired with RM510 I/O, power supply and REL2510 solid-state
    relay) for rectifiers with no cabinet space [2]
  - 2026-05-26: Bullhorn RM510 16-Channel Rectifier RMU Expansion Module, 4 → 16 monitoring channels per RMU [1]
  - ~2026-08 (reposted "2 months ago"): **Staff Firmware Engineer** for a "flagship next-generation IoT product":
    prototype board bring-up, working with the existing senior firmware engineer (program DRI) and a senior firmware
    architecture advisor [7]; a Mid-Level Hardware Engineer opening is also listed [8]
- **HubSpot company ID:** 356538148585 (https://app.hubspot.com/contacts/247517534/record/0-2/356538148585)
- **HubSpot contact IDs:** Weiming T. 577760404183 · Zee Mcclane 577813594873 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Weiming T. (**primary**; surname unverified, Apollo shows "Ta***g") | Director of Firmware and Hardware | unverified | Saleshandy summary: cloud-native, DevOps/SRE, software modernisation, building and scaling engineering teams [9] | 175954479 | 60f7dde19ca7620001f04160 (has email) |
| Zee Mcclane | VP of Research and Development | unverified | Software development leader; earlier led software and hardware engineering for client prototypes and the UI of an embedded biotech instrument [9] | 446319372 | 60b16f9b5463140001fcf936 (has email) |
| Michael Du***n | HW Engineer Lead | unverified | Hands-on hardware lead (Apollo only) [5] | not checked | 5abeec68a6da98cf5aef206f (has email) |

## Why now (triggers)
- **New hardware in 2026:** RM510 16-channel expansion module (2026-05-26) [1] and RM510 external enclosure (2026-07-22) [2].
- **Firmware hiring for a "flagship next-generation IoT product"** with prototype boards in bring-up; one senior firmware
  engineer leads the program today [7]. Reposted about two months ago, so still open → **A**.

## Engineering signals
- Apollo shows one HW Engineer Lead and no other firmware/hardware staff among ~40 listed people; the firmware post
  confirms a small R&D team [5][7].
- Both engineering leaders come from software (Saleshandy summaries) [9], so senior embedded depth is likely thin.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Weiming T. | Director of Firmware and Hardware | unverified | **Primary.** Owns the hire. Saleshandy 175954479; Apollo has email |
| Zee Mcclane | VP of Research and Development | unverified | Alternative; same angle fits. Saleshandy 446319372; Apollo has email |

## Best angle
**Service line:** embedded firmware + hardware (primary row: industrial IoT) · **Case study:** CNC drilling machine
automation HMI (embedded UI/menu work, European industrial automation co.) · **Blog:** `handle-mqtt-connection-loss`
(field RMUs on cellular links)

**Hypothesis:** a next-generation RMU is being brought up on new boards while the company hires its second senior
firmware engineer. Bring-up, drivers, bootloader/OTA and low-power work are where a partner can add capacity right away,
with source and IP handed back.

## Risks / disqualifiers
- Pipeline/utility customers (not defence). Ownership by an investment partnership is from a secondary source.
- Director's surname is not public in our sources; reveal by Saleshandy or Apollo ID.
- They may prefer to hire in-house (the post is in-office in Austin).

## Sources
1. https://www.aiworldwide.com/new-bullhorn-16-channel-expansion-module/ (2026-05-26)
2. https://www.aiworldwide.com/bullhorn-rm510-external-enclosure-launch/ (2026-07-22)
3. https://www.aiworldwide.com/bullhorn-rm4211-rm4251-datasheet ; https://aiworldwide.com/bullhorn-remote-monitor-comparison (file dated 2026-03)
4. https://www.rigzone.com/directory/company/15506/American-Innovations/
5. Apollo people search, domain aiworldwide.com (2026-10-27)
6. https://ampp.academicworks.com/donors/american-innovations
7. https://www.builtinaustin.com/job/staff-lead-firmware-engineer/10441157 (reposted ~2 months before 2026-10-27)
8. https://embedded.jobs/company/american-innovations
9. Saleshandy Lead Finder, American Innovations leadership (2026-10-27)

---
**Summary:** Fit A (2026 RM510 hardware + open Staff Firmware Engineer role for a next-gen IoT product). Angle: firmware
and board bring-up capacity. Next step: CEO reviews the draft to the Director of Firmware and Hardware.
