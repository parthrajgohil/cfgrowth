---
stage: in_sequence              # mirrors HubSpot "CF lead stage"; the CEO changes it in HubSpot
saleshandy_sequence: VvP76pMLw5
type: cold-email
account: lindsey-systems
recipient: Chris Meeks, Vice President of Engineering <cmeeks@lindsey-usa.com>
sources: [accounts/lindsey-systems.md, https://corefragment.com/blog/handle-mqtt-connection-loss, https://corefragment.com/blog/design-custom-battery-management-system]
---

## Lead info
- **Stage:** new (source of truth: HubSpot "CF lead stage")
- **Company:** Lindsey Systems · [HubSpot 358984225485](https://app.hubspot.com/contacts/247517534/record/0-2/358984225485) · brief: `accounts/lindsey-systems.md`
- **Website:** https://lindsey-usa.com · **News:** https://lindsey-usa.com/blog/ · **LinkedIn:** not verified
- **HQ:** Azusa, California, USA · **Founded:** 1947 · **Size:** ~56 people in Apollo (unverified)
- **Funding:** First Reserve majority growth investment, 2026-04-07 (first institutional capital). Not for use in the email.
- **Trigger:** new majority owner to "accelerate growth" (2026-04-07, 7 months) + VP of Engineering in title < ~220 days (Apollo) → B
- **Segment:** device maker (segment 1); primary row (industrial IoT / grid, hardware + firmware)

| Buyer | Title | LinkedIn | Saleshandy | Apollo | HubSpot contact |
|---|---|---|---|---|---|
| Chris Meeks (**primary**) | Vice President of Engineering | not found | 158837626 | 55710c48736964771fbb0100 (has email) | [582815040231](https://app.hubspot.com/contacts/247517534/record/0-1/582815040231) |
| Jack Mc***l (masked) | Chief Executive Officer | not verified | not checked | 66f68ba5fe386c0001ee472e (has email) | — |

## Subject options
1. SMARTLINE sensor hardware
2. high-voltage sensor firmware
3. Lindsey sensor roadmap

---

## Email 1 (day 0), ~108 words (body, excluding greeting and signature)

Hi {{First Name}},

SMARTLINE caught my eye: self-powered monitors on transmission lines, sending data over Iridium satellite to feed dynamic line ratings. Electronics that live on a high-voltage conductor for years, with no easy way to reach them, leave little room for power-design or firmware mistakes.

I'm Parthraj, CEO of CoreFragment. We design embedded hardware and firmware for connected devices, from PCB and power design to firmware updates in the field, under NDA with full IP transfer.

If extra engineering hands would help as the sensor line grows, I'd be happy to talk. Or if you'd enjoy a casual chat about field-powered sensor design, I'm up for that too.

Have a nice day!
Parthraj Gohil
CEO, CoreFragment Technologies
corefragment.com

---

## Follow-up 1 (day 3), ~50 words

Hi {{First Name}},

Satellite and cellular links on remote lines drop out, and a sensor that retries badly burns its energy budget. We wrote up how we design devices to handle connection loss cleanly: corefragment.com/blog/handle-mqtt-connection-loss. The buffering and back-off parts apply to any intermittent link.

Parthraj

---

## Follow-up 2 (day 8), ~50 words

Hi {{First Name}},

A different angle: cost-down. Mature sensor lines like the LEA and ring-style current sensors often carry parts and assembly steps that newer components can replace. We do hardware re-engineering and cost reduction on existing products, keeping performance and certifications in mind. Happy to share how we'd approach it.

Parthraj

---

## Follow-up 3 (day 15), ~35 words

Hi {{First Name}},

I don't want to crowd your inbox. If your engineering roadmap is covered, just let me know and I'll close this out. The offer of a casual technical chat stands.

Have a nice day!
Parthraj

---

## Self-check
- [x] Opens with their product (SMARTLINE), not money. The First Reserve deal isn't mentioned anywhere.
- [x] Specific to Lindsey: SMARTLINE, self-powered line monitors, Iridium satellite, LEA and ring-style current sensors.
- [x] Claims trace to accounts/lindsey-systems.md or CLAUDE.md (hardware/firmware services, re-engineering, blog post, NDA + IP).
- [x] ~108 words; one CTA; no banned words. US lead: no opt-out line needed.
- [ ] Human: no matching case study, so email 1 uses a capability line. "Self-powered" comes from the Ameren selection news, "Iridium" from the Hydro-Québec news (both on lindsey-usa.com). Chris Meeks's start date as VP is unverified. Follow-up 2's claim that mature lines carry replaceable parts is a general observation, not something we know about Lindsey.
