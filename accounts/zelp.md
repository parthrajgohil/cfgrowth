# ZELP  ·  Fit: A  ·  Researched: 2026-10-08

## Snapshot
- **What they make:** wearable devices for cattle. **ZELP Sense** (launched 2026-08-26) is a headpiece, flexible
  nosepiece and gas-sensing unit that measures methane from individual cows in real-world settings, with automated
  data transfer and results (grams per day) in **ZELP Insight**, a mobile-optimised web app [1][2]. The site also
  says Sense measures dry matter intake [2]. **ZELP Mitigate** is a non-chemical methane-mitigating device [2].
- **HQ / region:** London, UK [1].
- **Size:** unverified. Apollo lists ~15 people (CEO, CFO, COO, VP Engineering, Head of Hardware, Head of Product
  Development, design and quality leads, workshop) [5].
- **Funding:** reported USD 9M Series A (Danone Manifesto Ventures, Collaborative Fund, Novo Holdings, British
  Business Bank) and over USD 30M raised in total including grants (Gates Foundation, Global Methane Hub, European
  Commission) [3] (search summary; unverified, date unknown). ZELP Sense co-funded by the Global Methane Hub
  Enteric Fermentation R&D Accelerator [1].
- **Website:** https://www.zelp.co

## Lead info
- **Website:** https://www.zelp.co · **News:** https://www.zelp.co/news/ · **Careers:** https://www.zelp.co/careers/
  (BambooHR: https://zelp.bamboohr.com/careers)
- **LinkedIn:** linked from the site (URL unverified) · **X/Twitter:** not found
- **HQ:** London, UK · **Founded:** unverified · **Employees:** unverified (~15 in Apollo)
- **Funding:** see Snapshot (unverified)
- **What they make / tech:** cattle wearable with gas-sensing unit, automated data transfer, ZELP Insight web app.
  MCU, radio, battery: **unverified**. 20,000+ hours of real-world use [1].
- **Recent news (last 6 months):**
  - 2026-08-26: ZELP Sense launched (https://www.zelp.co/news/; [1])
  - 2026-10-05: case study, Farm Zero C using ZELP Sense for on-farm data (https://www.zelp.co/news/)
- **HubSpot company ID:** 351040022259 (https://app.hubspot.com/contacts/247517534/record/0-2/351040022259)
- **HubSpot contact IDs:** Jordan Mcrae 566482171615, Julio Cesare Pea 566210692846 (no emails)
- **Buyers:**

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Jordan Mcrae (**primary**) | VP of Engineering | unverified | London | **Lead ID 331529147** | 66f286a9bd28520001e61899 (has email) |
| Julio Cesare Pea | Head of Hardware | unverified | London; ~25 years' experience (Saleshandy) | **Lead ID 4833730** (decision maker) | 671ce356d2a9bb00014efb66 (no email) |

Others in Apollo: Francisco Norris (Co-founder & CEO), Harry Le*** (Head of Product Development), COO James Ar***.
The careers page names Darren Lewis as Head of Product Development (conflicts with Apollo; unverified).

## Why now (triggers)
- **ZELP Sense launch, 2026-08-26** [1]: a new field wearable moving from pilots to commercial and research fleets
  (inventories, breeding programmes, emissions reporting).
- **First customer story, 2026-10-05** (Farm Zero C): deployments are under way.

## Engineering signals
- Own hardware team (Head of Hardware, VP Engineering, two lead design engineers, workshop, quality lead) [5].
- A wearable on livestock, outdoors, with automated data transfer: battery life, ruggedness, connectivity drop-outs
  and field updates are the usual pressure points at scale (our inference).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Jordan Mcrae | VP of Engineering | unverified | **Primary.** Saleshandy 331529147 |
| Julio Cesare Pea | Head of Hardware | unverified | Alternative; decision maker in Saleshandy (4833730); Apollo has no email |

## Best angle
**Service line:** embedded firmware + hardware (low-power wearable, BLE/OTA, data link) · **Case study:** BLE smart
glucometer (/case-study/smart-glucometer) · **Blog:** `handle-mqtt-connection-loss`

**Hypothesis:** with Sense launched and fleets starting, the small hardware team carries production, field issues and
the next revision at once. We can add firmware/hardware capacity for battery life, OTA and reliable data transfer,
under NDA with full IP transfer.

## Risks / disqualifiers
- Agri / animal wearable: counts as broad industrial IoT per CLAUDE.md (agriculture), not healthcare.
- Funding figures come from a search summary (Dealroom/Caplight); not verified, not used in the email.
- Sense internals unverified, so the email doesn't name their stack.

## Sources
1. https://www.global-agriculture.com/animal-health-welfare/zelp-launches-zelp-sense-to-enable-scalable-real-world-measurement-of-livestock-methane-emissions/ (2026-08-26; read 2026-10-08)
2. https://www.zelp.co and https://www.zelp.co/news/ (read 2026-10-08)
3. Search summary citing https://app.dealroom.co/companies/zelp and https://www.caplight.com/company/zelp (unverified)
4. https://www.zelp.co/careers/ (read 2026-10-08)
5. Saleshandy Lead Finder and Apollo people search for ZELP (2026-10-08)

---
**Summary:** Fit A. Angle: wearable firmware/hardware capacity as ZELP Sense moves to fleets.
Next step: CEO reviews the draft to Jordan Mcrae (`drafts/email/2026-10-08-zelp.md`).
