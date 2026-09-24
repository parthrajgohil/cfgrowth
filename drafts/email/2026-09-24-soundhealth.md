---
status: draft            # human changes to approved / rejected
type: cold-email
account: soundhealth
recipient: Vivek Mohan, VP Product Development & Engineering (email: TO BE FILLED BY HUMAN)
sources: [accounts/soundhealth.md, https://corefragment.com/blog/medical-wearable-device-development-challenges-and-fix, https://corefragment.com/case-study/smart-glucometer]
---

> Dry run for setup step 7. Not loaded into Saleshandy.

## Subject options
1. sonu firmware hiring
2. ble audio + ota at soundhealth
3. second device, same firmware team

---

## Email 1 (day 0), 88 words

Hi {{First Name}},

Congrats on the Series A. I saw SoundHealth is hiring a senior firmware engineer with
BLE Audio and OTA on the wish list, just as Spatial Sleep joins Sonu.

Two audio wearables on one small firmware team usually means OTA hardening and BLE
stability lose out to feature dates.

We built the BLE firmware and iOS/Android apps for a US glucometer maker, under NDA
with full IP transfer.

Would extra firmware capacity help while you hire, or is the team covered?

Parthraj Gohil
Founder & CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), 56 words

Hi {{First Name}},

One failure point in medical wearables: OTA works in the lab, then units brick in the
field because the rollback path was never tested. I wrote up this and 11 others here:
corefragment.com/blog/medical-wearable-device-development-challenges-and-fix

Is OTA rollback already covered for Sonu?

Parthraj

---

## Follow-up 2 (day 8), 51 words

Hi {{First Name}},

A different angle: you're also hiring for iOS. On connected devices, most "firmware bugs"
users report are really BLE reconnect and pairing issues between the app and the band.
We build both sides, firmware and the BLE companion app, so those get fixed in one place.

Useful for Spatial Sleep?

Parthraj

---

## Follow-up 3 (day 15), 32 words

Hi {{First Name}},

I don't want to crowd your inbox. If firmware capacity isn't an issue this quarter,
should I close this out? A one-word reply is fine either way.

Parthraj

---

## Self-check
- [x] Specific to SoundHealth: Series A, the firmware job's BLE Audio/OTA requirements,
      Spatial Sleep, the iOS hire. It couldn't go to another company unchanged.
- [x] Claims trace to accounts/soundhealth.md or CLAUDE.md; the client isn't named;
      no invented numbers.
- [x] Email 1 under 110 words, one CTA, no banned words, at most one link per email.
- [ ] Human: confirm the firmware role is still open before sending (the careers page is undated).
