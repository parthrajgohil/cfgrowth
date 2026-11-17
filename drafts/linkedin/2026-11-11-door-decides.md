# LinkedIn post: 2026-11-11 (Wednesday)

- **Slot:** Wednesday, Proof or playbook (carousel)
- **Pillar:** Lessons from projects, anonymized (battery-powered access control reader with MQTT/AWS); prototype-to-production decisions
- **Audience:** CTOs, Heads of Engineering/Product and founders at access control, smart building, facilities and industrial IoT companies in Europe and the US (segment 1); also segment 2 companies adding a connected lock/reader or asset gate to an existing product
- **Page:** CoreFragment company page
- **Seed (first comment):** https://corefragment.com/case-study/access-control-system
- **Teams:** sent to the CEO by the unattended run on 2026-11-11 (post: id 1794378058524; carousel brief: id 1794378066626).

## Hooks
- **A (used below):** The cloud is down. / The door still has to decide.
- **B:** A battery reader can't listen all the time. / So when does "remote unlock" arrive?

## Post

The cloud is down.
The door still has to decide. Here is why ->

We developed and tested the firmware for a European client's access control system: smart card readers at the entrance, scans sent over MQTT to AWS, entry and exit logs in real time, doors managed remotely. With long battery life.

Battery life and "remote" pull in opposite directions. Five decisions we'd settle before writing code for a reader like this:

Decide at the door. The reader keeps its own list of allowed cards. The cloud keeps the record; it doesn't open the door.

Agree how fast a removed card stops working. Version the list, so you can see which readers are behind.

Pick the delay for a remote unlock. A reader that sleeps between check-ins saves battery, and your command waits for the next one.

Measure the battery while the lock moves, not at rest. Cells sag under load, more so in the cold.

Trust the card and the reader. 125 kHz proximity cards can be copied with cheap tools. Use cards with mutual authentication, and give every reader its own certificate.

The door decides. The cloud remembers.

#AccessControl #IoT #EmbeddedSystems

(~205 words, no emoji)

## First comment
The access control project (anonymised): https://corefragment.com/case-study/access-control-system

If you're building a connected reader, lock or gate and want a second opinion on the offline, power or security design, we're happy to take a look. Or if you'd just like a technical chat about it, we're up for that too.

## Hashtags
#AccessControl #IoT #EmbeddedSystems (already at the end of the post)

## Mention
None. (Nordic appears only as a logo on the case study page, with no detail of how it was used, so no mention.)

## Carousel brief (8 slides, 1080×1350 → `2026-11-11-door-decides-carousel.pdf`)
Files: `drafts/linkedin/images/2026-11-11-door-decides-slide-1.svg` … `-slide-8.svg`
1. **Hook:** "The cloud is down." / "The door still has to decide." Diagram: Smart card → Reader "checks its own list" (orange, "OPEN or DENY, here") -x- Cloud (offline, grey). "5 decisions for a battery-powered card reader that reports to the cloud." Swipe →
2. **The project: A door reader on battery and MQTT.** European client; access control with remote monitoring, long battery life, cloud-based device control. Flow: Smart card (one per user) → Reader (at the entrance) → MQTT → AWS cloud (users + scan log). "Our part: firmware development and testing." Orange box: the tension, battery wants the reader asleep, remote control wants it listening.
3. **1 Decide locally: Let the door decide offline.** Table cloud checks vs reader checks (network down: door stays shut / door works; each scan: waits for reply / answers at once; cloud's job: every decision / log + updates). Orange box: agree fail safe vs fail secure on power loss; local fire rules often decide.
4. **2 Revocation: How fast must a removed card stop?** Cloud list v42 → Reader A v42, Reader B v42, Reader C v40 (orange, "2 behind"). Version the list and send changes; each reader reports its version; show readers behind on the dashboard.
5. **3 Power vs reach: Choose the unlock delay first.** Table: always connected (almost at once / highest drain), check in every N s (orange row: within N seconds / set by N), wake on card only (at the next scan / lowest drain). Note: use the low-power card detection many NFC reader chips offer.
6. **4 Battery warning: Measure the battery under load.** Schematic voltage trace: flat at rest, dips below the reset level while the lock moves (orange). Read voltage during the motor pulse; warn weeks early; decide what the door does on a flat battery.
7. **5 Trust: Trust the card and the reader.** Cards: 125 kHz proximity cards send a fixed ID, cheap tools copy them (orange box); use mutual authentication, e.g. MIFARE DESFire EV3 (AES). Readers: own certificate (e.g. AWS IoT Core) and own policy, so one stolen reader can be cut off alone.
8. **Takeaway: The door decides. The cloud remembers.** Five-point recap; orange pill "Follow CoreFragment for more".

## Alt text
An eight-slide carousel titled "The cloud is down. The door still has to decide." Based on a battery-powered access control project, it shows five decisions for a card reader that reports to the cloud: let the reader decide offline from its own list, agree how fast a removed card stops working, choose the remote-unlock delay before the power budget, measure the battery while the lock moves, and use cards and reader certificates that can't simply be copied.

## Best time to post
Wednesday 12:30–14:00 IST (European morning; the case study is a European project, and access control and smart building makers are strong in the EU/UK). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"On a battery-powered access control reader, the hardest questions weren't about the cloud. They were about what the door does when the cloud isn't there. Five we'd settle first."

## Sources (facts checked 2026-11-11)
- CoreFragment case study "access-control-system": client in Europe, IoT industry; goal of access control with remote data monitoring, extended battery life and cloud-based device control; smart cards per user and a reader at the entry point; scans sent over MQTT to AWS (AWS IoT Core named); database matches cards and records each scan; real-time entry/exit monitoring; remote management of readers, permissions, locking/unlocking. Our role: firmware development and testing. No challenges, results or metrics stated, and none used. The five decisions are presented as what we'd settle for a reader like this (general engineering practice), not as claims about how the client's system was built.
- General, public engineering facts: 125 kHz proximity cards (e.g. EM4100/HID Prox class) transmit a static ID and are widely cloneable with low-cost tools; MIFARE DESFire EV3 supports AES-based mutual authentication; AWS IoT Core uses per-device X.509 certificates and attachable policies; many NFC reader ICs offer low-power card detection; fail-safe locks open and fail-secure locks stay locked on power loss, with fire/egress codes affecting the choice; battery voltage sags under high current and more at low temperature.
- Overlap check (last 8 weeks, since 2026-09-16): no previous post on access control or this case study. Related but distinct: 2026-09-28 (MQTT reconnect/offline data) and 2026-10-21 (health hub store-first), which covered data delivery; this post covers local authorisation, revocation, wake/latency budget, load-voltage warning and credential security. 2026-10-05 covered state-of-charge estimation, not load-voltage warnings.
