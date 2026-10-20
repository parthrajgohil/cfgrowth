# Precision Digital Corporation  ·  Fit: A  ·  Researched: 2026-10-19

## Snapshot
- **What they make:** digital panel meters, process indicators, controllers and wireless 4-20 mA systems (ProVu series,
  PDW90 point-to-multipoint wireless) for power plants, wastewater plants, refineries and other process industries [1][2][3].
  Now launching an **industrial IoT platform** that lets customers view process data remotely [1].
- **HQ / region:** 233 South Street, Hopkinton, MA, USA [4]
- **Size:** ~40 people visible in Apollo (unverified headcount) [5]
- **Funding:** privately held; no outside funding found. Founded 1974 (per directory listing, unverified) [4]
- **Website:** https://www.predig.com

## Lead info
- **Website:** https://www.predig.com · **News:** company newsletter "The Indicator" (https://predig.com/indicatorpage/indicator-september-2023) · **Careers:** not found (the IoT role was posted on university job boards [1])
- **LinkedIn:** not verified · **X/Twitter:** not found
- **HQ:** Hopkinton, MA, US · **Founded:** 1974 (unverified) · **Employees:** ~40 in Apollo (unverified)
- **Raised:** none found (private, owner-led; two Presidents in Apollo share a surname, surname masked)
- **What they make / tech:** panel meters and controllers with in-house electronics and embedded firmware (the VP of
  Engineering's profile lists schematic/PCB design, power supply design, embedded firmware, UL/FM/ATEX/IECEx approvals [6]);
  PDW90 wireless system [3]; new IoT platform with cloud hosting and subscription billing [1]
- **Recent news:**
  - 2026-05-27: job post "IoT Product Specialist" (Hopkinton, full-time, in person) for the launch of a new industrial IoT
    product; "product development has been largely completed by a third party"; tasks include coordinating the third-party
    developers, managing penetration testing and fixes, an ISA 62443 gap analysis, building the cloud hosting platform and
    subscription billing, CRM/ERP integration, and field trials; post expired 2026-06-27 [1][7]
  - No dated launch announcement found yet (site returned 403 to our fetch)
- **HubSpot company ID:** 353644825325 (https://app.hubspot.com/contacts/247517534/record/0-2/353644825325)
- **HubSpot contact IDs:** Scott Ewen 572282428136 (no email; the two Presidents not created, surnames masked)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Scott Ewen (**primary**) | VP of Engineering and Operations | unverified | Engineering and product management from inception to EOL; PCB, analog/digital, power supply, embedded firmware; ISO 9001, ATEX, UL/FM/CSA/IECEx approvals [6] | 213536631 | 5fa2952b3a887300015825a2 (has email) |
| Jeffrey Pe*** (surname masked) | President | unverified | [5] | not checked | 5a79f80fa3ae611def9a7f8d (has email) |
| Owen Pe*** (surname masked) | President | unverified | [5] | not checked | 57db4abca6da984c18deae82 (has email) |

## Why now (triggers)
- **New industrial IoT product being launched, built by a third party** (job post dated 2026-05-27) [1][7]. The company is
  setting up a new division to own it, with security work (pen testing, ISA 62443) and cloud hosting still to do.

## Engineering signals
- Strong in-house electronics heritage (panel meters, safety approvals) but the IoT platform was outsourced, and the new hire
  is a CS/IT product specialist, not an embedded or cloud team [1][6].
- Security hardening (pen test fixes, ISA/IEC 62443 gap analysis) and long-term maintenance fall to a very small team [1].

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Scott Ewen | VP of Engineering and Operations | unverified | **Primary.** Saleshandy 213536631; Apollo has email |
| Jeffrey Pe*** | President | unverified | Alternative; surname masked |
| Owen Pe*** | President | unverified | Alternative; surname masked |

## Best angle
**Service line:** IoT full-stack (device firmware → connectivity → cloud) with embedded firmware underneath; secure boot /
OTA / hardening · **Case study:** access control with real-time monitoring (cloud) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** Precision Digital knows instruments but has handed its first IoT product to an outside developer. After launch
it needs someone to own the edge firmware, the cloud side and the security fixes (62443, pen-test findings) over the long run,
ideally one partner across device and cloud, with full source and IP handed over so they're not locked to the original vendor.

## Risks / disqualifiers
- They may stay with the original third-party developer (identity unknown).
- Headcount and ownership unverified; family/owner-led company may move slowly.
- Launch date unknown; the platform may already be live.

## Sources
1. https://app.joinhandshake.com/jobs/11081234/share_preview (IoT Product Specialist post, read 2026-10-19)
2. https://www.alphacontrols.com/brands/precision-digital (product range, distributor)
3. https://www.alphacontrols.com/brands/precision-digital?page=2 (PDW90 wireless system)
4. Web search summary of directory listings (founded 1974, 233 South Street, Hopkinton), 2026-10-19, unverified
5. Apollo people search, domain predig.com (2026-10-19)
6. Saleshandy Lead Finder, Scott Ewen profile summary (2026-10-19)
7. https://mckelveyconnect.washu.edu/jobs/precision-digital-corporation-iot-product-specialist/ (posted 2026-05-27, expired 2026-06-27; page now 404, dates via search snippet)

---
**Summary:** Fit A (traditional instrument maker launching an outsourced IoT platform, 2026-05). Angle: one partner to own
firmware, cloud and security after launch. Next step: CEO reviews the draft to the VP of Engineering & Operations
(`drafts/email/2026-10-19-precision-digital.md`).
