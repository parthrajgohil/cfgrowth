# LinkedIn post: 2026-10-21 (Wednesday)

- **Slot:** Wednesday, Proof or playbook (carousel)
- **Pillar:** Lessons from projects, anonymized (home health monitoring hub)
- **Audience:** CTOs / Heads of Engineering / founders at medical-device and digital-health companies in the US and Europe building connected home-care products (primary: embedded firmware + hardware, healthcare)
- **Page:** CoreFragment company page
- **Seed (first comment):** https://corefragment.com/case-study/health-monitoring-hub
- **Teams:** sent to the CEO by the unattended run on 2026-10-21 (post: id 1792563636324; carousel brief: id 1792563645517).

## Hooks
- **A (used below):** The patient won't fix the Wi-Fi. / Your health hub has to cope anyway.
- **B:** A home health hub has no IT department. / So it has to look after itself.

## Post

The patient won't fix the Wi-Fi.
Your health hub has to cope anyway. Here is why ->

We built a home health monitoring hub for a healthcare client in Australia: the hardware, firmware, Linux drivers and the mobile app.

It collects readings from an oxygen monitor, a weighing scale and a glucose meter. Then it sends them to the cloud and to an app designed for elderly patients.

In a hospital, someone owns the network. At home, nobody does. The router gets replaced, the password changes, the power goes off at night.

So a home hub has to look after itself:

Wi-Fi first, with a cellular module as backup.

Store every reading on the hub first, and send it when a connection exists. Give each reading an ID, so a retry never creates a duplicate.

Turn each device's own format into one record: device, value, unit, time.

Come back on its own after a power cut, with storage that survives it.

Over cellular, send readings and alerts. Logs and large updates can wait for Wi-Fi.

Design it for the home it will live in, not the lab it was tested in.

#DigitalHealth #MedTech #EmbeddedSystems

(~190 words, no emoji)

## First comment
The home health monitoring hub project (anonymised): https://corefragment.com/case-study/health-monitoring-hub

If you're building a connected device that will live in patients' homes and want a second opinion on connectivity, storage or recovery, we're happy to take a look. Or if you'd just like a technical chat about home-care devices, we're up for that too.

## Hashtags
#DigitalHealth #MedTech #EmbeddedSystems (already at the end of the post)

## Mention
None.

## Carousel brief (8 slides, 1080×1350 → `2026-10-21-home-health-hub-carousel.pdf`)
Files: `drafts/linkedin/images/2026-10-21-home-health-hub-slide-1.svg` … `-slide-8.svg`
1. **Hook:** "The patient won't fix the Wi-Fi." Diagram: oxygen monitor, weighing scale and glucose meter → blue Hub ("stores first") → Cloud + app, over a blue Wi-Fi line and an orange dashed cellular line.
2. **The project: A home hub for chronic care.** Healthcare client in Australia; collects oxygen level, weight, blood sugar; we built product architecture, hardware, firmware, Linux drivers, mobile app; app designed for elderly patients.
3. **1 Connectivity: Wi-Fi first. Cellular as backup.** Three state rows: Wi-Fi works → send over Wi-Fi; Wi-Fi drops → switch to cellular (orange); Wi-Fi returns → move back. "For a medical hub, a dropped link is a patient-safety issue."
4. **2 Data: Store first. Send second.** Timeline of readings, two stored on the hub during an orange "no connection" band, then synced. Box: give every reading an ID so a retry never duplicates.
5. **3 Devices: One record for every device.** Three monitors → adapters → orange "one record" box (device ID, value + unit, time of reading, patient).
6. **4 No IT department: Recover without a home visit.** Boot after a power cut, keep data through power loss, watchdog restarts a stuck service, one status light. Box: read-only root file system + journaled data partition on embedded Linux.
7. **5 Cellular budget: Cellular data costs money.** Over cellular: readings, alerts, remote commands. Wait for Wi-Fi: debug logs, large updates, bulk diagnostics. "Decide this in the design, not after the first data bill."
8. **Takeaway: Design for the home, not the lab.** Five-point recap; "A clinician should never have to ask, 'Did the hub miss something?'"; orange pill "Follow CoreFragment for more".

## Alt text
An eight-slide carousel titled "The patient won't fix the Wi-Fi." showing a home health hub that collects readings from an oxygen monitor, a scale and a glucose meter and sends them to the cloud over Wi-Fi with a cellular backup. It lists five design lessons: Wi-Fi first with cellular backup, store readings before sending, one record format for every device, recovery without a home visit, and keeping cellular data for what matters.

## Best time to post
Wednesday 12:30–14:00 IST (Europe midday). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"A medical hub in someone's living room has no IT department. Here are five things we design for when the device has to look after itself."

## Sources (facts checked 2026-10-21)
- CoreFragment case study "Health monitoring hub": client region Australia, healthcare; hub aggregates data from medical monitors (oxygen level monitors, weighing scales, blood glucose meters) and sends it to a cloud platform and companion app; Wi-Fi primary with a SIMCom cellular module as fallback; history stored locally on the hub and synced to the cloud when connectivity returns; app designed for elderly patients; FAQ frames connectivity reliability as a patient-safety issue; use cases include remote control of medical equipment. Our role: product architecture, Linux driver development, hardware and firmware development, mobile app development. The page's general services section describes adapters that map each device's data into one unified model.
- Reading IDs for duplicate-free retries, power-cut recovery (watchdog, read-only root file system, journaled data partition), status light and cellular data priorities are presented as general design practice for home hubs ("a home hub has to…"), not as claims about this project's internals. No results or numbers stated.
- Overlap check: the MQTT post (2026-09-28) covered offline buffering for sensors; this post's focus is the home environment as a whole (connectivity fallback, recovery, data model, cellular cost), and uses a different case study.
