# LinkedIn post: 2026-09-25 (Friday)

- **Slot:** Friday, Industry POV (a): news from the last few weeks (CRA Article 14 reporting live since 11 Sept 2026; CRA compliance was a focus track at Embedded World North America, 22–24 Sept)
- **Pillar:** Prototype-to-production pitfalls (OTA, secure boot, fleet security)
- **Audience:** CTOs / Heads of Engineering at device makers selling into the EU (medical, industrial IoT)
- **Page:** CoreFragment company page
- **Teams:** sent from the interactive session at 18:4x IST (the unattended run could not reach Microsoft 365).

## Hooks
- **A (used below):** Your devices already in the field now have a 24-hour clock.
- **B:** Since 11 September, one firmware bug can start a 24-hour deadline.

## Post

Your devices already in the field now have a 24-hour clock.

Since 11 September, the EU Cyber Resilience Act's reporting rules apply. Here is why your firmware team should care ->

If an actively exploited vulnerability hits your product, you owe ENISA an early warning within 24 hours.

A fuller notification within 72 hours.

A final report within 14 days of a fix being available.

And it covers products already on the market, not only new ones.

The report itself is the easy part. The hard questions are engineering ones:

Do you know which version of mbedTLS, lwIP or the BLE stack is on each shipped unit?

Can you push a signed OTA update to the whole fleet, and roll back if it fails?

Does secure boot really reject an unsigned image, or was it switched off during bring-up and never switched back on?

Can you see which devices have actually taken the update?

If any answer is "not sure", 24 hours is not enough time to find out.

The rest of the CRA applies from December 2027. Teams that put an SBOM, a tested OTA path and a working root of trust in place now will have a much calmer 2027.

Check these four before your next field update, not after the first incident.

#CyberResilienceAct #EmbeddedSystems #IoTSecurity

## First comment
The European Commission's summary of the CRA reporting obligations: https://digital-strategy.ec.europa.eu/en/policies/cra-reporting

If you'd like a second pair of eyes on your OTA and secure-boot setup before 2027, our firmware team is happy to take a look. Or if you'd just like a technical chat about CRA readiness on MCU devices, we're up for that too.

## Hashtags
#CyberResilienceAct #EmbeddedSystems #IoTSecurity (already at the end of the post)

## Mention
Optional: @ENISA (EU Agency for Cybersecurity) on "ENISA" in the post. No people.

## Visual brief (single image)
- **Format:** 1200×1500 portrait
- **Headline on image (max 8 words):** "The CRA clock: are you ready?"
- **Top half (timeline):** a horizontal arrow starting at a red dot labelled "Exploited vulnerability found", with three markers: "24 h: early warning" → "72 h: notification" → "14 days after fix: final report". A small tag at the far right: "Full CRA: Dec 2027".
- **Bottom half (checklist):** four rows, each with an empty checkbox:
  1. SBOM per shipped firmware version
  2. Signed OTA with rollback
  3. Secure boot enforced in production
  4. Fleet update visibility
- **Style:** clean, white background, dark grey text, one accent colour (CoreFragment brand colour) for the arrow and checkboxes, CoreFragment logo bottom-right. No stock photos, no padlock clip-art.
- **Alt text:** "Timeline of EU Cyber Resilience Act reporting deadlines: early warning within 24 hours, notification within 72 hours, final report within 14 days of a fix, full CRA from December 2027. Below, a four-item checklist: SBOM per firmware version, signed OTA with rollback, secure boot enforced, fleet update visibility."

## Best time to post
Friday 12:30–14:00 IST (morning in Europe, where CRA matters most).

## Reshare comment for Parthraj's profile
"The CRA reporting clock started on 11 September, and it also covers devices you shipped years ago. It's worth ten minutes with your firmware lead this week."

## Sources (facts checked 2026-09-25)
- Crowell & Moring, "It's live: CRA reporting mandatory as of 11 September 2026" (24 h / 72 h / 14 days / 1 month; rest of CRA from 11 Dec 2027): https://www.crowell.com/en/insights/client-alerts/its-live-the-cyber-resilience-act-reporting-is-mandatory-as-of-today-11-september-2026
- CRA Article 69(3): Article 14 applies to products placed on the market before 11 Dec 2027: https://www.european-cyber-resilience-act.com/Cyber_Resilience_Act_Article_69.html
- ENISA Single Reporting Platform launch: https://www.enisa.europa.eu/news/the-cra-single-reporting-platform-is-launched
- Canonical, CRA session at Embedded World NA (24 Sept 2026): https://canonical.com/blog/zephyr-lts-announcement
