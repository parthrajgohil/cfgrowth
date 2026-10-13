# LinkedIn post: 2026-10-12 (Monday)

- **Slot:** Monday, Engineering insight
- **Pillar:** Engineering decisions / prototype-to-production pitfalls (BLE firmware + hardware: coexistence, antenna, connection parameters)
- **Audience:** CTOs / Heads of Engineering at medical device and industrial IoT makers shipping BLE products into hospitals, factories and offices (segment 1); product heads planning a first connected product (segment 2)
- **Page:** CoreFragment company page
- **Seed blog:** https://corefragment.com/blog/design-ble-devices-for-crowded-rf-environments
- **Teams:** sent to the CEO by the unattended run on 2026-10-12 (message id 1791785950429).

## Hooks
- **A (used below):** Your BLE device never dropped a link on the bench. / On the hospital ward, it drops every afternoon.
- **B:** Some BLE fixes ship as a firmware update. / Others need a new board.

## Post

Your BLE device never dropped a link on the bench.
On the hospital ward, it drops every afternoon. Here is why ->

Your bench is quiet. A ward, a factory floor or an office is not. Dozens of Wi-Fi access points, phones and other BLE devices share the same 2.4 GHz band.

One 20 MHz Wi-Fi channel covers about nine of BLE's 2 MHz channels. And advertising uses only three: 37, 38 and 39.

Some of the fixes are firmware:
→ update the channel map from real packet loss, not a fixed list
→ advertise more often in busy sites, or use BLE 5 extended advertising
→ a shorter connection interval and lower slave latency: more battery, faster recovery

You can ship those over the air.

Others are hardware, and they are only cheap before layout freeze:
→ coexistence lines (often a 3-wire interface) when Wi-Fi and BLE share a board
→ antenna placement, away from the Wi-Fi antenna and from metal in the enclosure
→ a chip that supports Coded PHY, if range under interference matters

So test early where the product will live: busy Wi-Fi, the final enclosure, and a target for connection success rate and discovery time.

Crowded RF is a design input. Treat it as a field bug and you may pay for a board respin.

#BLE #EmbeddedSystems #MedicalDevices

(~210 words, no emoji)

## First comment
Our guide to designing BLE devices for crowded RF environments goes through each of these, plus a six-question design checklist: https://corefragment.com/blog/design-ble-devices-for-crowded-rf-environments

If you're shipping a BLE device into a hospital, plant or office and want a second opinion on your radio design before layout freeze, our firmware and hardware team is happy to take a look. Or if you'd just like a technical chat about BLE in busy RF, we're up for that too.

## Hashtags
#BLE #EmbeddedSystems #MedicalDevices (already at the end of the post)

## Mention
None (the post is chip-agnostic).

## Visual brief (single image)
- **File:** `drafts/linkedin/images/2026-10-12-ble-busy-rf.svg` (1200×1500) → rendered to `2026-10-12-ble-busy-rf.png`
- **Headline:** "BLE in busy RF: firmware or board?" Subtitle: "What you can fix later, and what you can't".
- **Diagram:** the 2.4 GHz band with Wi-Fi channels 1, 6 and 11 as grey blocks, the 37 BLE data channels as small ticks and the three advertising channels (37, 38, 39) as tall blue bars.
- **Body:** a blue-edged card "Fix later: firmware, over the air" (adaptive channel map, more frequent or extended advertising, shorter interval / lower slave latency) and an orange highlight box "Decide before layout freeze" (Wi-Fi/BLE coexistence lines, antenna placement, a chip with Coded PHY).
- **Alt text:** "Diagram of the 2.4 GHz band showing BLE's three advertising channels between Wi-Fi channels 1, 6 and 11, titled 'BLE in busy RF: firmware or board?'. Below it, fixes you can ship later in firmware (channel map, advertising, connection timing) are separated from hardware decisions to make before layout freeze (Wi-Fi/BLE coexistence lines, antenna placement, Coded PHY support)."

## Best time to post
Monday 12:30–14:00 IST (Europe morning). US alternative: 18:30–20:00 IST.

## Reshare comment for Parthraj's profile
"When a BLE device works in the lab and drops in the field, the first question I ask is: what can we still fix in firmware, and what did the board already decide?"

## Sources (facts checked 2026-10-12)
- CoreFragment blog, "Design BLE devices for crowded RF environments": adaptive channel map (fixed list is the most common mistake), advertising on three fixed channels, randomised/more frequent and BLE 5 extended advertising, Wi-Fi/BLE coexistence ("3-wire") needing early hardware planning, antenna placement and final-enclosure testing, Coded PHY trade-offs, connection interval vs slave latency, testing against real Wi-Fi traffic and measuring connection success rate and discovery time.
- Bluetooth LE channel plan (Core Specification): 40 channels of 2 MHz; advertising channels 37 (2402 MHz), 38 (2426 MHz), 39 (2480 MHz); 37 data channels. Wi-Fi 2.4 GHz channels are ~20–22 MHz wide (channels 1/6/11 centred at 2412/2437/2462 MHz), so one covers about nine to ten BLE channels.
- "Drops every afternoon on the ward" is an illustrative scenario, not a client case.
