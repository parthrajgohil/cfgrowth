# Andium  ·  Fit: A  ·  Researched: 2026-10-12

## Snapshot
- **What they make:** remote field monitoring for oil and gas: its own **InSite One** camera ("optical and thermal
  sensors with intelligence built in"), on-device AI, **cellular** and **solar** power, installs in under 45 minutes.
  Sold as Tank, Flare, Methane, Liquid Leak, Fire Detection and Asset Tracking monitoring [1].
- **HQ / region:** USA (leadership in New York per Saleshandy; HQ city not stated on the site) [1][4].
- **Size:** unverified; 29 people in Apollo [4].
- **Funding:** USD 21.7M Series B led by Aramco Ventures (2024-11) [3]; BeVentures (Bapco) also invested [2].
- **Website:** https://www.andium.com
- **Defence check:** energy-sector customers and investors only; no defence work found.

## Lead info
- **Website:** https://www.andium.com · **News:** none on site; press via partners · **Careers:** not found
- **LinkedIn:** unverified · **X/Twitter:** not found
- **HQ:** USA (New York, unverified) · **Founded:** unverified · **Employees:** unverified (~30)
- **Funding:** latest USD 21.7M Series B, 2024-11, Aramco Ventures [3]
- **What they make / tech:** InSite One optical + thermal camera, on-device AI, cellular, solar; ISNetworld and Veriforce
  certified [1]. Senior EE post (6+ layer PCB, NVIDIA Jetson) seen earlier, removed 2026-03-18 (candidate pool note, 2026-10-07).
- **Recent news:**
  - 2026-09-09: Bapco Energies deploys Andium's emissions monitoring at Bapco Upstream (Bahrain); first operational
    deployment from a BeVentures investment. CEO quote: "Andium's technology is now running at Bapco Upstream, giving
    teams continuous, real-time visibility into methane…" [2]
  - Regional Directors for MENA (Dammam) and South America (São Paulo) on staff [4]
- **HubSpot company ID:** 351774979790 (https://app.hubspot.com/contacts/247517534/record/0-2/351774979790)
- **HubSpot contact IDs:** Jory Schwach 567899005654, Jatan Pathak 567903450830 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Jory Schwach (**primary**) | Founder and CEO | unverified | named in the Bapco release [2] | **Lead ID 410993373** (listed as "Jory S.") | 670f92e3548c0c00018da0ba (has email) |
| Jatan Pathak | Chief Operating Officer | unverified | New York | **Lead ID 158629247** | 6102dad6370b590001bb14d0 (has email) |
| Dan Go***o | Head of Hardware, Firmware & Edge AI | unverified | surname masked | not found | 625d6804a526a40001fbf8d5 (has email) |

## Why now (triggers)
- **2026-09-09:** live deployment at Bapco Upstream, Bahrain [2]. New regions (MENA, South America) mean more field
  units, new climates and carriers.

## Engineering signals
- Small in-house device team: Head of HW/FW/Edge AI, Senior Embedded Engineer, Embedded Software Engineer, Electrical
  Engineer, Devices Engineer, an RMA lead [4].
- Solar + cellular + on-device AI: power budget, thermal design and OTA over weak links are the hard parts (our inference).

## Best angle
**Service line:** Embedded hardware + firmware for industrial IoT (primary row), edge AI secondary · **Case study:** PCB
defect detection with computer vision (/case-study/object-detection-of-pcb-faults-using-ml) · **Blog:**
`handle-mqtt-connection-loss`

**Hypothesis:** Scaling from US basins to Middle East and South American fields puts a small hardware team under pressure
(cost-down of InSite One, thermal margins, carrier certification, OTA). We add capacity on board design and firmware
under NDA, with full IP transfer.

## Risks / disqualifiers
- Has its own embedded team; the CEO may route to the Head of Hardware (surname masked, not in Saleshandy).
- Well funded; may prefer hiring.

## Sources
1. https://www.andium.com (read 2026-10-12)
2. https://www.bapcoenergies.com/media-centre/press-releases/bapco-energies-deploys-andiums-advanced-emissions-monitoring-technology (2026-09-09)
3. https://pulse2.com/andium-remote-field-monitoring-and-communications-company-raises-21-7-million-series-b/amp/
4. Apollo people search (domain andium.com) and Saleshandy Lead Finder (2026-10-12)

---
**Summary:** Fit A. Angle: hardware/firmware capacity for InSite One as deployments scale abroad. Next step: CEO reviews
the draft to Jory Schwach (`drafts/email/2026-10-12-andium.md`).
