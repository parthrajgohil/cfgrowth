# Siloton  ·  Fit: A (small team, see risks)  ·  Researched: 2026-11-12

## Snapshot
Chip-based optical coherence tomography (OCT) for retinal imaging: GiraffeOCT, a handheld, binocular-style OCT
system that puts the optics of a tabletop OCT on a photonic chip smaller than a £1 coin, in in-clinic and at-home
versions; also OCT-chip development kits and a CheetahOCT research system · Bristol, UK · 1–10 FTE (6 staff on the
team page; 7 people in Apollo), plan to grow to 16 by 2028-08 · founded ~2020 (Companies House no. 12542558),
investor-backed (Quantum Exponential has a board seat) · https://www.siloton.com

## Lead info
- **Website:** https://www.siloton.com · **News:** news list on siloton.com · **Careers:** job posts on siloton.com (Integrated Photonics Engineer, 2026-09-03) · **LinkedIn:** not verified · **X:** not found
- **HQ:** One Cathedral Square, Bristol BS1 5DD (trading address, siloton.com) · **Founded:** ~2020 (company no. 12542558; CEO "has led Siloton for five years") · **Size:** 1–10 FTE (The Quantum Insider company profile); 6 staff + board/advisers on siloton.com/team; 7 in Apollo — **below our 10–500 band**
- **Funding:** £8.4M two-year Innovate UK contract (Contracts for Innovation: Quantum Missions Primer), announced 2026-10-14; Quantum Exponential is an investor (Investor Director Stuart Nicol on the board); earlier rounds not found. Plans to raise further investment. (Reasons for us, not for the email.)
- **What they make / tech:** photonic-chip OCT (first-gen Akepa chip, first human retina image 2024; second-gen BlueJay chip to be integrated); GiraffeOCT handheld for clinics and an at-home version "with built-in automation and guidance so users can image themselves"; a cloud platform to be expanded; three patents disclosed 2024 (distance compensation, internal optics, imaging both eyes with fewer components). No electronics, MCU or firmware details are public.
- **Recent news (last 6 months):**
  - 2026-10-14/16: £8.4M Innovate UK contract to develop in-clinic and at-home GiraffeOCT and run trials (Sunderland Specialist Eye Hospital), integrate the BlueJay chip and expand the cloud platform; could cut development by up to two years; team to 16 by 2028-08 (https://thequantuminsider.com/2026/10/14/siloton-8-4-million-innovate-uk-quantum-eye-imaging/, https://physicsworld.com/a/siloton-secures-8-4m-to-speed-development-of-portable-retinal-imaging-system/, https://www.optics.org/news/siloton-secures-%C2%A38.4-million-to-translate-giraffeoct-into-clinics)
  - 2026-09-21: project with UCL Great Ormond Street Institute of Child Health on OCT for children's eyes (siloton.com news)
  - 2026-09-03: Integrated Photonics Engineer / Senior post (siloton.com)
- **HubSpot:** see "HubSpot" line under Buyers

## Why now (triggers)
- **£8.4M Innovate UK contract, 2026-10-14**, to turn GiraffeOCT into in-clinic and at-home devices, with clinical
  trials, a second-generation chip and a cloud platform, on a two-year clock (sources above). Funding itself is not
  for the email; the plan (handheld in-clinic + at-home versions, trials) is.

## Engineering signals
- The team is photonics- and physics-heavy: CEO and CTO both have PhDs in photonic chips; Senior Photonics Engineer
  leads hardware; one Software Engineer leads software (siloton.com/team). No electronics, firmware or mobile/cloud
  engineer is visible.
- Their only open role is photonics. Building a handheld clinical device and a self-use home device adds embedded
  electronics (power, sensor/laser drivers, MCU firmware), a device-to-cloud link and likely a companion app: work
  the current team does not appear to have.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Euan Allen (**primary**) | Chief Technology Officer & Co-Founder | LinkedIn not found | 424838753 | 66fed49671870300016d326b (has email) | PhD in photonic chips; led projects across bulk optics, fibre and integrated photonic chips; Bristol |
| Alasdair Price | CEO & Co-Founder | LinkedIn not found | not checked | 57db17dfa6da984ba4585e0a (has email) | **Alternative.** PhD in photonic chips; quoted on the Innovate UK award |
| Ben Hunt | Co-founder & Chief Commercial Officer | not found | not checked | 5d50985580f93e1e06effe3f (has email) | PhD in medical imaging |

HubSpot: company [364600107741](https://app.hubspot.com/contacts/247517534/record/0-2/364600107741) · contacts Euan Allen 592177644225, Alasdair Price 592189884151 · notes 420202861253 (research), 420233319098 (draft).

## Best angle
Service line: Embedded hardware + firmware for a handheld medical device (primary row, healthcare), with device-to-cloud
and app as the secondary layer · Case study: connected health monitoring hub + app (healthcare; device, mobile, cloud) ·
Blog: `iomt-development-services-cost-breakdown`.
Hypothesis: Siloton has solved the hard optics on a chip and now has two years to put it in a handheld clinical
device and a home device people use on themselves. That means battery and power design, drivers for the light source
and detector, MCU or embedded Linux firmware, OTA, and a secure link to their cloud. With six staff, almost all
photonics, the electronics and firmware around the chip are the likely bottleneck. We take a defined slice (control
board + firmware, or the device-to-cloud link) under NDA with full IP handed over.

## Risks / disqualifiers
- **Size:** 1–10 FTE, below our 10–500 band. Graded A anyway because the funded two-year programme and the plan to
  stay at ~16 people make outside engineering likely. CEO to decide.
- OCT signal processing and the photonic chip are specialist; pitch around them (electronics, firmware, connectivity), not into them.
- They may already have an electronics partner or contract manufacturer (none found).
- University of Bristol links are likely but unverified; no defence or export-control signals found (a "system for
  astronauts" is mentioned; space, not defence).

## Sources
- https://www.siloton.com (read 2026-11-12: products, news list, careers, addresses, company number)
- https://www.siloton.com/team (read 2026-11-12)
- https://thequantuminsider.com/2026/10/14/siloton-8-4-million-innovate-uk-quantum-eye-imaging/ (read 2026-11-12)
- https://physicsworld.com/a/siloton-secures-8-4m-to-speed-development-of-portable-retinal-imaging-system/ (read 2026-11-12; dated 2026-10-16)
- https://www.optics.org/news/siloton-secures-%C2%A38.4-million-to-translate-giraffeoct-into-clinics (read 2026-11-12; dated 2026-10-15)
- https://www.healthcare.digital/single-post/nelson-advisors-this-week-in-european-healthtech-medtech-and-health-ai-30th-october-2026 (source of the lead)
- Apollo people search (domain siloton.com, 7 people) · Saleshandy Lead Finder (Euan Allen)

**Summary:** Fit A (size flagged) · embedded electronics + firmware (and device-to-cloud) around the photonic chip
for the handheld and at-home GiraffeOCT · next step: CEO reviews the draft to CTO Euan Allen, with CEO Alasdair Price
as the alternative.
