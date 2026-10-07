# Caretaker Medical  ·  Fit: A  ·  Researched: 2026-10-02

## Snapshot
- **What they make:** VitalStream, a wireless hemodynamic monitor: a wrist unit ("the hub")
  with a non-invasive finger sensor ("Butterfly Cuff"), plus an ART-Dock that takes the signal
  from an existing arterial line. Beat-by-beat blood pressure, cardiac output, SVR and fluid
  response using their Pulse Decomposition Analysis (PDA). Wi-Fi to the EMR, VitalCloud remote
  portal, VitalStation central dashboard, GE Carescape and Philips IntelliVue compatibility [1][2].
  FDA-cleared (2021) and CE-marked under EU-MDR (2026) [2][3].
- **HQ / region:** Charlottesville, Virginia, USA [2].
- **Size:** ~86 employees (ZoomInfo, via search summary) [5].
- **Stage / funding:** founded 2014; about $11–15.5M raised (sources differ; grants and seed
  rounds; investors include NIH, Baxter, Early Light Ventures) [6].
- **Website:** https://caretakermedical.net

## Lead info
- **Website:** https://caretakermedical.net · **Blog/news:** https://caretakermedical.net/blog/ · **Careers:** unverified (no open roles found)
- **LinkedIn:** https://www.linkedin.com/company/caretaker-medical · **X/Twitter:** unverified
- **HQ:** 941 Glenwood Station Ln, Suite 301, Charlottesville, VA 22901, USA [2] · **Founded:** 2014 [5] · **Employees:** ~86 [5]
- **Funding:** ~$11.3M (CB Insights) to $15.5M (PitchBook); latest: $200K grant, 2025-04 [6]
- **What they make / tech:** wireless wrist hub + finger sensor + ART-Dock; Wi-Fi with secure
  pin-pairing; EMR integration; VitalCloud [1]. MCU, radio module and RTOS: unverified.
- **Recent news (last 6 months):**
  - 2026-06-05: **CE mark** for the VitalStream multimodal platform, announced at EuroAnesthesia
    2026 in Rotterdam [2]
  - 2026-08: **Philips** names Caretaker one of six partners; VitalStream data flows into Philips
    Patient Information Center iX (PIC iX), from critical care to hospital-at-home [3]
- **HubSpot company ID:** 349938995932 (https://app.hubspot.com/contacts/247517534/record/0-2/349938995932)
- **HubSpot contact IDs:** Justin McQuown 562595585755, Martin Baruch 562612288239 (no emails)

| Buyer | Title | LinkedIn | Background | Saleshandy | Apollo |
|---|---|---|---|---|---|
| Justin McQuown (**primary**) | VP of Engineering | https://www.linkedin.com/in/justin-mcquown-ba21045/ | At Caretaker since 2015 (R&D engineer → Director of Engineering → VP); MSEE University of Virginia [7] | **Lead ID 134728842** | 611b3836a9e6d70001cbd7eb (has email) |
| Martin Baruch | Founder & CTO | https://www.linkedin.com/in/martin-baruch-0a093718/ | PhD MIT; inventor on Caretaker's blood-pressure patents [8] | **Lead ID 292981255** | 611b38362c8c9000015ac391 (has email) |
| Jeff Pompeo | President & CEO | https://www.linkedin.com/in/jeffpompeo/ | Quoted in the CE-mark release [2] | not checked | 54aae360746869037731a41b (has email) |

## Why now (triggers)
- **CE mark under EU-MDR** for VitalStream (2026-06-05) [2]: EU launch work (localisation,
  distributor builds, post-market surveillance) on top of the US product.
- **Philips PIC iX integration** (2026-08) [3]: new interface work and a wider deployment base.

## Engineering signals
- Two sensing modes (finger cuff and arterial line) on one wrist hub [1]: more firmware variants
  to maintain and verify.
- Wireless patient-worn monitor on hospital Wi-Fi; battery life and connectivity robustness
  matter (inference).
- Engineering team is small (company ~86 people, mostly commercial and clinical); no open
  engineering roles found (unverified).

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Justin McQuown | VP of Engineering | LinkedIn above | **Primary.** Saleshandy 134728842; Apollo has email |
| Martin Baruch | Founder & CTO | LinkedIn above | Alternative. Saleshandy 292981255; Apollo has email |

## Best angle
**Service line:** embedded firmware + hardware for a medical wearable (low-power, wireless, HIL
testing) · **Case study:** BLE smart glucometer (/case-study/smart-glucometer) and connected
health monitoring hub (/case-study/health-monitoring-hub) · **Blog:**
`medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** a small engineering team just took on an EU-MDR launch and a Philips integration
in the same summer. Extra firmware/hardware capacity for the wrist hub (new variants, power
work, test automation) would let them keep the US roadmap moving. NDA, full IP transfer.

## Risks / disqualifiers
- VitalStream is listed on ECAT, the DoD medical procurement channel, and the VA Federal Supply
  Schedule [4]. That is selling a civilian, FDA-cleared monitor to military hospitals, not
  defence development work. Flagged for the CEO; not treated as a disqualifier.
- Regulated product (510(k), MDR): a partner must work inside their design-control process. We
  don't claim IEC 62304 in the email.
- Funding is modest; budget for outside engineering unverified.

## Sources
1. https://caretakermedical.net/vitalstream/ (read 2026-10-02)
2. https://caretakermedical.net/blog/caretaker-medical-receives-ce-mark-for-vitalstreamsup-sup-multimodal-wireless-patient-monitoring-platform/ (2026-06-05, read 2026-10-02)
3. https://www.philips.com/a-w/about/news/archive/standard/news/press/2026/philips-expands-open-patient-monitoring-ecosystem-to-help-health-systems-keep-sight-of-patients-beyond-the-bedside.html and https://www.medtechdive.com/news/philips-forms-6-patient-monitoring-partnerships/827305/ (2026-08, via search summary)
4. https://caretakermedical.net/blog/vitalstream-available-to-va-hospitals-on-fss/ (via search summary)
5. https://www.zoominfo.com/c/caretaker-medical-llc/365425545 (via search summary)
6. https://pitchbook.com/profiles/company/224627-86 and https://www.cbinsights.com/company/caretaker-medical (via search summary)
7. https://www.linkedin.com/in/justin-mcquown-ba21045/ (via search summary)
8. https://www.crunchbase.com/person/martin-baruch and https://patents.justia.com/inventor/martin-baruch (via search summary)
9. Saleshandy Lead Finder and Apollo people search for caretakermedical.net (2026-10-02)
