---
stage: ready_to_import          # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
type: cold-email
account: aquamanager
recipient: Kostas Seferis, Founder <kostas.seferis@aqua-manager.com>
saleshandy_sequence: mDPQN7mnaR
sources: [accounts/aquamanager.md, https://corefragment.com/case-study/industrial-cnc-drilling-machine-automation, https://corefragment.com/blog/handle-mqtt-connection-loss]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** aquaManager (i2s) · [HubSpot](https://app.hubspot.com/contacts/247517534/record/0-2/351781629631) · brief: `accounts/aquamanager.md`
- **Website:** https://www.aqua-manager.com · **News:** none dated on site · **LinkedIn:** https://www.linkedin.com/company/aquamanager/
- **HQ:** Greece (Athens per profiles; jobs in Chania, Crete) · **Founded:** 1997 or 2000 (unverified) · **Size:** unverified (~21 in Apollo)
- **Funding:** Ocean 14 Capital minority stake (2024-11, undisclosed)
- **Trigger:** Electronics Engineer (firmware + PCB for measurement and valve-control systems) posted 2026-08-07, still open

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Kostas Seferis (**primary**) | Founder | unverified | lead ID 276163746 | 6202a9df706a9700012f9587 (has email) | [568304466619](https://app.hubspot.com/contacts/247517534/record/0-1/568304466619) |

## Subject options
1. BlueIoT hardware
2. aquaManager electronics hire
3. valve controllers on a sea cage

---

## Email 1 (day 0), ~100 words (body, excluding greeting, opt-out and signature)

Hi {{First Name}},

BlueIoT bringing oxygen, temperature and camera data straight into aquaManager is a strong idea for fish farms. I saw you're hiring an electronics engineer in Chania for measurement and valve-control boards, so it looks like your own hardware is on the way.

Taking boards like that from an Arduino or Raspberry Pi prototype to something that survives on a cage site is usually the hard part: low-power firmware, OTA, links that drop.

I'm the CEO of CoreFragment; we design PCBs and firmware for industrial IoT products, under NDA with full IP and design files handed over.

If extra hands next to your new hire would help, I'd be happy to talk. Or if you'd just enjoy a casual chat about sensors in salt water, I'm up for that too.

Not relevant? Reply "no" and I won't follow up.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Remote sites lose their link, and a logger that can't buffer and resend quietly loses the oxygen readings you care about most. Here is how we design devices to ride out MQTT disconnects: corefragment.com/blog/handle-mqtt-connection-loss

Parthraj

---

## Follow-up 2 (day 8), ~55 words

Hi {{First Name}},

A short example from our side: for a European industrial automation company we built the control and HMI for a CNC drilling machine on Raspberry Pi, Arduino and Flask, the same kind of stack your posting mentions. The next step for your valve controllers would be a custom board you own outright, with all design files.

Worth a look?

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If your new engineer has it covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (BlueIoT), not money. No funding anywhere.
- [x] Specific to aquaManager: BlueIoT, the Chania electronics post, measurement and valve control, Arduino/RPi stack.
- [x] Claims trace to accounts/aquamanager.md or CLAUDE.md (PCB, firmware, NDA, IP transfer, CNC case study). Greek company: opt-out included.
- [x] Under 110 words; one CTA; no banned words.
- [ ] Human: "your own hardware is on the way" is inferred from the job post and the 2024 investment plan. Size is unverified and may be under 50.
