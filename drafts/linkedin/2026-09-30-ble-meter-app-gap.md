# LinkedIn post: 2026-09-30 (Wednesday)

- **Slot:** Wednesday, Proof or playbook (carousel)
- **Pillar:** Lessons from projects, anonymized (BLE medical device: firmware + companion app)
- **Audience:** CTOs / Heads of Engineering / founders at medical device and health-wearable makers in the US and Europe (segment 1, primary: healthcare firmware)
- **Page:** CoreFragment company page
- **Seed case study:** https://corefragment.com/case-study/smart-glucometer
- **Teams:** sent to the CEO by the unattended run on 2026-09-30 (post: message id 1790749238204; carousel brief: 1790749249682).

## Hooks
- **A (used below):** The meter works. The app works. / The reading still goes missing.
- **B:** Your BLE medical device is one product built by two teams.

## Post

The meter works. The app works.
The reading still goes missing. Here is why ->

A BLE medical device is one product built by two teams: firmware and mobile.

Each side passes its own tests. The failures live in the gap between them.

We built the firmware and Android/iOS apps for a BLE glucometer for a US healthcare organisation. These are the five things we settle before either side writes code:

1. Where a reading lives until the app confirms it. Delete on send, and one dropped connection loses it for good.

2. Whose clock is right. The meter stamps each reading, the phone corrects the clock. Battery swaps and travel are the normal case, not the edge case.

3. How the meter sleeps. A longer advertising interval saves battery, and the patient waits longer for the app to connect.

4. What the phone allows. iOS suspends background apps. Android 12+ asks for new Bluetooth permissions. The sync has to work within both.

5. Which versions must talk. The app updates in days. Meter firmware may never update. Every app release has to work with every firmware still in use.

Write the five down as one shared spec, not two team documents.

When one team owns the meter, the app and the link between them, the gap has an owner too.

#MedTech #EmbeddedSystems #BLE

(~215 words, no emoji)

## First comment
The project behind this carousel: BLE glucometer firmware plus Android and iOS apps, with reminders, abnormal-reading alerts and reports to the doctor: https://corefragment.com/case-study/smart-glucometer

If you're building a connected medical device and want a second opinion on the firmware-to-app link before the teams split up, we're happy to take a look. Or if you'd just like a technical chat about BLE in medical devices, we're up for that too.

## Hashtags
#MedTech #EmbeddedSystems #BLE (already at the end of the post)

## Mention
None (no company is central; the Bluetooth SIG is referenced on slide 3 only as the spec owner).

## Carousel brief (8 slides, 1080×1350 → `2026-09-30-ble-meter-app-gap-carousel.pdf`)
Files: `drafts/linkedin/images/2026-09-30-ble-meter-app-gap-slide-1.svg` … `-slide-8.svg`
1. **Hook:** "The meter works. The app works." / "The reading still goes missing." Diagram: meter (firmware) and phone (app) joined by a dashed BLE link with an orange "?" gap. "5 things to lock before either team writes code."
2. **One product. Two teams.** Each side passes its own tests; failures live in the gap (link, data, timing). Orange card: "We built BLE glucometer firmware and Android + iOS apps for a US healthcare organisation. These are the 5 things we settle first."
3. **1 Where the data lives: Delete only after the app says yes.** Sequence numbers, app asks for records since the last one saved; Glucose Profile RACP note. Agree on: storage size, record format, who deletes what, and when.
4. **2 Time: Decide whose clock is right.** Meter stamps, phone corrects; battery swaps and time zones are normal. Agree on: which clock wins, how a correction shows in history.
5. **3 Power: Choose how the meter sleeps.** Low-power advertising between readings; interval trades battery vs. connect time (BLE: 20 ms to 10.24 s). Agree on: battery-life target and acceptable wait after a test.
6. **4 The phone: Design for what the phone allows.** iOS background suspension; Android 12+ Bluetooth scan/connect permissions; new phone re-pairing. Agree on: background sync and re-pairing flow.
7. **5 Versions: Old firmware meets the new app.** App updates in days, firmware maybe never. Agree on: versioned protocol and app × firmware test matrix.
8. **Takeaway: Give the gap one owner.** One shared spec, recap of the five, "When one team owns meter, app and link, the gap has an owner too." Orange pill: "Follow CoreFragment for more".

## Alt text
An eight-slide carousel titled "The reading still goes missing" showing a glucose meter and a phone joined by a broken Bluetooth link. It lists five things firmware and app teams should agree on: where a reading is stored until confirmed, whose clock is right, how the meter sleeps, what the phone allows, and which versions must work together.

## Best time to post
Wednesday 18:30–20:00 IST (US morning; the case study and primary medtech audience are US). Europe alternative: 12:30–14:00 IST.

## Reshare comment for Parthraj's profile
"In a BLE medical device, the hardest bugs usually sit between the firmware and the app, not inside either one. Five questions worth settling before the two teams split up."

## Sources (facts checked 2026-09-30)
- CoreFragment case study "Smart glucometer": US healthcare organisation; BLE (Laird module, Keil) firmware; Android and iOS apps; readings transferred to the app; reminders, abnormal-reading alerts, history and report to the doctor; "low-power advertising mode between readings". No results or metrics are claimed.
- Bluetooth SIG Glucose Profile / Glucose Service: stored records with sequence numbers, retrieved through the Record Access Control Point (RACP).
- Bluetooth Core Specification: legacy advertising interval range 20 ms to 10.24 s.
- Apple Core Bluetooth background execution: apps are suspended in the background unless using the bluetooth-central background mode.
- Android 12 (API 31): BLUETOOTH_SCAN and BLUETOOTH_CONNECT runtime permissions.
- The five items are presented as our design checklist, not as reported incidents from the client project.
