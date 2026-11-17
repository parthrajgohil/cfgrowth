# Gardia (microsynetics GmbH)  ·  Fit: B  ·  Researched: 2026-11-09

## Snapshot
Cellular emergency-call wristband for older people with automatic fall detection (Gardia Notrufarmband), app for
families, optional 24/7 Bosch emergency centre; also sold under the Beurer brand · Soest, Germany · ~30 employees
(GS1/StartupValley, 2025-10) · founded 2019 · EUR 8.5M Series A led by Peak (reported 2026-02-06) · https://www.gardia.net

## Lead info
- **Website:** https://www.gardia.net · **Magazine:** on gardia.net (undated) · **Careers:** https://www.gardia.net/pages/jobs (no roles listed) and https://www.get-in-it.de/unternehmen/microsynetics-gmbh
- **LinkedIn:** company page under "microsynetics" (logo in Saleshandy), URL unverified · **X:** none found
- **HQ:** Werkstr. 22, 59494 Soest, Germany (get-in-it.de business listing) · **Founded:** 2019 (StartupValley) · **Size:** ~30 employees (StartupValley, 2025-10-17); 36 people in Apollo
- **Funding:** EUR 8.5M Series A led by Peak with amberra, butterfly & elephant (GS1 Germany), BONVENTURE, DvH Ventures, Beurer and angels, reported 2026-02-06 (https://www.htworld.co.uk/?p=47794; https://techfundingnews.com/german-healthtech-gardia-zips-e8-5m-to-equip-seniors-with-ai-fall-detection-wristbands/). Funds: DACH and international expansion, B2B in healthcare and care services. Not for use in the email.
- **What they make / tech:** wristband with built-in SIM/cellular, GPS, fall detection ("FallGuard"), speaker + microphone for a voice call, button, IP67, up to 21 days battery; no smartphone or WLAN needed for the wearer; "My Gardia" app for up to six contacts; 24/7 Bosch emergency centre; subscription model; Pflegekasse can pay from Pflegegrad 1. Earlier brand: caera (Bosch case study). Chips/RTOS unknown.
- **Recent news (last 6 months and roadmap):**
  - 2026-10-01: Beurer press release for the International Day of Older Persons promoting the "Gardia Notrufarmband von Beurer" (https://www.beurer.com/web/de/presse/2026/beurer-welttag-der-aelteren-menschen-gardia.php)
  - 2026-02-06: Series A (older than 6 months)
  - 2025-10-17: GS1's butterfly & elephant invests; plans to add "AI-based motion recognition, more precise sensors and additional health functions" and win distribution partners (https://startupvalley.news/de/gardia-microsynetics-notrufarmband-senioren/)
- **HubSpot:** company [362528649927](https://app.hubspot.com/contacts/247517534/record/0-2/362528649927) · contacts Michael Hummels 588806730427, Marlon Besuch 588831456958 · notes 418129632957 (research), 417848642281 (draft)

## Why now (triggers)
- **Roadmap:** the founders plan AI-based motion recognition, more precise sensors and more health functions (StartupValley, 2025-10-17).
- **Scale-up:** Series A (2026-02) for DACH/international expansion and B2B care; Beurer is pushing the product nationally (2026-10-01).
- No open embedded/hardware role found (only a junior app developer listing on get-in-it.de, undated). Grade B: good fit, trigger older than 6 months or indirect.

## Engineering signals
- Visible engineering in Apollo: co-founder CTO, one Embedded Software Developer (Kai We***r), a React Native developer, a Lead Infrastructure, a Product Lead. A thin embedded team for a cellular + GPS + audio wearable with 21-day battery life.
- Next-generation features (motion recognition on the wrist, more sensors, health functions) mean new firmware, power budget and probably a new board.

## Buyers
| Name | Title | Profile | Saleshandy | Apollo | Notes |
|---|---|---|---|---|---|
| Michael Hummels (**primary**) | Co-Founder & CTO | LinkedIn not found (unverified) | 469543622 | 6062fcb3220fc90001b297cc (has email) | Named co-founder CTO by Tech Funding News; quoted on design philosophy (StartupValley) |
| Marlon Besuch | Co-Founder & CEO | not found | not checked | 57daa7e4a6da984a8343af39 (has email) | Quoted in the Series A coverage |

## Best angle
Service line: embedded firmware + edge AI (low-power engineering, on-device motion/fall models, OTA) and hardware for the
next board · Case study: BLE smart glucometer (/case-study/smart-glucometer) and connected health monitoring hub
(/case-study/health-monitoring-hub) · Blog: `medical-wearable-device-development-challenges-and-fix`.
A small team running a subscription service and a growing installed base, now adding motion recognition, better sensors
and health functions to a wrist device that must still last three weeks on a charge. We can take on the next-generation
firmware or sensor board, or the on-device motion model, and hand over full source and design files.

## Risks / disqualifiers
- Not a regulated medical device (emergency-call wearable); healthcare-adjacent.
- Hardware may be designed by an external partner already (unverified).
- No open engineering role found; the trigger is the roadmap, not a hire.

## Sources
- https://www.gardia.net
- https://www.htworld.co.uk/?p=47794 · https://techfundingnews.com/german-healthtech-gardia-zips-e8-5m-to-equip-seniors-with-ai-fall-detection-wristbands/
- https://startupvalley.news/de/gardia-microsynetics-notrufarmband-senioren/
- https://www.beurer.com/web/de/presse/2026/beurer-welttag-der-aelteren-menschen-gardia.php · https://www.beurer.com/de/p/10043/
- https://www.get-in-it.de/unternehmen/microsynetics-gmbh
- Apollo people search (Gardia), Saleshandy Lead Finder

**Summary:** Fit B · next-generation wristband firmware/edge AI and sensor board for a thin embedded team · next step: CEO
reviews the draft to Michael Hummels (CTO).
