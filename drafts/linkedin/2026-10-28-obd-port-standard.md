# LinkedIn post: 2026-10-28 (Wednesday)

- **Slot:** Wednesday, Proof or playbook (carousel)
- **Pillar:** Lessons from projects, anonymized (BLE OBD device + connected app)
- **Audience:** CTOs, Heads of Engineering/Product and founders at automotive aftermarket, fleet and telematics companies in the US and Europe, plus segment-2 companies adding vehicle or asset monitoring (primary: embedded firmware + hardware; Industrial IoT read broadly)
- **Page:** CoreFragment company page
- **Seed (first comment):** https://corefragment.com/case-study/smart-obd-device
- **Teams:** sent to the CEO by the unattended run on 2026-10-28 (post: id 1793168492694; carousel brief: id 1793168503823).

## Hooks
- **A (used below):** The OBD-II port is standard. / The cars behind it aren't.
- **B:** Your OBD device worked in your test car. / Your customers don't drive your test car.

## Post

The OBD-II port is standard.
The cars behind it aren't. Here is why ->

We built a plug-in OBD device for a US automotive client: the hardware, the firmware and the Android app. It reads engine data and location, and sends them over BLE to the driver's phone.

Every car sold in the US since 1996 has the same connector. Behind it, almost everything can differ.

Five things a plug-in device has to handle:

The protocol. OBD-II allows five: CAN and four older ones. Detect it at start-up; don't hard-code the one in your test car.

The data. Not every car reports every PID. Ask the car what it supports, then build the dashboard around the answer.

The power. The car is your power supply. Voltage dips when the engine cranks, and on many cars the port stays live while parked. Protect the input, and sleep when the engine is off.

The radio. The phone is the gateway, so BLE: lower power than classic Bluetooth, and no hotspot or data plan, which Wi-Fi would need.

The phone. Drivers won't open the app on every trip. It has to reconnect and keep logging with the screen off.

Your test car is one car. Design for the ones your customers drive.

#EmbeddedSystems #AutomotiveIoT #IoT

(~215 words, no emoji)

## First comment
The OBD device project (anonymised): https://corefragment.com/case-study/smart-obd-device

If you're building a device that plugs into vehicles or machines and want a second opinion on protocols, power or the phone side, we're happy to take a look. Or if you'd just like a technical chat about vehicle data, we're up for that too.

## Hashtags
#EmbeddedSystems #AutomotiveIoT #IoT (already at the end of the post)

## Mention
None.

## Carousel brief (8 slides, 1080×1350 → `2026-10-28-obd-port-standard-carousel.pdf`)
Files: `drafts/linkedin/images/2026-10-28-obd-port-standard-slide-1.svg` … `-slide-8.svg`
1. **Hook:** "The OBD-II port is standard." / "The cars behind it aren't." Diagram: one 16-pin connector (orange highlight, "US cars since 1996") fanning out to five protocol boxes: CAN (ISO 15765-4), KWP2000 (ISO 14230), ISO 9141-2, SAE J1850 VPW, SAE J1850 PWM.
2. **The project: A plug-in OBD device for a US client.** Flow: Car (OBD-II port) → OBD device (BLE + location, orange) → Android app (live + logged). What we built: hardware, firmware, Android app. What it reads: engine temperature, speed, torque, oxygen sensor, fuel, pressure, plus location.
3. **1 Protocol: Five protocols. One connector.** Table of the five protocols (CAN: US model years 2008+; others: older vehicles). Orange box: "Detect the protocol at start-up. Never hard-code the one in your test car."
4. **2 Data: Ask the car what it supports.** Request PID 00 first; illustrative 32-square support map (blue = supported, grey = not on this car). Box: build the dashboard around the answer; hide what the car can't give; manufacturer-specific data is extra work.
5. **3 Power: The car is your power supply.** Sketch of supply voltage (no scale): parked → orange crank dip → engine running → parked again. Box: protect the input against dips and spikes; sleep when the engine is off.
6. **4 Radio: Pick the radio for the phone.** BLE (orange, "chosen"): low power, enough bandwidth for live data. Classic Bluetooth: higher power, harder to pair on modern Android. Wi-Fi: needs a hotspot or mobile data, more cost and setup.
7. **5 Phone: The app works with screen off.** Reconnect on its own after pairing (orange), log in a background service, right Bluetooth permissions (changed in Android 12), test on several phone brands. "A gap in the log is a gap in the trip."
8. **Takeaway: Your test car is one car.** Five-point recap; orange pill "Follow CoreFragment for more".

## Alt text
An eight-slide carousel titled "The OBD-II port is standard. The cars behind it aren't." It shows one OBD-II connector leading to five different vehicle protocols, then lists five lessons for a plug-in vehicle device: detect the protocol, ask the car which data it supports, protect the power input and sleep when parked, use BLE because the phone is the gateway, and keep the app working with the screen off.

## Best time to post
Wednesday 18:30–20:00 IST (US morning; the case study is a US automotive project). Europe alternative: 12:30–14:00 IST.

## Reshare comment for Parthraj's profile
"Same connector in every car, very different cars behind it. Five things we plan for when a device has to work in the vehicle the customer drives, not just ours."

## Sources (facts checked 2026-10-28)
- CoreFragment case study "BLE based OBD device with Connected App": client in the USA, automotive; device plugs into the OBD-II port, is powered by it and includes a location module; firmware reads OBD-II data and sends it over BLE, with automatic reconnection after pairing; Android app shows live data and logs in the background, handling Android background service permissions and BLE connection management across Android versions; parameters include engine temperature, speed, torque, oxygen sensor, fuel and pressure; BLE chosen over classic Bluetooth (higher power, harder to pair reliably on modern Android) and Wi-Fi (needs a hotspot or cellular data, adding cost and complexity); OBD-II ports in all cars made after 1996 in the USA. Our role: hardware and firmware development, Android app development.
- Public OBD-II facts (SAE J1979 / EPA): five signalling protocols (ISO 15765-4 CAN, ISO 14230-4 KWP2000, ISO 9141-2, SAE J1850 VPW, SAE J1850 PWM); CAN required for US model year 2008 and later; Mode 01 PID 00 returns a bitmap of supported PIDs 01–20 (then 20, 40 … for the next ranges); pin 16 carries battery power, which on many vehicles stays live with the ignition off. Android 12 introduced the BLUETOOTH_SCAN / BLUETOOTH_CONNECT runtime permissions.
- Protocol detection, PID discovery, input protection, sleep when parked and phone-brand testing are presented as general practice for plug-in vehicle devices ("a plug-in device has to handle"), not as claims about this project's internals. The PID map on slide 4 is illustrative. No results or numbers about the project.
- Overlap check: the 2026-09-30 carousel (glucometer) touched phone OS limits for a BLE medical device; this post is about the vehicle side (protocols, PIDs, vehicle power) with only one slide on the phone, and uses a different case study. No blog post reused; the OBD case study has not been used before.
