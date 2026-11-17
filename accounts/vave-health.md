# Vave Health  ·  Fit: A  ·  Researched: 2026-11-13

## Snapshot
Wireless, handheld whole-body ultrasound: the Universal Probe (phased + linear imaging on a single PZT transducer,
2–8 MHz) and a Phased Probe (1–5 MHz), both wireless with swappable batteries, plus iOS/Android apps, VaveCast
streaming and VaveCloud storage · San Jose, CA (releases are datelined San Jose; directories also list Santa Clara) ·
~29 people in Apollo, ~44 per one directory (unverified) · venture-backed (Cota Capital Series A 2019 per CB Insights;
amount not disclosed) · https://www.vavehealth.com

## Lead info
- **Website:** https://www.vavehealth.com · **News:** https://www.vavehealth.com/news · **Careers:** https://www.vavehealth.com/careers (linked from the homepage; roles not checked) · **LinkedIn:** https://www.linkedin.com/company/vave-health/ · **X:** https://x.com/VaveHealth
- **HQ:** San Jose, California (press-release dateline); CB Insights lists 2350 Mission College Blvd, Santa Clara (unverified) · **Founded:** unverified (seed round 2017 per CB Insights) · **Size:** ~29 people in Apollo (domain search); ~44 per YesPress (unverified)
- **Funding:** Series A 2019 led by Cota Capital (CB Insights); total unverified (~USD 2M per Village.ai, likely incomplete). Not for the email.
- **What they make / tech:** wireless handheld ultrasound probes with a single PZT transducer, swappable batteries, a patented probe head cover; VaveCast screen sharing over Wi-Fi to Android/iOS devices; VaveEd education; VaveCloud encrypted storage; DICOM/PACS output. FDA 510(k) K241051 (Vave Wireless Ultrasound System). The probe's radio, MCU/FPGA and firmware stack are not public.
- **Recent news (last 6 months):**
  - 2026-07-24: CE Mark for the Vave Universal Probe; supports sales across the EEA (https://www.vavehealth.com/news/vave-health-announces-ce-mark-certification-for-the-vave-universal-probe). Quote from Timothy Kartisek, President & CCO.
  - 2026-08-06: CE Mark announcement for the Vave Universal product (probe + app + analytics platform) (https://www.vavehealth.com/news/vave-health-announces-ce-mark-certification-for-the-vave-universal-product; page returned 404 on fetch, date and title from search results)
  - Undated (homepage): "Vave Health Reinforces Commitment to Free Software Updates for Handheld Ultrasound Platform"
  - Earlier context: Universal Probe launched 2025-03-13 (https://www.vavehealth.com/news/vave-health-introduces-worlds-first-wireless-handheld-whole-body-ultrasound-with-a-single-pzt-transducer); expanded linear imaging 2025-06-19.
- **HubSpot:** see the line under Buyers

## Why now (triggers)
- **CE Mark for the Universal Probe, 2026-07-24**, opening EEA sales (vavehealth.com). Moving into Europe brings
  regional variants, post-market obligations under MDR and more release work on a device a small team already ships
  with free software updates.

## Engineering signals
- Apollo (domain vavehealth.com, 29 people): commercial, clinical and QA/RA staff, three ultrasound scientists,
  a VP of Ultrasound Imaging, mobile/React Native developers (several outside the US), and **one Lead Electrical
  Engineer** (Le Pham; schematic capture, PCB layout, board bring-up). No firmware or embedded software lead visible.
- Two probe models, swappable batteries, wireless streaming and a promise of ongoing free software updates: a
  device roadmap that leans on firmware and electronics capacity.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Amin Nikoozadeh (**primary**) | Founder and CEO | LinkedIn not found | 137701845 | 66f2a15ca23d9200011e0f4b (has email) | Founder; quoted on the 2025 launch; Saleshandy location Stanford, CA. **Email:** amin@vavehealth.com (Saleshandy `valid`, reveal request 6afaea0d3e7dea9cc46ac0f6, 2026-11-16). LinkedIn (from reveal): https://www.linkedin.com/in/amin-nikoozadeh-914a3a16. **Saleshandy batch:** "CF · batch 2026-11-16 17:03 · USA · 1 lead", `LVPX1nMQal`, built inactive 2026-11-16 |
| Richard Mendez | Vice President of Products | LinkedIn not found | 89862874 | 66f466ac1ec133000149b782 (has email) | **Alternative.** Owns the product roadmap; Massachusetts-based |
| Le Pham | Lead Electrical Engineer | LinkedIn not found | 429291784 | 5eeeab9520222000012f7ac3 (has email) | Technical contact, not a decision maker |

HubSpot: company [365553108718](https://app.hubspot.com/contacts/247517534/record/0-2/365553108718) · contacts Amin Nikoozadeh 593309991644, Richard Mendez 593330559731 · notes 421139162839 (research), 421137332958 (draft).

## Best angle
Service line: Embedded hardware + firmware for a wireless handheld medical device (primary row, healthcare), with
mobile apps as the secondary layer · Case study: BLE smart glucometer firmware + Android/iOS apps (US healthcare
org) · Blog: `iomt-development-services-cost-breakdown`.
Hypothesis: Vave has a cleared, CE-marked wireless probe and a small engineering bench (one lead EE visible). Europe
means variants, release discipline under MDR, battery and wireless tuning, and the software updates they promised
to keep free. We take a defined slice (firmware features, a board revision, power/battery work, app-to-probe link)
under NDA with full IP handed over.

## Risks / disqualifiers
- Ultrasound front-end and beamforming are specialist; pitch around them (firmware, power, wireless, apps), not into them.
- Apollo may miss engineers; an outside design partner or ODM may already do the electronics (none found).
- Headcount and HQ details conflict between sources. No defence or export-control signals found.

## Sources
- https://www.vavehealth.com (read 2026-11-13: products, apps, social links)
- https://www.vavehealth.com/news/vave-health-announces-ce-mark-certification-for-the-vave-universal-probe (read 2026-11-13; dated 2026-07-24)
- https://www.vavehealth.com/news/vave-health-introduces-worlds-first-wireless-handheld-whole-body-ultrasound-with-a-single-pzt-transducer (read 2026-11-13; dated 2025-03-13)
- https://www.accessdata.fda.gov/cdrh_docs/pdf24/K241051.pdf (FDA 510(k) K241051, from search results)
- https://www.cbinsights.com/investor/vave-health, https://yespress.io/vave-health (funding/size, unverified)
- Apollo people search (domain vavehealth.com, 29 people) · Saleshandy Lead Finder (Amin Nikoozadeh; Richard Mendez; Le Pham)
- Lead source: CE-mark web search (medtechdive/vavehealth results)

**Summary:** Fit A · embedded hardware + firmware (and app link) for the CE-marked wireless probes as Vave moves into
Europe · next step: CEO reviews the draft to founder/CEO Amin Nikoozadeh, with VP of Products Richard Mendez as the
alternative.
