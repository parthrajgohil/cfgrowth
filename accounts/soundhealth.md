# SoundHealth  ·  Fit: A  ·  Researched: 2026-09-24

> Dry-run account for setup step 7 (chosen by Claude, not from the pipeline).

## Snapshot
- **What they make:** Sonu, an FDA-cleared wearable band that delivers personalized
  acoustic resonance therapy for allergic and non-allergic rhinitis. A smartphone
  face scan builds a sinus map and the app sets the treatment frequency. A second
  device, **Spatial Sleep**, extends the technology to sleep. [1][2]
- **Scale:** 500,000+ treatment sessions delivered; recommended by 1,000+ medical and
  dental professionals in the US. [1] Sonu was on TIME's Best Inventions 2025 list. [6]
- **HQ / region:** California (careers page) [3]; San Francisco per search listings (unverified). USA.
- **Size:** unverified.
- **Stage / funding:** Series A led by Shangbay Capital, announced 2026-07-30; total
  venture funding $12.25M. [1][2]
- **Website:** https://soundhealth.life
- **HubSpot company ID:** 348569601776 (https://app.hubspot.com/contacts/247517534/record/0-2/348569601776)

- **HubSpot contact IDs:** Vivek Mohan 558508553962, Venkatesh Perungulam 558514468546, Paramesh Gopi 558515833542
- **Website / LinkedIn:** https://www.soundhealth.life · https://www.linkedin.com/company/sound-health-systems

## Why now (triggers)
- Series A closed, announced 2026-07-30; capital is for growing the portfolio of
  breathing and sleep devices. [1][2]
- A second device (Spatial Sleep) is being added alongside Sonu, so there's more firmware and app work. [1][2]
- Hiring a **Senior Firmware Engineer** (ARM MCUs, RTOS, BLE/Wi-Fi; bonus: BLE Audio,
  audio codecs, OTA updates), a **Firmware/Hardware Intern**, an **iOS App Developer**,
  a **Firebase backend developer** and an **ML Architect**. [3]
  The careers page shows no dates, so whether these roles are still open is unverified.

## Engineering signals
- The firmware role stresses Bluetooth audio, codecs and OTA. The product is an audio-delivery
  wearable paired with an iOS app and a Firebase/Google Cloud backend. [3]
- The app uses on-phone ML (face scan → sinus dimensions) and voice biomarkers. [4]
- They're hiring a **Software Development Manager / Site Lead in India** [3], so they're
  building their own India team. See Risks.

## Buyers
| Name | Title | Profile | Notes |
|---|---|---|---|
| Vivek Mohan | VP, Product Development & Engineering | https://soundhealth.life/pages/leadership-team | Former head of IoT at Ruckus Networks and of the wireless business at Semtech; MSEE (USC). **Primary target.** [5] |
| Paramesh Gopi, PhD | Founder & CEO | https://soundhealth.life/pages/leadership-team | Grew Marvell's consumer Wi-Fi business; ex-CEO of AppliedMicro. Deeply technical. [4][5] |
| Venkatesh Perungulam | VP, Infrastructure & Technology (Saleshandy title) | https://www.linkedin.com/in/venkateshperungulam | Background is IT/infrastructure (bank IT; factory information systems at MACOM/AppliedMicro, where he overlapped with the CEO), not firmware. Better as a referral contact than a buyer. [5][7] |

**Emails (Saleshandy Lead Finder, 2026-09-25):**
- Venkatesh Perungulam: `venkatesh@soundhealth.life` (verified "valid"). [7]
- Vivek Mohan: `vivek@soundhealth.life` (verified (catch-all domain)), Apollo reveal 2026-09-25 (request 5041182343864640138, 1 credit).

[7] Saleshandy Lead Finder reveal, request 6ab628a7f5ae266cc001cdfd (1 credit).

## Best angle
**Service line:** Embedded firmware (BLE, OTA, low power) plus a mobile BLE companion app ·
**Case study:** BLE smart glucometer, firmware + Android/iOS apps for a US healthcare org
(/case-study/smart-glucometer) · **Blog:** `medical-wearable-device-development-challenges-and-fix`

**Hypothesis:** with Sonu in market and Spatial Sleep coming, one small firmware team is now
carrying two BLE-audio devices, while they try to hire a senior firmware engineer with BLE
Audio and OTA experience, which is a hard profile to fill. We can take a defined piece of the
work (OTA pipeline, BLE audio stability, power budget, or the second device's firmware)
under NDA with full IP transfer, until the hire lands or alongside it.

## Risks / disqualifiers
- **Strong in-house wireless expertise** (CEO from Marvell Wi-Fi, VP Eng from Semtech
  wireless). They'll judge us hard on specifics, and generic outreach will fail.
- **Their own India site** may be where they plan to add engineers. That could compete with
  outsourcing, or it could mean they're comfortable working with India-based teams.
- The job posts are undated and may be filled.
- Medical device: regulated (FDA). Changes to Sonu's firmware may require
  design-control processes. We should not overstate regulatory experience that CLAUDE.md doesn't list.

## Sources
1. https://hitconsultant.net/2026/07/29/soundhealth-raises-series-a-shangbay-capital-sonu-wearable/
2. https://www.businesswire.com/news/home/20260730536906/en/ (press release, 2026-07-30; page blocked automated fetch, facts cross-checked via [1] and search summaries)
3. https://soundhealth.life/pages/careers (fetched 2026-09-24)
4. https://pulse2.com/soundhealth-profile-paramesh-gopi-interview/ (2025-02-19)
5. https://soundhealth.life/pages/leadership-team (fetched 2026-09-24)
6. https://time.com/collections/best-inventions-2025/7318370/soundhealth-sonu/
