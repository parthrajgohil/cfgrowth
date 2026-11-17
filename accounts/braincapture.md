# BrainCapture  ·  Fit: B  ·  Researched: 2026-11-17

## Snapshot
BC-1 portable EEG system for point-of-care use: an electrode cap with a cap-mounted, battery-powered amplifier,
connected over Bluetooth to a mobile app that guides a non-specialist through a standard EEG, and a cloud platform
where remote neurologists read the recordings · Kongens Lyngby (DTU Science Park), Denmark · ~28 people (Caplight,
2026-02, aggregator) · founded 2019; seed (Verge HealthTech, 2024-09) plus EIC Accelerator grant · https://www.braincapture.dk

## Lead info
- **Website:** https://www.braincapture.dk · **News:** none dated on the site · **Careers:** no openings listed · **LinkedIn:** https://www.linkedin.com/company/braincapture · **X:** not found
- **HQ:** DTU Science Park, Elektrovej 331, 2800 Kongens Lyngby, Denmark · **Founded:** 2019 (thehub.io) · **Size:** 28 employees, up from 21 (Caplight, 2026-02-16; aggregator, unverified)
- **Funding:** seed from Verge HealthTech Fund (2024-09-19; CB Insights USD 0.75M, Caplight total USD 7.89M: sources conflict); EIC Accelerator project (CORDIS 190170276). For our selection only, never in the email.
- **What they make / tech:** BC-1 cap amplifier (portable, battery powered, meets CE medical EEG standards), Bluetooth link to a mobile app, cloud reading platform; CE marked as a Class IIa device under the EU MDR (CORDIS report); site says "BC-1 is now CE MDR certified for acute and critical care" (undated). MCU, radio module and app stack: not public.
- **Recent news:**
  - Undated (2026, site banner): BC-1 CE MDR certified for acute and critical care (https://www.braincapture.dk)
  - Undated (LinkedIn): partnership with Prospect Diagnostics Ltd to bring BC-1 to the UK and the NHS (https://linkedin.com/company/braincapture)
  - 2026-02-16: headcount up from 21 to 28 (https://www.caplight.com/company/braincapture, aggregator)
- **HubSpot:** see the line under Buyers

## Why now (triggers)
- **B (no dated trigger in the last 6 months):** the move from low-resource clinics into **acute and critical care**
  (new CE MDR scope on the site, undated) and into the **UK/NHS** through Prospect Diagnostics (LinkedIn, undated),
  with the team growing ~33% in Q1 2026 (aggregator). Hospital use raises the bar on the device: longer recordings,
  more channels or better signal quality, robust Bluetooth in crowded hospital RF, battery life across shifts,
  cybersecurity and MDR documentation.

## Engineering signals
- Apollo shows a CTO (Radu Gătej), a Chief AI Officer (Tue Lehn-Schiøler), a QA manager, an industrial PhD, business
  development and country staff. **No electronics, firmware or app engineers visible.**
- Product is a Bluetooth medical wearable plus companion app plus cloud: exactly our stack.
- No job posts on the site.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Radu Gătej (**primary**) | CTO | LinkedIn URL not found | 33115873 | 6116897fecae6000019b8b1f (has email) | Owns the BC-1 hardware, app and cloud |
| Paul Loomis | Chief Executive Officer (co-founder) | LinkedIn URL not found | 261195719 | 54aaa860746869037773d210 (has email) | **Alternative.** His Saleshandy summary: leads commercial development, pricing, distribution and regulatory pathways for high- and low-resource settings |

HubSpot: company [368234503877](https://app.hubspot.com/contacts/247517534/record/0-2/368234503877) · contacts Radu Gătej 597943378659, Paul Loomis 598320015065 · notes 424122923753 (research), 424072637120 (draft).

## Best angle
Service line: Embedded firmware + hardware for a BLE medical wearable, plus the companion app (primary row: firmware,
healthcare) · Case study: BLE smart glucometer (firmware + Android/iOS apps, US healthcare org) · Blog:
`design-ble-devices-for-crowded-rf-environments` (follow-up: `medical-wearable-device-development-challenges-and-fix`).
Hypothesis: BC-1 was designed for clinics in low-resource settings. Acute and critical care in Europe and the UK means
a busy RF environment full of other Bluetooth and Wi-Fi devices, long continuous recordings, IT security reviews and
higher volume. A small team led by a CTO who also owns cloud and AI will feel that on the firmware and app side. We can
add capacity on BLE firmware, power, the app link and the next amplifier revision, under NDA with full IP handed over.

## Risks / disqualifiers
- Seed-stage company (small budget); much of its funding is grant-based.
- The amplifier may have been designed by a partner already under contract (not found).
- Both the acute-care CE scope and the UK partnership are undated; the email avoids dates.
- Previous EEG leads: Cebreo Medical (DK, in sequence), NAOX (FR, in sequence). Different product (cap EEG for
  point-of-care, not in-ear), but the CEO may want to watch the overlap.

## Sources
- https://www.braincapture.dk (read 2026-11-17: BC-1, Bluetooth app, cloud, address, CE MDR acute/critical care banner)
- https://cordis.europa.eu/project/id/190170276/reporting (Class IIa CE under MDR; search result)
- https://www.caplight.com/company/braincapture (headcount, funding total; search result)
- https://www.cbinsights.com/company/braincapture/financials (seed 2024-09-19; search result)
- https://thehub.io/startups/braincapture (founded 2019; search result)
- https://linkedin.com/company/braincapture (Prospect Diagnostics UK partnership; search result)
- Apollo people search (domain braincapture.dk) · Saleshandy Lead Finder (1 search)
- Lead source: Apollo people search (point of care diagnostics tag, 2026-11-17)

**Summary:** Fit B · BLE firmware + app capacity as BC-1 moves into acute care and the UK · next step: CEO reviews the
draft to CTO Radu Gătej.
