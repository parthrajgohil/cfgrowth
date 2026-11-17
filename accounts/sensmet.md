# Sensmet  ·  Fit: A  ·  Researched: 2026-11-11

## Snapshot
Online multi-metal water analysers (µDOES®: micro-discharge optical emission spectroscopy) that measure up to 30 metals in
liquid process streams in near real time, for battery-metal recycling (black mass), lithium production, mining, wastewater
and fertiliser plants · Oulu, Finland (customer application centre in Espoo) · ~11 people (aggregators; 8 in Apollo) ·
founded 2017; EUR 1.5M from EIT RawMaterials (2026-04) and a EUR 2.5M EIC grant (2026-06) · https://www.sensmet.com

## Lead info
- **Website:** https://www.sensmet.com · **News:** news items on the home page · **Careers:** job posts on sensmet.com (e.g. https://www.sensmet.com/we-are-looking-for-a-senior-software-engineer/), recruiting with Talented · **LinkedIn:** https://www.linkedin.com/company/sensmet (unverified URL) · **X:** not found
- **HQ:** Moreenitie 15 L 6, 90620 Oulu, Finland; Customer Application Centre, Otakaari 7, Espoo (sensmet.com) · **Founded:** 2017 (CB Insights) · **Size:** ~11 (Bouncewatch, Village.ai "10+"; Prospeo says 1–10; 8 people in Apollo) — borderline for our 10–500 band
- **Funding:** EUR 1.5M from EIT RawMaterials, announced 2026-04-01 (tech.eu), to "scale up and deploy" the analysers; EUR 2.5M EIC Accelerator grant reported 2026-06 (itbrief.co.uk); IT Brief cites a combined EUR 4M. CB Insights lists ~USD 2.6M raised before. (Reasons for us, not for the email.)
- **What they make / tech:** µDOES® analyser (micro-discharge in a diluted sample, optical emission measured), continuous readings sent to customers' data systems; SenSpec desktop software (Java) for concentrations, trends, alarms. **Next-generation hardware in development:** the Senior Software Engineer (C++/Qt) post describes a "greenfield platform" for "next-generation hardware", with communication protocols and API boundaries "between microcontrollers, embedded boards, and networked hardware nodes", and an agile team of embedded hardware developers, mechanical engineers and scientists. One Embedded System Software Engineer visible in Apollo. CTO's profile lists LabVIEW, spectroscopy and online analysers.
- **Recent news (last 6 months):**
  - 2026-10-16 (approx., date shown next to the post on sensmet.com): Senior Software Engineer (C++, Qt) for the next-generation analyser platform
  - 2026-09-07 / 2026-09-11: Jyri Hämäläinen appointed Chief Product Officer, leading product development (sensmet.com; https://itbrief.co.uk/story/sensmet-appoints-jyri-hamalainen-as-chief-product-officer)
  - 2026-06-24: Bart Rooijakkers joins as Operations Manager (sensmet.com)
  - 2026-06: EUR 2.5M EIC grant for water monitoring (https://itbrief.co.uk/story/sensmet-wins-eur-2-5-million-grant-for-water-monitoring, via search)
  - 2026-04-01: EUR 1.5M from EIT RawMaterials (https://tech.eu/2026/04/01/sensmet-secures-1-5m-to-scale-real-time-metals-monitoring-for-europe-s-raw-materials-supply/)
- **HubSpot:** see "HubSpot" line under Buyers

## Why now (triggers)
- **New Chief Product Officer, 2026-09** (itbrief.co.uk, 2026-09-11): Jyri Hämäläinen "leads product development for
  Sensmet's metals monitoring instruments"; ex-Emberion co-founder, ex-Nokia Technologies.
- **Next-generation analyser hardware in development** (sensmet.com job post, ~2026-10-16): greenfield software platform
  for new hardware built from microcontrollers, embedded boards and networked nodes.
- **Funding to scale deployments** (2026-04 and 2026-06). Not for use in the email.

## Engineering signals
- Small team: CEO, CTO (co-founder), CPO, CSO, Operations Manager, Production Manager, an application sales engineer and one
  embedded system software engineer in Apollo. The job post mentions embedded hardware developers, so some in-house
  electronics exist, but the team is thin for a new hardware generation.
- Current control software is a Java desktop app (SenSpec); the new platform moves to C++/Qt plus a Python scripting layer.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Jyri Hämäläinen (**primary**) | Chief Product Officer | LinkedIn not found (Saleshandy has profile photo only) | 192587442 | 5f7b510e37713b00010b890f (no email) | Joined 2026-09; leads product development; 25+ years incl. Emberion (co-founder) and Nokia Technologies; Helsinki area. **Email:** jyri.hamalainen@sensmet.com (Saleshandy `valid`, reveal request 6afaea0d3e7dea9cc46ac0f6, 2026-11-16). LinkedIn (from reveal): https://www.linkedin.com/in/jyrihamalainen. **Saleshandy batch:** "CF · batch 2026-11-16 17:03 · Europe · 3 leads", `GlPYgq9xzV`, built inactive 2026-11-16 |
| Kalle Blomberg von der Geest | CTO, Co-Founder | not found | 5291342 | 54a4b05a74686938ac0faf5b (has email) | **Alternative** (better email odds). Built the µDOES technology; LabVIEW, spectroscopy, online analysers; Oulu. The draft's angle fits him too |
| Toni Laurila | CEO, Co-Founder | not found | not checked | 65c23a68bfaf120001b3b437 (has email) | |

HubSpot: company [364223486678](https://app.hubspot.com/contacts/247517534/record/0-2/364223486678) · contacts Jyri Hämäläinen 591466089147, Kalle Blomberg von der Geest 591356500716 · notes 419954031329 (research), 419968176859 (draft).

## Best angle
Service line: Embedded hardware + firmware (primary row, industrial IoT: process instruments) · Case study: CNC drilling
machine automation (HMI) for a European industrial automation company (closest instrument-control work) · Blog:
`handle-mqtt-connection-loss` (results flowing from the analyser to plant data systems).
Hypothesis: a ~11-person company with a new CPO is building its next-generation analyser, which splits the instrument into
microcontroller boards and networked nodes. Board design, MCU firmware, the comms protocol between nodes and the PC/Qt layer,
and test hooks are a lot for one or two embedded people. We can take a defined slice (a controller board and its firmware,
the inter-board protocol, or the data link to plant systems) with full source and IP handed over.

## Risks / disqualifiers
- Headcount is borderline (~11) and some estimates say 1–10.
- They have their own embedded hardware developers; they may only want software help (the open role is desktop C++/Qt).
- The spectroscopy core (discharge cell, optics) is specialist; we would pitch around it (control electronics, firmware,
  connectivity), not into it.
- The news date for the job post (~2026-10-16) is read from the home page, not the post itself.

## Sources
- https://www.sensmet.com (read 2026-11-11: products, HQ address, news list)
- https://www.sensmet.com/we-are-looking-for-a-senior-software-engineer/ (read 2026-11-11)
- https://itbrief.co.uk/story/sensmet-appoints-jyri-hamalainen-as-chief-product-officer (read 2026-11-11; dated 2026-09-11)
- https://tech.eu/2026/04/01/sensmet-secures-1-5m-to-scale-real-time-metals-monitoring-for-europe-s-raw-materials-supply/ (read 2026-11-11)
- https://itbrief.co.uk/story/sensmet-wins-eur-2-5-million-grant-for-water-monitoring (via search summary)
- https://bouncewatch.com/company/sensmet-ltd, https://village.ai/company/sensmet, https://www.cbinsights.com/investor/sensmet (headcount, founding; via search summary)
- Apollo people search (domain sensmet.com, 8 people) · Saleshandy Lead Finder (Hämäläinen, Blomberg von der Geest)

**Summary:** Fit A · embedded hardware + firmware for the next-generation µDOES analyser, pitched to the new CPO ·
next step: CEO reviews the draft to Jyri Hämäläinen (CPO), with CTO Kalle Blomberg von der Geest as the alternative.
