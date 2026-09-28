# LinkedIn post: 2026-09-28 (Monday)

- **Slot:** Monday, Engineering insight
- **Pillar:** Engineering decisions / prototype-to-production pitfalls (firmware, connectivity)
- **Audience:** CTOs / Heads of Engineering at industrial IoT and connected-device makers (segment 1), and product heads running a first IoT pilot (segment 2)
- **Page:** CoreFragment company page
- **Seed blog:** https://corefragment.com/blog/handle-mqtt-connection-loss
- **Teams:** sent to the CEO by the unattended run on 2026-09-28 (message id 1790576323792).

## Hooks
- **A (used below):** Your sensor reconnected fine. The four minutes before it didn't.
- **B:** Auto-reconnect is not a data-loss strategy.

## Post

Your sensor reconnected fine.
The four minutes of readings before it didn't. Here is why ->

Most MQTT client libraries handle the reconnect for you. Very few decide what happens to the data made while the link was down.

We treat connection loss as three separate design decisions, not one library default.

1. How fast you notice.
The broker only declares a client gone after 1.5× its keep-alive. Set 300 s and a dead device looks alive for 7.5 minutes. Set 10 s on NB-IoT and your battery pays for it.

2. How the fleet reconnects.
When a site's Wi-Fi comes back, 500 devices retrying every 5 seconds is a self-made traffic spike on your broker. Exponential backoff with random jitter, capped at a few minutes, spreads them out.

3. What happens to data made offline.
QoS 1 only protects a message the client still holds. Drop it, buffer it in RAM, or write it to flash: each costs something (lost data, lost data on reboot, or flash wear and more code).

Add a Last Will message so the backend knows a device dropped instead of guessing.

Then test it properly. Pull the antenna or kill the access point, not a clean shutdown.

Decide all three on purpose before your first field pilot.

#IndustrialIoT #EmbeddedSystems #MQTT

(~215 words, no emoji)

## First comment
We wrote up the full playbook (keep-alive values by use case, backoff, queueing options, LWT, and how to test): https://corefragment.com/blog/handle-mqtt-connection-loss

If you're planning a field pilot and want a second opinion on your device's reconnect and buffering logic, our firmware team is happy to take a look. Or if you'd just like a technical chat about MQTT on constrained devices, we're up for that too.

## Hashtags
#IndustrialIoT #EmbeddedSystems #MQTT (already at the end of the post)

## Mention
None (no company is genuinely central to the post).

## Visual brief (single image)
- **File:** `drafts/linkedin/images/2026-09-28-mqtt-reconnected-not-recovered.svg` (1200×1500) → rendered to `2026-09-28-mqtt-reconnected-not-recovered.png`
- **Headline:** "Reconnected is not recovered." Subtitle: "MQTT connection loss: three decisions".
- **Body:** three numbered cards: (1) How fast you notice: broker waits 1.5 × keep-alive, 300 s = 7.5 min blind; (2) How the fleet reconnects: exponential backoff + jitter; (3, orange highlight) What happens to offline data: drop, RAM or flash, decide before the pilot. Closing line: "Then test it: pull the antenna, not the plug."
- **Alt text:** "Graphic titled 'Reconnected is not recovered' listing three MQTT connection-loss decisions: how fast you notice (the broker waits 1.5 times the keep-alive), how the fleet reconnects (exponential backoff with jitter), and what happens to data made offline (drop, RAM buffer or flash), highlighted. It ends with: test by pulling the antenna, not the plug."

## Best time to post
Monday 12:30–14:00 IST (Europe morning; industrial IoT audience). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"Most IoT devices reconnect fine after a network drop. The real question is what happened to the data during the gap. Worth checking before your next field test."

## Sources (facts checked 2026-09-28)
- CoreFragment blog, "Handle MQTT connection loss" (four-minute warehouse example, keep-alive ranges, backoff capped at 1–5 min, drop/RAM/flash trade-offs, LWT, radio-disruption testing).
- MQTT 3.1.1 spec §3.1.2.10 and MQTT 5.0 §3.1.2.10: the server disconnects a client if no control packet arrives within one and a half times the Keep Alive period.
- 500 devices / 5-second retry is an illustrative scenario, not a client figure.
