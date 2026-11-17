---
stage: new               # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: american-innovations
recipient: Weiming T., Director of Firmware and Hardware (email: TO BE FILLED BY HUMAN)
sources: [accounts/american-innovations.md, https://corefragment.com/blog/handle-mqtt-connection-loss, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** American Innovations · [HubSpot 356538148585](https://app.hubspot.com/contacts/247517534/record/0-2/356538148585) · brief: `accounts/american-innovations.md`
- **Website:** https://www.aiworldwide.com · **News:** aiworldwide.com press releases · **LinkedIn:** not verified
- **HQ:** Austin, Texas, USA · **Founded:** unverified (40+ years in the field) · **Size:** ~100 (Rigzone)
- **Funding:** none; private, owned by HMI International (unverified). Not for use in the email.
- **Trigger:** RM510 16-channel expansion module (2026-05-26) and external enclosure (2026-07-22); Staff Firmware Engineer
  post for a "flagship next-generation IoT product" in board bring-up, reposted ~2 months ago → A
- **Segment:** device maker (segment 1); primary row, industrial IoT firmware/hardware

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Weiming T. (**primary**; surname unverified) | Director of Firmware and Hardware | unverified | 175954479 | 60f7dde19ca7620001f04160 (has email) | [577760404183](https://app.hubspot.com/contacts/247517534/record/0-1/577760404183) |
| Zee Mcclane | VP of Research and Development | unverified | 446319372 | 60b16f9b5463140001fcf936 (has email) | [577813594873](https://app.hubspot.com/contacts/247517534/record/0-1/577813594873) |

## Subject options
1. next-gen Bullhorn firmware
2. RM510 and the next RMU
3. firmware bring-up help

---

## Email 1 (day 0), ~100 words (body, excluding greeting and signature)

Hi {{First Name}},

I saw the RM510 16-channel expansion module and the new external enclosure for cramped rectifier cabinets. Your Staff Firmware Engineer post also mentions a next-generation IoT product with prototype boards in bring-up. Doing bring-up while you hire usually stretches a small firmware team.

I'm the CEO of CoreFragment; we build firmware and hardware for connected devices (low-power MCUs, BLE, cellular, bootloaders and OTA), under NDA with full IP handed over.

If extra firmware hands would help until the hire lands, I'd be happy to talk. Or if you'd enjoy a casual chat about field-deployed monitors, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~55 words

Hi {{First Name}},

An RMU in a rectifier yard lives on a patchy cellular link, so most field bugs are about what happens when the link drops: what to buffer, what to resend, how to recover without a site visit. We wrote up how we handle it: corefragment.com/blog/handle-mqtt-connection-loss.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A short example: for a European industrial automation company we built the HMI and control software for a CNC drilling machine on Raspberry Pi and Arduino. Menus, state handling and field reliability, the same kind of work your post describes, with all source and design files handed back.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If the firmware roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (RM510 module and enclosure), not money. No funding or ownership anywhere.
- [x] Specific to American Innovations: RM510, rectifier cabinets, the Staff Firmware Engineer post, bring-up.
- [x] Claims trace to accounts/american-innovations.md or CLAUDE.md (low-power, BLE, OTA, bootloaders, CNC HMI case study, MQTT blog, NDA + IP). "Cellular" is generic; CLAUDE.md lists NB-IoT and Quectel modules.
- [x] ~100 words; one CTA; no banned words. US recipient, so no opt-out line.
- [ ] Human: the Director's surname isn't public in our sources (Saleshandy "Weiming T.", Apollo "Ta***g"); reveal by ID. His background reads as software/cloud, so the VP R&D (Zee Mcclane) is an equal alternative. "Doing bring-up while you hire stretches a small team" is our inference from the post.
