# atmio  ·  Fit: B  ·  Researched: 2026-11-11

## Snapshot
Methane leak detection and repair (LDAR) system for gas grid and storage operators: atmio HLD handheld meter, atmio SLD
battery-powered stationary sensor, NFC tags, an offline-capable field app and the atmio OS cloud for EU Methane Regulation
reporting · Hamburg, Germany (Eurogas deck also lists Munich and Barcelona) · ~25 people in Apollo · founded 2023
(CB Insights says 2022); EUR 1.3M pre-seed (2024-02) and EUR 5.1M seed led by Notion Capital (2024-06) ·
https://www.atmio.com (legal entity listed as M2Tech GmbH, unverified)

## Lead info
- **Website:** https://www.atmio.com · **News/blog:** blog articles on atmio.com (e.g. /blog-artikel/atmio-ruestet-erdgasunternehmen-aus) · **Careers:** https://www.atmio.com/unternehmen/karriere (jobs on https://apply.workable.com/atmio/) · **LinkedIn:** https://www.linkedin.com/company/useatmio (unverified, from the logo URL) · **X:** not found
- **HQ:** Hamburg, Germany · **Founded:** 2023 (press) · **Size:** 24 people in Apollo (sales, customer success, software, mobile, two hardware leads) · not stated by the company
- **Funding:** EUR 5.1M seed, 2024-06-20, led by Notion Capital with SquareOne, HCVC, Robin Capital; angels incl. Bernhard Mohr (ex-VP Gas Detection, Dräger) (https://siliconcanals.com/hamburg-based-atmio-bags-5-1m/); earlier EUR 1.3M (startupcity.hamburg). Use of funds incl. "hiring engineers". No 2026 round found. (Not for the email.)
- **What they make / tech:** atmio HLD handheld meter used with the app; atmio SLD stationary sensor with battery status shown in the station overview; NFC tags on components; atmio OS (inventory, campaigns, EU-compliant reports, SAP integration, data hosted in Frankfurt); app offline-capable, Android and iOS. Sensor type, radio and certifications (ATEX) not published. CEO Matthias Schmittmann previously co-founded bentekk, a gas detector maker acquired by Dräger (press).
- **Recent news (last 6 months and context):**
  - 2026-04-09: CEO presented at the Eurogas Methane Emissions Conference; deck lists atmio OS, app, NFC tags, SLD (site-level) and HLD (detect-and-quantify) and a "Seeker-Mode" (https://www.eurogas.org/wp-content/uploads/2026/01/Atmio-presentation_Eurogas-Methane-Emissions-Conference-9-April-2026-2.pdf, via search summary; 7 months old)
  - Undated on site: press release "atmio rüstet Erdgasunternehmen für die EU-Methanverordnung"; webinar with Stadtwerke Weilburg; "atmio Kongress 2027" event page (atmio.com)
  - A "Senior Embedded Engineer (m/f/x)" post on Workable ("owns the firmware that powers the company's gas measurement devices", per search snippet) appeared in search; the Workable and arbeitnow pages now return 404/410, so it is closed or moved (date unknown)
- **HubSpot:** see Buyers

## Why now (triggers)
- No dated trigger in the last 6 months that we could verify. Signals: a Senior Embedded Engineer post for the gas
  measurement device firmware (now closed), a second device (SLD stationary sensor) alongside the handheld, and customers
  needing EU Methane Regulation compliance (deadlines in 2026). Hence **B**: the email opens on the product.

## Engineering signals
- Apollo shows a Hardware Team Lead (Ivan Ku***v) and a Hardware Lead (Jack Tr***t), a Head of Software Engineering, a
  principal backend engineer and a mobile team; no firmware engineer visible, which matches the embedded post.
- Two device lines (handheld + battery stationary sensor) plus NFC tags: firmware for low power, field connectivity and
  offline sync is a real workload for a hardware team of two leads.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Matthias Schmittmann (**primary**) | Co-Founder & CEO | not found | 52233175 | 66f9963a83ba0c000157df45 (has email) | Gas-detection founder (bentekk → Dräger); decides on engineering partners at this size |
| Ivan Ku***v | Hardware Team Lead | not found | not found ("Hardware Lead at atmio" query returned nothing) | 54a5b8177468692cf00c81a2 (has email; surname masked) | **Alternative**, technical owner; angle fits him directly |
| Jack Tr***t | Hardware Lead | not found | not found | 660e63b9fb8f3500081bc640 (has email; surname masked) | Alternative |
| Daniel Se***d | Head of Software Engineering | not found | not checked | 66754936dec3b5000195b257 (has email) | For app/cloud angle only |

HubSpot: company [364304359150](https://app.hubspot.com/contacts/247517534/record/0-2/364304359150) · contact Matthias Schmittmann 591296353995 · notes 419865810625 (research), 419969900256 (draft).

## Best angle
Service line: Embedded firmware + hardware (primary row, industrial IoT: gas grid / energy monitoring) · Case study: BLE OBD
device + connected app (device-to-app path) · Blog: `handle-mqtt-connection-loss` (stationary sensors on remote gas sites).
Hypothesis: with two device lines and a closed-but-recent embedded hire search, firmware capacity on the HLD/SLD (battery
life of the stationary sensor, reliable data delivery from remote stations, app pairing) is the likely bottleneck. We can
take a defined firmware or board package under NDA with full source and IP handed over.

## Risks / disqualifiers
- They have hardware leadership in-house and may have filled the embedded role.
- Well funded (VC-backed) and fast-moving; may prefer hiring to outsourcing.
- Gas detection in hazardous areas may need ATEX/IECEx experience, which is not in our listed claims.
- Product sensor, radio and power details are not public; the hypothesis is ours.

## Sources
- https://www.atmio.com (read 2026-11-11: products, customers, careers link)
- https://siliconcanals.com/hamburg-based-atmio-bags-5-1m/ (read 2026-11-11; 2024-06-20)
- https://startupcity.hamburg/news-events/news/5-1-million-euros-for-atmio-in-new-financing-round and https://tech.eu/2024/02/29/climate-tech-startup-atmio-emerges-from-stealth-with-1-5m-funding-to-combat-methane-emissions/ (via search summary)
- Eurogas conference deck 2026-04-09 (via search summary; PDF text not readable here)
- Senior Embedded Engineer post: apply.workable.com/atmio/jobs/view/BFF32AB371 (404 on 2026-11-11) and arbeitnow.com (410)
- Apollo people search (domain atmio.com, 24 people) · Saleshandy Lead Finder

**Summary:** Fit B · firmware/hardware capacity for the HLD handheld and SLD stationary methane sensors ·
next step: CEO reviews the draft to Matthias Schmittmann (CEO), Hardware Team Lead Ivan Ku***v as the alternative.
